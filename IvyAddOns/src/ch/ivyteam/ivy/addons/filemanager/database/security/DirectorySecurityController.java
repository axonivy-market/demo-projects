/**
 * 
 */
package ch.ivyteam.ivy.addons.filemanager.database.security;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.concurrent.Callable;
import ch.ivyteam.db.jdbc.DatabaseUtil;
import ch.ivyteam.ivy.addons.filemanager.FolderOnServer;
import ch.ivyteam.ivy.addons.filemanager.LockedFolder;
import ch.ivyteam.ivy.db.IExternalDatabase;
import ch.ivyteam.ivy.db.IExternalDatabaseApplicationContext;
import ch.ivyteam.ivy.db.IExternalDatabaseRuntimeConnection;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.persistence.PersistencyException;
import ch.ivyteam.ivy.scripting.objects.List;
import ch.ivyteam.ivy.scripting.objects.Record;
import ch.ivyteam.ivy.scripting.objects.Recordset;
import ch.ivyteam.ivy.security.IRole;
import ch.ivyteam.ivy.security.IUser;



/**
 * @author ec
 *
 */
public class DirectorySecurityController extends AbstractDirectorySecurityController {

	private String ivyDBConnectionName = null; // the user friendly connection name to Database in Ivy
	private IExternalDatabase database=null;
	private String dirTableName = null; // the table that stores directories infos
	private String dirTableNameSpace = null; // equals to dirTableName if schemaName == null, else schemaName.dirTableName
	private String schemaName=null;

	/**
	 * Constructor
	 * @param _ivyDBConnectionName
	 * @param _dirTableName
	 * @param _schemaName
	 */
	public DirectorySecurityController(String _ivyDBConnectionName,
			String _dirTableName, String _schemaName) {
		super();
		if(_ivyDBConnectionName==null || _ivyDBConnectionName.trim().length()==0)
		{//if ivy user friendly name of database configuration not set used default
			this.ivyDBConnectionName = "filemanager";
		}else{
			this.ivyDBConnectionName = _ivyDBConnectionName.trim();
		}
		if(_dirTableName==null || _dirTableName.trim().length()==0)
		{//if ivy table name not set used default
			this.dirTableName="FileManagerDirectory";
		}else{
			this.dirTableName=_dirTableName.trim();
			this.dirTableNameSpace = this.dirTableName;
		}
		if(_schemaName!=null && _schemaName.trim().length()>0)
		{//set the schema name variable

			this.schemaName = _schemaName.trim();
			//since the schema name is for now only use in PostGreSQL, 
			//we escape the schema and table name to be able to support non lower case schemas
			this.dirTableNameSpace="\""+this.schemaName+"\""+"."+"\""+this.dirTableName+"\"";
		}
	}

	/**
	 * used to get Ivy IExternalDatabase object with given user friendly name of Ivy Database configuration
	 * @param _nameOfTheDatabaseConnection: the user friendly name of Ivy Database configuration
	 * @return the IExternalDatabase object
	 * @throws Exception 
	 * @throws EnvironmentNotAvailableException 
	 */
	private IExternalDatabase getDatabase() throws Exception{
		if(database==null){
			final String _nameOfTheDatabaseConnection = this.ivyDBConnectionName;
			database = Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<IExternalDatabase>(){
				public IExternalDatabase call() throws Exception {
					IExternalDatabaseApplicationContext context = (IExternalDatabaseApplicationContext)Ivy.wf().getApplication().getAdapter(IExternalDatabaseApplicationContext.class);
					return context.getExternalDatabase(_nameOfTheDatabaseConnection);
				}
			});
		}
		return database;	
	}

	/**
	 * allows executing a prepareStatement and returns the resulting recordset.<br>
	 * If the preparedStatement execution returns an empty Resultset then the RecordSet will be empty.
	 * The calling method is responsible to give back the preparedStatement with DatabaseUtil.close(stmt);
	 * @param _stmt
	 * @return
	 * @throws Exception
	 */
	private static Recordset executeStatement(PreparedStatement _stmt) throws Exception{

		if(_stmt == null){
			throw(new SQLException("Invalid PreparedStatement","PreparedStatement Null"));
		}

		ResultSet rst = null;
		Recordset r= new Recordset();

		rst=_stmt.executeQuery();
		try{
			ResultSetMetaData rsmd = rst.getMetaData();
			int numCols = rsmd.getColumnCount();
			List<String> colNames= List.create(String.class);
			for(int i=1; i<=numCols; i++){
				colNames.add(rsmd.getColumnName(i));
				//Ivy.log().debug(rsmd.getColumnName(i));
			}
			while(rst.next()){
				List<Object> values = List.create(numCols);
				for(int i=1; i<=numCols; i++){
					if(rst.getString(i)==null)
						values.add(" ");
					else values.add(rst.getString(i));
				}
				Record rec = new Record(colNames,values);
				r.add(rec);
			}
		}finally
		{
			DatabaseUtil.close(rst);
		}

		return r;
	}

	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.security.AbstractFileSecurityController#activateSecurityOnDirectory(java.lang.String)
	 */
	@Override
	public boolean activateSecurityOnDirectory(String path) throws Exception {
		path=formatPathForDirectoryWithoutLastSeparator(path);
		if(path==null || path.length()==0)
		{
			return false;
		}

		String query="UPDATE "+this.dirTableNameSpace+" SET is_protected = ? WHERE dir_path LIKE ?";
		IExternalDatabaseRuntimeConnection connection = null;
		boolean flag=false;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			PreparedStatement stmt = null;
			try{			
				stmt = jdbcConnection.prepareStatement(query);
				stmt.setInt(1, 1);
				stmt.setString(2, path);

				flag = stmt.executeUpdate()>0;
			}
			finally{
				DatabaseUtil.close(stmt);
			}
		} 
		finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}
		return flag;
	}

	@Override
	public List<String> AddRightOnDirectoryForIvyRole(String path,
			int rightType, String ivyRoleName) throws Exception {

		path=formatPathForDirectoryWithoutLastSeparator(path);	
		if(path==null || path.length()==0 || ivyRoleName==null || ivyRoleName.trim().length()==0)
		{
			throw  new IllegalArgumentException("One of the parameter is not set in method AddRightOnDirectoryForIvyRole(String path, " +
					"int rightType, String ivyRoleName) in "+this.getClass());
		}

		if(rightType<1 || rightType>DELETE_FILES_RIGHT )
		{
			throw  new IllegalArgumentException("The right type parameter is not valid in method AddRightOnDirectoryForIvyRole(String path, " +
					"int rightType, String ivyRoleName) in "+this.getClass());
		}

		ivyRoleName=ivyRoleName.trim();
		List<String> roles = this.getRolesNamesAllowedForRightOnDirectory(path, rightType);
		StringBuilder concat =new StringBuilder("");
		if(roles.contains(ivyRoleName))
		{// the role is already granted
			return roles;
		}else if(roles.isEmpty())
		{//no roles
			concat.append(ivyRoleName);
		}else
		{
			for(String s:roles)
			{
				concat.append(s);
				concat.append(",");
			}
			concat.append(ivyRoleName);
		}
		String query="";
		IExternalDatabaseRuntimeConnection connection = null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			PreparedStatement stmt = null;
			try{			

				if(rightType == DELETE_DIRECTORY_RIGHT)
				{
					query="UPDATE "+this.dirTableNameSpace+" SET cdd = ? WHERE dir_path LIKE ?";
				}else if( rightType == DELETE_FILES_RIGHT)
				{
					query="UPDATE "+this.dirTableNameSpace+" SET cdf = ? WHERE dir_path LIKE ?";
				}
				else if( rightType == OPEN_DIRECTORY_RIGHT)
				{
					query="UPDATE "+this.dirTableNameSpace+" SET cod = ? WHERE dir_path LIKE ?";
				}
				else if( rightType == UPDATE_DIRECTORY_RIGHT)
				{
					query="UPDATE "+this.dirTableNameSpace+" SET cud = ? WHERE dir_path LIKE ?";
				}
				else if( rightType == WRITE_FILES_RIGHT)
				{
					query="UPDATE "+this.dirTableNameSpace+" SET cwf = ? WHERE dir_path LIKE ?";
				}else if( rightType == MANAGE_SECURITY_RIGHT)
				{
					query="UPDATE "+this.dirTableNameSpace+" SET cmdr = ? WHERE dir_path LIKE ?";
				}
				stmt = jdbcConnection.prepareStatement(query);
				stmt.setString(1, concat.toString());
				stmt.setString(2, path);

				stmt.executeUpdate();
			}
			finally{
				DatabaseUtil.close(stmt);
			}
		} 
		finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}
		return  this.getRolesNamesAllowedForRightOnDirectory(path, rightType);
	}

	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.security.AbstractFileSecurityController#addRoleToDeleteDirectory(java.lang.String, java.lang.String)
	 */
	@Override
	public boolean addRoleToDeleteDirectory(String path, String ivyRoleName)
	throws Exception {
		path=formatPathForDirectoryWithoutLastSeparator(path);
		if(path==null || path.length()==0 || ivyRoleName==null || ivyRoleName.trim().length()==0)
		{
			return false;
		}
		//add automatically open and update
		this.AddRightOnDirectoryForIvyRole(path, OPEN_DIRECTORY_RIGHT, ivyRoleName);
		this.AddRightOnDirectoryForIvyRole(path, UPDATE_DIRECTORY_RIGHT, ivyRoleName);
		//add the right
		List<String> roles = this.AddRightOnDirectoryForIvyRole(path, DELETE_DIRECTORY_RIGHT, ivyRoleName);
		//Check if success
		if(roles.contains(ivyRoleName))
		{
			return true;
		}else{
			return false;
		}
	}

	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.security.AbstractFileSecurityController#addRoleToDeleteFilesInDirectory(java.lang.String, java.lang.String)
	 */
	@Override
	public boolean addRoleToDeleteFilesInDirectory(String path,
			String ivyRoleName) throws Exception {
		path=formatPathForDirectoryWithoutLastSeparator(path);
		if(path==null || path.length()==0 || ivyRoleName==null || ivyRoleName.trim().length()==0)
		{
			return false;
		}
		//add automatically open directory and write files
		this.AddRightOnDirectoryForIvyRole(path, OPEN_DIRECTORY_RIGHT, ivyRoleName);
		this.AddRightOnDirectoryForIvyRole(path, WRITE_FILES_RIGHT, ivyRoleName);
		//add the right
		List<String> roles = this.AddRightOnDirectoryForIvyRole(path, DELETE_FILES_RIGHT , ivyRoleName);
		//Check if success
		if(roles.contains(ivyRoleName))
		{
			return true;
		}else{
			return false;
		}
	}

	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.security.AbstractFileSecurityController#addRoleToEditFilesInDirectory(java.lang.String, java.lang.String)
	 */
	@Override
	public boolean addRoleToEditFilesInDirectory(String path, String ivyRoleName)
	throws Exception {
		path=formatPathForDirectoryWithoutLastSeparator(path);
		if(path==null || path.length()==0 || ivyRoleName==null || ivyRoleName.trim().length()==0)
		{
			return false;
		}
		//add automatically open directory
		this.AddRightOnDirectoryForIvyRole(path, OPEN_DIRECTORY_RIGHT, ivyRoleName);
		//add the right
		List<String> roles = this.AddRightOnDirectoryForIvyRole(path, WRITE_FILES_RIGHT , ivyRoleName);
		//Check if success
		if(roles.contains(ivyRoleName))
		{
			return true;
		}else{
			return false;
		}
	}

	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.security.AbstractFileSecurityController#addRoleToManageDirectorySecurity(java.lang.String, java.lang.String)
	 */
	@Override
	public boolean addRoleToManageDirectorySecurity(String path,
			String ivyRoleName) throws Exception {
		path=formatPathForDirectoryWithoutLastSeparator(path);
		if(path==null || path.length()==0 || ivyRoleName==null || ivyRoleName.trim().length()==0)
		{
			return false;
		}
		//add the right
		List<String> roles = this.AddRightOnDirectoryForIvyRole(path, MANAGE_SECURITY_RIGHT , ivyRoleName);
		//Check if success
		if(roles.contains(ivyRoleName))
		{
			return true;
		}else{
			return false;
		}
	}

	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.security.AbstractFileSecurityController#addRoleToOpenDirectory(java.lang.String, java.lang.String)
	 */
	@Override
	public boolean addRoleToOpenDirectory(String path, String ivyRoleName)
	throws Exception {
		path=formatPathForDirectoryWithoutLastSeparator(path);
		if(path==null || path.length()==0 || ivyRoleName==null || ivyRoleName.trim().length()==0)
		{
			return false;
		}
		//add the right
		List<String> roles = this.AddRightOnDirectoryForIvyRole(path, OPEN_DIRECTORY_RIGHT , ivyRoleName);
		//Check if success
		if(roles.contains(ivyRoleName))
		{
			return true;
		}else{
			return false;
		}
	}

	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.security.AbstractFileSecurityController#addRoleToUpdateDirectory(java.lang.String, java.lang.String)
	 */
	@Override
	public boolean addRoleToUpdateDirectory(String path, String ivyRoleName)
	throws Exception {
		path=formatPathForDirectoryWithoutLastSeparator(path);
		if(path==null || path.length()==0 || ivyRoleName==null || ivyRoleName.trim().length()==0)
		{
			return false;
		}
		//add automatically open directory
		this.AddRightOnDirectoryForIvyRole(path, OPEN_DIRECTORY_RIGHT, ivyRoleName);
		//add the right
		List<String> roles = this.AddRightOnDirectoryForIvyRole(path, UPDATE_DIRECTORY_RIGHT , ivyRoleName);
		//Check if success
		if(roles.contains(ivyRoleName))
		{
			return true;
		}else{
			return false;
		}
	}

	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.security.AbstractFileSecurityController#canRoleDeleteDirectory(java.lang.String, java.lang.String)
	 */
	@Override
	public boolean canRoleDeleteDirectory(String path, String ivyRoleName)
	throws Exception {
		path=formatPathForDirectoryWithoutLastSeparator(path);
		if(path==null || path.length()==0 || ivyRoleName==null || ivyRoleName.trim().length()==0)
		{
			throw  new IllegalArgumentException("One of the parameter is not set in method canRoleDeleteDirectory(String path, String ivyRoleName) " +
					" in "+this.getClass());
		}
		List<String> roles = this.getRolesNamesAllowedForRightOnDirectory(path, DELETE_DIRECTORY_RIGHT);
		if(roles.contains(ivyRoleName.trim())){
			return true;
		}else{
			return false;
		}
	}

	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.security.AbstractFileSecurityController#canRoleDeleteFilesInDirectory(java.lang.String, java.lang.String)
	 */
	@Override
	public boolean canRoleDeleteFilesInDirectory(String path, String ivyRoleName)
	throws Exception {
		path=formatPathForDirectoryWithoutLastSeparator(path);
		if(path==null || path.length()==0 || ivyRoleName==null || ivyRoleName.trim().length()==0)
		{
			throw  new IllegalArgumentException("One of the parameter is not set in method canRoleDeleteFilesInDirectory(String path, String ivyRoleName) " +
					" in "+this.getClass());
		}
		List<String> roles = this.getRolesNamesAllowedForRightOnDirectory(path, DELETE_FILES_RIGHT);
		if(roles.contains(ivyRoleName.trim())){
			return true;
		}else{
			return false;
		}
	}

	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.security.AbstractFileSecurityController#canRoleEditFilesInDirectory(java.lang.String, java.lang.String)
	 */
	@Override
	public boolean canRoleEditFilesInDirectory(String path, String ivyRoleName)
	throws Exception {
		path=formatPathForDirectoryWithoutLastSeparator(path);
		if(path==null || path.length()==0 || ivyRoleName==null || ivyRoleName.trim().length()==0)
		{
			throw  new IllegalArgumentException("One of the parameter is not set in method canRoleEditFilesInDirectory(String path, String ivyRoleName) " +
					" in "+this.getClass());
		}
		List<String> roles = this.getRolesNamesAllowedForRightOnDirectory(path, WRITE_FILES_RIGHT);
		if(roles.contains(ivyRoleName.trim())){
			return true;
		}else{
			return false;
		}
	}

	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.security.AbstractFileSecurityController#canRoleManageDirectorySecurity(java.lang.String, java.lang.String)
	 */
	@Override
	public boolean canRoleManageDirectorySecurity(String path,
			String ivyRoleName) throws Exception {
		path=formatPathForDirectoryWithoutLastSeparator(path);
		if(path==null || path.length()==0 || ivyRoleName==null || ivyRoleName.trim().length()==0)
		{
			throw  new IllegalArgumentException("One of the parameter is not set in method canRoleManageDirectorySecurity(String path, String ivyRoleName) " +
					" in "+this.getClass());
		}
		List<String> roles = this.getRolesNamesAllowedForRightOnDirectory(path, MANAGE_SECURITY_RIGHT);
		if(roles.contains(ivyRoleName.trim())){
			return true;
		}else{
			return false;
		}
	}

	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.security.AbstractFileSecurityController#canRoleOpenDirectory(java.lang.String, java.lang.String)
	 */
	@Override
	public boolean canRoleOpenDirectory(String path, String ivyRoleName)
	throws Exception {
		path=formatPathForDirectoryWithoutLastSeparator(path);
		if(path==null || path.length()==0 || ivyRoleName==null || ivyRoleName.trim().length()==0)
		{
			throw  new IllegalArgumentException("One of the parameter is not set in method canRoleOpenDirectory(String path, String ivyRoleName) " +
					" in "+this.getClass());
		}
		List<String> roles = this.getRolesNamesAllowedForRightOnDirectory(path, OPEN_DIRECTORY_RIGHT);
		if(roles.contains(ivyRoleName.trim())){
			return true;
		}else{
			return false;
		}
	}

	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.security.AbstractFileSecurityController#canRoleUpdateDirectory(java.lang.String, java.lang.String)
	 */
	@Override
	public boolean canRoleUpdateDirectory(String path, String ivyRoleName)
	throws Exception {
		path=formatPathForDirectoryWithoutLastSeparator(path);
		if(path==null || path.length()==0 || ivyRoleName==null || ivyRoleName.trim().length()==0)
		{
			throw  new IllegalArgumentException("One of the parameter is not set in method canRoleUpdateDirectory(String path, String ivyRoleName) " +
					" in "+this.getClass());
		}
		List<String> roles = this.getRolesNamesAllowedForRightOnDirectory(path, UPDATE_DIRECTORY_RIGHT);
		if(roles.contains(ivyRoleName.trim())){
			return true;
		}else{
			return false;
		}
	}

	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.security.AbstractFileSecurityController#canUserDeleteDirectory(java.lang.String, java.lang.String)
	 */
	@Override
	public boolean canUserDeleteDirectory(String path, String ivyUserName)
	throws Exception {
		path=formatPathForDirectoryWithoutLastSeparator(path);
		if(path==null || path.length()==0 || ivyUserName==null || ivyUserName.trim().length()==0)
		{
			throw  new IllegalArgumentException("One of the parameter is not set in method canUserDeleteDirectory(String path, String ivyUserName) " +
					" in "+this.getClass());
		}
		List <IRole> userRoles = List.create(IRole.class);
		try{
			userRoles.addAll(Ivy.wf().getSecurityContext().findUser(ivyUserName).getAllRoles());
		}catch(Throwable t){

		}
		boolean found = false;
		if(userRoles==null || userRoles.isEmpty())
		{
			return false;
		}
		else{
			List <String> roles = List.create(String.class);
			roles=this.getRolesNamesAllowedForRightOnDirectory(path, DELETE_DIRECTORY_RIGHT);
			for(IRole r : userRoles)
			{
				if(roles.contains(r.getName()))
				{
					found = true;
					break;
				}
			}

		}
		return found;
	}

	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.security.AbstractFileSecurityController#canUserDeleteFilesInDirectory(java.lang.String, java.lang.String)
	 */
	@Override
	public boolean canUserDeleteFilesInDirectory(String path, String ivyUserName)
	throws Exception {
		path=formatPathForDirectoryWithoutLastSeparator(path);
		if(path==null || path.length()==0 || ivyUserName==null || ivyUserName.trim().length()==0)
		{
			throw  new IllegalArgumentException("One of the parameter is not set in method canUserDeleteFilesInDirectory(String path, String ivyUserName) " +
					" in "+this.getClass());
		}
		List <IRole> userRoles = List.create(IRole.class);
		try{
			userRoles.addAll(Ivy.wf().getSecurityContext().findUser(ivyUserName).getAllRoles());
		}catch(Throwable t){

		}
		boolean found = false;
		if(userRoles==null || userRoles.isEmpty())
		{
			return false;
		}
		else{
			List <String> roles = List.create(String.class);
			roles=this.getRolesNamesAllowedForRightOnDirectory(path, DELETE_FILES_RIGHT);
			for(IRole r : userRoles)
			{
				if(roles.contains(r.getName()))
				{
					found = true;
					break;
				}
			}

		}
		return found;
	}

	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.security.AbstractFileSecurityController#canUserEditFilesInDirectory(java.lang.String, java.lang.String)
	 */
	@Override
	public boolean canUserEditFilesInDirectory(String path, String ivyUserName)
	throws Exception {
		path=formatPathForDirectoryWithoutLastSeparator(path);
		if(path==null || path.length()==0 || ivyUserName==null || ivyUserName.trim().length()==0)
		{
			throw  new IllegalArgumentException("One of the parameter is not set in method canUserEditFilesInDirectory(String path, String ivyUserName) " +
					" in "+this.getClass());
		}
		List <IRole> userRoles = List.create(IRole.class);
		try{
			userRoles.addAll(Ivy.wf().getSecurityContext().findUser(ivyUserName).getAllRoles());
		}catch(Throwable t){

		}
		boolean found = false;
		if(userRoles==null || userRoles.isEmpty())
		{
			return false;
		}
		else{
			List <String> roles = List.create(String.class);
			roles=this.getRolesNamesAllowedForRightOnDirectory(path, WRITE_FILES_RIGHT);
			for(IRole r : userRoles)
			{
				if(roles.contains(r.getName()))
				{
					found = true;
					break;
				}
			}

		}
		return found;
	}

	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.security.AbstractFileSecurityController#canUserManageDirectorySecurity(java.lang.String, java.lang.String)
	 */
	@Override
	public boolean canUserManageDirectorySecurity(String path,
			String ivyUserName) throws Exception {
		path=formatPathForDirectoryWithoutLastSeparator(path);
		if(path==null || path.length()==0 || ivyUserName==null || ivyUserName.trim().length()==0)
		{
			throw  new IllegalArgumentException("One of the parameter is not set in method canUserManageDirectorySecurity(String path, String ivyUserName) " +
					" in "+this.getClass());
		}
		List <IRole> userRoles = List.create(IRole.class);
		try{
			userRoles.addAll(Ivy.wf().getSecurityContext().findUser(ivyUserName).getAllRoles());
		}catch(Throwable t){

		}
		boolean found = false;
		if(userRoles==null || userRoles.isEmpty())
		{
			return false;
		}
		else{
			List <String> roles = List.create(String.class);
			roles=this.getRolesNamesAllowedForRightOnDirectory(path,MANAGE_SECURITY_RIGHT);
			for(IRole r : userRoles)
			{
				if(roles.contains(r.getName()))
				{
					found = true;
					break;
				}
			}

		}
		return found;
	}

	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.security.AbstractFileSecurityController#canUserOpenDirectory(java.lang.String, java.lang.String)
	 */
	@Override
	public boolean canUserOpenDirectory(String path, String ivyUserName)
	throws Exception {
		path=formatPathForDirectoryWithoutLastSeparator(path);
		if(path==null || path.length()==0 || ivyUserName==null || ivyUserName.trim().length()==0)
		{
			throw  new IllegalArgumentException("One of the parameter is not set in method canUserOpenDirectory(String path, String ivyUserName) " +
					" in "+this.getClass());
		}
		List <IRole> userRoles = List.create(IRole.class);
		try{
			userRoles.addAll(Ivy.wf().getSecurityContext().findUser(ivyUserName).getAllRoles());
		}catch(Throwable t){

		}
		boolean found = false;
		if(userRoles==null || userRoles.isEmpty())
		{
			return false;
		}
		else{
			List <String> roles = List.create(String.class);
			roles=this.getRolesNamesAllowedForRightOnDirectory(path, OPEN_DIRECTORY_RIGHT);
			for(IRole r : userRoles)
			{
				if(roles.contains(r.getName()))
				{
					found = true;
					break;
				}
			}

		}
		return found;
	}

	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.security.AbstractFileSecurityController#canUserUpdateDirectory(java.lang.String, java.lang.String)
	 */
	@Override
	public boolean canUserUpdateDirectory(String path, String ivyUserName)
	throws Exception {
		path=formatPathForDirectoryWithoutLastSeparator(path);
		if(path==null || path.length()==0 || ivyUserName==null || ivyUserName.trim().length()==0)
		{
			throw  new IllegalArgumentException("One of the parameter is not set in method canUserUpdateDirectory(String path, String ivyUserName) " +
					" in "+this.getClass());
		}
		List <IRole> userRoles = List.create(IRole.class);
		try{
			userRoles.addAll(Ivy.wf().getSecurityContext().findUser(ivyUserName).getAllRoles());
		}catch(Throwable t){

		}
		boolean found = false;
		if(userRoles==null || userRoles.isEmpty())
		{
			return false;
		}
		else{
			List <String> roles = List.create(String.class);
			roles=this.getRolesNamesAllowedForRightOnDirectory(path, UPDATE_DIRECTORY_RIGHT);
			for(IRole r : userRoles)
			{
				if(roles.contains(r.getName()))
				{
					found = true;
					break;
				}
			}

		}
		return found;
	}

	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.security.AbstractFileSecurityController#createDirectory(java.lang.String, ch.ivyteam.ivy.scripting.objects.List, ch.ivyteam.ivy.scripting.objects.List, ch.ivyteam.ivy.scripting.objects.List, ch.ivyteam.ivy.scripting.objects.List, ch.ivyteam.ivy.scripting.objects.List, ch.ivyteam.ivy.scripting.objects.List)
	 */
	@Override
	public FolderOnServer createDirectory(String directoryPath,
			List<String> grantedIvyRoleNamesToManageRights,
			List<String> grantedIvyRoleNamesToDeleteDirectory,
			List<String> grantedIvyRoleNamesToUpdateDirectory,
			List<String> grantedIvyRoleNamesToOpenDirectory,
			List<String> grantedIvyRoleNamesToWriteFiles,
			List<String> grantedIvyRoleNamesToDeleteFiles) throws Exception {

		directoryPath = formatPathForDirectoryWithoutLastSeparator(directoryPath);
		if(directoryPath == null || directoryPath.length()==0){
			throw  new IllegalArgumentException("The parameter 'directoryPath' is null in method createDirectory " +
					" in "+this.getClass());
		}


		if(this.directoryExists(directoryPath))
		{// if directory exists we just return the existing directory 
			return getDirectoryWithPath(directoryPath);
		}
		//Check recursively if dir structure exists
		String parent = getParentDirectoryPath(directoryPath);
		if(parent.trim().length()>0 && !this.directoryExists(parent))
		{
			createDirectory(parent,
					grantedIvyRoleNamesToManageRights,
					grantedIvyRoleNamesToDeleteDirectory,
					grantedIvyRoleNamesToUpdateDirectory,
					grantedIvyRoleNamesToOpenDirectory,
					grantedIvyRoleNamesToWriteFiles,
					grantedIvyRoleNamesToDeleteFiles);
		}
		Ivy.log().info("grantedIvyRoleNamesToDeleteDirectory 1 "+grantedIvyRoleNamesToDeleteDirectory);
		grantedIvyRoleNamesToManageRights = ensureAdminRoleInList(grantedIvyRoleNamesToManageRights);
		grantedIvyRoleNamesToDeleteDirectory = ensureAdminRoleInList(grantedIvyRoleNamesToDeleteDirectory);
		grantedIvyRoleNamesToUpdateDirectory = ensureAdminRoleInList(grantedIvyRoleNamesToUpdateDirectory);
		grantedIvyRoleNamesToOpenDirectory = ensureAdminRoleInList(grantedIvyRoleNamesToOpenDirectory);
		grantedIvyRoleNamesToWriteFiles = ensureAdminRoleInList(grantedIvyRoleNamesToWriteFiles);
		grantedIvyRoleNamesToDeleteFiles = ensureAdminRoleInList(grantedIvyRoleNamesToDeleteFiles);
		Ivy.log().info("grantedIvyRoleNamesToDeleteDirectory 2 "+grantedIvyRoleNamesToDeleteDirectory);
		FolderOnServer fos = new FolderOnServer();
		directoryPath=formatPathForDirectoryWithoutLastSeparator(directoryPath);
		String dirName=getDirectoryNameFromPath(directoryPath);
		String query="INSERT INTO "+this.dirTableNameSpace+" (dir_name, dir_path, creation_user_id, creation_date, creation_time, modification_user_id, modification_date," +
		"modification_time,is_protected, cmdr, cod, cud, cdd, cwf, cdf) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		java.util.Date d = new java.util.Date();
		IExternalDatabaseRuntimeConnection connection=null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			PreparedStatement stmt = null;
			try{
				stmt = jdbcConnection.prepareStatement(query);

				fos.setName(dirName);
				fos.setCdd(grantedIvyRoleNamesToDeleteDirectory);
				fos.setCdf(grantedIvyRoleNamesToDeleteFiles);
				fos.setCmrd(grantedIvyRoleNamesToManageRights);
				fos.setCod(grantedIvyRoleNamesToOpenDirectory);
				fos.setCud(grantedIvyRoleNamesToUpdateDirectory);
				fos.setCwf(grantedIvyRoleNamesToWriteFiles);
				fos.setIs_protected(true);
				fos.setPath(directoryPath);
				ensureRightsIntegrityInDirectory(fos);	

				stmt.setString(1, dirName);
				stmt.setString(2, directoryPath);
				stmt.setString(3, Ivy.session().getSessionUserName());
				stmt.setDate(4, new java.sql.Date(d.getTime()));
				stmt.setTime(5, new java.sql.Time(d.getTime()));
				stmt.setString(6, Ivy.session().getSessionUserName());
				stmt.setDate(7, new java.sql.Date(d.getTime()));
				stmt.setTime(8, new java.sql.Time(d.getTime()));
				stmt.setInt(9, 1);
				stmt.setString(10, returnStringFromList(fos.getCmrd()));
				stmt.setString(11, returnStringFromList(fos.getCod()));
				stmt.setString(12, returnStringFromList(fos.getCud()));
				stmt.setString(13, returnStringFromList(fos.getCdd()));
				stmt.setString(14, returnStringFromList(fos.getCwf()));
				stmt.setString(15, returnStringFromList(fos.getCdf()));
				int i = stmt.executeUpdate();
				if(i>0)
				{
					fos.setId(i);
				}
				else
				{
					fos=getDirectoryWithPath(directoryPath);
				}

			}finally{
				DatabaseUtil.close(stmt);
			}
		}finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}
		return fos;
	}


	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.security.AbstractFileSecurityController#createDirectoryWithParentSecurity(java.lang.String)
	 */
	@Override
	public FolderOnServer createDirectoryWithParentSecurity(String directoryPath)
	throws Exception {
		//Check incoming parameters
		directoryPath = formatPathForDirectoryWithoutLastSeparator(directoryPath);
		if(directoryPath == null || directoryPath.length()==0){
			throw  new IllegalArgumentException("The parameter 'directoryPath' is null in method createDirectoryWithParentSecurity " +
					" in "+this.getClass());
		}

		if(!directoryPath.contains("/"))
		{//the directory has no parent, it is a root directory
			return createIndestructibleDirectory(directoryPath, null);
		}

		String parentPath = getParentDirectoryPath(directoryPath);
		if(!this.directoryExists(parentPath))
		{//creates recursively all the missing parents
			createDirectoryWithParentSecurity(parentPath);
		}

		FolderOnServer parent = getDirectoryWithPath(parentPath);


		return this.createDirectory(directoryPath, parent.getCmrd(), parent.getCdd(), parent.getCud(), parent.getCod(),parent.getCwf(), parent.getCdf());
	}

	@Override
	public FolderOnServer createOpenDirectory(String directoryPath)
	throws Exception {
		directoryPath = formatPathForDirectoryWithoutLastSeparator(directoryPath);
		if(directoryPath == null || directoryPath.length()==0){
			throw  new IllegalArgumentException("The parameter 'directoryPath' is null in method  createOpenDirectory " +
					" in "+this.getClass());
		}
		String admin = getFileManagerAdminRoleName();

		List<String> l1 = List.create(String.class);
		List<String> l2 = List.create(String.class);
		l1.add(admin);
		l2.add("Everybody");


		return this.createDirectory(directoryPath, l1, l2, l2, l2, l2, l2);
	}

	@Override
	public FolderOnServer createDirectoryWithUserAsRightsGuideline(
			String directoryPath, String ivyUserName) throws Exception {

		directoryPath = formatPathForDirectoryWithoutLastSeparator(directoryPath);
		if(directoryPath == null || directoryPath.length()==0){
			throw  new IllegalArgumentException("The parameter 'directoryPath' is null in method  createDirectoryWithUserAsRightsGuideline " +
					" in "+this.getClass());
		}
		if(ivyUserName==null || ivyUserName.trim().length()==0)
		{
			throw  new IllegalArgumentException("The parameter 'ivyUserName' is null in method  createDirectoryWithUserAsRightsGuideline " +
					" in "+this.getClass());
		}
		IUser user=null;
		try{
			user = Ivy.session().getSecurityContext().findUser(ivyUserName);
		}catch (Exception ex){
			throw  new Exception("Cannot get the Ivy User associated with the user name in method  createDirectoryWithUserAsRightsGuideline " +
					" in "+this.getClass() +" "+ex.getMessage());
		}
		if(user==null)
		{
			throw  new IllegalArgumentException("The parameter 'ivyUserName' is invalid in method  createDirectoryWithUserAsRightsGuideline " +
					" in "+this.getClass());
		}
		List<IRole> roles = List.create(IRole.class);
		roles.addAll(user.getRoles());
		List<String> roleNames = List.create(String.class);
		for(IRole r:roles){
			if(!r.getName().equalsIgnoreCase("Everybody"))
			{
				roleNames.add(r.getName());
			}
		}

		return this.createIndestructibleDirectory(directoryPath, roleNames);
	}

	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.security.AbstractFileSecurityController#createIndestructibleDirectory(java.lang.String, ch.ivyteam.ivy.scripting.objects.List)
	 */
	@Override
	public FolderOnServer createIndestructibleDirectory(String directoryPath,
			List<String> allowedIvyRoleNames) throws Exception {
		//Check incoming parameters
		directoryPath = formatPathForDirectoryWithoutLastSeparator(directoryPath);
		if(directoryPath == null || directoryPath.length()==0){
			throw  new IllegalArgumentException("The parameter 'directoryPath' is null in method createIndestructibleDirectory " +
					" in "+this.getClass());
		}
		if(allowedIvyRoleNames==null || allowedIvyRoleNames.isEmpty())
		{
			allowedIvyRoleNames = List.create(String.class);
			allowedIvyRoleNames.add("Everybody");
		}
		directoryPath = formatPathForDirectoryWithoutLastSeparator(directoryPath);

		//Gives all the rights to the admin and file rights to the given allowedIvyRoleNames List
		List<String> grantedIvyRoleNamesToManageRights = List.create(String.class);
		List<String> grantedIvyRoleNamesToDeleteDirectory = List.create(String.class);
		List<String> grantedIvyRoleNamesToUpdateDirectory = List.create(String.class);
		List<String> grantedIvyRoleNamesToOpenDirectory = List.create(String.class);
		List<String> grantedIvyRoleNamesToWriteFiles = List.create(String.class);
		List<String> grantedIvyRoleNamesToDeleteFiles  = List.create(String.class);

		String admin = getFileManagerAdminRoleName();
		grantedIvyRoleNamesToManageRights.add(admin);
		grantedIvyRoleNamesToDeleteDirectory.add(admin);
		grantedIvyRoleNamesToUpdateDirectory.add(admin);
		grantedIvyRoleNamesToOpenDirectory.addAll(allowedIvyRoleNames);
		grantedIvyRoleNamesToWriteFiles.addAll(allowedIvyRoleNames);
		grantedIvyRoleNamesToDeleteFiles.addAll(allowedIvyRoleNames);


		return createDirectory(directoryPath,
				grantedIvyRoleNamesToManageRights,
				grantedIvyRoleNamesToDeleteDirectory,
				grantedIvyRoleNamesToUpdateDirectory,
				grantedIvyRoleNamesToOpenDirectory,
				grantedIvyRoleNamesToWriteFiles,
				grantedIvyRoleNamesToDeleteFiles);
	}

	/**
	 * Takes a list of names of Ivy Roles and:<br>
	 * . Creates a new List<String> if this List of names of Ivy Roles is null,
	 * . Adds the administrator Role name returned by this.getFileManagerAdminRoleName() in the list if it is not already in it.
	 * @param roles: the initial List<String> of names of Ivy Roles
	 * @return the List<String> of names of Ivy Roles containing the administrator Role name if it exists.
	 */
	public List<String> ensureAdminRoleInList(List<String> roles)
	{
		if(roles==null)
		{
			roles=List.create(String.class);
		}
		String admin =null;
		try{
			admin = this.getFileManagerAdminRoleName();
		}catch(Throwable t){

		}
		if(admin!=null && !roles.contains(admin))
		{
			roles.add(admin);
		}
		return roles;

	}

	/**
	 * Ensure the rights integrity is followed in the different rights lists of the given FolderOnServer
	 * @param _directory: the directory represented by a ch.ivyteam.ivy.addons.filemanager.FolderOnServer object
	 * @return the ch.ivyteam.ivy.addons.filemanager.FolderOnServer object which rights lists follow the following rules:
	 * <ul>
	 * <li> If a Role is in the admin list, then it will be present in all the other lists (it has all the rights),
	 * <li> If a Role is in the "delete directory list", then it will be present in the "open directory" and "update directory" lists,
	 * <li> If a Role is in the "update directory list", then it will be present in the "open directory" list,
	 * <li> If a Role is in the "delete files list", then it will be present in the "open directory" and "write files" lists,
	 * <li> If a Role is in the "write files list", then it will be present in the "open directory".
	 * </ul>
	 * If the given FolderOnServer was null, then null is returned.
	 */
	public FolderOnServer ensureRightsIntegrityInDirectory(FolderOnServer _directory)
	{
		if(_directory==null)
		{
			return null;
		}
		// check the roles lists objects
		if(_directory.getCmrd()==null)
		{
			_directory.setCmrd(List.create(String.class));
		}
		if(_directory.getCod()==null)
		{
			_directory.setCod(List.create(String.class));
		}
		if(_directory.getCud()==null)
		{
			_directory.setCud(List.create(String.class));
		}
		if(_directory.getCdd()==null)
		{
			_directory.setCdd(List.create(String.class));
		}
		if(_directory.getCdf()==null)
		{
			_directory.setCdf(List.create(String.class));
		}
		if(_directory.getCwf()==null)
		{
			_directory.setCwf(List.create(String.class));
		}

		//CHeck integrity in the rights

		//ensure admin is in it + administrators should have all the rights
		_directory.setCmrd(ensureAdminRoleInList(_directory.getCmrd()));
		for(String s: _directory.getCmrd())
		{
			if(!_directory.getCdd().contains(s))
			{
				_directory.getCdd().add(s);
			}
			if(!_directory.getCud().contains(s))
			{
				_directory.getCud().add(s);
			}
			if(!_directory.getCod().contains(s))
			{
				_directory.getCod().add(s);
			}
			if(!_directory.getCdf().contains(s))
			{
				_directory.getCdf().add(s);
			}
			if(!_directory.getCwf().contains(s))
			{
				_directory.getCwf().add(s);
			}
		}

		//Who can delete a directory should be able to open and update it
		for(String s: _directory.getCdd())
		{
			if(!_directory.getCod().contains(s))
			{
				_directory.getCod().add(s);
			}
			if(!_directory.getCud().contains(s))
			{
				_directory.getCud().add(s);
			}
		}

		//Who can update a directory should be able to open it
		for(String s: _directory.getCud())
		{
			if(!_directory.getCod().contains(s))
			{
				_directory.getCod().add(s);
			}
		}

		//Who can delete a file should be able to update it and to open the directory
		for(String s: _directory.getCdf())
		{
			if(!_directory.getCod().contains(s))
			{
				_directory.getCod().add(s);
			}
			if(!_directory.getCwf().contains(s))
			{
				_directory.getCwf().add(s);
			}
		}

		//Who can write a file should be able to open the directory
		for(String s: _directory.getCwf())
		{
			if(!_directory.getCod().contains(s))
			{
				_directory.getCod().add(s);
			}
		}

		return _directory;
	}



	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.security.AbstractFileSecurityController#deactivateSecurityOnDirectory(java.lang.String)
	 */
	@Override
	public boolean deactivateSecurityOnDirectory(String path) throws Exception {
		path=formatPathForDirectoryWithoutLastSeparator(path);
		if(path==null || path.length()==0)
		{
			return false;
		}

		String query="UPDATE "+this.dirTableNameSpace+" SET is_protected = ? WHERE dir_path LIKE ?";
		IExternalDatabaseRuntimeConnection connection = null;
		boolean flag=false;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			PreparedStatement stmt = null;
			try{			
				stmt = jdbcConnection.prepareStatement(query);
				stmt.setInt(1, 0);
				stmt.setString(2, path);

				flag = stmt.executeUpdate()>0;
			}
			finally{
				DatabaseUtil.close(stmt);
			}
		} 
		finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}
		return flag;
	}

	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.security.AbstractFileSecurityController#getFileManagerAdminRoleName()
	 */
	@Override
	public String getFileManagerAdminRoleName() throws Exception {
		return Ivy.var().get("xivy_addons_fileManager_admin_roleName");
	}

	@Override
	public boolean isUserFileManagerAdmin(String ivyUserName) throws Exception {
		if(ivyUserName == null || ivyUserName.trim().length()==0)
		{
			throw  new IllegalArgumentException("The parameter is not set in method isUserFileManagerAdmin(String ivyUserName) " +
					" in "+this.getClass());
		}
		String adminRole= this.getFileManagerAdminRoleName();
		if(adminRole==null || adminRole.length()==0)
		{
			return false;
		}
		List <IRole> userRoles = List.create(IRole.class);
		try{
			userRoles.addAll(Ivy.wf().getSecurityContext().findUser(ivyUserName).getAllRoles());
		}catch(Throwable t){

		}
		boolean found = false;
		if(userRoles==null || userRoles.isEmpty())
		{
			return false;
		}
		else{
			for(IRole r : userRoles)
			{
				if(r.getName().equals(adminRole))
				{
					found = true;
					break;
				}
			}
		}
		return found;
	}

	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.security.AbstractFileSecurityController#removeRightOnDirectory(java.lang.String, int, ch.ivyteam.ivy.scripting.objects.List)
	 */
	@Override
	public List<String> removeRightOnDirectory(String path, int rightType,
			List<String> disallowedIvyRoleNames) throws Exception {
		path=formatPathForDirectoryWithoutLastSeparator(path);	
		if(path==null || path.length()==0 || disallowedIvyRoleNames==null || disallowedIvyRoleNames.size()==0)
		{
			throw  new IllegalArgumentException("One of the parameter is not set in method removeRightOnDirectory(String path, " +
					"int rightType, List<String> disallowedIvyRoleNames) in "+this.getClass());
		}

		if(rightType<1 || rightType>DELETE_FILES_RIGHT )
		{
			throw  new IllegalArgumentException("The right type parameter is not valid in method removeRightOnDirectory(String path, " +
					"int rightType, List<String> disallowedIvyRoleNames) in "+this.getClass());
		}


		List<String> roles = this.getRolesNamesAllowedForRightOnDirectory(path, rightType);
		StringBuilder concat =new StringBuilder("");
		if(roles.size()==0)
		{
			return roles;
		}
		roles.removeAll(disallowedIvyRoleNames);
		if(!roles.isEmpty())
		{
			for(int i=0; i<roles.size()-1; i++)
			{
				concat.append(roles.get(i));
				concat.append(",");
			}
			concat.append(roles.get(roles.size()-1));
		}

		String query="";
		IExternalDatabaseRuntimeConnection connection = null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			PreparedStatement stmt = null;
			try{			
				if(rightType == DELETE_DIRECTORY_RIGHT)
				{
					query="UPDATE "+this.dirTableNameSpace+" SET cdd = ? WHERE dir_path LIKE ?";
				}else if( rightType == DELETE_FILES_RIGHT)
				{
					query="UPDATE "+this.dirTableNameSpace+" SET cdf = ? WHERE dir_path LIKE ?";
				}
				else if( rightType == OPEN_DIRECTORY_RIGHT)
				{
					query="UPDATE "+this.dirTableNameSpace+" SET cod = ? WHERE dir_path LIKE ?";
				}
				else if( rightType == UPDATE_DIRECTORY_RIGHT)
				{
					query="UPDATE "+this.dirTableNameSpace+" SET cud = ? WHERE dir_path LIKE ?";
				}
				else if( rightType == WRITE_FILES_RIGHT)
				{
					query="UPDATE "+this.dirTableNameSpace+" SET cwf = ? WHERE dir_path LIKE ?";
				}else if( rightType == MANAGE_SECURITY_RIGHT)
				{
					query="UPDATE "+this.dirTableNameSpace+" SET cmdr = ? WHERE dir_path LIKE ?";
				}
				stmt = jdbcConnection.prepareStatement(query);
				stmt.setString(1, concat.toString());
				stmt.setString(2, path);
				stmt.executeUpdate();
			}
			finally{
				DatabaseUtil.close(stmt);
			}
		} 
		finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}
		return  this.getRolesNamesAllowedForRightOnDirectory(path, rightType);
	}

	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.security.AbstractFileSecurityController#removeRoleFromDeleteDirectory(java.lang.String, java.lang.String)
	 */
	@Override
	public boolean removeRoleFromDeleteDirectory(String path, String ivyRoleName)
	throws Exception {
		path=formatPathForDirectoryWithoutLastSeparator(path);	
		if(path==null || path.length()==0 || ivyRoleName==null || ivyRoleName.trim().length()==0)
		{
			throw  new IllegalArgumentException("One of the parameter is not set in method removeRightOnDirectory(String path, " +
					"int rightType, List<String> disallowedIvyRoleNames) in "+this.getClass());
		}
		List<String> roles = List.create(String.class);
		roles.add(ivyRoleName);
		List<String> result = this.removeRightOnDirectory(path, DELETE_DIRECTORY_RIGHT, roles);



		return !result.contains(ivyRoleName);
	}

	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.security.AbstractFileSecurityController#removeRoleFromDeleteFilesInDirectory(java.lang.String, java.lang.String)
	 */
	@Override
	public boolean removeRoleFromDeleteFilesInDirectory(String path,
			String ivyRoleName) throws Exception {
		path=formatPathForDirectoryWithoutLastSeparator(path);	
		if(path==null || path.length()==0 || ivyRoleName==null || ivyRoleName.trim().length()==0)
		{
			throw  new IllegalArgumentException("One of the parameter is not set in method removeRightOnDirectory(String path, " +
					"int rightType, List<String> disallowedIvyRoleNames) in "+this.getClass());
		}
		List<String> roles = List.create(String.class);
		roles.add(ivyRoleName);
		List<String> result = this.removeRightOnDirectory(path, DELETE_FILES_RIGHT, roles);



		return !result.contains(ivyRoleName);
	}

	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.security.AbstractFileSecurityController#removeRoleFromEditFilesInDirectory(java.lang.String, java.lang.String)
	 */
	@Override
	public boolean removeRoleFromEditFilesInDirectory(String path,
			String ivyRoleName) throws Exception {
		path=formatPathForDirectoryWithoutLastSeparator(path);	
		if(path==null || path.length()==0 || ivyRoleName==null || ivyRoleName.trim().length()==0)
		{
			throw  new IllegalArgumentException("One of the parameter is not set in method removeRightOnDirectory(String path, " +
					"int rightType, List<String> disallowedIvyRoleNames) in "+this.getClass());
		}
		List<String> roles = List.create(String.class);
		roles.add(ivyRoleName);
		List<String> result = this.removeRightOnDirectory(path, WRITE_FILES_RIGHT, roles);



		return !result.contains(ivyRoleName);
	}

	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.security.AbstractFileSecurityController#removeRoleFromManageDirectorySecurity(java.lang.String, java.lang.String)
	 */
	@Override
	public boolean removeRoleFromManageDirectorySecurity(String path,
			String ivyRoleName) throws Exception {
		path=formatPathForDirectoryWithoutLastSeparator(path);	
		if(path==null || path.length()==0 || ivyRoleName==null || ivyRoleName.trim().length()==0)
		{
			throw  new IllegalArgumentException("One of the parameter is not set in method removeRightOnDirectory(String path, " +
					"int rightType, List<String> disallowedIvyRoleNames) in "+this.getClass());
		}
		List<String> roles = List.create(String.class);
		roles.add(ivyRoleName);
		List<String> result = this.removeRightOnDirectory(path, MANAGE_SECURITY_RIGHT, roles);



		return !result.contains(ivyRoleName);
	}

	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.security.AbstractFileSecurityController#removeRoleFromOpenDirectory(java.lang.String, java.lang.String)
	 */
	@Override
	public boolean removeRoleFromOpenDirectory(String path, String ivyRoleName)
	throws Exception {
		path=formatPathForDirectoryWithoutLastSeparator(path);	
		if(path==null || path.length()==0 || ivyRoleName==null || ivyRoleName.trim().length()==0)
		{
			throw  new IllegalArgumentException("One of the parameter is not set in method removeRightOnDirectory(String path, " +
					"int rightType, List<String> disallowedIvyRoleNames) in "+this.getClass());
		}
		List<String> roles = List.create(String.class);
		roles.add(ivyRoleName);
		List<String> result = this.removeRightOnDirectory(path, OPEN_DIRECTORY_RIGHT, roles);



		return !result.contains(ivyRoleName);
	}

	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.security.AbstractFileSecurityController#removeRoleFromUpdateDirectory(java.lang.String, java.lang.String)
	 */
	@Override
	public boolean removeRoleFromUpdateDirectory(String path, String ivyRoleName)
	throws Exception {
		path=formatPathForDirectoryWithoutLastSeparator(path);	
		if(path==null || path.length()==0 || ivyRoleName==null || ivyRoleName.trim().length()==0)
		{
			throw  new IllegalArgumentException("One of the parameter is not set in method removeRightOnDirectory(String path, " +
					"int rightType, List<String> disallowedIvyRoleNames) in "+this.getClass());
		}
		List<String> roles = List.create(String.class);
		roles.add(ivyRoleName);
		List<String> result = this.removeRightOnDirectory(path, UPDATE_DIRECTORY_RIGHT, roles);



		return !result.contains(ivyRoleName);
	}

	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.security.AbstractFileSecurityController#setRightOnDirectory(java.lang.String, int, ch.ivyteam.ivy.scripting.objects.List)
	 */
	@Override
	public List<String> setRightOnDirectory(String path, int rightType,
			List<String> allowedIvyRoleNames) throws Exception {
		path=formatPathForDirectoryWithoutLastSeparator(path);	
		if(path==null || path.length()==0 || allowedIvyRoleNames==null || allowedIvyRoleNames.size()==0)
		{
			throw  new IllegalArgumentException("One of the parameter is not set in method removeRightOnDirectory(String path, " +
					"int rightType, List<String> disallowedIvyRoleNames) in "+this.getClass());
		}

		if(rightType<1 || rightType>DELETE_FILES_RIGHT )
		{
			throw  new IllegalArgumentException("The right type parameter is not valid in method removeRightOnDirectory(String path, " +
					"int rightType, List<String> disallowedIvyRoleNames) in "+this.getClass());
		}


		allowedIvyRoleNames = this.ensureAdminRoleInList(allowedIvyRoleNames);
		String roles = returnStringFromList(allowedIvyRoleNames);

		String query="";
		IExternalDatabaseRuntimeConnection connection = null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			PreparedStatement stmt = null;
			try{			
				if(rightType == DELETE_DIRECTORY_RIGHT)
				{
					query="UPDATE "+this.dirTableNameSpace+" SET cdd = ? WHERE dir_path LIKE ?";
				}else if( rightType == DELETE_FILES_RIGHT)
				{
					query="UPDATE "+this.dirTableNameSpace+" SET cdf = ? WHERE dir_path LIKE ?";
				}
				else if( rightType == OPEN_DIRECTORY_RIGHT)
				{
					query="UPDATE "+this.dirTableNameSpace+" SET cod = ? WHERE dir_path LIKE ?";
				}
				else if( rightType == UPDATE_DIRECTORY_RIGHT)
				{
					query="UPDATE "+this.dirTableNameSpace+" SET cud = ? WHERE dir_path LIKE ?";
				}
				else if( rightType == WRITE_FILES_RIGHT)
				{
					query="UPDATE "+this.dirTableNameSpace+" SET cwf = ? WHERE dir_path LIKE ?";
				}else if( rightType == MANAGE_SECURITY_RIGHT)
				{
					query="UPDATE "+this.dirTableNameSpace+" SET cmdr = ? WHERE dir_path LIKE ?";
				}
				stmt = jdbcConnection.prepareStatement(query);
				stmt.setString(1, roles);
				stmt.setString(2, path);

				stmt.executeUpdate();
			}
			finally{
				DatabaseUtil.close(stmt);
			}
		} 
		finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}
		return  this.getRolesNamesAllowedForRightOnDirectory(path, rightType);
	}

	@Override
	public List<String> getRolesNamesAllowedForRightOnDirectory(String path,
			int rightType) throws Exception {
		path=formatPathForDirectoryWithoutLastSeparator(path);	
		if(path==null || path.length()==0 )
		{
			throw  new IllegalArgumentException("One of the parameter is not set in method removeRightOnDirectory(String path, " +
					"int rightType, List<String> disallowedIvyRoleNames) in "+this.getClass());
		}

		if(rightType<1 || rightType>DELETE_FILES_RIGHT )
		{
			throw  new IllegalArgumentException("The right type parameter is not valid in method removeRightOnDirectory(String path, " +
					"int rightType, List<String> disallowedIvyRoleNames) in "+this.getClass());
		}

		FolderOnServer fos = this.getDirectoryWithPath(path);
		if(fos==null)
		{
			return null;
		}

		if(rightType == MANAGE_SECURITY_RIGHT && fos.getCmrd()!=null){
			return fos.getCmrd();
		}
		if(rightType == OPEN_DIRECTORY_RIGHT && fos.getCod()!=null){
			return fos.getCod();
		}
		if(rightType == UPDATE_DIRECTORY_RIGHT && fos.getCud()!=null){
			return fos.getCud();
		}
		if(rightType == DELETE_DIRECTORY_RIGHT && fos.getCdd()!=null){
			return fos.getCdd();
		}
		if(rightType == WRITE_FILES_RIGHT && fos.getCwf()!=null){
			return fos.getCwf();
		}
		if(rightType == DELETE_FILES_RIGHT && fos.getCdf()!=null){
			return fos.getCdf();
		}
		return null;
	}


	@Override
	public boolean directoryExists(String _path) throws Exception{
		boolean b = false;
		_path=formatPathForDirectoryWithoutLastSeparator(_path);
		if(_path==null || _path.length()==0)
		{
			return false;
		}


		String base ="SELECT * FROM "+this.dirTableNameSpace+" WHERE dir_path LIKE ?";
		IExternalDatabaseRuntimeConnection connection=null;
		Recordset rset = null;
		//List<Record> recordList= (List<Record>) List.create(Record.class);
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			PreparedStatement stmt = null;
			try{
				stmt = jdbcConnection.prepareStatement(base);
				stmt.setString(1, _path);

				rset=executeStatement(stmt);
				int i =rset.size();

				if(i>0){
					b=true;
				}
			}catch(Exception ex){Ivy.log().error("ERROR 1 isDirectoryExist "+ex.getMessage(),ex);}
			finally{
				DatabaseUtil.close(stmt);
			}
		}catch(Exception ex){Ivy.log().error("ERROR 2 isDirectoryExist "+ex.getMessage(),ex);}
		finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}
		return b;
	}

	@Override
	public FolderOnServer getDirectoryWithPath(String _path)
	throws Exception {

		_path=formatPathForDirectoryWithoutLastSeparator(_path);
		if(_path==null || _path.length()==0)
		{
			return null;
		}

		String base ="SELECT * FROM "+this.dirTableNameSpace+" WHERE dir_path LIKE ?";
		IExternalDatabaseRuntimeConnection connection=null;
		Recordset rset = null;
		FolderOnServer fos = new FolderOnServer();
		//List<Record> recordList= (List<Record>) List.create(Record.class);
		try {
			connection = getDatabase().getAndLockConnection();		
			Connection jdbcConnection=connection.getDatabaseConnection();
			PreparedStatement stmt = null;
			String user = Ivy.session().getSessionUserName();
			try{
				stmt = jdbcConnection.prepareStatement(base);
				stmt.setString(1, _path);
				rset=executeStatement(stmt);
				
				if(rset.size()==1)
				{
					Record rec = rset.getAt(0);
					fos.setId(Integer.parseInt(rec.getField("id").toString()));
					fos.setName(rec.getField("dir_name").toString());
					fos.setPath(rec.getField("dir_path").toString());
					fos.setIs_protected(rec.getField("is_protected").toString().equals("1"));
					fos.setCmrd(returnListFromStringWithSeparator(rec.getField("cmdr").toString(),","));
					fos.setCdd(returnListFromStringWithSeparator(rec.getField("cdd").toString(),","));
					fos.setCod(returnListFromStringWithSeparator(rec.getField("cod").toString(),","));
					fos.setCud(returnListFromStringWithSeparator(rec.getField("cud").toString(),","));
					fos.setCwf(returnListFromStringWithSeparator(rec.getField("cwf").toString(),","));
					fos.setCdf(returnListFromStringWithSeparator(rec.getField("cdf").toString(),","));
					getUserRightsInFolderOnServer(fos,user);

				}
			}catch(Exception ex){Ivy.log().error("ERROR 1 getDirectoryWithPath "+ex.getMessage(),ex);}
			finally{
				DatabaseUtil.close(stmt);
			}
		}catch(Exception ex){Ivy.log().error("ERROR 2 getDirectoryWithPath "+ex.getMessage(),ex);}
		finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}
		return fos;
	}

	/**
	 * Fills the FolderOnServer boolean fields about the user rights.<br>
	 * For example: if the user can open a directory,<br>
	 * then at least one of his Ivy Role is listed in the Can Open Dir -cod field of the FolderOnServer object. <br>
	 * In such a case this method will put true in the canUserOpenDirectory attribute of the FolderOnServer object.
	 * @param _fos: the FolderOnServer Object which user rights boolean fields have to be set. If null, null will be returned.
	 * @param ivyUserName: the Ivy User name whose rights will be checked. If null the Ivy.session().getSessionUserName() will be taken.
	 * @return the FolderOnServer with  boolean fields about the user rights completed.
	 */
	public FolderOnServer getUserRightsInFolderOnServer(FolderOnServer _fos, String ivyUserName)
	{
		if(_fos==null)
		{
			return null;
		}
		List <IRole> userRoles = List.create(IRole.class);
		try{
			if(ivyUserName== null || ivyUserName.trim().length()==0){
				ivyUserName = Ivy.session().getSessionUserName();
			}
			userRoles.addAll(Ivy.wf().getSecurityContext().findUser(ivyUserName).getAllRoles());
		}catch(Throwable t)
		{
			//If a problem occurs with the username (no existing IvyUser, null etc...) the returned fos will have false in all the fields.
		}

		_fos.setCanUserDeleteDir(false);
		_fos.setCanUserDeleteFiles(false);
		_fos.setCanUserManageRights(false);
		_fos.setCanUserOpenDir(false);
		_fos.setCanUserUpdateDir(false);
		_fos.setCanUserWriteFiles(false);
		if(userRoles==null || userRoles.isEmpty())
		{
			return _fos;
		}
		for(IRole r: userRoles)
		{
			try
			{
				String roleName = r.getName();
				if(_fos.getCmrd().contains(roleName))
				{
					_fos.setCanUserManageRights(true);
				}
				if(_fos.getCdd().contains(roleName))
				{
					_fos.setCanUserDeleteDir(true);
				}
				if(_fos.getCud().contains(roleName))
				{
					_fos.setCanUserUpdateDir(true);
				}
				if(_fos.getCod().contains(roleName))
				{
					_fos.setCanUserOpenDir(true);
				}
				if(_fos.getCdf().contains(roleName))
				{
					_fos.setCanUserDeleteFiles(true);
				}
				if(_fos.getCwf().contains(roleName))
				{
					_fos.setCanUserWriteFiles(true);
				}
			}catch(Exception ex){
				// if persistencyException, we only try to get the next Role.
			}
		}

		return _fos;

	}

	@Override
	public boolean isDirectoryProtected(String path) throws Exception {

		return this.getDirectoryWithPath(path).getIs_protected();
	}

	@Override
	public ArrayList<FolderOnServer> getListDirectoriesUnderPath(
			String rootPath, String ivyUserName) throws Exception {
		ArrayList<FolderOnServer> l = new ArrayList<FolderOnServer>();
		if(rootPath==null || rootPath.trim().equals("")){
			return l;
		}
		if(ivyUserName==null || ivyUserName.trim().length()==0)
		{
			try{
				ivyUserName=Ivy.session().getSessionUserName();
			}catch(Exception ex)
			{
				throw new Exception("A Problem occurred while retrieving the Ivy Session user name.");
			}
		}
		rootPath = formatPathForDirectoryWithoutLastSeparator(rootPath);
		String base= "SELECT * FROM "+this.dirTableNameSpace+" WHERE dir_path LIKE ? ORDER BY dir_path ASC"; 
		IExternalDatabaseRuntimeConnection connection=null;

		Recordset rset = null;
		List<Record> recordList= (List<Record>) List.create(Record.class);
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			PreparedStatement stmt = null;
			try{
				stmt = jdbcConnection.prepareStatement(base);
				//Select the root
				stmt.setString(1, rootPath);
				rset=executeStatement(stmt);
				recordList=rset.toList();
				if(recordList.size()==1)
				{// there is one dir with the denoted rootpath

					Record rec = recordList.get(0);
					List<String> roles = getListFromString(rec.getField("cod").toString(),",");
					if(this.isOneUserRoleInList(roles, ivyUserName)){
						FolderOnServer fos = new FolderOnServer();
						fos.setId(Integer.parseInt(rec.getField("id").toString()));
						fos.setName(rec.getField("dir_name").toString());
						fos.setPath(formatPathForDirectoryWithoutLastSeparator(rec.getField("dir_path").toString()));
						fos.setIs_protected(rec.getField("is_protected").toString().equals("1"));
						fos.setCmrd(getListFromString(rec.getField("cmdr").toString(),","));
						fos.setCod(getListFromString(rec.getField("cod").toString(),","));
						fos.setCud(getListFromString(rec.getField("cud").toString(),","));
						fos.setCdd(getListFromString(rec.getField("cdd").toString(),","));
						fos.setCwf(getListFromString(rec.getField("cwf").toString(),","));
						fos.setCdf(getListFromString(rec.getField("cdf").toString(),","));
						getUserRightsInFolderOnServer(fos, ivyUserName);
						l.add(fos);
					}else{
						LockedFolder fos = new LockedFolder();
						fos.setId(Integer.parseInt(rec.getField("id").toString()));
						fos.setName(rec.getField("dir_name").toString());
						fos.setPath(formatPathForDirectoryWithoutLastSeparator(rec.getField("dir_path").toString()));
						fos.setIs_protected(rec.getField("is_protected").toString().equals("1"));
						fos.setCmrd(getListFromString(rec.getField("cmdr").toString(),","));
						fos.setCod(getListFromString(rec.getField("cod").toString(),","));
						fos.setCud(getListFromString(rec.getField("cud").toString(),","));
						fos.setCdd(getListFromString(rec.getField("cdd").toString(),","));
						fos.setCwf(getListFromString(rec.getField("cwf").toString(),","));
						fos.setCdf(getListFromString(rec.getField("cdf").toString(),","));
						getUserRightsInFolderOnServer(fos, ivyUserName);
						l.add(fos);
					}

					//Select all the children
					stmt.setString(1, rootPath+"/%");
					rset=executeStatement(stmt);
					recordList=rset.toList();
					for(Record rec1: recordList){
						List<String> roles1 = getListFromString(rec1.getField("cod").toString(),",");
						if(this.isOneUserRoleInList(roles1, ivyUserName)){
							FolderOnServer fos1 = new FolderOnServer();
							fos1.setId(Integer.parseInt(rec1.getField("id").toString()));
							fos1.setName(rec1.getField("dir_name").toString());
							fos1.setPath(formatPathForDirectoryWithoutLastSeparator(rec1.getField("dir_path").toString()));
							fos1.setIs_protected(rec1.getField("is_protected").toString().equals("1"));
							fos1.setCmrd(getListFromString(rec1.getField("cmdr").toString(),","));
							fos1.setCod(getListFromString(rec1.getField("cod").toString(),","));
							fos1.setCud(getListFromString(rec1.getField("cud").toString(),","));
							fos1.setCdd(getListFromString(rec1.getField("cdd").toString(),","));
							fos1.setCwf(getListFromString(rec1.getField("cwf").toString(),","));
							fos1.setCdf(getListFromString(rec1.getField("cdf").toString(),","));
							getUserRightsInFolderOnServer(fos1, ivyUserName);
							l.add(fos1);
						}else
						{
							LockedFolder fos1 = new LockedFolder();
							fos1.setId(Integer.parseInt(rec1.getField("id").toString()));
							fos1.setName(rec1.getField("dir_name").toString());
							fos1.setPath(formatPathForDirectoryWithoutLastSeparator(rec1.getField("dir_path").toString()));
							fos1.setIs_protected(rec1.getField("is_protected").toString().equals("1"));
							fos1.setCmrd(getListFromString(rec1.getField("cmdr").toString(),","));
							fos1.setCod(getListFromString(rec1.getField("cod").toString(),","));
							fos1.setCud(getListFromString(rec1.getField("cud").toString(),","));
							fos1.setCdd(getListFromString(rec1.getField("cdd").toString(),","));
							fos1.setCwf(getListFromString(rec1.getField("cwf").toString(),","));
							fos1.setCdf(getListFromString(rec1.getField("cdf").toString(),","));
							getUserRightsInFolderOnServer(fos1, ivyUserName);
							l.add(fos1);
						}

					}
				}
			}finally{
				DatabaseUtil.close(stmt);
			}
		}finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}
		return l;
	}

	/**
	 * transforms a String that represents a list of token separated with a delimiter into a List<String>
	 * @param s: the String 
	 * @param list_sep: the delimiter
	 * @return the List<String>
	 */
	public List<String> getListFromString(String s, String list_sep){
		List<String> l = List.create(String.class);
		if(s==null || s.trim().equals("") || list_sep==null || list_sep.trim().equals(""))
		{
			return l;
		}
		Scanner sc = new Scanner(s);
		sc.useDelimiter(list_sep);
		while(sc.hasNext()){
			String t = sc.next().trim();

			if(t.length()>0)
			{
				l.add(t);
			}
		}
		return l;
	}

	/**
	 * 
	 * @param roles
	 * @param ivyUserName
	 * @return
	 */
	public boolean isOneUserRoleInList(List<String> roles, String ivyUserName){
		if(roles ==null || roles.isEmpty())
		{
			return false;
		}
		List <IRole> userRoles = List.create(IRole.class);
		try{
			if(ivyUserName== null || ivyUserName.trim().length()==0){
				ivyUserName = Ivy.session().getSessionUserName();
			}
			userRoles.addAll(Ivy.wf().getSecurityContext().findUser(ivyUserName).getAllRoles());
		}catch(Throwable t)
		{
			//If a problem occurs with the username (no existing IvyUser, null etc...) the returned fos will have false in all the fields.
		}
		boolean found = false;
		for(IRole r: userRoles)
		{
			try {
				//Ivy.log().info(r.getName()+" vs "+roles.toString());
				if(roles.contains(r.getName())){
					found = true;
					break;
				}
			} catch (PersistencyException e) {
				//do nothing
			}
		}
		return found;
	}



}
