/**
 * 
 */
package ch.ivyteam.ivy.addons.filemanager.database;



import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.SQLFeatureNotSupportedException;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.concurrent.Callable;

import ch.ivyteam.db.jdbc.DatabaseUtil;
import ch.ivyteam.ivy.addons.filemanager.DocumentOnServer;
import ch.ivyteam.ivy.addons.filemanager.FileHandler;
import ch.ivyteam.ivy.addons.filemanager.FolderOnServer;
import ch.ivyteam.ivy.addons.filemanager.KeyValuePair;
import ch.ivyteam.ivy.addons.filemanager.LockedFolder;
import ch.ivyteam.ivy.addons.filemanager.ReturnedMessage;
import ch.ivyteam.ivy.addons.filemanager.ZipHandler;
import ch.ivyteam.ivy.addons.filemanager.database.security.AbstractDirectorySecurityController;
import ch.ivyteam.ivy.addons.filemanager.database.security.DirectorySecurityController;
import ch.ivyteam.ivy.addons.filemanager.database.security.FileManagementStaticController;
import ch.ivyteam.ivy.db.IExternalDatabase;
import ch.ivyteam.ivy.db.IExternalDatabaseApplicationContext;
import ch.ivyteam.ivy.db.IExternalDatabaseRuntimeConnection;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.scripting.objects.Date;
import ch.ivyteam.ivy.scripting.objects.File;
import ch.ivyteam.ivy.scripting.objects.List;
import ch.ivyteam.ivy.scripting.objects.Record;
import ch.ivyteam.ivy.scripting.objects.Recordset;
import ch.ivyteam.ivy.scripting.objects.Time;
import ch.ivyteam.ivy.scripting.objects.Tree;

/**
 * @author ec
 *
 */
public class FileStoreDBHandler extends AbstractFileManagementHandler {


	private String ivyDBConnectionName = null; // the user friendly connection name to Database in Ivy
	private String tableName = null; // the table name that stores the files information
	private String fileContentTableName = null; // the table name that stores the files content
	private String schemaName = null;// the DB Schema name if needed (eg. by PostGreSQL)
	private String tableNameSpace = null; // equals to tableName if schemaName == null, else schemaName.tableName
	private String fileContentTableNameSpace = null; // equals to fileContentTable if schemaName == null, else schemaName.tableName
	IExternalDatabase database=null;

	private String dirTableName = null; // the table that stores directories infos
	private String dirTableNameSpace = null; // equals to dirTableName if schemaName == null, else schemaName.dirTableName
	private boolean securityActivated = false;
	private AbstractDirectorySecurityController securityController = null; // the file security controller if the security is activated.
	/**
	 * @throws Exception 
	 * 
	 */
	public FileStoreDBHandler() throws Exception {
		this(null,null);
	}

	/**
	 * 
	 * @param _ivyDBConnectionName
	 * @param _tableName
	 * @throws Exception 
	 */
	public FileStoreDBHandler(String _ivyDBConnectionName, String _tableName) throws Exception {
		super();
		if(_ivyDBConnectionName==null || _ivyDBConnectionName.trim().length()==0)
		{//if ivy user friendly name of database configuration not settled used default
			this.ivyDBConnectionName = "filemanager";
		}else{
			this.ivyDBConnectionName = _ivyDBConnectionName.trim();
		}
		if(_tableName==null || _tableName.trim().length()==0)
		{//if ivy table name not settled used default
			this.tableName="UploadedFiles";
		}else{
			this.tableName=_tableName.trim();
		}
		this.tableNameSpace = this.tableName;

		this.dirTableName="FileManagerDirectory";
		this.dirTableNameSpace=this.dirTableName;
		makeSecurityController();
		checkTablesExists();
	}


	/**
	 * 
	 * @param _ivyDBConnectionName
	 * @param _fileTableName
	 * @param _fileContentTableName
	 * @param _dirTableName
	 * @param _schemaName
	 * @throws Exception
	 */
	public FileStoreDBHandler(String _ivyDBConnectionName, String _fileTableName, String _fileContentTableName, String _dirTableName, 
			String _schemaName) throws Exception {
		super();
		if(_ivyDBConnectionName==null || _ivyDBConnectionName.trim().length()==0)
		{//if ivy user friendly name of database configuration not set used default
			this.ivyDBConnectionName = "filemanager";
		}else{
			this.ivyDBConnectionName = _ivyDBConnectionName.trim();
		}
		if(_fileTableName==null || _fileTableName.trim().length()==0)
		{//if ivy table name not set used default
			this.tableName="UploadedFiles";
		}else{
			this.tableName=_fileTableName.trim();
			this.tableNameSpace = this.tableName;
		}
		if(_dirTableName==null || _dirTableName.trim().length()==0)
		{//if ivy table name not set used default
			this.dirTableName="FileManagerDirectory";
		}else{
			this.dirTableName=_dirTableName.trim();
			this.dirTableNameSpace = this.dirTableName;
		}
		if(_fileContentTableName==null || _fileContentTableName.trim().length()==0)
		{
			this.fileContentTableName="FileManagerContent";
		}else
		{
			this.fileContentTableName = _fileContentTableName.trim();
			this.fileContentTableNameSpace = this.fileContentTableName;
		}
		if(_schemaName!=null && _schemaName.trim().length()>0)
		{//set the schema name variable

			this.schemaName = _schemaName.trim();
			//since the schema name is for now only use in PostGreSQL, 
			//we escape the schema and table name to be able to support non lower case schemas
			this.tableNameSpace="\""+this.schemaName+"\""+"."+"\""+this.tableName+"\"";
			this.dirTableNameSpace="\""+this.schemaName+"\""+"."+"\""+this.dirTableName+"\"";
			this.fileContentTableNameSpace="\""+this.schemaName+"\""+"."+"\""+this.fileContentTableName+"\"";
		}
		makeSecurityController();
		checkTablesExists();
	}

	/**
	 * 
	 * @param _ivyDBConnectionName
	 * @param _fileTableName
	 * @param _fileContentTableName
	 * @param _dirTableName
	 * @param _schemaName
	 * @param _securityActivated
	 * @throws Exception
	 */
	public FileStoreDBHandler(String _ivyDBConnectionName, String _fileTableName, String _fileContentTableName, String _dirTableName, 
			String _schemaName, boolean _securityActivated) throws Exception {
		super();
		if(_ivyDBConnectionName==null || _ivyDBConnectionName.trim().length()==0)
		{//if ivy user friendly name of database configuration not set used default
			this.ivyDBConnectionName = "filemanager";
		}else{
			this.ivyDBConnectionName = _ivyDBConnectionName.trim();
		}
		if(_fileTableName==null || _fileTableName.trim().length()==0)
		{//if ivy table name not set used default
			this.tableName="UploadedFiles";
		}else{
			this.tableName=_fileTableName.trim();
			this.tableNameSpace = this.tableName;
		}
		if(_dirTableName==null || _dirTableName.trim().length()==0)
		{//if ivy table name not set used default
			this.dirTableName="FileManagerDirectory";
		}else{
			this.dirTableName=_dirTableName.trim();
			this.dirTableNameSpace = this.dirTableName;
		}
		if(_fileContentTableName==null || _fileContentTableName.trim().length()==0)
		{
			this.fileContentTableName="FileManagerContent";
		}else
		{
			this.fileContentTableName = _fileContentTableName.trim();
			this.fileContentTableNameSpace = this.fileContentTableName;
		}
		if(_schemaName!=null && _schemaName.trim().length()>0)
		{//set the schema name variable

			this.schemaName = _schemaName.trim();
			//since the schema name is for now only use in PostGreSQL, 
			//we escape the schema and table name to be able to support non lower case schemas
			this.tableNameSpace="\""+this.schemaName+"\""+"."+"\""+this.tableName+"\"";
			this.dirTableNameSpace="\""+this.schemaName+"\""+"."+"\""+this.dirTableName+"\"";
			this.fileContentTableNameSpace="\""+this.schemaName+"\""+"."+"\""+this.fileContentTableName+"\"";
		}

		this.securityActivated=_securityActivated;
		makeSecurityController();
		checkTablesExists();
	}

	private void checkTablesExists() throws Exception{

		String createFileTable="CREATE TABLE "+this.tableNameSpace+" (" +
		"FileId             INT IDENTITY NOT NULL," +
		"FileName           VARCHAR (255) NULL," +
		"FilePath           VARCHAR (750) NULL," +
		"CreationUserId     VARCHAR (64) NULL," +
		"CreationDate       VARCHAR (10) NULL," +
		"CreationTime       VARCHAR (8) NULL," +
		"FileSize           VARCHAR (20) NULL," +
		"Locked             TINYINT NULL," +
		"LockingUserId      VARCHAR (64) NULL," +
		"ModificationUserId VARCHAR (64) NULL," +
		"ModificationDate   VARCHAR (10) NULL," +
		"ModificationTime   VARCHAR (8) NULL," +
		"Description        VARCHAR (1024) NULL," +
		"PRIMARY KEY (FileId))";

		String createFileContentTable="CREATE TABLE "+this.fileContentTableNameSpace+" (" +
		"id INT IDENTITY NOT NULL," +
		"file_id INT UNIQUE NOT NULL," +
		"file_content VARBINARY (max) NULL," +
		"PRIMARY KEY (id))";

		String createDirTable="CREATE TABLE "+this.dirTableNameSpace+" (" +
		"id INT IDENTITY NOT NULL," +
		"dir_name             VARCHAR (255) NOT NULL," +
		"dir_path             VARCHAR (750) UNIQUE NOT NULL," +
		"creation_user_id     VARCHAR (200) NULL," +
		"creation_date        DATE NULL," +
		"creation_time        TIME NULL," +
		"modification_user_id VARCHAR (200) NULL," +
		"modification_date    DATE NULL," +
		"modification_time    TIME NULL," +
		"is_protected         BIT DEFAULT ((0)) NOT NULL," +
		"cmdr                 VARCHAR (2048) NULL," +
		"cod                  VARCHAR (2048) NULL," +
		"cud                  VARCHAR (2048) NULL," +
		"cdd                  VARCHAR (2048) NULL," +
		"cwf                  VARCHAR (2048) NULL," +
		"cdf                  VARCHAR (2048) NULL," +
		"PRIMARY KEY (id))";

		//Check if fileTable exists if not tries to create it
		IExternalDatabaseRuntimeConnection connection = null;
		try {

			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			PreparedStatement stmt = null;
			try{			
				if(!jdbcConnection.getMetaData().getTables(null, null, this.tableNameSpace, null).next()){
					Ivy.log().info("Files table does not exists, executes "+jdbcConnection.nativeSQL(createFileTable));
					stmt = jdbcConnection.prepareStatement(jdbcConnection.nativeSQL(createFileTable));
					stmt.execute();
				}
				if(!jdbcConnection.getMetaData().getTables(null, null, this.dirTableNameSpace, null).next()){
					Ivy.log().info("Dir table does not exists, executes "+jdbcConnection.nativeSQL(createDirTable));
					stmt = jdbcConnection.prepareStatement(jdbcConnection.nativeSQL(createDirTable));
					stmt.execute();
				}
				if(!jdbcConnection.getMetaData().getTables(null, null, this.fileContentTableNameSpace, null).next()){
					Ivy.log().info("Files Content table does not exists, executes "+jdbcConnection.nativeSQL(createFileContentTable));
					stmt = jdbcConnection.prepareStatement(jdbcConnection.nativeSQL(createFileContentTable));
					stmt.execute();
				}
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
	}

	/**
	 * 
	 */
	private void makeSecurityController(){
		this.securityController=new DirectorySecurityController(this.ivyDBConnectionName, this.dirTableName, this.schemaName);
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
	 * @see ch.ivyteam.ivy.addons.filemanager.database.AbstractFileManagementHandler#changeModificationInformations(java.io.File, java.lang.String)
	 */
	@Override
	public void changeModificationInformations(java.io.File _file, String _userID) throws Exception {
		if(_file == null || !_file.exists() || _userID == null)
		{
			throw new Exception("File null or doesn't exist, or userID null in changeModificationInformations method.");
		}
		IExternalDatabaseRuntimeConnection connection = null;
		try {

			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			String query= "UPDATE "+this.tableNameSpace+" SET FileSize = ?, ModificationDate = ?, ModificationTime = ?, ModificationUserId = ? WHERE FilePath LIKE ?";
			PreparedStatement stmt = null;
			try{			
				stmt = jdbcConnection.prepareStatement(query);
				stmt.setString(1, FileHandler.getFileSize(_file));
				stmt.setString(2, new Date().format("dd.MM.yyyy"));
				stmt.setString(3, new Time().format("HH:mm.ss"));
				stmt.setString(4, _userID);
				stmt.setString(5, escapeBackSlash(_file.getPath()));
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
	}

	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.AbstractFileManagementHandler#createDirectory(java.lang.String, java.lang.String)
	 */
	@Override
	public ReturnedMessage createDirectory(String _destinationPath,
			String _newDirectoryName) throws Exception {
		if(_destinationPath==null || _newDirectoryName==null || _newDirectoryName.trim().equals(""))
		{
			throw new IllegalArgumentException("One of the parameters in "+this.getClass().getName()+", method createDirectory(String destinationPath, String newDirectoryName) is not set.");
		}
		ReturnedMessage message = new ReturnedMessage();
		message.setFiles(List.create(java.io.File.class));
		if(!_destinationPath.trim().equals("")){
			_destinationPath=formatPathForDirectory(_destinationPath);
		}
		//check if a directory with the same path already exists
		if(this.directoryExists(_destinationPath+_newDirectoryName.trim()))
		{//already exists
			message.setType(FileHandler.INFORMATION_MESSAGE);
			message.setText("The directory to create already exists.");
			return message;
		}
		if(this.securityActivated)
		{
			this.securityController.createIndestructibleDirectory(_destinationPath+_newDirectoryName.trim(), null);
			message.setType(FileHandler.SUCCESS_MESSAGE);
			message.setText("The directory was successfuly created.");
			return message;
		}

		String base = "INSERT INTO "+this.dirTableNameSpace+
		" (dir_name, dir_path, creation_user_id, creation_date, creation_time, modification_user_id, modification_date," +
		"modification_time,is_protected, cmdr, cod, cud, cdd, cwf, cdf) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		Ivy.log().info("Test 4 CreateDirectory: "+base);
		java.util.Date d = new java.util.Date();

		IExternalDatabaseRuntimeConnection connection=null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			PreparedStatement stmt = null;
			try{
				stmt = jdbcConnection.prepareStatement(base);
				stmt.setString(1, _newDirectoryName.trim());
				stmt.setString(2, escapeBackSlash(_destinationPath+_newDirectoryName.trim()));
				stmt.setString(3, Ivy.session().getSessionUserName());
				stmt.setDate(4, new java.sql.Date(d.getTime()));
				stmt.setTime(5, new java.sql.Time(d.getTime()));
				stmt.setString(6, Ivy.session().getSessionUserName());
				stmt.setDate(7, new java.sql.Date(d.getTime()));
				stmt.setTime(8, new java.sql.Time(d.getTime()));
				stmt.setInt(9, 0);
				stmt.setString(10, "");
				stmt.setString(11, "");
				stmt.setString(12, "");
				stmt.setString(13, "");
				stmt.setString(14, "");
				stmt.setString(15, "");
				int i =  stmt.executeUpdate();
				Ivy.log().info("Test 5 CreateDirectory: "+i);
				if(i>0)
				{//Creation successful
					message.setType(FileHandler.SUCCESS_MESSAGE);
					message.setText("The directory was successfuly created.");
				}else
				{
					message.setType(FileHandler.ERROR_MESSAGE);
					message.setText("The directory could not be created.");
				}
			}finally{
				DatabaseUtil.close(stmt);
			}
		}finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}
		return message;
	}

	/**
	 * 
	 * @param _path
	 * @return
	 * @throws Exception
	 */
	public boolean directoryExists(String _path) throws Exception
	{
		return this.securityController.directoryExists(_path);	
	}

	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.AbstractFileManagementHandler#deleteDirectory(java.lang.String)
	 */
	@Override
	public ReturnedMessage deleteDirectory(String _directoryPath)
	throws Exception {
		if(_directoryPath==null || _directoryPath.trim().equals(""))
		{
			throw new IllegalArgumentException("The 'directoryPath' parameter in "+this.getClass().getName()+", method deleteDirectory(String directoryPath) is not set.");
		}
		_directoryPath=formatPathForDirectoryWithoutLastSeparator(_directoryPath.trim());
		ReturnedMessage message = new ReturnedMessage();
		message.setFiles(List.create(java.io.File.class));
		//Check if the directory exists, if not return
		if(!this.directoryExists(_directoryPath)){
			message.setType(FileHandler.INFORMATION_MESSAGE);
			message.setText("The directory to delete does not exist.");
			return message;
		}

		if(this.securityActivated)
		{//Check if user allowed to delete a directory
			if(!this.securityController.canUserDeleteDirectory(_directoryPath, Ivy.session().getSessionUserName()))
			{
				message.setType(FileHandler.INFORMATION_MESSAGE);
				message.setText("The user '"+Ivy.session().getSessionUserName()+"' doesn't have the right to delete the directory.");
				return message;
			}
		}

		//delete all the files under the directory structure
		message = this.deleteAllFilesUnderDirectory(_directoryPath);

		//Query to delete the directory and all its sub directories
		String base ="DELETE FROM "+this.dirTableNameSpace+" WHERE dir_path LIKE ?";

		IExternalDatabaseRuntimeConnection connection=null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			PreparedStatement stmt = null;
			try{
				stmt = jdbcConnection.prepareStatement(base);
				//delete all the children directories
				Ivy.log().info("Delete Directories under the path " +_directoryPath);
				stmt.setString(1, _directoryPath+"/%");
				stmt.executeUpdate();

				//delete the directory himself
				stmt.setString(1, _directoryPath);
				stmt.executeUpdate();

				message.setType(FileHandler.SUCCESS_MESSAGE);
				message.setText("The directory and all its files were successfully deleted.");
			}finally{
				DatabaseUtil.close(stmt);
			}
		}finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}
		return message;
	}

	@Override
	public ReturnedMessage deleteDirectoryAsAdministrator(String _directoryPath)
	throws Exception {
		if(_directoryPath==null || _directoryPath.trim().equals(""))
		{
			throw new IllegalArgumentException("The 'directoryPath' parameter in "+this.getClass().getName()+", method deleteDirectory(String directoryPath) is not set.");
		}
		_directoryPath=formatPathForDirectoryWithoutLastSeparator(_directoryPath.trim());
		ReturnedMessage message = new ReturnedMessage();
		message.setFiles(List.create(java.io.File.class));
		//Check if the directory exists, if not return
		if(!this.directoryExists(_directoryPath)){
			message.setType(FileHandler.INFORMATION_MESSAGE);
			message.setText("The directory to delete does not exist.");
			return message;
		}
		//delete all the files under the directory structure
		message = this.deleteAllFilesUnderDirectory(_directoryPath);

		//Query to delete the directory and all its sub directories
		String base ="DELETE FROM "+this.dirTableNameSpace+" WHERE dir_path LIKE ?";

		IExternalDatabaseRuntimeConnection connection=null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			PreparedStatement stmt = null;
			try{
				stmt = jdbcConnection.prepareStatement(base);
				//delete all the children directories
				Ivy.log().info("Delete Directories under the path " +_directoryPath);
				stmt.setString(1, _directoryPath+"/%");
				stmt.executeUpdate();

				//delete the directory himself
				stmt.setString(1, _directoryPath);
				stmt.executeUpdate();

				message.setType(FileHandler.SUCCESS_MESSAGE);
				message.setText("The directory and all its files were successfully deleted.");
			}finally{
				DatabaseUtil.close(stmt);
			}
		}finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}
		return message;
	}

	/**
	 * delete all the files from the db that are in the file Structure under a directory.
	 * @param _directoryPath
	 * @return
	 * @throws Exception
	 */
	public ReturnedMessage deleteAllFilesUnderDirectory(String _directoryPath) throws Exception{
		ReturnedMessage message = new ReturnedMessage();
		message.setFiles(List.create(java.io.File.class));
		if(_directoryPath==null || _directoryPath.trim().equals(""))
		{
			message.setType(FileHandler.INFORMATION_MESSAGE);
			message.setText("The directory to delete does not exist.");
			return message;
		}

		//Query to delete the files under a path
		String base ="DELETE FROM "+this.tableNameSpace+" WHERE FilePath LIKE ?";
		String query="DELETE FROM "+this.fileContentTableNameSpace+" WHERE file_id = ?";
		Ivy.log().info("We get the file ids...");
		int[] ids = this.getFileIdsUnderPath(_directoryPath+"/%");
		Ivy.log().info("File ids under the path to delete" +_directoryPath + " "+ids.length);
		IExternalDatabaseRuntimeConnection connection=null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			PreparedStatement stmt = null;
			try{
				if(ids!=null)
				{
					stmt = jdbcConnection.prepareStatement(query);
					for(int i=0; i<ids.length; i++)
					{
						stmt.setInt(1, ids[i]);
						stmt.executeUpdate();
					}
				}
				stmt = jdbcConnection.prepareStatement(base);
				stmt.setString(1, _directoryPath+"/%");
				stmt.executeUpdate();
			}finally{
				DatabaseUtil.close(stmt);
			}
		}finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}
		return message;
	}


	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.AbstractFileManagementHandler#deleteDocumentOnServer(ch.ivyteam.ivy.addons.filemanager.DocumentOnServer)
	 */
	@Override
	public ReturnedMessage deleteDocumentOnServer(DocumentOnServer document)
	throws Exception {
		if(document==null || document.getPath() ==null || document.getPath().trim().equals(""))
		{
			throw new IllegalArgumentException("The 'document' parameter in "+this.getClass().getName()+", method deleteDocumentOnServer(DocumentOnServer document) is not set.");
		}
		ReturnedMessage message = new ReturnedMessage();
		message.setFiles(List.create(java.io.File.class));

		//Query to delete the document
		String base ="DELETE FROM "+this.tableNameSpace+" WHERE FilePath LIKE ?";
		String query="DELETE FROM "+this.fileContentTableNameSpace+" WHERE file_id = ?";
		IExternalDatabaseRuntimeConnection connection=null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			PreparedStatement stmt = null;
			try{
				int id = this.getDocIdWithPath(document.getPath());
				if(id>0){
					stmt = jdbcConnection.prepareStatement(query);
					stmt.setInt(1, id);
					stmt.executeUpdate();
				}
				stmt = jdbcConnection.prepareStatement(base);
				stmt.setString(1, formatPath(document.getPath().trim()));
				int i = stmt.executeUpdate();
				if(i>0){
					message.setType(FileHandler.SUCCESS_MESSAGE);
				}else{
					message.setType(FileHandler.ERROR_MESSAGE);
				}
			}finally{
				DatabaseUtil.close(stmt);
			}
		}finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}
		return message;
	}

	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.AbstractFileManagementHandler#deleteDocumentOnServers(ch.ivyteam.ivy.scripting.objects.List)
	 */
	@Override
	public ReturnedMessage deleteDocumentOnServers(
			List<DocumentOnServer> documents) throws Exception {
		if(documents==null)
		{
			throw new IllegalArgumentException("The 'documents' parameter in "+this.getClass().getName()+", method deleteDocumentOnServers(List<DocumentOnServer> documents) is not set.");
		}
		ReturnedMessage message = new ReturnedMessage();
		message.setFiles(List.create(java.io.File.class));

		//Query to delete the document
		String base ="DELETE FROM "+this.tableNameSpace+" WHERE FilePath LIKE ?";
		String query="DELETE FROM "+this.fileContentTableNameSpace+" WHERE file_id = ?";

		IExternalDatabaseRuntimeConnection connection=null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			PreparedStatement stmt = null;
			try{
				stmt = jdbcConnection.prepareStatement(query);
				for(DocumentOnServer document:documents)
				{
					if(document !=null && document.getFileID()!=null){
						int id = 0;
						try{
							id = Integer.parseInt(document.getFileID());
						}catch(Exception ex){

						}
						if(id>0){
							stmt.setInt(1, id);
							stmt.executeUpdate();
						}
					}
				}
				stmt = jdbcConnection.prepareStatement(base);
				for(DocumentOnServer document:documents){
					if(document !=null && document.getPath()!=null && !document.getPath().trim().equals("")){
						stmt.setString(1, formatPath(document.getPath().trim()));
						stmt.executeUpdate();
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
		message.setType(FileHandler.SUCCESS_MESSAGE);
		return message;
	}

	/**
	 * delete documents from the DB
	 * @param _documents the list of the DocumentOnServer to delete
	 * @return the number of items deleted
	 * @throws Exception
	 */
	public int deleteDocuments(List<DocumentOnServer> _documents)throws Exception{
		int deletedFiles=0;
		if(_documents==null || _documents.size()==0)
		{
			return 0;
		}
		IExternalDatabaseRuntimeConnection connection=null;
		String base ="";
		base= "DELETE FROM "+this.tableNameSpace+" WHERE FilePath LIKE ?"; 
		String query="DELETE FROM "+this.fileContentTableNameSpace+" WHERE file_id = ?";
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			PreparedStatement stmt = null;
			try{
				stmt = jdbcConnection.prepareStatement(query);
				for(DocumentOnServer document:_documents)
				{
					if(document !=null && document.getFileID()!=null){
						int id = 0;
						try{
							id = Integer.parseInt(document.getFileID());
						}catch(Exception ex){

						}
						if(id>0){
							stmt.setInt(1, id);
							stmt.executeUpdate();
						}
					}
				}
				stmt = jdbcConnection.prepareStatement(base);
				for(DocumentOnServer doc: _documents){
					stmt.setString(1, escapeBackSlash(doc.getPath().trim()));
					deletedFiles+=stmt.executeUpdate();
				}
			}finally{
				DatabaseUtil.close(stmt);
			}
		}finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}

		return deletedFiles;
	}

	/**
	 * delete files from the DB
	 * @param _files the list of the java.io.File to delete
	 * @return the number of items deleted
	 * @throws Exception
	 */
	public int deleteFiles(List<java.io.File> _files)throws Exception{
		int deletedFiles=0;
		if(_files==null || _files.size()==0)
		{
			return 0;
		}
		IExternalDatabaseRuntimeConnection connection=null;
		String base= "DELETE FROM "+this.tableNameSpace+" WHERE FilePath LIKE ?"; 
		String query="DELETE FROM "+this.fileContentTableNameSpace+" WHERE file_id = ?";
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			PreparedStatement stmt = null;
			try{

				for(java.io.File file: _files){
					DocumentOnServer doc = this.getDocumentOnServer(file.getPath());
					if(doc!=null && doc.getFileID()!=null){
						stmt = jdbcConnection.prepareStatement(query);
						int id = 0;
						try{
							id = Integer.parseInt(doc.getFileID());
						}catch(Exception ex){

						}
						if(id>0){
							stmt.setInt(1, id);
							stmt.executeUpdate();
						}
					}
					stmt = jdbcConnection.prepareStatement(base);
					stmt.setString(1, escapeBackSlash(file.getPath()));
					deletedFiles+=stmt.executeUpdate();
				}
			}finally{
				DatabaseUtil.close(stmt);
			}
		}finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}
		return deletedFiles;
	}

	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.AbstractFileManagementHandler#getDirectoryTree(java.lang.String)
	 */
	@Override
	public Tree getDirectoryTree(String rootPath) throws Exception {
		Tree RDTree = new Tree();
		if(rootPath==null || rootPath.trim().equals(""))
		{
			throw new Exception("");
		}
		rootPath = formatPathForDirectoryWithoutLastSeparator(rootPath);
		if(!directoryExists(rootPath))
		{//create the directory

			String parentPath="";
			if(rootPath.lastIndexOf("/")>1)
			{
				parentPath = rootPath.substring(0,rootPath.lastIndexOf("/"));
				String dirname = rootPath.substring(rootPath.lastIndexOf("/")+1, rootPath.length());
				this.createDirectory(parentPath, dirname);
			}else{
				this.createDirectory("", rootPath);
			}

		}
		ArrayList<FolderOnServer> l = getListDirectoriesUnderPath(rootPath);
		if(!l.isEmpty()){
			RDTree.setValue(l.get(0));
			RDTree.setInfo(l.get(0).getName());
			l.remove(0);
			fillRDTree(RDTree, l);
		}
		return RDTree;
	}

	/**
	 * 
	 * @param tree
	 * @param dirs
	 */
	private void fillRDTree(Tree tree, ArrayList<FolderOnServer> dirs){
		if(dirs==null || dirs.isEmpty() || tree ==null)
		{
			return;
		}
		if(!(tree.getValue() instanceof FolderOnServer)){
			return;
		}

		FolderOnServer fos = (FolderOnServer) tree.getValue();
		ArrayList<FolderOnServer> children = getDirectChildFoldersInList(fos, dirs);
		for(FolderOnServer f:children){
			
				tree.createChild(f, f.getName());
			if(!(f instanceof LockedFolder)){
				fillRDTree(tree.getLastChild(),dirs);
			}
		}
	}

	public ArrayList<FolderOnServer> getDirectChildFoldersInList(FolderOnServer parent, ArrayList<FolderOnServer> dirs){
		ArrayList<FolderOnServer> l = new ArrayList<FolderOnServer>();
		if(parent==null || parent.getPath()==null || parent.getPath().trim().length()==0 || dirs==null || dirs.isEmpty()){
			return l;
		}
		String path = parent.getPath();
		for(FolderOnServer f:dirs){
			if(f.getPath().startsWith(path) && f.getPath().lastIndexOf("/")==path.length())
			{
				l.add(f);
			}
		}
		return l;
	}

	/**
	 * 
	 * @param rootPath
	 * @return
	 */
	public ArrayList<FolderOnServer> getListDirectoriesUnderPath(String rootPath) throws Exception
	{
		if(this.securityActivated){
			return this.securityController.getListDirectoriesUnderPath(rootPath, null);
		}

		ArrayList<FolderOnServer> l = new ArrayList<FolderOnServer>();
		if(rootPath==null || rootPath.trim().equals("")){
			return l;
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
					FolderOnServer fos = new FolderOnServer();
					Record rec = recordList.get(0);
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

					l.add(fos);
					//Select all the children
					stmt.setString(1, rootPath+"/%");
					rset=executeStatement(stmt);
					recordList=rset.toList();
					for(Record rec1: recordList){
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
						l.add(fos1);
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

	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.AbstractFileManagementHandler#getDocumentOnServer(java.lang.String)
	 */
	@Override
	public DocumentOnServer getDocumentOnServer(String filePath)
	throws Exception {
		DocumentOnServer doc = new DocumentOnServer();
		if(filePath==null || filePath.trim().equals("")){
			return doc;
		}
		Recordset rset = null;
		List<Record> recordList= (List<Record>) List.create(Record.class);

		String query="";
		IExternalDatabaseRuntimeConnection connection = null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();

			query="SELECT * FROM "+this.tableNameSpace+" WHERE FilePath LIKE ?";
			PreparedStatement stmt = null;
			try{
				stmt = jdbcConnection.prepareStatement(query);
				stmt.setString(1, filePath);
				rset=executeStatement(stmt);
				recordList=rset.toList();
			}finally{
				DatabaseUtil.close(stmt);
			}
		} finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}
		if(!recordList.isEmpty())
		{
			//we take the first one, normally just one
			Record rec = recordList.get(0);

			doc.setFileID(rec.getField("FileId").toString());
			doc.setFilename(rec.getField("FileName").toString());
			doc.setPath(rec.getField("FilePath").toString());
			doc.setFileSize(rec.getField("FileSize").toString());
			doc.setUserID(rec.getField("CreationUserId").toString());
			doc.setCreationDate(rec.getField("CreationDate").toString());
			doc.setCreationTime(rec.getField("CreationTime").toString());
			doc.setModificationUserID(rec.getField("ModificationUserId").toString());
			doc.setModificationDate(rec.getField("ModificationDate").toString());
			doc.setModificationTime(rec.getField("ModificationTime").toString());
			doc.setLocked(rec.getField("Locked").toString());
			doc.setLockingUserID(rec.getField("LockingUserId").toString());
			doc.setDescription(rec.getField("Description").toString());
			try{
				doc.setExtension(doc.getFilename().substring(doc.getFilename().lastIndexOf(".")+1));
			}catch(Exception ex){
				//Ignore the Exception here
			}


		}
		return doc;
	}

	@Override
	public boolean fileExists(String filePath) throws Exception {
		if(filePath == null || filePath.trim().equals(""))
		{
			return false;
		}
		boolean flag = false;
		filePath = formatPath(filePath);
		String query="";
		IExternalDatabaseRuntimeConnection connection = null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();

			query="SELECT * FROM "+this.tableNameSpace+" WHERE FilePath LIKE ?";
			PreparedStatement stmt = null;
			ResultSet rset=null;
			try{
				stmt = jdbcConnection.prepareStatement(query);
				stmt.setString(1, filePath);
				rset = stmt.executeQuery();
				if(rset.next())
				{
					flag=true;
				}
			}finally{
				DatabaseUtil.close(stmt);
			}
		} finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}
		return flag;
	}

	/**
	 * return the id of the DocumentOnServer denoted by the given path
	 * @param _path: the path of the document
	 * @return the id of the document or -1 if not found
	 */
	public int getDocIdWithPath(String _path) throws Exception
	{
		int i =-1;
		if(_path==null || _path.trim().equals(""))
		{
			return i;
		}
		_path=formatPath(_path);
		String query="";
		IExternalDatabaseRuntimeConnection connection = null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			ResultSet rset = null;
			query="SELECT FileId FROM "+this.tableNameSpace+" WHERE FilePath LIKE ?";
			PreparedStatement stmt = null;
			try{
				stmt = jdbcConnection.prepareStatement(query);
				stmt.setString(1, _path);
				rset=stmt.executeQuery();
				if(rset.next()){
					i = rset.getInt("FileId");
				}

			}finally{
				DatabaseUtil.close(stmt);
			}
		} finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}
		return i;
	}

	/**
	 * returns an array of all the file ids contained under a specifically path
	 * @param _path
	 * @return
	 * @throws Exception
	 */
	public int[] getFileIdsUnderPath(String _path) throws Exception
	{
		int[] i =null;
		if(_path==null || _path.trim().equals(""))
		{
			return i;
		}
		_path=formatPath(_path);
		String query="";

		IExternalDatabaseRuntimeConnection connection = null;
		Recordset rset = null;
		List<Record> recordList= (List<Record>) List.create(Record.class);
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();

			query="SELECT FileId FROM "+this.tableNameSpace+" WHERE FilePath LIKE ?";
			PreparedStatement stmt = null;
			try{
				stmt = jdbcConnection.prepareStatement(query);
				stmt.setString(1, _path);
				rset = executeStatement(stmt);
				recordList = rset.toList();
				int j=0;
				i= new int[recordList.size()];
				for(Record r : recordList)
				{
					try{
						i[j]=Integer.parseInt(r.getField("FileId").toString());
						j++;
					}catch(Exception ex)
					{

					}
				}
			}finally{
				DatabaseUtil.close(stmt);
			}
		} finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}
		return i;
	}

	@Override
	public boolean documentOnServerExists(DocumentOnServer document, String path)
	throws Exception {
		if(document== null || document.getFilename()==null || document.getFilename().trim().equals("") || path==null || path.trim().equals(""))
		{
			return false;
		}
		path=formatPathForDirectory(path);
		DocumentOnServer doc = this.getDocumentOnServer(path+document.getFilename());
		int i=0;
		try{
			i= Integer.parseInt(doc.getFileID());
		}catch(Exception ex)
		{//NullPointerException or NumberFormatException...
			i=0;
		}
		if(i<=0){
			return false;
		}else{
			return true;
		}

	}

	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.AbstractFileManagementHandler#getDocumentOnServerWithJavaFile(ch.ivyteam.ivy.addons.filemanager.DocumentOnServer)
	 */
	@Override
	public DocumentOnServer getDocumentOnServerWithJavaFile(DocumentOnServer docu)
	throws Exception {
		if(docu==null || docu.getPath()==null || docu.getPath().trim().equals(""))
		{
			return docu;
		}

		String query="";
		IExternalDatabaseRuntimeConnection connection = null;
		String path = formatPath(docu.getPath().trim());
		DocumentOnServer doc = new DocumentOnServer();
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();

			query="SELECT * FROM "+this.tableNameSpace+
			" INNER JOIN "+this.fileContentTableNameSpace+" ON "+this.tableNameSpace+".FileId = "+this.fileContentTableNameSpace+".file_id" +
			" WHERE "+this.tableNameSpace+".FilePath LIKE ? ";
			PreparedStatement stmt = null;
			try{
				stmt = jdbcConnection.prepareStatement(query);
				stmt.setString(1, path);
				ResultSet rst = stmt.executeQuery();

				if(rst.next())
				{

					doc.setFileID(String.valueOf(rst.getInt("FileId")));
					doc.setFilename(rst.getString("FileName"));
					doc.setPath(rst.getString("FilePath"));
					doc.setFileSize(rst.getString("FileSize"));
					doc.setUserID(rst.getString("CreationUserId"));
					doc.setCreationDate(rst.getString("CreationDate"));
					doc.setCreationTime(rst.getString("CreationTime"));
					doc.setModificationUserID(rst.getString("ModificationUserId"));
					doc.setModificationDate(rst.getString("ModificationDate"));
					doc.setModificationTime(rst.getString("ModificationTime"));
					doc.setLocked(String.valueOf(rst.getInt("Locked")));
					doc.setLockingUserID(rst.getString("LockingUserId"));
					doc.setDescription(rst.getString("Description"));
					try{
						doc.setExtension(doc.getFilename().substring(doc.getFilename().lastIndexOf(".")+1));
					}catch(Exception ex){
						//Ignore the Exception here
					}
					Blob bl = rst.getBlob("file_content");

					//we create a temp file on the server 
					String tmpPath="tmp/"+System.nanoTime()+"/"+doc.getFilename();
					File ivyFile = new File(tmpPath,true);
					ivyFile.createNewFile();
					byte[] allBytesInBlob = bl.getBytes(1, (int) bl.length());

					FileOutputStream fos=null;
					//DataOutputStream dos =null;
					try{
						java.io.File javaFile = ivyFile.getJavaFile();

						fos = new FileOutputStream(javaFile.getPath());
						//dos = new DataOutputStream(fos);
						//dos.writeBytes(rec.getField("FileContent").toString());
						fos.write(allBytesInBlob);
						doc.setJavaFile(javaFile);
					}finally{
						if(fos!=null){
							fos.close();
						}
					}
				}
			}catch(Exception ex){
				Ivy.log().error("Exception " +ex.getMessage(),ex);
			}
			finally{
				DatabaseUtil.close(stmt);
			}
		} finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}


		return doc;
	}

	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.AbstractFileManagementHandler#getDocumentOnServerWithJavaFile(java.lang.String)
	 */
	@Override
	public DocumentOnServer getDocumentOnServerWithJavaFile(String filePath)
	throws Exception {
		if(filePath==null || filePath.trim().equals(""))
		{
			return null;
		}
		DocumentOnServer doc = new DocumentOnServer();

		String query="";
		IExternalDatabaseRuntimeConnection connection = null;
		String path = formatPath(filePath.trim());
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();

			query="SELECT * FROM "+this.tableNameSpace+
			" INNER JOIN "+this.fileContentTableNameSpace+" ON "+this.tableNameSpace+".FileId = "+this.fileContentTableNameSpace+".file_id" +
			" WHERE "+this.tableNameSpace+".FilePath LIKE ? ";
			PreparedStatement stmt = null;
			try{
				stmt = jdbcConnection.prepareStatement(query);
				stmt.setString(1, path);
				ResultSet rst = stmt.executeQuery();
				if(rst.next())
				{
					doc.setFileID(String.valueOf(rst.getInt("FileId")));
					doc.setFilename(rst.getString("FileName"));
					doc.setPath(rst.getString("FilePath"));
					doc.setFileSize(rst.getString("FileSize"));
					doc.setUserID(rst.getString("CreationUserId"));
					doc.setCreationDate(rst.getString("CreationDate"));
					doc.setCreationTime(rst.getString("CreationTime"));
					doc.setModificationUserID(rst.getString("ModificationUserId"));
					doc.setModificationDate(rst.getString("ModificationDate"));
					doc.setModificationTime(rst.getString("ModificationTime"));
					doc.setLocked(String.valueOf(rst.getInt("Locked")));
					doc.setLockingUserID(rst.getString("LockingUserId"));
					doc.setDescription(rst.getString("Description"));
					try{
						doc.setExtension(doc.getFilename().substring(doc.getFilename().lastIndexOf(".")+1));
					}catch(Exception ex){
						//Ignore the Exception here
					}
					Blob bl = rst.getBlob("file_content");

					//we create a temp file on the server 
					String tmpPath="tmp/"+System.nanoTime()+"/"+doc.getFilename();
					File ivyFile = new File(tmpPath,true);
					ivyFile.createNewFile();
					byte[] allBytesInBlob = bl.getBytes(1, (int) bl.length());
					FileOutputStream fos=null;
					//DataOutputStream dos =null;
					try{
						java.io.File javaFile = ivyFile.getJavaFile();

						fos = new FileOutputStream(javaFile.getPath());
						//dos = new DataOutputStream(fos);
						//dos.writeBytes(rec.getField("FileContent").toString());
						fos.write(allBytesInBlob);
						doc.setJavaFile(javaFile);

					}finally{
						if(fos!=null){
							fos.close();
						}
					}
				}
			}catch(Exception ex){
				Ivy.log().error("Exception " +ex.getMessage(),ex);
			}
			finally{
				DatabaseUtil.close(stmt);
			}
		} finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}
		return doc;
	}

	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.AbstractFileManagementHandler#getDocumentOnServersInDirectory(java.lang.String, boolean)
	 */
	@Override
	public List<DocumentOnServer> getDocumentOnServersInDirectory(
			String _path, boolean _isrecursive)
			throws Exception {
		if(_path==null || _path.trim().length()==0)
		{
			throw new Exception("Invalid path in getDocumentsInPath method");
		}

		List<DocumentOnServer>  al = List.create(DocumentOnServer.class);

		String folderPath = escapeBackSlash(FileHandler.formatPathWithEndSeparator(_path, false));
		Recordset rset = null;
		List<Record> recordList= (List<Record>) List.create(Record.class);

		String query="";
		IExternalDatabaseRuntimeConnection connection = null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			if(_isrecursive)
			{
				query="SELECT * FROM "+this.tableNameSpace+" WHERE FilePath LIKE ?";
			}
			else
			{
				query="SELECT * FROM "+this.tableNameSpace+" WHERE FilePath LIKE ? AND FilePath NOT LIKE ?";
			}
			PreparedStatement stmt = null;
			try{
				stmt = jdbcConnection.prepareStatement(query);
				if(_isrecursive)
				{
					stmt.setString(1, folderPath+"%");
				}else
				{
					stmt.setString(1, folderPath+"%");
					stmt.setString(2, folderPath+"%/%");
				}
				rset=executeStatement(stmt);
				recordList=rset.toList();
			}finally{
				DatabaseUtil.close(stmt);
			}
		} finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}
		if(recordList!=null){
			for(Record rec: recordList){
				DocumentOnServer doc = new DocumentOnServer();
				doc.setFileID(rec.getField("FileId").toString());
				doc.setFilename(rec.getField("FileName").toString());
				doc.setPath(rec.getField("FilePath").toString());
				doc.setFileSize(rec.getField("FileSize").toString());
				doc.setUserID(rec.getField("CreationUserId").toString());
				doc.setCreationDate(rec.getField("CreationDate").toString());
				doc.setCreationTime(rec.getField("CreationTime").toString());
				doc.setModificationUserID(rec.getField("ModificationUserId").toString());
				doc.setModificationDate(rec.getField("ModificationDate").toString());
				doc.setModificationTime(rec.getField("ModificationTime").toString());
				doc.setLocked(rec.getField("Locked").toString());
				doc.setLockingUserID(rec.getField("LockingUserId").toString());
				doc.setDescription(rec.getField("Description").toString());
				try{
					doc.setExtension(doc.getFilename().substring(doc.getFilename().lastIndexOf(".")+1));
				}catch(Exception ex){
					//Ignore the Exception here
				}
				al.add(doc);
			}
		}
		al.trimToSize();
		return al;
	}

	/**
	 * Returns all the DocumentOnServer stores in the FileManager table of the Ivy System DB.<br>
	 * The SQL query is built with the given list of 'AND' conditions.<br>
	 * If the list is null or empty, it will retrieve all the DocumentOnServer from the DB.<br>
	 * Each condition should be written like : "FileId > 1000", "FileName NOT LIKE 'test.doc'", "FileName LIKE 'test.doc'"...<br>
	 * @param _conditions: List<String> representing the conditions to perform the search in the DB
	 * @return an ArrayList of {@link DocumentOnServer} Objects.<br>
	 * Each DocumentOnServer object represents a File with several informations (name, path, size, CreationDate, creationUser...)
	 * @throws Exception
	 */
	public ArrayList<DocumentOnServer> getDocuments(List<String> _conditions)throws Exception{
		ArrayList<DocumentOnServer>  al = new ArrayList<DocumentOnServer>();
		Recordset rset = null;
		List<Record> recordList=null;
		StringBuilder query=new StringBuilder("");

		query.append("SELECT * FROM "+this.tableNameSpace+" WHERE ");
		if(_conditions==null || _conditions.isEmpty())
		{
			return al;
		}
		if(_conditions.size()==1)
		{
			query.append(_conditions.get(0));
		}else{
			int numConditions= _conditions.size()-1;
			for(int i=0; i<numConditions;i++){
				query.append(_conditions.get(i)+" AND ");
			}
			query.append(_conditions.get(numConditions));
		}
		//rset=IvySystemDBReuser.executeQuery(query.toString());
		IExternalDatabaseRuntimeConnection connection = null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			PreparedStatement stmt = null;
			try{
				stmt = jdbcConnection.prepareStatement(query.toString());
				rset = executeStatement(stmt);
				recordList=rset.toList();
				if(rset!=null && recordList!=null){
					for(Record rec: recordList){
						DocumentOnServer doc = new DocumentOnServer();
						doc.setFileID(rec.getField("FileId").toString());
						doc.setFilename(rec.getField("FileName").toString());
						doc.setPath(rec.getField("FilePath").toString());
						doc.setFileSize(rec.getField("FileSize").toString());
						doc.setUserID(rec.getField("CreationUserId").toString());
						doc.setCreationDate(rec.getField("CreationDate").toString());
						doc.setCreationTime(rec.getField("CreationTime").toString());
						doc.setModificationUserID(rec.getField("ModificationUserId").toString());
						doc.setModificationDate(rec.getField("ModificationDate").toString());
						doc.setModificationTime(rec.getField("ModificationTime").toString());
						doc.setLocked(rec.getField("Locked").toString());
						doc.setLockingUserID(rec.getField("LockingUserId").toString());
						doc.setDescription(rec.getField("Description").toString());
						try{
							doc.setExtension(doc.getFilename().substring(doc.getFilename().lastIndexOf(".")+1));
						}catch(Exception ex){
							//Ignore the Exception here
						}
						al.add(doc);
					}
				}
			}finally{
				DatabaseUtil.close(stmt);
			}
		} finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}

		al.trimToSize();

		return al;
	}

	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.AbstractFileManagementHandler#getDocumentsInPath(java.lang.String, boolean)
	 */
	@Override
	public ArrayList<DocumentOnServer> getDocumentsInPath(String _path,
			boolean _isRecursive) throws Exception {
		return FileManagementStaticController.getDocumentsInPath(ivyDBConnectionName, tableNameSpace, _path, _isRecursive);
	}

	/**
	 * return all the Locked documents under a given path
	 * @param _path: the path where to look for the Locked files
	 * @param _isRecursive: if is recursive, look in all the sub directories under the path
	 * @return the list of DocumentOnServer as ArrayList<DocumentOnServer> that are Locked
	 * @throws Exception
	 */
	public ArrayList<DocumentOnServer> getDocumentsLocked(String _path, boolean _isrecursive) throws Exception{
		if(_path==null || _path.trim().length()==0)
		{
			throw new Exception("Invalid path in getDocumentsInPath method");
		}
		ArrayList<DocumentOnServer>  al = new ArrayList<DocumentOnServer>();
		String folderPath = escapeBackSlash(FileHandler.formatPathWithEndSeparator(_path, false));
		Recordset rset = null;
		List<Record> recordList=null;
		String query="";
		IExternalDatabaseRuntimeConnection connection = null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			if(_isrecursive)
			{
				query="SELECT * FROM "+this.tableNameSpace+" WHERE Locked=1 AND FilePath LIKE ?";
			}else
			{
				//query="SELECT * FROM "+this.tableNamespace+" WHERE Locked=1 AND FilePath LIKE '"+folderPath+"%' AND FilePath NOT LIKE '"+folderPath+"%["+java.io.File.separator+"]%'";
				query="SELECT * FROM "+this.tableNameSpace+" WHERE Locked=1 AND FilePath LIKE ? AND FilePath NOT LIKE ?";
			}
			PreparedStatement stmt = null;
			try{
				stmt = jdbcConnection.prepareStatement(query);
				if(_isrecursive)
				{
					stmt.setString(1, folderPath+"%");
				}else
				{
					stmt.setString(1, folderPath+"%");
					stmt.setString(2, folderPath+"%/%");
				}
				rset=executeStatement(stmt);
				recordList=rset.toList();
			}finally{
				DatabaseUtil.close(stmt);
			}
		} finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}
		if(rset!=null && recordList!=null){
			for(Record rec: recordList){
				DocumentOnServer doc = new DocumentOnServer();
				doc.setFileID(rec.getField("FileId").toString());
				doc.setFilename(rec.getField("FileName").toString());
				doc.setPath(rec.getField("FilePath").toString());
				doc.setFileSize(rec.getField("FileSize").toString());
				doc.setUserID(rec.getField("CreationUserId").toString());
				doc.setCreationDate(rec.getField("CreationDate").toString());
				doc.setCreationTime(rec.getField("CreationTime").toString());
				doc.setModificationUserID(rec.getField("ModificationUserId").toString());
				doc.setModificationDate(rec.getField("ModificationDate").toString());
				doc.setModificationTime(rec.getField("ModificationTime").toString());
				doc.setLocked(rec.getField("Locked").toString());
				doc.setLockingUserID(rec.getField("LockingUserId").toString());
				doc.setDescription(rec.getField("Description").toString());
				try{
					doc.setExtension(doc.getFilename().substring(doc.getFilename().lastIndexOf(".")+1));
				}catch(Exception ex){
					//Ignore the Exception here
				}
				al.add(doc);
			}
		}
		al.trimToSize();
		return al;
	}

	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.AbstractFileManagementHandler#getDocumentsWithJavaFileInPath(java.lang.String, boolean)
	 */
	@Override
	public ArrayList<DocumentOnServer> getDocumentsWithJavaFileInPath(
			String _path, boolean _isRecursive) throws Exception {
		if(_path==null || _path.trim().length()==0)
		{
			throw new Exception("Invalid path in getDocumentsInPath method");
		}

		ArrayList<DocumentOnServer>  al = new ArrayList<DocumentOnServer>();

		String folderPath = escapeBackSlash(FileHandler.formatPathWithEndSeparator(_path, false));
		Recordset rset = null;
		List<Record> recordList= (List<Record>) List.create(Record.class);

		String query="";
		IExternalDatabaseRuntimeConnection connection = null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			if(_isRecursive)
			{
				//query="SELECT * FROM "+this.tableNameSpace+" WHERE FilePath LIKE ?";
				query="SELECT * FROM "+this.tableNameSpace+
				" INNER JOIN "+this.fileContentTableNameSpace+" ON "+this.tableNameSpace+".FileId = "+this.fileContentTableNameSpace+".file_id" +
				" WHERE "+this.tableNameSpace+".FilePath LIKE ? ";
			}
			else
			{
				//query="SELECT * FROM "+this.tableNameSpace+" WHERE FilePath LIKE ? AND FilePath NOT LIKE ?";
				query="SELECT * FROM "+this.tableNameSpace+
				" INNER JOIN "+this.fileContentTableNameSpace+" ON "+this.tableNameSpace+".FileId = "+this.fileContentTableNameSpace+".file_id" +
				" WHERE "+this.tableNameSpace+".FilePath LIKE ? AND "+this.tableNameSpace+".FilePath NOT LIKE ?";
			}
			PreparedStatement stmt = null;
			try{
				stmt = jdbcConnection.prepareStatement(query);
				if(_isRecursive)
				{
					stmt.setString(1, folderPath+"%");
				}else
				{
					stmt.setString(1, folderPath+"%");
					stmt.setString(2, folderPath+"%/%");
				}
				rset=executeStatement(stmt);
				recordList=rset.toList();
			}finally{
				DatabaseUtil.close(stmt);
			}
		} finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}
		if(recordList!=null){
			for(Record rec: recordList){
				DocumentOnServer doc = new DocumentOnServer();
				doc.setFileID(rec.getField("FileId").toString());
				doc.setFilename(rec.getField("FileName").toString());
				doc.setPath(rec.getField("FilePath").toString());
				doc.setFileSize(rec.getField("FileSize").toString());
				doc.setUserID(rec.getField("CreationUserId").toString());
				doc.setCreationDate(rec.getField("CreationDate").toString());
				doc.setCreationTime(rec.getField("CreationTime").toString());
				doc.setModificationUserID(rec.getField("ModificationUserId").toString());
				doc.setModificationDate(rec.getField("ModificationDate").toString());
				doc.setModificationTime(rec.getField("ModificationTime").toString());
				doc.setLocked(rec.getField("Locked").toString());
				doc.setLockingUserID(rec.getField("LockingUserId").toString());
				doc.setDescription(rec.getField("Description").toString());
				try{
					doc.setExtension(doc.getFilename().substring(doc.getFilename().lastIndexOf(".")+1));
				}catch(Exception ex){
					//Ignore the Exception here
				}

				//we create a temp file on the server 
				String tmpPath="tmp/"+System.nanoTime()+"/"+doc.getFilename();
				File ivyFile = new File(tmpPath,true);
				Blob bl = (Blob) rec.getField("file_content");
				byte[] allBytesInBlob = bl.getBytes(1, (int) bl.length());
				FileOutputStream fos=null;
				try{
					java.io.File javaFile = ivyFile.getJavaFile();
					fos = new FileOutputStream(javaFile.getPath());
					fos.write(allBytesInBlob);
					doc.setJavaFile(javaFile);
				}finally{
					if(fos!=null){
						fos.close();
					}
				}
				al.add(doc);
			}
		}
		al.trimToSize();
		return al;
	}

	/**
	 * get the Class Object of the current AbstractFileManagementHandler implementation Class
	 * @return the class Object of the current AbstractFileManagementHandler implementation Class
	 */
	public Class<? extends AbstractFileManagementHandler> getFileManagementHandlerClass() {
		return this.getClass();
	}

	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.AbstractFileManagementHandler#getFileStorageType()
	 */
	@Override
	public int getFileStorageType() {
		return AbstractFileManagementHandler.FILE_STORAGE_DATABASE;
	}

	/**
	 * Insert a List of DocumentOnServer Objects into DB<br>
	 * It checks if the documents already exits, if so, it delete them first.
	 * To be able to store the content of the Files in the DB, this method works as following:<br>
	 * - if the given DocumentOnServer object contains a valid Ivy File Object, then its content will be stored in the DB,<br>
	 * - else if the given DocumentOnServer object contains a valid java.io.File Object, then its content will be stored in the DB,<br>
	 * - else it will use the path of the DocumentOnServer object, to retrieve the java.io.File<br>
	 * - if no content can be found, it will ignore the documentOnServer Object and will treat the following one.
	 * @param _documents: the List<DocumentOnServer> to insert in the DB
	 * @return the number of inserted documents
	 * @throws Exception
	 */
	public int insertDocuments(List<DocumentOnServer> _documents)
	throws Exception {
		int insertedIDs = -1;
		if(_documents==null || _documents.size()==0)
			return insertedIDs;

		// delete the documents that are already in the DB
		this.deleteDocumentsInDBOnly(_documents);
		String base="INSERT INTO "+this.tableNameSpace+
		" (FileName, FilePath, CreationUserId, CreationDate, CreationTime, FileSize, Locked, LockingUserId, ModificationUserId, ModificationDate, ModificationTime, Description) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
		String query ="INSERT INTO "+this.fileContentTableNameSpace+" (file_id, file_content) VALUES (?,?)";

		String date = new Date().format("dd.MM.yyyy");
		String time = new Time().format();

		IExternalDatabaseRuntimeConnection connection=null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			PreparedStatement stmt = null;
			try{

				for(DocumentOnServer doc: _documents){

					java.io.File f = null;
					if(doc.getIvyFile() !=null && doc.getIvyFile().exists())
					{
						f=doc.getIvyFile().getJavaFile();
					}else if(doc.getJavaFile() !=null && doc.getJavaFile().exists())
					{
						f = doc.getJavaFile();
					}else if(doc.getPath()!=null && !doc.getPath().trim().equals(""))
					{
						f=new java.io.File(doc.getPath().trim());
					}
					if(f!=null && f.exists())
					{
						boolean flag = true;
						//Insert first the file in UPLOADEDFILES
						try{
							stmt = jdbcConnection.prepareStatement(base, PreparedStatement.RETURN_GENERATED_KEYS);
						}catch(SQLFeatureNotSupportedException fex)
						{//The JDBC Driver doesn't accept the PreparedStatement.RETURN_GENERATED_KEYS
							stmt = jdbcConnection.prepareStatement(base);
							flag=false;
						}
						stmt.setString(1, doc.getFilename());
						Ivy.log().info("DOC TO INSERT "+doc.getPath());
						stmt.setString(2, escapeBackSlash(doc.getPath()));
						stmt.setString(3, doc.getUserID());
						stmt.setString(4, date);
						stmt.setString(5, time);
						stmt.setString(6, doc.getFileSize());
						stmt.setInt(7, 0);
						stmt.setString(8, "");
						stmt.setString(9, doc.getModificationUserID());
						stmt.setString(10, date);
						stmt.setString(11, time);
						String s = doc.getDescription();
						if(s==null)
						{
							s="";
						}
						stmt.setString(12, s);

						stmt.executeUpdate();
						ResultSet rs = stmt.getGeneratedKeys();
						int id=-1;
						if ( rs.next() ) {
							// Retrieve the auto generated key(s).
							id = rs.getInt(1);
						}
						if(!flag || id<=0)
						{
							try{
								id=this.getDocIdWithPath(escapeBackSlash(doc.getPath()));
							}catch(Exception ex){
								Ivy.log().error(ex.getMessage(),ex);
							}
						}
						if(id>0)
						{//INSERT THE FILE CONTENT IN THE CONTENT TABLE
							stmt = jdbcConnection.prepareStatement(query);
							FileInputStream is=null;
							try{
								is = new FileInputStream ( f );  
								stmt.setInt(1, id);
								stmt.setBinaryStream (2, is, (int) f.length() ); 
								stmt.executeUpdate();
							}finally{
								if(is!=null){
									is.close();
								}
							}
						}

						insertedIDs++;
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

		return insertedIDs;
	}

	/**
	 * Insert a  java.io.File Object into the File storing System.<br>
	 * The content of the File is going to be stored in the FileContent BLOB Field of the table.
	 * @param _file: java.io.File that has to be inserted into the File storing System.
	 * @param _destinationPath: Path where to insert the new file
	 * @return the number of inserted files
	 * @throws Exception
	 */
	@Deprecated
	@Override
	public int insertFile(java.io.File _file, String _destinationPath)throws Exception {
		int insertedId = -1;
		if(_file== null || _destinationPath == null) return insertedId;

		if(!_file.exists())
		{
			throw new FileNotFoundException("The file that should be insterted does not exist.");
		}

		String base = "INSERT INTO "+this.tableNameSpace+
		" (FileName, FilePath, CreationUserId, CreationDate, CreationTime, FileSize, Locked, LockingUserId, ModificationUserId, ModificationDate, ModificationTime, Description) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
		String query ="INSERT INTO "+this.fileContentTableNameSpace+" (file_id, file_content) VALUES (?,?)";

		String date = new Date().format("dd.MM.yyyy");
		String time = new Time().format();
		String user= Ivy.session().getSessionUserName();
		_destinationPath=formatPathForDirectory(_destinationPath);
		IExternalDatabaseRuntimeConnection connection=null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			PreparedStatement stmt = null;
			FileInputStream is=null;
			try{
				boolean flag = true;
				try{
					stmt = jdbcConnection.prepareStatement(base, PreparedStatement.RETURN_GENERATED_KEYS);
				}catch(SQLFeatureNotSupportedException fex)
				{//The JDBC Driver doesn't accept the PreparedStatement.RETURN_GENERATED_KEYS
					stmt = jdbcConnection.prepareStatement(base);
					flag=false;
				}
				stmt.setString(1, _file.getName());
				stmt.setString(2, _destinationPath+_file.getName());
				stmt.setString(3, user);
				stmt.setString(4, date);
				stmt.setString(5, time);
				stmt.setString(6, FileHandler.getFileSize(_file));
				stmt.setInt(7, 0);
				stmt.setString(8, "");
				stmt.setString(9, user);
				stmt.setString(10, date);
				stmt.setString(11, time);
				stmt.setString(12, "");
				stmt.executeUpdate();
				ResultSet rs = stmt.getGeneratedKeys();

				if ( rs.next() ) {
					// Retrieve the auto generated key(s).
					insertedId = rs.getInt(1);
				}

				if(!flag || insertedId<=0)
				{
					try{
						insertedId=this.getDocIdWithPath(escapeBackSlash(_destinationPath+_file.getName()));
					}catch(Exception ex){
						Ivy.log().error(ex.getMessage(),ex);
					}
				}
				if(insertedId>0)
				{//INSERT THE FILE CONTENT IN THE CONTENT TABLE
					stmt = jdbcConnection.prepareStatement(query);
					is = new FileInputStream ( _file );   
					stmt.setInt(1, insertedId);
					stmt.setBinaryStream (2, is, (int) _file.length() ); 
					stmt.executeUpdate();
				}

			}finally{
				if(is!=null)
				{
					is.close();
				}
				DatabaseUtil.close(stmt);
			}
		}finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}
		return insertedId;
	}


	@Override
	public int insertFile(java.io.File _file, String _destinationPath, String _user)throws Exception {
		int insertedId = -1;
		if(_file== null || _destinationPath == null) return insertedId;

		if(!_file.exists())
		{
			throw new FileNotFoundException("The file that should be insterted does not exist.");
		}

		String base = "INSERT INTO "+this.tableNameSpace+
		" (FileName, FilePath, CreationUserId, CreationDate, CreationTime, FileSize, Locked, LockingUserId, ModificationUserId, ModificationDate, ModificationTime, Description) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
		String query ="INSERT INTO "+this.fileContentTableNameSpace+" (file_id, file_content) VALUES (?,?)";
		String date = new Date().format("dd.MM.yyyy");
		String time = new Time().format();
		if(_user==null || _user.trim().equals("")){
			_user= Ivy.session().getSessionUserName();
		}
		_destinationPath=formatPathForDirectory(_destinationPath);
		IExternalDatabaseRuntimeConnection connection=null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			PreparedStatement stmt = null;
			FileInputStream is=null;
			try{
				boolean flag = true;
				//Insert first the file in UPLOADEDFILES
				try{
					stmt = jdbcConnection.prepareStatement(base, PreparedStatement.RETURN_GENERATED_KEYS);
				}catch(SQLFeatureNotSupportedException fex)
				{//The JDBC Driver doesn't accept the PreparedStatement.RETURN_GENERATED_KEYS
					stmt = jdbcConnection.prepareStatement(base);
					flag=false;
				}
				stmt.setString(1, _file.getName());
				stmt.setString(2, _destinationPath+_file.getName());
				stmt.setString(3, _user);
				stmt.setString(4, date);
				stmt.setString(5, time);
				stmt.setString(6, FileHandler.getFileSize(_file));
				stmt.setInt(7, 0);
				stmt.setString(8, "");
				stmt.setString(9, _user);
				stmt.setString(10, date);
				stmt.setString(11, time);
				stmt.setString(12, "");
				stmt.executeUpdate();
				ResultSet rs = stmt.getGeneratedKeys();

				if ( rs.next() ) {
					// Retrieve the auto generated key(s).
					insertedId = rs.getInt(1);
				}

				if(!flag || insertedId<=0)
				{
					try{
						insertedId=this.getDocIdWithPath(escapeBackSlash(_destinationPath+_file.getName()));
					}catch(Exception ex){
						Ivy.log().error(ex.getMessage(),ex);
					}
				}
				if(insertedId>0)
				{//INSERT THE FILE CONTENT IN THE CONTENT TABLE
					stmt = jdbcConnection.prepareStatement(query);
					is = new FileInputStream ( _file );   
					stmt.setInt(1, insertedId);
					stmt.setBinaryStream (2, is, (int) _file.length() ); 
					stmt.executeUpdate();
				}

			}finally{
				if(is!=null)
				{
					is.close();
				}
				DatabaseUtil.close(stmt);
			}
		}finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}
		return insertedId;
	}

	/**
	 * Insert a List of java.io.File Objects into DB<br>
	 * The files that already exists are going to be overwritten.<br>
	 * If a given file cannot be found on the fileSystem, it will be ignored because its content should also be stored in the DB.
	 * @param _files: List<java.io.File> the files to add into the db
	 * @param _user: Ivy user name
	 * @return the number of successful inserted files.
	 * @throws Exception
	 */
	@Override
	@Deprecated
	public int insertFiles(List<java.io.File> _files, String _user) throws Exception{
		int insertedIDs = -1;
		if(_files==null || _files.size()==0)
			return insertedIDs;

		// delete the documents that are already in the DB
		this.deleteFilesInDBOnly(_files);
		String base="INSERT INTO "+this.tableNameSpace+
		" (FileName, FilePath, CreationUserId, CreationDate, CreationTime, FileSize, Locked, LockingUserId, ModificationUserId, ModificationDate, ModificationTime, Description) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
		String query ="INSERT INTO "+this.fileContentTableNameSpace+" (file_id, file_content) VALUES (?,?)";
		String date = new Date().format("dd.MM.yyyy");
		String time = new Time().format();
		if(_user==null || _user.trim().equals("")){
			_user= Ivy.session().getSessionUserName();
		}

		IExternalDatabaseRuntimeConnection connection=null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			PreparedStatement stmt = null;
			try{

				for(java.io.File file: _files){
					if(file.exists())
					{
						boolean flag = true;
						//Insert first the file in UPLOADEDFILES
						try{
							stmt = jdbcConnection.prepareStatement(base, PreparedStatement.RETURN_GENERATED_KEYS);
						}catch(SQLFeatureNotSupportedException fex)
						{//The JDBC Driver doesn't accept the PreparedStatement.RETURN_GENERATED_KEYS
							stmt = jdbcConnection.prepareStatement(base);
							flag=false;
						}
						stmt.setString(1, file.getName());
						stmt.setString(2, file.getPath());
						stmt.setString(3, _user);
						stmt.setString(4, date);
						stmt.setString(5, time);
						stmt.setString(6, FileHandler.getFileSize(file));
						stmt.setInt(7, 0);
						stmt.setString(8, "");
						stmt.setString(9, _user);
						stmt.setString(10, date);
						stmt.setString(11, time);
						stmt.setString(12, "");

						stmt.executeUpdate();
						ResultSet rs = stmt.getGeneratedKeys();
						int id=-1;
						if ( rs.next() ) {
							// Retrieve the auto generated key(s).
							id = rs.getInt(1);
						}
						if(!flag || id<=0)
						{
							try{
								id=this.getDocIdWithPath(escapeBackSlash(file.getPath()));
							}catch(Exception ex){
								Ivy.log().error(ex.getMessage(),ex);
							}
						}
						if(id>0)
						{//INSERT THE FILE CONTENT IN THE CONTENT TABLE
							stmt = jdbcConnection.prepareStatement(query);
							FileInputStream is=null;
							try{
								is = new FileInputStream ( file );  
								stmt.setInt(1, id);
								stmt.setBinaryStream (2, is, (int) file.length() ); 
								stmt.executeUpdate();
							}finally{
								if(is!=null){
									is.close();
								}
							}
						}
						insertedIDs++;
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

		return insertedIDs;
	}

	@Override
	public int insertFiles(List<java.io.File> _files, String _destinationPath, String _user) throws Exception{
		int insertedIDs = -1;
		if(_files==null || _files.size()==0)
			return insertedIDs;

		// delete the documents that are already in the DB
		this.deleteFilesInDBOnly(_files);
		String base="INSERT INTO "+this.tableNameSpace+
		" (FileName, FilePath, CreationUserId, CreationDate, CreationTime, FileSize, Locked, LockingUserId, ModificationUserId, ModificationDate, ModificationTime, Description) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
		String query ="INSERT INTO "+this.fileContentTableNameSpace+" (file_id, file_content) VALUES (?,?)";
		String date = new Date().format("dd.MM.yyyy");
		String time = new Time().format();
		if( _user==null ||  _user.trim().equals("")){
			_user= Ivy.session().getSessionUserName();
		}

		_destinationPath=formatPathForDirectory(_destinationPath);
		IExternalDatabaseRuntimeConnection connection=null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			PreparedStatement stmt = null;
			try{
				for(java.io.File file: _files){
					if(file.exists())
					{
						boolean flag = true;
						//Insert first the file in UPLOADEDFILES
						try{
							stmt = jdbcConnection.prepareStatement(base, PreparedStatement.RETURN_GENERATED_KEYS);
						}catch(SQLFeatureNotSupportedException fex)
						{//The JDBC Driver doesn't accept the PreparedStatement.RETURN_GENERATED_KEYS
							stmt = jdbcConnection.prepareStatement(base);
							flag=false;
						}
						stmt.setString(1, file.getName());
						stmt.setString(2, _destinationPath+file.getName());
						stmt.setString(3, _user);
						stmt.setString(4, date);
						stmt.setString(5, time);
						stmt.setString(6, FileHandler.getFileSize(file));
						stmt.setInt(7, 0);
						stmt.setString(8, "");
						stmt.setString(9, _user);
						stmt.setString(10, date);
						stmt.setString(11, time);
						stmt.setString(12, "");
						stmt.executeUpdate();
						ResultSet rs = stmt.getGeneratedKeys();
						int id=-1;
						if ( rs.next() ) {
							// Retrieve the auto generated key(s).
							id = rs.getInt(1);
						}
						if(!flag || id<=0)
						{
							try{
								id=this.getDocIdWithPath(escapeBackSlash(file.getPath()));
							}catch(Exception ex){
								Ivy.log().error(ex.getMessage(),ex);
							}
						}
						if(id>0)
						{//INSERT THE FILE CONTENT IN THE CONTENT TABLE
							stmt = jdbcConnection.prepareStatement(query);
							FileInputStream is=null;
							try{
								is = new FileInputStream ( file );  
								stmt.setInt(1, id);
								stmt.setBinaryStream (2, is, (int) file.length() ); 
								stmt.executeUpdate();
							}finally{
								if(is!=null){
									is.close();
								}
							}
						}
						insertedIDs++;
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

		return insertedIDs;
	}

	/**
	 * Insert a  DocumentOnServer Object into the DB storing System.<br>
	 * To be able to store the content of the File in the DB, this method works as following:<br>
	 * - if the given DocumentOnServer object contains a valid Ivy File Object, then its content will be stored in the DB,<br>
	 * - else if the given DocumentOnServer object contains a valid java.io.File Object, then its content will be stored in the DB,<br>
	 * - else it will use the path of the DocumentOnServer object, to retrieve the java.io.File<br>
	 * - if no content can be found, it will throw an Exception.
	 * @param _document: DocumentOnServer that has to be inserted into the File storing system
	 * @return 1 if successful
	 * @throws Exception 
	 */
	public int insertOneDocument(DocumentOnServer _document)throws Exception {
		int insertedId = -1;
		if(_document== null) return insertedId;

		java.io.File f = null;
		if(_document.getIvyFile() !=null && _document.getIvyFile().exists())
		{
			f=_document.getIvyFile().getJavaFile();
		}else if(_document.getJavaFile() !=null && _document.getJavaFile().exists())
		{
			f = _document.getJavaFile();
			Ivy.log().info("Insert One Document: java file exists "+f.length());
		}else if(_document.getPath()!=null && !_document.getPath().trim().equals(""))
		{
			f=new java.io.File(_document.getPath().trim());
		}
		if(f==null || !f.exists()){
			throw new FileNotFoundException("No File could be found to be able to store its content in the Database.");
		}

		String base="";
		base = "INSERT INTO "+this.tableNameSpace+
		" (FileName, FilePath, CreationUserId, CreationDate, CreationTime, FileSize, Locked, LockingUserId, ModificationUserId, ModificationDate, ModificationTime, Description) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
		String query ="INSERT INTO "+this.fileContentTableNameSpace+" (file_id, file_content) VALUES (?,?)";
		String date = new Date().format("dd.MM.yyyy");
		String time = new Time().format();

		IExternalDatabaseRuntimeConnection connection=null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			PreparedStatement stmt = null;
			try{
				boolean flag = true;
				//Insert first the file in UPLOADEDFILES
				try{
					stmt = jdbcConnection.prepareStatement(base, PreparedStatement.RETURN_GENERATED_KEYS);
				}catch(SQLFeatureNotSupportedException fex)
				{//The JDBC Driver doesn't accept the PreparedStatement.RETURN_GENERATED_KEYS
					stmt = jdbcConnection.prepareStatement(base);
					flag=false;
				}
				stmt.setString(1, _document.getFilename());
				stmt.setString(2, escapeBackSlash(_document.getPath()));
				stmt.setString(3, _document.getUserID());
				stmt.setString(4, date);
				stmt.setString(5, time);
				stmt.setString(6, _document.getFileSize());
				stmt.setInt(7, 0);
				stmt.setString(8, "");
				stmt.setString(9, _document.getUserID());
				stmt.setString(10, date);
				stmt.setString(11, time);
				String s = _document.getDescription();
				if(s==null)
				{
					s="";
				}
				stmt.setString(12, s);

				stmt.executeUpdate();
				ResultSet rs = stmt.getGeneratedKeys();
				if ( rs.next() ) {
					// Retrieve the auto generated key(s).
					insertedId = rs.getInt(1);
				}

				if(!flag || insertedId<=0)
				{
					try{
						insertedId=this.getDocIdWithPath(escapeBackSlash(_document.getPath()));
					}catch(Exception ex){
						Ivy.log().error(ex.getMessage(),ex);
					}
				}
				if(insertedId>0)
				{//INSERT THE FILE CONTENT IN THE CONTENT TABLE
					Ivy.log().info("Inserted Id in file table : "+ insertedId);
					stmt = jdbcConnection.prepareStatement(query);
					FileInputStream is=null;
					try{
						is = new FileInputStream ( f );   
						stmt.setInt(1, insertedId);
						stmt.setBinaryStream (2, is, (int) f.length() ); 
						stmt.executeUpdate();
					}finally{
						if(is!=null){
							is.close();
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
		return insertedId;
	}

	/**
	 * Looks if a DocumentOnServer is actually Locked by a user<br>
	 * If you don't have a locking System for File edition, just override this method with no action in it and return always false.
	 * @param _doc: the DocumentOnServer to check
	 * @return true if the DocumentOnServer is Locked, else false
	 * @throws Exception
	 */
	public boolean isDocumentOnServerLocked(DocumentOnServer _doc)throws Exception{
		boolean retour = false;
		String sql ="SELECT * FROM "+this.tableNameSpace+" WHERE Locked=1 AND FilePath LIKE ?";
		IExternalDatabaseRuntimeConnection connection=null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			PreparedStatement stmt = null;
			try{
				stmt = jdbcConnection.prepareStatement(sql);
				stmt.setString(1,escapeBackSlash(_doc.getPath()));
				Recordset r = executeStatement(stmt);
				if(r.size()>0)
				{
					retour=true;
				}
			}finally{
				DatabaseUtil.close(stmt);
			}
		}finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}
		return retour;
	}

	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.AbstractFileManagementHandler#isDocumentOnServerLocked(ch.ivyteam.ivy.addons.filemanager.DocumentOnServer, java.lang.String)
	 */
	@Override
	public boolean isDocumentOnServerLocked(DocumentOnServer _doc, String _user)
	throws Exception {
		boolean retour = false;
		String sql ="SELECT * FROM "+this.tableNameSpace+" WHERE Locked=1 AND FilePath LIKE ? AND LockingUserId NOT LIKE ?";
		IExternalDatabaseRuntimeConnection connection=null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			PreparedStatement stmt = null;
			try{
				stmt = jdbcConnection.prepareStatement(sql);
				stmt.setString(1,escapeBackSlash(_doc.getPath()));
				stmt.setString(2,_user.trim());
				Recordset r = executeStatement(stmt);
				if(r.size()>0)
				{
					retour=true;
				}
			}finally{
				DatabaseUtil.close(stmt);
			}
		}finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}
		return retour;
	}

	/**
	 * get the Ivy DB connection name
	 * @return the Ivy DB connection name as String
	 */
	public String getIvyDBConnectionName() {
		return ivyDBConnectionName;
	}

	/**
	 * set the Ivy DB connection name
	 * @param _ivyDBConnectionName as String
	 */
	public void setIvyDBConnectionName(String _ivyDBConnectionName) {
		if(_ivyDBConnectionName==null || _ivyDBConnectionName.trim().length()==0)
		{
			return;
		}
		this.ivyDBConnectionName = _ivyDBConnectionName.trim();
		//reset the database, it will be reinitialized in the next query execution.
		this.database=null;
	}

	/**
	 * get the Database Table name used to store the properties of the files
	 * @return the Database table name
	 */
	public String getTableName() {
		return this.tableName;
	}

	/**
	 * set the Database table name used to store the properties of the files
	 * @param _tableName as String
	 */
	public void setTableName(String _tableName) {
		if(_tableName== null || _tableName.trim().length()==0)
		{
			return;
		}
		this.tableName = _tableName.trim();
		if(this.schemaName!=null)
		{
			this.tableNameSpace=this.schemaName+"."+this.tableName;
		}
		else
		{
			this.tableNameSpace=this.tableName;
		}
	}

	/**
	 * returns the tableNameSpace in the form of schema.table if the schemaName is setted, else just tableName.
	 * @return
	 */
	public String getTableNameSpace() {
		return tableNameSpace;
	}



	/**
	 * Look if a File is actually Locked by a user<br>
	 * If you don't have a locking System for File edition, just override this method with no action in it and return always false.
	 * @param _file: the java.io.File to check
	 * @return true if the file is Locked, else false
	 * @throws Exception
	 */
	public boolean isFileLocked(java.io.File _file)throws Exception{
		boolean retour = false;
		String sql ="SELECT * FROM "+this.tableNameSpace+" WHERE Locked=1 AND FilePath LIKE ?";
		IExternalDatabaseRuntimeConnection connection=null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			PreparedStatement stmt = null;
			try{
				stmt = jdbcConnection.prepareStatement(sql);
				stmt.setString(1,escapeBackSlash(_file.getPath()));
				Recordset r = executeStatement(stmt);
				if(r.size()>0)
				{
					retour=true;
				}
			}finally{
				DatabaseUtil.close(stmt);
			}
		}finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}
		return retour;
	}

	/**
	 * Look if a File is actually Locked by a user that is not the given user<br>
	 * If you don't have a locking System for File edition, just override this method with no action in it and return always false. 
	 * @param _file the java.io.File to check
	 * @param _user the user who has not to lock the file
	 * @return true if the file is Locked by another user as the given one.
	 * @throws Exception
	 */
	public boolean isFileLockedByAnotherUser(java.io.File _file, String _user)throws Exception{
		if(_file==null || _user ==null || _user.trim().equals(""))
		{
			return false;
		}
		boolean retour = false;
		String sql="SELECT * FROM "+this.tableNameSpace+" WHERE Locked=1 AND FilePath LIKE ? AND LockingUserId NOT LIKE ?";

		IExternalDatabaseRuntimeConnection connection=null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			PreparedStatement stmt = null;
			try{
				stmt = jdbcConnection.prepareStatement(sql);
				stmt.setString(1,escapeBackSlash(_file.getPath()));
				stmt.setString(2,_user.trim());
				Recordset r = executeStatement(stmt);
				if(r.size()>0)
				{
					retour=true;
				}
			}finally{
				DatabaseUtil.close(stmt);
			}
		}finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}
		return retour;
	}

	/**
	 * Lock a document in the DB if not already Locked by another user
	 * @param _doc: the DocumentOnServer Object that has to be Locked
	 * @param _userIn the user who locks this document
	 * @return true if the document was Locked, else false
	 * @throws Exception
	 */
	public boolean lockDocument(DocumentOnServer _doc, String _userIn) throws Exception{
		if(_doc == null || _userIn == null || _userIn.trim().length()==0)
		{
			throw new Exception("Invalid DocumentOnServer Object or invalid username in lockDocument method.");
		}
		boolean flag = false;	
		IExternalDatabaseRuntimeConnection connection = null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			String query = "UPDATE "+this.tableNameSpace+" SET Locked=1, LockingUserId= ? WHERE FilePath LIKE ? AND (LockingUserId LIKE ? OR Locked <> 1)";
			PreparedStatement stmt = null;
			try{
				stmt = jdbcConnection.prepareStatement(query);
				stmt.setString(1, _userIn.trim());
				stmt.setString(2, escapeBackSlash(_doc.getPath()));
				stmt.setString(3, _userIn.trim());
				if(stmt.executeUpdate()>0){
					flag = true;
				}
			}finally{
				DatabaseUtil.close(stmt);
			}
		} finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}
		return flag;
	}

	/**
	 * Lock a File in the DB if not already Locked by another user.<br>
	 * The File here just holds the informations stored in the DB (path, etc...). The File does not exit on the FileSystem.
	 * @param _file: the java.io.File to lock
	 * @param _userIn the user who locks this document
	 * @return true if the document was Locked, else false
	 * @throws Exception
	 */
	public boolean lockFile(java.io.File _file, String _userIn) throws Exception{
		if(_file == null || _userIn == null || _userIn.trim().length()==0)
		{
			throw new Exception("Invalid DocumentOnServer Object or invalid username in lockDocument method.");
		}
		boolean flag = false;	
		IExternalDatabaseRuntimeConnection connection = null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			String query = "UPDATE "+this.tableNameSpace+" SET Locked=1, LockingUserId= ? WHERE FilePath LIKE ? AND (LockingUserId LIKE ? OR Locked <> 1)";
			PreparedStatement stmt = null;
			try{
				stmt = jdbcConnection.prepareStatement(query);
				stmt.setString(1, _userIn.trim());
				stmt.setString(2, escapeBackSlash(_file.getPath()));
				stmt.setString(3, _userIn.trim());
				if(stmt.executeUpdate()>0){
					flag = true;
				}
			}finally{
				DatabaseUtil.close(stmt);
			}
		} finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}
		return flag;
	}

	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.AbstractFileManagementHandler#pasteCopiedDocumentOnServers(ch.ivyteam.ivy.scripting.objects.List, java.lang.String)
	 */
	@Override
	public ReturnedMessage pasteCopiedDocumentOnServers(
			List<DocumentOnServer> documents, String fileDestinationPath)
	throws Exception {
		ReturnedMessage message = new ReturnedMessage();
		message.setFiles(List.create(java.io.File.class));
		message.setDocumentOnServers(List.create(DocumentOnServer.class));
		if(documents==null || fileDestinationPath==null || fileDestinationPath.trim().equals("")){
			message.setType(FileHandler.ERROR_MESSAGE);
			message.setText("Unable to paste the given DocumentOnServer objects. One of the parameter is invalid in pasteCopiedDocumentOnServers(List<DocumentOnServer> documents, String fileDestinationPath) in class "+this.getClass().getName());
			return message;
		}
		List<DocumentOnServer> pasteDocs = List.create(DocumentOnServer.class);
		String dest = formatPathForDirectory(fileDestinationPath);
		String date = new Date().format("dd.MM.yyyy");
		String time = new Time().format();
		String user ="IVYSYSTEM";
		try{
			user = Ivy.session().getSessionUserName();
		}catch(Exception ex)
		{
			//do nothing
		}

		for(DocumentOnServer doc: documents){
			int i = getNextCopiedFileNumber(doc.getFilename(),dest);
			if(i<0)
			{
				continue;
			}

			DocumentOnServer docJ = new DocumentOnServer();
			docJ.setJavaFile(this.getDocumentOnServerWithJavaFile(doc).getJavaFile());
			if(docJ.getJavaFile()==null || !docJ.getJavaFile().isFile())
			{
				continue;
			}
			String newFile=dest;
			String fname="";
			String ext= FileHandler.getFileExtension(doc.getFilename());
			if(i==0)
			{
				newFile+=doc.getFilename();
				fname=doc.getFilename();
			}else
			{
				fname=FileHandler.getFileNameWithoutExt(doc.getFilename())+"_Copy"+i+"."+ext;
				newFile+=fname;

			}

			docJ.setDescription("Copy of "+doc.getPath());
			docJ.setCreationDate(date);
			docJ.setCreationTime(time);
			docJ.setFilename(fname);
			docJ.setFileSize(doc.getFileSize());
			docJ.setLocked("0");
			docJ.setLockingUserID("");
			docJ.setModificationDate(date);
			docJ.setModificationTime(time);
			docJ.setModificationUserID("");
			docJ.setPath(newFile);
			docJ.setJavaFile(docJ.getJavaFile());
			try{
				docJ.setExtension(docJ.getFilename().substring(docJ.getFilename().lastIndexOf(".")+1));
			}catch(Exception ex){
				//Ignore the Exception here
			}
			docJ.setUserID(user);
			int j = this.insertOneDocument(docJ);
			if(j>0){
				pasteDocs.add(docJ);
			}
		}

		message.getDocumentOnServers().addAll(pasteDocs);
		return message;
	}


	/**
	 * 
	 * @param _fileName
	 * @param _dest
	 * @return
	 * @throws Exception
	 */
	public int getNextCopiedFileNumber(String _fileName, String _dest) throws Exception{
		if(_dest==null|| _dest.trim().equals("") || _fileName == null || _fileName.trim().equals(""))
		{
			return -1;
		}
		_dest = formatPathForDirectory(_dest);
		String search = FileHandler.getFileNameWithoutExt(_fileName)+"_Copy";
		int i =0;

		String query ="SELECT FileName FROM "+this.tableNameSpace+" WHERE FilePath LIKE ? ORDER BY FileName";
		IExternalDatabaseRuntimeConnection connection = null;
		Recordset rset = null;
		List<Record> recordList= (List<Record>) List.create(Record.class);
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			PreparedStatement stmt = null;
			try{
				stmt = jdbcConnection.prepareStatement(query);
				stmt.setString(1, _dest+_fileName);
				rset=executeStatement(stmt);
				recordList=rset.toList();
				if(recordList.isEmpty()){
					i=0;
				}else
				{
					stmt.setString(1, _dest+search+"%");
					Ivy.log().info("Search for copy for "+_dest+search+"%");
					rset=executeStatement(stmt);
					recordList=rset.toList();
					if(recordList.isEmpty()){
						i=1;
					}else{
						int tmpi=i;
						for(Record rec: recordList)
						{
							String n = rec.getField("FileName").toString();
							n=FileHandler.getFileNameWithoutExt(n);
							Ivy.log().info("Search for copy found "+n);
							try{
								n = n.substring(n.lastIndexOf("_Copy")+5);
								Ivy.log().info("Search for copy number found "+n);
								tmpi=Integer.parseInt(n)+1;
								if(tmpi>i)
								{
									i=tmpi;
								}
							}catch (Exception ex){
								//do nothing
							}
						}
					}
				}

			}finally{
				DatabaseUtil.close(stmt);
			}
		} finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}
		return i;
	}

	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.AbstractFileManagementHandler#renameDirectory(java.lang.String, java.lang.String, java.lang.String)
	 */
	@Override
	public ReturnedMessage renameDirectory(String path, 
			String newName) throws Exception {
		ReturnedMessage message = new ReturnedMessage();
		message.setFiles(List.create(java.io.File.class));
		if(path==null || newName==null || newName.trim().equals("")){
			message.setText("One of the parameter was invalid for the method renameDirectory in "+this.getClass().getName());
			message.setType(FileHandler.ERROR_MESSAGE);
			return message;
		}
		//format the path

		String newPath="";
		path= formatPathForDirectoryWithoutLastSeparator(path);
		Ivy.log().info("Formatted path: "+path);
		if(path.equals(""))
		{//no valid path was entered ("////" for example)
			message.setText("One of the parameter was invalid for the method renameDirectory in "+this.getClass().getName());
			message.setType(FileHandler.ERROR_MESSAGE);
			return message;
		}
		if(!path.contains("/"))
		{//path is composed just by the directory old name

			newPath=newName;
		}else
		{//We get the old directory name

			newPath= path.substring(0,path.lastIndexOf("/"))+"/"+newName;
		}
		Ivy.log().info("The new path: "+newPath);
		//look if directory exists
		if(!this.directoryExists(path))
		{
			message.setText("The directory to rename does not exist.");
			message.setType(FileHandler.ERROR_MESSAGE);
			return message;
		}
		//Check if new path exists
		if(this.directoryExists(newPath))
		{
			message.setText("The directory "+newPath+" already exists. You cannot create a duplicate directory.");
			message.setType(FileHandler.ERROR_MESSAGE);
			return message;
		}
		//Select all the files in the dir structure. If one file is edited, cannot rename the directory.
		List<DocumentOnServer> docs = this.getDocumentOnServersInDirectory(path, true);
		boolean fileEdited=false;
		for (DocumentOnServer doc: docs){
			if(doc.getLocked().equalsIgnoreCase("1"))
			{
				fileEdited = true;
				break;
			}
		}
		if(fileEdited)
		{
			message.setText("At least on file contained in the directory or one of its subdirectories is edited. You cannot rename the directory.");
			message.setType(FileHandler.ERROR_MESSAGE);
			return message;
		}


		IExternalDatabaseRuntimeConnection connection = null;
		//we update all the contained files
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			String query ="UPDATE "+this.tableNameSpace+" SET FilePath = ? WHERE FileId = ?";
			PreparedStatement stmt = null;
			try{
				stmt = jdbcConnection.prepareStatement(query);
				for (DocumentOnServer doc: docs)
				{
					try{
						String p = path+"/";
						String s = doc.getPath().replaceFirst(p, newPath+"/");
						stmt.setString(1, s);
						stmt.setInt(2, Integer.parseInt(doc.getFileID()));
						stmt.executeUpdate();
					}catch(Exception ex){
						Ivy.log().error("Error in renameDirectory method while renaming the path of a file.", ex);
					}
				}
			}finally{
				DatabaseUtil.close(stmt);
			}
		} finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}
		// we replace the folder path on the child directories
		ArrayList<FolderOnServer> dirs = this.getListDirectoriesUnderPath(path+"/");
		if(dirs.size()>0 && dirs.get(0).getPath().equals(path))
		{//We remove the directory to rename from the list
			dirs.remove(0);
		}
		Ivy.log().info("Sub dir to rename: "+dirs.size());
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			String query ="UPDATE "+this.dirTableNameSpace+" SET dir_path = ? WHERE id = ?";
			PreparedStatement stmt = null;
			try{
				stmt = jdbcConnection.prepareStatement(query);
				for (FolderOnServer dir: dirs)
				{
					try{
						String p = path+"/";
						String s = dir.getPath().replaceFirst(p, newPath+"/");
						Ivy.log().info("New dir path: "+s);
						stmt.setString(1, s);
						stmt.setInt(2, dir.getId());
						stmt.executeUpdate();
					}catch(Exception ex){
						Ivy.log().error("Error in renameDirectory method while renaming the path of a child directory.", ex);
					}
				}
			}finally{
				DatabaseUtil.close(stmt);
			}
		} finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}
		// we update the directory to rename
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			String query ="UPDATE "+this.dirTableNameSpace+" SET dir_path = ?, dir_name = ? WHERE dir_path LIKE ?";
			PreparedStatement stmt = null;
			try{
				stmt = jdbcConnection.prepareStatement(query);
				stmt.setString(1, newPath);
				stmt.setString(2, newName);
				stmt.setString(3, path);
				stmt.executeUpdate();
			}finally{
				DatabaseUtil.close(stmt);
			}
		} finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}
		return message;
	}

	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.AbstractFileManagementHandler#renameDocument(ch.ivyteam.ivy.addons.filemanager.DocumentOnServer, java.lang.String, java.lang.String)
	 */
	@Override
	public boolean renameDocument(DocumentOnServer _doc, String _newName,String _userID) throws Exception {
		if(_doc==null || _doc.getPath().trim().length()==0 || _doc.getFilename().trim().length()==0 || _newName==null || _newName.trim().length()==0)
		{
			return false;
		}
		if(_userID==null)
		{
			_userID="";
		}
		int i=0;
		IExternalDatabaseRuntimeConnection connection = null;
		try {

			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			String query= "UPDATE "+this.tableNameSpace+" SET FileName = ?, FilePath = ?, ModificationDate = ?, ModificationTime = ?, ModificationUserId = ? WHERE FilePath LIKE ?";

			PreparedStatement stmt = null;
			try{
				String newPath = _doc.getPath().substring(0,escapeBackSlash(_doc.getPath()).lastIndexOf("/"))+"/"+_newName.trim();
				stmt = jdbcConnection.prepareStatement(query);
				stmt.setString(1, _newName.trim());
				stmt.setString(2, newPath);
				stmt.setString(3, new Date().format("dd.MM.yyyy"));
				stmt.setString(4, new Time().format("HH:mm.ss"));
				stmt.setString(5, _userID);
				stmt.setString(6, escapeBackSlash(_doc.getPath()));
				i=stmt.executeUpdate();
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
		if(i>0)
		{
			return true;
		}
		else
		{
			return false;
		}
	}

	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.AbstractFileManagementHandler#renameDocumentOnServer(ch.ivyteam.ivy.addons.filemanager.DocumentOnServer, java.lang.String)
	 */
	@Override
	public ReturnedMessage renameDocumentOnServer(DocumentOnServer document,
			String newName) throws Exception {
		ReturnedMessage message = new ReturnedMessage();
		message.setType(FileHandler.SUCCESS_MESSAGE);
		message.setFiles(List.create(java.io.File.class));
		if(document==null || document.getPath().trim().equals("") || document.getFilename().trim().equals("") || newName==null || newName.trim().equals("")){
			message.setType(FileHandler.ERROR_MESSAGE);
			message.setText("Unable to rename the given DocumentOnServer. One of the parameter is invalid in renameDocumentOnServer(DocumentOnServer document, String newName) in class "+this.getClass().getName());
			return message;
		}
		IExternalDatabaseRuntimeConnection connection=null;
		newName=FileHandler.getFileNameWithoutExt(newName);
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			PreparedStatement stmt = null;
			String query = "UPDATE "+this.tableNameSpace+" SET FileName = ?, FilePath = ? WHERE FilePath LIKE ?";
			try{
				stmt = jdbcConnection.prepareStatement(query);
				String newPath =escapeBackSlash( document.getPath());
				String ext = "."+FileHandler.getFileExtension(document.getPath());
				newPath = newPath.substring(0, newPath.lastIndexOf("/")+1)+ newName+ext;

				stmt.setString(1, newName+ext);
				stmt.setString(2,escapeBackSlash( newPath));
				stmt.setString(3,escapeBackSlash( document.getPath()));
				stmt.executeUpdate();
			}finally{
				DatabaseUtil.close(stmt);
			}

		}finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}

		return message;
	}

	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.addons.filemanager.database.AbstractFileManagementHandler#saveDocumentOnServer(ch.ivyteam.ivy.addons.filemanager.DocumentOnServer, java.lang.String)
	 */
	@Override
	public ReturnedMessage saveDocumentOnServer(DocumentOnServer document,
			String fileDestinationPath) throws Exception {
		ReturnedMessage message = new ReturnedMessage();
		message.setType(FileHandler.SUCCESS_MESSAGE);
		message.setFiles(List.create(java.io.File.class));
		if(document == null || document.getPath()==null || document.getPath().trim().equals("") || document.getFilename()==null
				|| document.getFilename().trim().equals("")){
			message.setType(FileHandler.ERROR_MESSAGE);
			message.setText("Unable to save the given DocumentOnServer. One of the parameter is invalid in saveDocumentOnServer(DocumentOnServer document, String fileDestinationPath) in class "+this.getClass().getName());
			return message;
		}

		if(fileDestinationPath==null || fileDestinationPath.trim().equals(""))
		{//no destination path => we suppose the file goes in the same path as document (=Update the document)
			fileDestinationPath=formatPath(document.getPath().trim());
		}

		int id=0;
		try{
			id=Integer.parseInt(document.getFileID().trim());

		}catch(Exception ex){

		}
		if(id<=0)
		{//then it is a new document we check if this document already exists
			DocumentOnServer doc = this.getDocumentOnServer(document.getPath().trim());

			if(doc!=null && doc.getFileID()!=null){
				try{
					id=Integer.parseInt(doc.getFileID().trim());

				}catch(Exception ex){

				}
			}
			if(id<=0)
			{//new
				int j =this.insertOneDocument(document);
				if(j>0)
				{//Success
					document.setFileID(String.valueOf(j));
					message.setDocumentOnServer(document);
					return message;
				}else
				{//error
					message.setType(FileHandler.ERROR_MESSAGE);
					message.setText("Failed to insert the new documentOnServer object in saveDocumentOnServer(DocumentOnServer document, String fileDestinationPath) in class "+this.getClass().getName());
					return message;
				}
			}else{
				// it will overwrite an existing document
				document.setFileID(doc.getFileID().trim());
			}
		}else
		{// id is set, we update the existing DocumentOnServer
			java.io.File f = null;
			if(document.getIvyFile() !=null && document.getIvyFile().isFile())
			{
				f=document.getIvyFile().getJavaFile();
			}else if(document.getJavaFile() !=null && document.getJavaFile().isFile())
			{
				f = document.getJavaFile();
			}else 
			{
				f=this.getDocumentOnServerWithJavaFile(document).getJavaFile();
			}

			String query="";
			String query2="";
			String filesize="";
			if(f==null || !f.isFile())
			{//if non file found to get content, we ignore the content field
				query = "UPDATE "+this.tableNameSpace+
				" SET FileName= ?,  FilePath= ?," +
				" FileSize= ?, Locked= ?, LockingUserId= ?, ModificationUserId= ?," +
				" ModificationDate= ?, ModificationTime= ?, Description= ? WHERE FileId = ?";
				filesize = document.getFileSize();
			}else
			{
				query = "UPDATE "+this.tableNameSpace+
				" SET FileName= ?,  FilePath= ?," +
				" FileSize= ?, Locked= ?, LockingUserId= ?, ModificationUserId= ?," +
				" ModificationDate= ?, ModificationTime= ?, Description= ? WHERE FileId = ?";
				query2="UPDATE "+this.fileContentTableNameSpace+" SET file_content= ? WHERE File_id = ?";
				filesize= FileHandler.getFileSize(f);
			}

			String date = new Date().format("dd.MM.yyyy");
			String time = new Time().format("HH:mm:ss");
			String user = Ivy.session().getSessionUserName();
			IExternalDatabaseRuntimeConnection connection=null;
			try {
				connection = getDatabase().getAndLockConnection();
				Connection jdbcConnection=connection.getDatabaseConnection();
				PreparedStatement stmt = null;
				try{
					stmt = jdbcConnection.prepareStatement(query);
					stmt.setString(1, document.getFilename());
					stmt.setString(2, escapeBackSlash(document.getPath()));
					stmt.setString(3, filesize);
					int lock =0;
					try{
						lock = Integer.parseInt(document.getLocked().trim());
						if(lock<0){
							lock=0;
						}
						if(lock>1){
							lock=1;
						}
					}catch(Exception ex){

					}
					stmt.setInt(4, lock);
					stmt.setString(5, (document.getLockingUserID()==null || document.getLockingUserID().trim().equals("")?user: document.getLockingUserID().trim()));
					stmt.setString(6, user);
					stmt.setString(7, date);
					stmt.setString(8, time);
					String s = document.getDescription();
					if(s==null)
					{
						s="";
					}
					stmt.setString(9, s);
					stmt.setInt(10, id);
					stmt.executeUpdate();
					if(f!=null && f.exists())
					{// the content exists
						// set the content
						stmt = jdbcConnection.prepareStatement(query2);
						FileInputStream is=null;
						try{
							is = new FileInputStream ( f );  
							stmt.setBinaryStream (1, is, (int) f.length() ); 
							//stmt.setBlob(10, is, (int) f.length());
							//set the id (WHERE CLAUSE)
							stmt.setInt(2, id);
							stmt.executeUpdate();
						}finally
						{
							if(is!=null)
							{
								is.close();
							}
						}
					}
					message.setDocumentOnServer(document);
				}finally{
					DatabaseUtil.close(stmt);
				}
			}finally{
				if(connection!=null ){
					database.giveBackAndUnlockConnection(connection);
				}
			}

		}

		return message;
	}

	@Override
	public ReturnedMessage setFileDescription(String path, String description)
	throws Exception {
		ReturnedMessage message = new ReturnedMessage();
		message.setType(FileHandler.SUCCESS_MESSAGE);
		message.setFiles(List.create(java.io.File.class));
		if(path==null || path.trim().equals(""))
		{
			message.setType(FileHandler.ERROR_MESSAGE);
			message.setText("Unable to set the description. One of the parameter is invalid in setFileDescription(String path, String description) in class "+this.getClass().getName());
			return message;
		}

		if(description == null)
		{
			description="";
		}

		IExternalDatabaseRuntimeConnection connection=null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			PreparedStatement stmt = null;
			String query = "UPDATE "+this.tableNameSpace+" SET Description = ? WHERE FilePath LIKE ?";
			try{
				stmt = jdbcConnection.prepareStatement(query);
				stmt.setString(1,description);
				stmt.setString(2,escapeBackSlash(path));
				int i = stmt.executeUpdate();
				if(i<=0){
					message.setType(FileHandler.ERROR_MESSAGE);
					message.setText(Ivy.cms().co("/ch/ivyteam/ivy/addons/filemanager/fileManagement/messages/error/fileNotfound")+" "+path);
				}
			}finally{
				DatabaseUtil.close(stmt);
			}

		}finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}

		return message;

	}

	@Override
	public ReturnedMessage setFileDescription(DocumentOnServer document,
			String description) throws Exception {
		ReturnedMessage message = new ReturnedMessage();
		message.setType(FileHandler.SUCCESS_MESSAGE);
		message.setFiles(List.create(java.io.File.class));
		if(document==null)
		{
			message.setType(FileHandler.ERROR_MESSAGE);
			message.setText("Unable to set the description. One of the parameter is invalid in setFileDescription(DocumentOnServer document, String description) in class "+this.getClass().getName());
			return message;
		}
		int id=0;
		if(document.getFileID()!=null)
		{
			try{
				id=Integer.parseInt(document.getFileID());
			}catch(Exception ex){

			}
		}
		if(id<=0 && document.getPath()!=null){
			DocumentOnServer doc=this.getDocumentOnServer(document.getPath());
			if(doc.getFileID()!=null){
				try{
					id=Integer.parseInt(doc.getFileID());
				}catch(Exception ex){

				}
			}
		}
		if(id<=0){
			message.setType(FileHandler.ERROR_MESSAGE);
			message.setText("Unable to set the description. The DocumentOnServer parameter is invalid in setFileDescription(DocumentOnServer document, String description) in class "+this.getClass().getName());
			return message;
		}
		if(description == null)
		{
			description="";
		}

		IExternalDatabaseRuntimeConnection connection=null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			PreparedStatement stmt = null;
			String query = "UPDATE "+this.tableNameSpace+" SET Description = ? WHERE FileId = ?";
			try{
				stmt = jdbcConnection.prepareStatement(query);
				stmt.setString(1,description);
				stmt.setInt(2,id);
				int i = stmt.executeUpdate();
				if(i<=0){
					message.setType(FileHandler.ERROR_MESSAGE);
					message.setText(Ivy.cms().co("/ch/ivyteam/ivy/addons/filemanager/fileManagement/messages/error/fileNotfound"));
				}
			}finally{
				DatabaseUtil.close(stmt);
			}

		}finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}

		return message;
	}

	@Override
	public ReturnedMessage moveDocumentOnServer(DocumentOnServer document, String destination) throws Exception
	{
		ReturnedMessage message = new ReturnedMessage();
		message.setType(FileHandler.SUCCESS_MESSAGE);
		message.setFiles(List.create(java.io.File.class));
		if(document == null || document.getPath()==null || document.getPath().trim().equals("") || document.getFilename()==null
				|| document.getFilename().trim().equals("") || destination==null || destination.trim().equals("")){
			message.setType(FileHandler.ERROR_MESSAGE);
			message.setText("Unable to save the given DocumentOnServer. One of the parameter is invalid in saveDocumentOnServer(DocumentOnServer document, String fileDestinationPath) in class "+this.getClass().getName());
			return message;
		}
		destination = formatPathForDirectory(destination);
		String query="UPDATE "+this.tableNameSpace+
		" SET  FilePath= ? WHERE FileId = ?";
		IExternalDatabaseRuntimeConnection connection=null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			PreparedStatement stmt = null;
			try{
				stmt = jdbcConnection.prepareStatement(query);
				stmt.setString(1, destination+document.getFilename());
				stmt.setInt(2, Integer.parseInt(document.getFileID()));

				stmt.executeUpdate();
				message.setDocumentOnServer(document);
			}finally{
				DatabaseUtil.close(stmt);
			}
		}finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}




		return message;
	}

	/**
	 * unLock a document in the DB 
	 * @param _doc: the DocumentOnServer Object that has to be Locked
	 * @return true if the document was unLocked, else false
	 * @throws Exception
	 */
	public boolean unlockDocument(DocumentOnServer _doc) throws Exception{
		if(_doc == null )
		{
			throw new Exception("Invalid DocumentOnServer Object in unlockDocument method.");
		}
		boolean flag = false;
		IExternalDatabaseRuntimeConnection connection=null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			String query = "UPDATE "+this.tableNameSpace+" SET Locked=0, LockingUserId= ? WHERE FilePath LIKE ?";
			PreparedStatement stmt = null;
			try{
				stmt = jdbcConnection.prepareStatement(query);
				stmt.setString(1, "");
				stmt.setString(2,escapeBackSlash( _doc.getPath()));
				if(stmt.executeUpdate()>0){
					flag = true;
				}
			}finally{
				DatabaseUtil.close(stmt);
			}

		}finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}
		return flag;
	}

	/**
	 * unLock a document in the DB with check if given user is the same who has Locked the document.<br>
	 * If it is not the same, the File won't be Locked.
	 * @param _doc: the DocumentOnServer Object that has to be Locked
	 * @param _user the user who locks this document
	 * @return true if the document was unLocked, else false
	 * @throws Exception
	 */
	public boolean unlockDocumentWithUSerCheck(DocumentOnServer _doc, String _user)throws Exception{
		if(_doc == null )
		{
			throw new Exception("Invalid DocumentOnServer Object in unlockDocument method.");
		}
		boolean flag = false;
		IExternalDatabaseRuntimeConnection connection=null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			String query = "UPDATE "+this.tableNameSpace+" SET Locked=0, LockingUserId = ? WHERE FilePath LIKE ? AND LockingUserId LIKE ?";
			PreparedStatement stmt = null;
			try{
				stmt = jdbcConnection.prepareStatement(query);
				stmt.setString(1, "");
				stmt.setString(2, escapeBackSlash(_doc.getPath()));
				stmt.setString(3, _user.trim());
				if(stmt.executeUpdate()>0){
					flag = true;
				}
			}finally{
				DatabaseUtil.close(stmt);
			}

		}finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}
		return flag;
	}

	/**
	 * unLock a File in the DB<br>
	 * The File here just holds the informations stored in the DB (path, etc...). The File does not exit on the FileSystem.
	 * @param _file: the java.io.File to lock
	 * @return true if the document was unLocked, else false
	 * @throws Exception
	 */
	public boolean unlockFile(java.io.File _file) throws Exception{
		if(_file == null )
		{
			throw new Exception("Invalid DocumentOnServer Object in unlockDocument method.");
		}
		boolean flag = false;
		IExternalDatabaseRuntimeConnection connection=null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			String query = "UPDATE "+this.tableNameSpace+" SET Locked=0, LockingUserId= ? WHERE FilePath LIKE ?";
			PreparedStatement stmt = null;
			try{
				stmt = jdbcConnection.prepareStatement(query);
				stmt.setString(1, "");
				stmt.setString(2, escapeBackSlash(_file.getPath()));
				if(stmt.executeUpdate()>0){
					flag = true;
				}
			}finally{
				DatabaseUtil.close(stmt);
			}

		}finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}
		return flag;
	}

	/**
	 * unLock a File in the DB with check if given user is the same who has Locked the document.<br>
	 * If it is not the same, the File won't be Locked.<br>
	 * The File here just holds the informations stored in the DB (path, etc...). The File does not exit on the FileSystem.
	 * @param _file: the java.io.File to lock
	 * @param _user the user who locks this document
	 * @return true if the document was unLocked, else false
	 * @throws Exception
	 */
	public boolean unlockFileWithUSerCheck(java.io.File _file, String _user) throws Exception{
		if(_file == null )
		{
			throw new Exception("Invalid DocumentOnServer Object in unlockDocument method.");
		}
		boolean flag = false;
		IExternalDatabaseRuntimeConnection connection=null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			String query = "UPDATE "+this.tableNameSpace+" SET Locked=0, LockingUserId= ? WHERE FilePath LIKE ? AND LockingUserId LIKE ?";
			PreparedStatement stmt = null;
			try{
				stmt = jdbcConnection.prepareStatement(query);
				stmt.setString(1, "");
				stmt.setString(2, escapeBackSlash(_file.getPath()));
				stmt.setString(3, _user.trim());
				if(stmt.executeUpdate()>0){
					flag = true;
				}
			}finally{
				DatabaseUtil.close(stmt);
			}

		}finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}
		return flag;
	}

	/**
	 * this Method should be used to unlock all the files edited by a given user under a given path.
	 * If the boolean argument "recursive" is true, then all the files in the children directories
	 * are going to be unLocked. Else just the files directly under the given path are going to be unLocked.
	 * This method can be used when you close an application for example.
	 * @param _path the path where to look for the Locked files
	 * @param _user the ivy user name 
	 * @param _recursive true or false. If is recursive, look in all the sub directories under the path
	 * @throws Exception
	 */
	public void unlockFilesEdited(String _path, String _user, boolean _recursive)throws Exception {
		String folderPath = escapeBackSlash(FileHandler.formatPathWithEndSeparator(_path, false));
		String query="";
		IExternalDatabaseRuntimeConnection connection=null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			if(_recursive)
			{
				query="UPDATE "+ this.tableNameSpace + " SET Locked = 0, LockingUserId= ? WHERE LockingUserId LIKE ? AND FilePath LIKE ?";
			}else
			{
				//query="UPDATE "+ tableName + " SET Locked = 0 WHERE LockingUserId LIKE '"+user+"' AND FilePath LIKE '"+folderPath+"%' AND FilePath NOT LIKE '"+folderPath+"%["+java.io.File.separator+"]%'";
				query="UPDATE "+ this.tableNameSpace + " SET Locked = 0, LockingUserId= ? WHERE LockingUserId LIKE ? AND FilePath LIKE ? AND FilePath NOT LIKE ?";
			}
			PreparedStatement stmt = null;
			try{
				stmt = jdbcConnection.prepareStatement(query);
				if(_recursive)
				{
					stmt.setString(1, "");
					stmt.setString(2, _user.trim());
					stmt.setString(3, folderPath+"%");
					stmt.executeUpdate();
				}
				else
				{
					stmt.setString(1, "");
					stmt.setString(2, _user.trim());
					stmt.setString(3, folderPath+"%");
					stmt.setString(4, folderPath+"%/%");
					stmt.executeUpdate();
				}

			}finally{
				DatabaseUtil.close(stmt);
			}
		}finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}
	}

	/**
	 * update the documents with one complete SQL Query as argument
	 * @param query: the SQL Query as String
	 * @throws Exception
	 */
	public void updateDocuments(String _query) throws Exception{
		IExternalDatabaseRuntimeConnection connection = null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			PreparedStatement stmt = null;
			try{
				stmt = jdbcConnection.prepareStatement(_query);
				stmt.execute();
			}finally{
				DatabaseUtil.close(stmt);
			}
		} finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}
	}

	/**
	 * Allows executing an update on documents with the given Key/Value pairs and conditions for filtering
	 * @param KVP: List<KeyValuePair> that represents the new values for the given properties (Keys)
	 * @param conditions: List<String> the list of the conditions to filter the update
	 * @return a RecordSet of the updated documents
	 * @throws Exception
	 */
	public int updateDocuments(List<KeyValuePair> _KVP, List<String> _conditions) throws Exception{
		int rows=0;
		if(_KVP.isEmpty())
		{//do nothing if the list of KeyValuePairs is empty
			return 0;
		}
		//build dthe SQL Query with the keyValue pairs and the list of conditions
		StringBuilder sql=new StringBuilder("UPDATE "+this.tableNameSpace+" SET");

		for(KeyValuePair kvp: _KVP){
			//sql.append(" "+kvp.getKey().toString()+"='"+escapeForMSSQL(kvp.getValue().toString())+"', ");
			sql.append(" "+kvp.getKey().toString()+"= ? ,");
		}
		sql=sql.deleteCharAt(sql.lastIndexOf(","));

		sql.append(" WHERE ");
		int numConditions= _conditions.size()-1;
		for(int i=0; i<numConditions;i++){
			sql.append(_conditions.get(i).trim()+" AND ");
		}
		sql.append(_conditions.get(numConditions));
		sql.trimToSize();
		String _query = sql.toString();
		IExternalDatabaseRuntimeConnection connection = null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			PreparedStatement stmt=null;
			try{
				stmt = jdbcConnection.prepareStatement(_query);
				int i = 1;
				for(KeyValuePair kvp: _KVP)
				{
					if(kvp.getValue() instanceof String){
						stmt.setString(i, kvp.getValue().toString());
					}else{
						int n=0;
						try{
							n = Integer.parseInt(kvp.getValue().toString());
						}catch(Exception ex){

						}
						stmt.setInt(i, n);
					}
					i++;
				}

				rows=stmt.executeUpdate();
			}finally{
				DatabaseUtil.close(stmt);
			}			
		} finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}
		return rows;
	}

	/**
	 * delete documents from the DB
	 * @param _documents the list of the DocumentOnServer to delete
	 * @return the number of items deleted
	 * @throws Exception
	 */
	public int deleteDocumentsInDBOnly(List<DocumentOnServer> _documents)throws Exception{
		int deletedFiles=0;
		if(_documents==null || _documents.size()==0)
		{
			return 0;
		}
		IExternalDatabaseRuntimeConnection connection=null;
		String base= "DELETE FROM "+this.tableNameSpace+" WHERE FilePath LIKE ?"; 
		String query="DELETE FROM "+this.fileContentTableNameSpace+" WHERE file_id = ?";
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			PreparedStatement stmt = null;
			try{
				stmt = jdbcConnection.prepareStatement(base);
				for(DocumentOnServer doc: _documents){
					stmt.setString(1, escapeBackSlash(doc.getPath()));
					deletedFiles+=stmt.executeUpdate();
				}
				stmt = jdbcConnection.prepareStatement(query);
				for(DocumentOnServer doc: _documents){
					int id=0;
					if(doc.getFileID()!=null)
					{
						try{
							id=Integer.parseInt(doc.getFileID());
						}catch(Exception ex)
						{

						}
					}
					if(id>0){
						stmt.setInt(1, id);
						stmt.executeUpdate();
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

		return deletedFiles;
	}

	/**
	 * delete files from the DB
	 * @param _files the list of the java.io.File to delete
	 * @return the number of items deleted
	 * @throws Exception
	 */
	private int deleteFilesInDBOnly(List<java.io.File> _files)throws Exception{
		int deletedFiles=0;
		if(_files==null || _files.size()==0)
		{
			return 0;
		}
		IExternalDatabaseRuntimeConnection connection=null;
		String base= "DELETE FROM "+this.tableNameSpace+" WHERE FilePath LIKE ?"; 
		String query="DELETE FROM "+this.fileContentTableNameSpace+" WHERE file_id = ?";
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			PreparedStatement stmt = null;
			try{
				stmt = jdbcConnection.prepareStatement(query);
				for(java.io.File file: _files){
					int id=0;

					try{
						id=this.getDocIdWithPath(file.getPath());
					}catch(Exception ex)
					{

					}
					if(id>0){
						stmt.setInt(1, id);
						stmt.executeUpdate();
					}
				}
				stmt = jdbcConnection.prepareStatement(base);
				for(java.io.File file: _files){
					stmt.setString(1, escapeBackSlash(file.getPath()));
					deletedFiles+=stmt.executeUpdate();
				}
			}finally{
				DatabaseUtil.close(stmt);
			}
		}finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}

		return deletedFiles;
	}

	/**
	 * @return the dirTableName
	 */
	public String getDirTableName() {
		return dirTableName;
	}

	/**
	 * @param dirTableName the dirTableName to set
	 */
	public void setDirTableName(String dirTableName) {
		this.dirTableName = dirTableName;
	}

	/**
	 * @return the dirTableNameSpace
	 */
	public String getDirTableNameSpace() {
		return dirTableNameSpace;
	}

	/**
	 * @param dirTableNameSpace the dirTableNameSpace to set
	 */
	public void setDirTableNameSpace(String dirTableNameSpace) {
		this.dirTableNameSpace = dirTableNameSpace;
	}

	@Override
	public boolean isDirectoryEmpty(String directoryPath) throws Exception {
		if(directoryPath==null || directoryPath.trim().equals(""))
		{
			throw new IllegalArgumentException("Illegal directory Path in method isDirectoryEmpty(String directoryPath) in "+this.getClass().toString());
		}
		if(directoryExists(directoryPath))
		{
			if(getDocumentsInPath(directoryPath, true).size()>0)
			{
				return false;
			}
			if(getListDirectoriesUnderPath(directoryPath).size()>1)
			{
				return false;
			}
		}
		return true;
	}

	/**
	 * @param securityOn the securityOn to set
	 */
	public void setSecurityOn(boolean securityOn) {
		this.securityActivated = securityOn;
	}

	/**
	 * @return the securityOn
	 */
	public boolean isSecurityOn() {
		return securityActivated;
	}

	@Override
	public ReturnedMessage zipDocumentOnServers(
			List<DocumentOnServer> documents, String dirPath, String zipName,
			boolean checkIfExists) throws Exception {
		ReturnedMessage message = new ReturnedMessage();
		message.setFiles(List.create(java.io.File.class));
		message.setDocumentOnServers(List.create(DocumentOnServer.class));

		if(dirPath == null || dirPath.trim().length()<=0 || documents==null || documents.size()==0)
		{
			throw new IllegalArgumentException("One of the parameter is not set in zipDocumentOnServers(List<DocumentOnServer> documents, String dirPath, String zipName,boolean checkIfExists) in "+ this.getClass());
		}

		dirPath=formatPathForDirectory(dirPath);
		zipName = zipName.endsWith(".zip")?zipName:zipName+".zip";
		boolean exists = this.fileExists(dirPath+zipName);

		if(checkIfExists && exists){
			message.setType(FileHandler.ERROR_MESSAGE);
			message.setText(Ivy.cms().co("/ch/ivyteam/ivy/addons/filemanager/fileManagement/messages/error/zipfileAlreadyExistsCannotCreateIt"));
			return message;
		}else if(exists)
		{
			this.deleteFile(dirPath+zipName);
		}

		ArrayList<java.io.File> zipFiles = new ArrayList<java.io.File>();
		for(DocumentOnServer doc : documents){
			if(doc.getJavaFile()!=null && doc.getJavaFile().isFile())
			{
				zipFiles.add(doc.getJavaFile());
			}else{
				java.io.File f = this.getDocumentOnServerWithJavaFile(doc).getJavaFile();
				if(f!=null && f.isFile()){
					zipFiles.add(f);
				}
			}
		}

		String date = new Date().format("dd.MM.yyyy");
		String time = new Time().format();
		String user ="IVYSYSTEM";
		//we create a temp file on the server 
		String tmpPath="tmp/"+System.nanoTime();
		File ivyFile = new File(tmpPath+"/"+zipName,true);
		ivyFile.createNewFile();

		java.io.File zip = ZipHandler.makeZip(tmpPath, zipName, zipFiles);
		try{
			user = Ivy.session().getSessionUserName();
		}catch(Exception ex)
		{
			user ="IVYSYSTEM";
		}
		DocumentOnServer doc = new DocumentOnServer();
		doc.setCreationDate(date);
		doc.setCreationTime(time);
		doc.setUserID(user);
		doc.setDescription("");
		doc.setFilename(zipName);
		doc.setJavaFile(zip);
		doc.setFileSize(FileHandler.getFileSize(zip));
		doc.setLocked("0");
		doc.setLockingUserID("");
		doc.setModificationDate(date);
		doc.setModificationTime(time);
		doc.setModificationUserID(user);
		doc.setPath(dirPath+zipName);
		return this.saveDocumentOnServer(doc, "");

	}

	@Override
	public boolean deleteFile(String _filepath) throws Exception{

		if(_filepath==null || _filepath.trim().equals(""))
		{
			return false;
		}
		boolean flag = false;
		_filepath = formatPath(_filepath);
		IExternalDatabaseRuntimeConnection connection=null;
		String base= "DELETE FROM "+this.tableNameSpace+" WHERE FilePath LIKE ?"; 
		String query="DELETE FROM "+this.fileContentTableNameSpace+" WHERE file_id = ?";
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			PreparedStatement stmt = null;
			try{
				stmt = jdbcConnection.prepareStatement(query);

				int id=0;
				try{
					id=this.getDocIdWithPath(_filepath);
				}catch(Exception ex)
				{

				}
				if(id>0){
					stmt.setInt(1, id);
					stmt.executeUpdate();
				}

				stmt = jdbcConnection.prepareStatement(base);
				stmt.setString(1, escapeBackSlash(_filepath));
				flag = stmt.executeUpdate()>0;
			}
			finally{
				DatabaseUtil.close(stmt);
			}
		}finally{
			if(connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}
		return flag;
	}

	@Override
	public AbstractDirectorySecurityController getSecurityController()
	throws Exception {
		return this.securityController;
	}
}
