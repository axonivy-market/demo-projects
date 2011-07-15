/**
 * 
 */
package ch.ivyteam.ivy.addons.filemanager.database;


import java.io.File;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.concurrent.Callable;

import ch.ivyteam.db.jdbc.DatabaseUtil;
import ch.ivyteam.ivy.db.IExternalDatabase;
import ch.ivyteam.ivy.db.IExternalDatabaseApplicationContext;
import ch.ivyteam.ivy.db.IExternalDatabaseConnection;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.scripting.objects.Date;
import ch.ivyteam.ivy.scripting.objects.List;
import ch.ivyteam.ivy.scripting.objects.Record;
import ch.ivyteam.ivy.scripting.objects.Recordset;
import ch.ivyteam.ivy.scripting.objects.Time;
import ch.ivyteam.ivy.addons.filemanager.KeyValuePair;
import ch.ivyteam.ivy.addons.filemanager.DocumentOnServer;
import ch.ivyteam.ivy.addons.filemanager.FileHandler;


/**
 * @author ec
 * @since 01.10.2010
 * This class is the interface between the FileManager RDC and the Ivy DB Connection<br>
 * that stores the files informations.<br>
 * The FileManager uses and calls this Object whenever he needs to change or get the files informations.
 */
public class FileManagementDBHandlerUniversal extends AbstractFileManagementHandler{
	private String ivyDBConnectionName = null; // the user friendly connection name to Database in Ivy
	private String tableName = null; // the table name to use in queries
	private String schemaName = null;// the DB Schema name if needed (eg. by PostGreSQL)
	private String tableNameSpace = null; // equals to tableName if schemaName == null, else schemaName.tableName
	IExternalDatabase database=null;
	/**
	 * Default constructor
	 * @throws Exception 
	 */
	public FileManagementDBHandlerUniversal(){
		this(null,null);
	}

	/**
	 * Constructor with the database connection name as it is in Ivy Database configuration and callback methods.
	 * @param ivyDBConnectionName: the name of the database connection name as it is in Ivy Database configuration
	 * @throws Exception 
	 * @throws EnvironmentNotAvailableException 
	 */
	/**
	 * Constructor 
	 * @param _ivyDBConnectionName: the name of the database connection name as it is in Ivy Database configuration
	 * @param _tableName
	 * @throws Exception
	 */
	public FileManagementDBHandlerUniversal(String _ivyDBConnectionName, String _tableName) {
		super();
		if(_ivyDBConnectionName==null || _ivyDBConnectionName.trim().length()==0)
		{//if ivy user friendly name of database configuration not setted used default
			this.ivyDBConnectionName = "filemanager";
		}else{
			this.ivyDBConnectionName = _ivyDBConnectionName.trim();
		}
		if(_tableName==null || _tableName.trim().length()==0)
		{//if ivy table name not setted used default
			this.tableName="UPLOADEDFILES";
		}else{
			this.tableName=_tableName.trim();
		}
		this.tableNameSpace = this.tableName;
	}

	/**
	 * Constructor with the database connection name as it is in Ivy Database configuration and callback methods.
	 * @param ivyDBConnectionName: the name of the database connection name as it is in Ivy Database configuration
	 * @throws Exception 
	 * @throws EnvironmentNotAvailableException 
	 */
	public FileManagementDBHandlerUniversal(String _ivyDBConnectionName, String _tableName, String _schemaName){
		super();
		if(_ivyDBConnectionName==null || _ivyDBConnectionName.trim().length()==0)
		{//if ivy user friendly name of database configuration not setted used default
			this.ivyDBConnectionName = "filemanager";
		}else{
			this.ivyDBConnectionName = _ivyDBConnectionName.trim();
		}
		if(_tableName==null || _tableName.trim().length()==0)
		{//if ivy table name not setted used default
			this.tableName="UPLOADEDFILES";
		}else{
			this.tableName=_tableName.trim();
			this.tableNameSpace = this.tableName;
		}
		if(_schemaName!=null && _schemaName.trim().length()>0)
		{//set the schema name variable
			this.schemaName = _schemaName.trim();
			this.tableNameSpace=this.schemaName+"."+this.tableName;
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
	 * get all the Files that are listed under a specified path in the database xlin400Additional, table UPLOADEDFILES
	 * @param _path: String representing the path of the directory that contains the files
	 * @param _isrecursive: boolean, if true, all the files in the tree structrure under the directory are going to be listed.<br>
	 * If false, only the files directly under the directory are going to be listed
	 * @return an ArrayList of {@link DocumentOnServer} Objects. Each DocumentOnServer object represents a File with several informations (name, path, size, creationdate, creationUser...)
	 * @throws Exception 
	 */
	public ArrayList<DocumentOnServer> getDocumentsInPath(String _path, boolean _isrecursive) throws Exception{
		if(_path==null || _path.trim().length()==0)
		{
			throw new Exception("Invalid path in getDocumentsInPath method");
		}

		ArrayList<DocumentOnServer>  al = new ArrayList<DocumentOnServer>();

		String folderPath = escapeBackSlash(FileHandler.formatPathWithEndSeparator(_path, false));
		Recordset rset = null;
		List<Record> recordList= (List<Record>) List.create(Record.class);

		String query="";
		IExternalDatabaseConnection connection = null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			if(_isrecursive)
			{
				query="SELECT * FROM "+this.tableNameSpace+" WHERE FILEPATH LIKE ?";
			}
			else
			{
				query="SELECT * FROM "+this.tableNameSpace+" WHERE FILEPATH LIKE ? AND FILEPATH NOT LIKE ?";
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
				doc.setFileID(rec.getField("FILEID").toString());
				doc.setFilename(rec.getField("FILENAME").toString());
				doc.setPath(rec.getField("FILEPATH").toString());
				doc.setFileSize(rec.getField("FILESIZE").toString());
				doc.setUserID(rec.getField("CREATIONUSERID").toString());
				doc.setCreationDate(rec.getField("CREATIONDATE").toString());
				doc.setCreationTime(rec.getField("CREATIONTIME").toString());
				doc.setModificationUserID(rec.getField("MODIFICATIONUSERID").toString());
				doc.setModificationDate(rec.getField("MODIFICATIONDATE").toString());
				doc.setModificationTime(rec.getField("MODIFICATIONTIME").toString());
				doc.setLocked(rec.getField("LOCKED").toString());
				doc.setLockingUserID(rec.getField("LOCKINGUSERID").toString());
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
	 * Each condition should be written like : "FILEID > 1000", "FILENAME NOT LIKE 'test.doc'", "FILENAME LIKE 'test.doc'"...<br>
	 * @param _conditions: List<String> representing the conditions to perform the search in the DB
	 * @return an ArrayList of {@link DocumentOnServer} Objects.<br>
	 * Each DocumentOnServer object represents a File with several informations (name, path, size, creationdate, creationUser...)
	 * @throws Exception
	 */
	public ArrayList<DocumentOnServer> getDocuments(List<String> _conditions)throws Exception{
		ArrayList<DocumentOnServer>  al = new ArrayList<DocumentOnServer>();
		Recordset rset = null;
		List<Record> recordList=null;
		StringBuilder query=new StringBuilder("");

		query.append("SELECT * FROM "+this.tableNameSpace+" WHERE ");
		int numConditions= _conditions.size()-1;
		for(int i=0; i<numConditions;i++){
			query.append(_conditions.get(i)+" AND ");
		}
		query.append(_conditions.get(numConditions));
		//rset=IvySystemDBReuser.executeQuery(query.toString());
		IExternalDatabaseConnection connection = null;
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
						doc.setFileID(rec.getField("FILEID").toString());
						doc.setFilename(rec.getField("FILENAME").toString());
						doc.setPath(rec.getField("FILEPATH").toString());
						doc.setFileSize(rec.getField("FILESIZE").toString());
						doc.setUserID(rec.getField("CREATIONUSERID").toString());
						doc.setCreationDate(rec.getField("CREATIONDATE").toString());
						doc.setCreationTime(rec.getField("CREATIONTIME").toString());
						doc.setModificationUserID(rec.getField("MODIFICATIONUSERID").toString());
						doc.setModificationDate(rec.getField("MODIFICATIONDATE").toString());
						doc.setModificationTime(rec.getField("MODIFICATIONTIME").toString());
						doc.setLocked(rec.getField("LOCKED").toString());
						doc.setLockingUserID(rec.getField("LOCKINGUSERID").toString());
						doc.setDescription(rec.getField("DESCRIPTION").toString());
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

	/**
	 * return all the locked documents under a given path
	 * @param _path: the path where to look for the locked files
	 * @param _isRecursive: if is recursive, look in all the sub directories under the path
	 * @return the list of DocumentOnServer as ArrayList<DocumentOnServer> that are locked
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
		IExternalDatabaseConnection connection = null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			if(_isrecursive)
			{
				query="SELECT * FROM "+this.tableNameSpace+" WHERE LOCKED=1 AND FILEPATH LIKE ?";
			}else
			{
				//query="SELECT * FROM "+this.tableNamespace+" WHERE LOCKED=1 AND FILEPATH LIKE '"+folderPath+"%' AND FILEPATH NOT LIKE '"+folderPath+"%["+java.io.File.separator+"]%'";
				query="SELECT * FROM "+this.tableNameSpace+" WHERE LOCKED=1 AND FILEPATH LIKE ? AND FILEPATH NOT LIKE ?";
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
				doc.setFileID(rec.getField("FILEID").toString());
				doc.setFilename(rec.getField("FILENAME").toString());
				doc.setPath(rec.getField("FILEPATH").toString());
				doc.setFileSize(rec.getField("FILESIZE").toString());
				doc.setUserID(rec.getField("CREATIONUSERID").toString());
				doc.setCreationDate(rec.getField("CREATIONDATE").toString());
				doc.setCreationTime(rec.getField("CREATIONTIME").toString());
				doc.setModificationUserID(rec.getField("MODIFICATIONUSERID").toString());
				doc.setModificationDate(rec.getField("MODIFICATIONDATE").toString());
				doc.setModificationTime(rec.getField("MODIFICATIONTIME").toString());
				doc.setLocked(rec.getField("LOCKED").toString());
				doc.setLockingUserID(rec.getField("LOCKINGUSERID").toString());
				al.add(doc);
			}
		}
		al.trimToSize();
		return al;
	}

	/**
	 * update the documents with one complete SQL Query as argument
	 * @param query: the SQL Query as String
	 * @throws Exception
	 */
	public void updateDocuments(String _query) throws Exception{
		IExternalDatabaseConnection connection = null;
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
	 * @return a Recordset of the updated documents
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
		IExternalDatabaseConnection connection = null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			PreparedStatement stmt=null;
			try{
				stmt = jdbcConnection.prepareStatement(_query);
				int i = 1;
				for(KeyValuePair kvp: _KVP){
					stmt.setString(i, kvp.getValue().toString());
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
		IExternalDatabaseConnection connection = null;
		try {
			
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			String query= "UPDATE "+this.tableNameSpace+" SET FILENAME = ?, FILEPATH = ?, MODIFICATIONDATE = ?, MODIFICATIONTIME = ?, MODIFICATIONUSERID = ? WHERE FILEPATH LIKE ?";
			
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
	
	@Override
	public void changeModificationInformations(File _file, String _userID) throws Exception {
		if(_file == null || !_file.exists() || _userID == null)
		{
			throw new Exception("File null or doesn't exist, or userID null in changeModificationInformations method.");
		}
		IExternalDatabaseConnection connection = null;
		try {
			
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			String query= "UPDATE "+this.tableNameSpace+" SET FILESIZE = ?, MODIFICATIONDATE = ?, MODIFICATIONTIME = ?, MODIFICATIONUSERID = ? WHERE FILEPATH LIKE ?";
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
	
	/**
	 * Lock a document in the DB if not already locked by another user
	 * @param _doc: the DocumentOnServer Object that has to be locked
	 * @param _userIn the user who locks this document
	 * @return true if the document was locked, else false
	 * @throws Exception
	 */
	public boolean lockDocument(DocumentOnServer _doc, String _userIn) throws Exception{
		if(_doc == null || _userIn == null || _userIn.trim().length()==0)
		{
			throw new Exception("Invalid DocumentOnServer Object or invalid username in lockDocument method.");
		}
		boolean flag = false;	
		IExternalDatabaseConnection connection = null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			String query = "UPDATE "+this.tableNameSpace+" SET LOCKED=1, LOCKINGUSERID= ? WHERE FILEPATH LIKE ? AND (LOCKINGUSERID LIKE ? OR LOCKED <> 1)";
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
	 * Lock a File in the DB if not already locked by another user
	 * @param _file: the java.io.File to lock
	 * @param _userIn the user who locks this document
	 * @return true if the document was locked, else false
	 * @throws Exception
	 */
	public boolean lockFile(java.io.File _file, String _userIn) throws Exception{
		if(_file == null || _userIn == null || _userIn.trim().length()==0)
		{
			throw new Exception("Invalid DocumentOnServer Object or invalid username in lockDocument method.");
		}
		boolean flag = false;	
		IExternalDatabaseConnection connection = null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			String query = "UPDATE "+this.tableNameSpace+" SET LOCKED=1, LOCKINGUSERID= ? WHERE FILEPATH LIKE ? AND (LOCKINGUSERID LIKE ? OR LOCKED <> 1)";
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

	/**
	 * unLock a document in the DB 
	 * @param _doc: the DocumentOnServer Object that has to be locked
	 * @return true if the document was unlocked, else false
	 * @throws Exception
	 */
	public boolean unlockDocument(DocumentOnServer _doc) throws Exception{
		if(_doc == null )
		{
			throw new Exception("Invalid DocumentOnServer Object in unlockDocument method.");
		}
		boolean flag = false;
		IExternalDatabaseConnection connection=null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			String query = "UPDATE "+this.tableNameSpace+" SET LOCKED=0, LOCKINGUSERID= ? WHERE FILEPATH LIKE ?";
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
	 * unLock a File in the DB
	 * @param _file: the java.io.File to lock
	 * @return true if the document was unlocked, else false
	 * @throws Exception
	 */
	public boolean unlockFile(java.io.File _file) throws Exception{
		if(_file == null )
		{
			throw new Exception("Invalid DocumentOnServer Object in unlockDocument method.");
		}
		boolean flag = false;
		IExternalDatabaseConnection connection=null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			String query = "UPDATE "+this.tableNameSpace+" SET LOCKED=0, LOCKINGUSERID= ? WHERE FILEPATH LIKE ?";
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
	 * unLock a document in the DB with check if given user is the same who has locked the document.<br>
	 * If it is not the same, the File won't be locked.
	 * @param _doc: the DocumentOnServer Object that has to be locked
	 * @param _user the user who locks this document
	 * @return true if the document was unlocked, else false
	 * @throws Exception
	 */
	public boolean unlockDocumentWithUSerCheck(DocumentOnServer _doc, String _user)throws Exception{
		if(_doc == null )
		{
			throw new Exception("Invalid DocumentOnServer Object in unlockDocument method.");
		}
		boolean flag = false;
		IExternalDatabaseConnection connection=null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			String query = "UPDATE "+this.tableNameSpace+" SET LOCKED=0, LOCKINGUSERID = ? WHERE FILEPATH LIKE ? AND LOCKINGUSERID LIKE ?";
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
	 * unLock a File in the DB with check if given user is the same who has locked the document.<br>
	 * If it is not the same, the File won't be locked.
	 * @param _file: the java.io.File to lock
	 * @param _user the user who locks this document
	 * @return true if the document was unlocked, else false
	 * @throws Exception
	 */
	public boolean unlockFileWithUSerCheck(java.io.File _file, String _user) throws Exception{
		if(_file == null )
		{
			throw new Exception("Invalid DocumentOnServer Object in unlockDocument method.");
		}
		boolean flag = false;
		IExternalDatabaseConnection connection=null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			String query = "UPDATE "+this.tableNameSpace+" SET LOCKED=0, LOCKINGUSERID= ? WHERE FILEPATH LIKE ? AND LOCKINGUSERID LIKE ?";
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
	 * are going to be unlocked. Else just the files directly under the given path are going to be unlocked.
	 * This method can be used when you close an application for example.
	 * @param _path the path where to look for the locked files
	 * @param _user the ivy user name 
	 * @param _recursive true or false. If is recursive, look in all the sub directories under the path
	 * @throws Exception
	 */
	public void unlockFilesEdited(String _path, String _user, boolean _recursive)throws Exception {
		String folderPath = escapeBackSlash(FileHandler.formatPathWithEndSeparator(_path, false));
		String query="";
		IExternalDatabaseConnection connection=null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			if(_recursive)
			{
				query="UPDATE "+ this.tableNameSpace + " SET LOCKED = 0, LOCKINGUSERID= ? WHERE LOCKINGUSERID LIKE ? AND FILEPATH LIKE ?";
			}else
			{
				//query="UPDATE "+ tableName + " SET LOCKED = 0 WHERE LOCKINGUSERID LIKE '"+user+"' AND FILEPATH LIKE '"+folderPath+"%' AND FILEPATH NOT LIKE '"+folderPath+"%["+java.io.File.separator+"]%'";
				query="UPDATE "+ this.tableNameSpace + " SET LOCKED = 0, LOCKINGUSERID= ? WHERE LOCKINGUSERID LIKE ? AND FILEPATH LIKE ? AND FILEPATH NOT LIKE ?";
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
	 * Insert a  java.io.File Object into the File indexation storing System.
	 * @param _file: java.io.File that has to be inserted into the File indexation storing System.
	 * @param _user the user name who inserts the file
	 * @return the number of inserted files
	 * @throws Exception
	 */
	public int insertFile(java.io.File _file, String _user)throws Exception {
		int insertedId = -1;
		if(_file== null || _user == null) return insertedId;
		String base = "INSERT INTO "+this.tableNameSpace+
		" (FILENAME, FILEPATH, CREATIONUSERID, CREATIONDATE, CREATIONTIME, FILESIZE, LOCKED, LOCKINGUSERID, MODIFICATIONUSERID, MODIFICATIONDATE, MODIFICATIONTIME, DESCRIPTION) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";

		String date = new Date().format("d.M.yyyy");
		String time = new Time().format();

		IExternalDatabaseConnection connection=null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			PreparedStatement stmt = null;
			try{
				stmt = jdbcConnection.prepareStatement(base);
				stmt.setString(1, _file.getName());
				stmt.setString(2, escapeBackSlash(_file.getPath()));
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
				insertedId= stmt.executeUpdate();
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
	 * Insert a  DocumentOnServer Object into the File indexation storing System
	 * @param _document: DocumentOnServer that has to be inserted into the File properties storing system
	 * @return 1 if successfull
	 * @throws Exception 
	 */
	public int insertOneDocument(DocumentOnServer _document)throws Exception {
		int insertedId = -1;
		if(_document== null) return insertedId;
		String base="";
		base = "INSERT INTO "+this.tableNameSpace+
		" (FILENAME, FILEPATH, CREATIONUSERID, CREATIONDATE, CREATIONTIME, FILESIZE, LOCKED, LOCKINGUSERID, MODIFICATIONUSERID, MODIFICATIONDATE, MODIFICATIONTIME, DESCRIPTION) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";

		String date = new Date().format("d.M.yyyy");
		String time = new Time().format();

		IExternalDatabaseConnection connection=null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			PreparedStatement stmt = null;
			try{
				stmt = jdbcConnection.prepareStatement(base);
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
				stmt.setString(12, "");
				insertedId= stmt.executeUpdate();
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
	 * Insert a List of DocumentOnServer Objects into DB<br>
	 * It checks if the document already exits, if so, it delete them first.
	 * @param _documents: the List<DocumentOnServer> arg
	 * @return the number of inserted documents
	 * @throws Exception
	 */
	public int insertDocuments(List<DocumentOnServer> _documents)throws Exception{
		int insertedIDs = -1;
		if(_documents==null || _documents.size()==0)
			return insertedIDs;

		// delete the documents that are already in the DB
		this.deleteDocuments(_documents);
		String base="INSERT INTO "+this.tableNameSpace+
		" (FILENAME, FILEPATH, CREATIONUSERID, CREATIONDATE, CREATIONTIME, FILESIZE, LOCKED, LOCKINGUSERID, MODIFICATIONUSERID, MODIFICATIONDATE, MODIFICATIONTIME, DESCRIPTION) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";

		String date = new Date().format("d.M.yyyy");
		String time = new Time().format();

		IExternalDatabaseConnection connection=null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			PreparedStatement stmt = null;
			try{
				stmt = jdbcConnection.prepareStatement(base);
				for(DocumentOnServer doc: _documents){

					stmt.setString(1, doc.getFilename());
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
					stmt.setString(12, doc.getDescription());
					//Ivy.log().info(stmt.toString());
					insertedIDs+=stmt.executeUpdate();
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
	 * Insert a List of java.io.File Objects into DB
	 * @param _files: List<java.io.File> the files to add into the db
	 * @param _userIn: String representation of the user who is performing this operation
	 * @return the list of the last inserted Id's as a List of String
	 * @throws Exception
	 */
	public int insertFiles(List<java.io.File> _files, String _userIn) throws Exception{
		int insertedIDs = -1;
		if(_files==null || _files.size()==0)
			return insertedIDs;

		// delete the documents that are already in the DB
		this.deleteFiles(_files);
		String base="INSERT INTO "+this.tableNameSpace+
		" (FILENAME, FILEPATH, CREATIONUSERID, CREATIONDATE, CREATIONTIME, FILESIZE, LOCKED, LOCKINGUSERID, MODIFICATIONUSERID, MODIFICATIONDATE, MODIFICATIONTIME, DESCRIPTION) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";

		String date = new Date().format("d.M.yyyy");
		String time = new Time().format();

		IExternalDatabaseConnection connection=null;
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			PreparedStatement stmt = null;
			try{
				stmt = jdbcConnection.prepareStatement(base);
				for(java.io.File file: _files){
					stmt.setString(1, file.getName());
					stmt.setString(2, escapeBackSlash(file.getPath()));
					stmt.setString(3, _userIn);
					stmt.setString(4, date);
					stmt.setString(5, time);
					stmt.setString(6, FileHandler.getFileSize(file));
					stmt.setInt(7, 0);
					stmt.setString(8, "");
					stmt.setString(9, _userIn);
					stmt.setString(10, date);
					stmt.setString(11, time);
					stmt.setString(12, "");
					//Ivy.log().info(stmt.toString());
					insertedIDs+=stmt.executeUpdate();
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
		IExternalDatabaseConnection connection=null;
		String base ="";
		base= "DELETE FROM "+this.tableNameSpace+" WHERE FILEPATH LIKE ?"; 
		try {
			connection = getDatabase().getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			PreparedStatement stmt = null;
			try{
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
		IExternalDatabaseConnection connection=null;
		String base ="";
		base= "DELETE FROM "+this.tableNameSpace+" WHERE FILEPATH LIKE ?"; 
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
	 * Look if a File is actually locked by a user<br>
	 * If you don't have a locking System for File edition, just override this method with no action in it and return always false.
	 * @param _file: the java.io.File to check
	 * @return true if the file is locked, else false
	 * @throws Exception
	 */
	public boolean isFileLocked(java.io.File _file)throws Exception{
		boolean retour = false;
		String sql ="SELECT * FROM "+this.tableNameSpace+" WHERE LOCKED=1 AND FILEPATH LIKE ?";
		IExternalDatabaseConnection connection=null;
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
	 * Look if a File is actually locked by a user that is not the given user<br>
	 * If you don't have a locking System for File edition, just override this method with no action in it and return always false. 
	 * @param _file the java.io.File to check
	 * @param _user the user who has not to lock the file
	 * @return true if the file is locked by another user as the given one.
	 * @throws Exception
	 */
	public boolean isFileLockedByAnotherUser(java.io.File _file, String _user)throws Exception{
		if(_file==null || _user ==null || _user.trim().equals(""))
		{
			return false;
		}
		boolean retour = false;
		String sql="SELECT * FROM "+this.tableNameSpace+" WHERE LOCKED=1 AND FILEPATH LIKE ? AND LOCKINGUSERID NOT LIKE ?";

		IExternalDatabaseConnection connection=null;
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
	 * Loof if a DocumentOnServer is actually locked by a user<br>
	 * If you don't have a locking System for File edition, just override this method with no action in it and return always false.
	 * @param _doc: the DocumentOnServer to check
	 * @return true if the DocumentOnServer is locked, else false
	 * @throws Exception
	 */
	public boolean isDocumentOnServerLocked(DocumentOnServer _doc)throws Exception{
		boolean retour = false;
		String sql ="SELECT * FROM "+this.tableNameSpace+" WHERE LOCKED=1 AND FILEPATH LIKE ?";
		IExternalDatabaseConnection connection=null;
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
	 * get the Class Object of the current AbstractFileManagementHandler implementation Class
	 * @return the class Object of the current AbstractFileManagementHandler implementation Class
	 */
	public Class<? extends AbstractFileManagementHandler> getFileManagementHandlerClass() {
		return this.getClass();
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

	

	

}
