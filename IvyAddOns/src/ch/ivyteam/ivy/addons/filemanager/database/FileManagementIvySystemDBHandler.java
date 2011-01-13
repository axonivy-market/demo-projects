
package ch.ivyteam.ivy.addons.filemanager.database;

import java.io.File;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import ch.ivyteam.ivy.persistence.PersistencyException;
import ch.ivyteam.ivy.persistence.db.IPreparedStatementExecutable;
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
 * @since 01.07.2010
 *	This class is the FileManager DB Handler with the Ivy System Database.
 *	It is used if the informations about the Files in the Filemanager are stored in a table located in the IvySystem DB.
 */
@SuppressWarnings("restriction")
public class FileManagementIvySystemDBHandler extends AbstractFileManagementHandler{
	String tableName = null; // the table name to use in queries


	/**
	 * Default constructor, the FileManager uses per default the UPLOADEDFILE from z^the Ivy DB.<br>
	 * Please use this constructor if you are not sure of the Ivy DB TableName for the files.
	 */
	public FileManagementIvySystemDBHandler() {
		this("IWA_UPLOADEDFILE");
	}

	/**
	 * Constructor with the name of the table that stores the Files Info in the Ivy System DB.
	 * @param _tableName: the name (String) of the table that stores the Files Info in the Ivy System DB.
	 */
	public FileManagementIvySystemDBHandler(String _tableName) {
		super();
		this.tableName="IWA_UPLOADEDFILE";

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

		query.append("SELECT * FROM "+this.tableName+" WHERE ");
		int numConditions= _conditions.size()-1;
		for(int i=0; i<numConditions;i++){
			query.append(_conditions.get(i)+" AND ");
		}
		query.append(_conditions.get(numConditions));
		//rset=IvySystemDBReuser.executeQuery(query.toString());

		rset = IvySystemDBReuser.executePreparedStatement(query.toString(), 
				new IPreparedStatementExecutable<Recordset>(){

			public Recordset execute(PreparedStatement stmt) throws PersistencyException {
				return IvySystemDBReuser.executeStatement(stmt);
			}
		});
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
				doc.setLocked(rec.getField("LOCKED").toString().equals("false")?"0":(rec.getField("LOCKED").toString().equals("true")?"1":rec.getField("LOCKED").toString()));
				doc.setLockingUserID(rec.getField("LOCKINGUSERID").toString());
				doc.setDescription(rec.getField("DESCRIPTION").toString());
				al.add(doc);
			}
		}


		al.trimToSize();

		return al;
	}

	/**
	 * Returns all the DocumentOnServer stores in the FileManager table of the Ivy System DB.<br>
	 * @param _path: String representing the path of the directory that contains the files
	 * @param _isrecursive: boolean, if true, all the files in the tree structrure under the directory are going to be listed.<br>
	 * If false, only the files directly under the directory are going to be listed
	 * @return an ArrayList of {@link DocumentOnServer} Objects.<br>
	 * Each DocumentOnServer object represents a File with several informations (name, path, size, creationdate, creationUser...)
	 * @throws Exception 
	 */
	public ArrayList<DocumentOnServer> getDocumentsInPath(String _path, final boolean _isrecursive) throws Exception{
		ArrayList<DocumentOnServer>  al = new ArrayList<DocumentOnServer>();
		final String folderPath =escapeBackSlash(FileHandler.formatPathWithEndSeparator(_path, false));
		Recordset rset = null;
		String query="";
		if(_isrecursive)
		{
			query="SELECT * FROM "+this.tableName+" WHERE FILEPATH LIKE ?";
		}
		else
		{
			//query="SELECT * FROM "+this.tableName+" WHERE FILEPATH LIKE '"+folderPath+"%' AND FILEPATH NOT LIKE '"+folderPath+"%["+java.io.File.separator+"]%'";
			query="SELECT * FROM "+this.tableName+" WHERE FILEPATH LIKE ? AND FILEPATH NOT LIKE ?";
		}
		List<Record> recordList= (List<Record>) List.create(Record.class);

		rset = IvySystemDBReuser.executePreparedStatement(query, 
				new IPreparedStatementExecutable<Recordset>(){

			public Recordset execute(PreparedStatement stmt) throws PersistencyException {
				try{
					if(_isrecursive)
					{
						stmt.setString(1, folderPath+"%");
					}else
					{
						stmt.setString(1, folderPath+"%");
						stmt.setString(2, folderPath+"%/%");
					}
					return IvySystemDBReuser.executeStatement(stmt);
				}catch(SQLException ex){
					throw new PersistencyException(ex);
				}
			}
		});

		if(rset!=null)
		{
			recordList = rset.toList();
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
				doc.setLocked(rec.getField("LOCKED").toString().equals("false")?"0":(rec.getField("LOCKED").toString().equals("true")?"1":rec.getField("LOCKED").toString()));
				doc.setLockingUserID(rec.getField("LOCKINGUSERID").toString());
				doc.setDescription(rec.getField("DESCRIPTION").toString());
				al.add(doc);
			}
		}
		al.trimToSize();
		return al;
	}


	/**
	 * Returns all the DocumentOnServer stores in the FileManager table of the Ivy System DB, that are currently locked for editing.<br>
	 * @param _path: String representing the path of the directory that contains the files
	 * @param _isrecursive: boolean, if true, all the files in the tree structrure under the directory are going to be listed.<br>
	 * If false, only the files directly under the directory are going to be listed
	 * @return an ArrayList of {@link DocumentOnServer} Objects.<br>
	 * Each DocumentOnServer object represents a File with several informations (name, path, size, creationdate, creationUser...)
	 * @throws Exception 
	 */
	public ArrayList<DocumentOnServer> getDocumentsLocked(String _path, final boolean _isrecursive) throws Exception{

		ArrayList<DocumentOnServer>  al = new ArrayList<DocumentOnServer>();
		final String folderPath = escapeBackSlash(FileHandler.formatPathWithEndSeparator(_path, false));
		Recordset rset = null;
		List<Record> recordList=null;
		String query="";

		if(_isrecursive)
		{
			query="SELECT * FROM "+this.tableName+" WHERE LOCKED=1 AND FILEPATH LIKE ?";
		}else
		{
			//query="SELECT * FROM "+this.tableName+" WHERE LOCKED=1 AND FILEPATH LIKE '"+folderPath+"%' AND FILEPATH NOT LIKE '"+folderPath+"%["+java.io.File.separator+"]%'";
			query="SELECT * FROM "+this.tableName+" WHERE LOCKED=1 AND FILEPATH LIKE ? AND FILEPATH NOT LIKE ?";
		}

		rset = IvySystemDBReuser.executePreparedStatement(query, 
				new IPreparedStatementExecutable<Recordset>(){
			public Recordset execute(PreparedStatement stmt) throws PersistencyException {
				try{
					if(_isrecursive)
					{
						stmt.setString(1, folderPath+"%");
					}else
					{

						stmt.setString(1, folderPath+"%");
						stmt.setString(2, folderPath+"%/%");
					}
					return IvySystemDBReuser.executeStatement(stmt);
				}catch(SQLException ex){
					throw new PersistencyException(ex);
				}
			}
		});


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
				doc.setLocked(rec.getField("LOCKED").toString().equals("false")?"0":(rec.getField("LOCKED").toString().equals("true")?"1":rec.getField("LOCKED").toString()));
				doc.setLockingUserID(rec.getField("LOCKINGUSERID").toString());
				doc.setDescription(rec.getField("DESCRIPTION").toString());
				al.add(doc);
			}
		}
		al.trimToSize();
		return al;
	}

	/**
	 * Updates the documents with one complete SQL Query as argument
	 * @param _query: the SQL Query as String
	 * @throws Exception 
	 */
	public void updateDocuments(String _query)throws Exception{

		IvySystemDBReuser.executePreparedStatement(_query, 
				new IPreparedStatementExecutable<Void>(){

			public Void execute(PreparedStatement stmt) throws PersistencyException {
				IvySystemDBReuser.executeStatement(stmt);
				return null;
			}
		});
	}

	/**
	 * Allows executing an update on documents with the given Key/Value pairs and conditions for filtering
	 * @param _KVP: List<KeyValuePair> that represents the new values for the given properties (Keys)
	 * @param _conditions: List<String> the list of the conditions to filter the update
	 * @return the number of updated documents
	 * @throws Exception 
	 */
	public int updateDocuments(final List<KeyValuePair> _KVP, List<String> _conditions)throws Exception{

		Integer result = new Integer(0);
		if(_KVP.isEmpty())
		{//do nothing if the list of KeyValuePairs is empty
			return 0;
		}
		//build dthe SQL Query with the keyValue pairs and the list of conditions
		StringBuilder sql=new StringBuilder("UPDATE "+tableName+" SET");

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

		result=IvySystemDBReuser.executePreparedStatement(sql.toString(), 
				new IPreparedStatementExecutable<Integer>(){

			public Integer execute(PreparedStatement stmt) throws PersistencyException {
				try{
					int i = 1;
					for(KeyValuePair kvp: _KVP){
						stmt.setString(i, kvp.getValue().toString());
						i++;
					}
					return new Integer(stmt.executeUpdate());
				}
				catch (SQLException ex) {
					throw new PersistencyException(ex);
				}
			}
		});
		return result.intValue();
	}

	@Override
	public boolean renameDocument(final DocumentOnServer _doc, final String _newName, final String _userID) throws Exception {
		boolean result = false;
		if(_doc==null || _doc.getPath().trim().length()==0 || _doc.getFilename().trim().length()==0 || _newName==null || _newName.trim().length()==0 || _userID==null)
		{
			return result;
		}
		
		result =true;
		String query= "UPDATE "+this.tableName+" SET FILENAME = ?, FILEPATH = ?, MODIFICATIONDATE = ?, MODIFICATIONTIME = ?, MODIFICATIONUSERID = ? WHERE FILEPATH LIKE ?";
		IvySystemDBReuser.executePreparedStatement(query, 
				new IPreparedStatementExecutable<Boolean>(){

			public Boolean execute(PreparedStatement stmt) throws PersistencyException {
				int i=0;
				try{
					String newPath = _doc.getPath().substring(0,escapeBackSlash(_doc.getPath()).lastIndexOf("/"))+"/"+_newName.trim();
					stmt.setString(1, _newName.trim());
					stmt.setString(2, newPath);
					stmt.setString(3, new Date().format("dd.MM.yyyy"));
					stmt.setString(4, new Time().format("HH:mm.ss"));
					stmt.setString(5, _userID);
					stmt.setString(6, escapeBackSlash(_doc.getPath()));
					i=stmt.executeUpdate();

				}catch (SQLException ex) {
					throw new PersistencyException(ex);
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
		});
		return result;
	}

	@Override
	public void changeModificationInformations(final File _file, final String _userID) throws Exception {
		if(_file == null || !_file.exists() || _userID==null)
		{
			throw new Exception("File null or doesn't exist, or userID null in changeModificationInformations method.");
		}

		String query= "UPDATE "+this.tableName+" SET FILESIZE = ?, MODIFICATIONDATE = ?, MODIFICATIONTIME = ?, MODIFICATIONUSERID = ? WHERE FILEPATH LIKE ?";
		IvySystemDBReuser.executePreparedStatement(query, 
				new IPreparedStatementExecutable<Void>(){
			public Void execute(PreparedStatement stmt) throws PersistencyException {
				try{
					stmt.setString(1, FileHandler.getFileSize(_file));
					stmt.setString(2, new Date().format("dd.MM.yyyy"));
					stmt.setString(3, new Time().format("HH:mm.ss"));
					stmt.setString(4, _userID);
					stmt.setString(5, escapeBackSlash(_file.getPath()));
					stmt.executeUpdate();

				}catch (SQLException ex) {
					throw new PersistencyException(ex);
				}
				return null;
			}
		});
	}

	/**
	 * Lock a document in the DB if not already locked by another user
	 * @param _doc: the DocumentOnServer Object that has to be locked
	 * @param _user the user who locks this document
	 * @return true if the document was successfully locked, else false
	 * @throws Exception 
	 */
	public boolean lockDocument(final DocumentOnServer _doc, final String _userIn)throws Exception{
		boolean flag = false;
		if(_doc==null || _userIn == null || _userIn.trim().length()==0)
		{
			return flag;
		}

		String query = "UPDATE "+this.tableName+" SET LOCKED=1, LOCKINGUSERID= ? WHERE FILEPATH LIKE ? AND (LOCKINGUSERID LIKE ? OR LOCKED <> 1)";

		flag = IvySystemDBReuser.executePreparedStatement(query, 
				new IPreparedStatementExecutable<Boolean>(){

			public Boolean execute(PreparedStatement stmt) throws PersistencyException {
				int i =0;
				try{
					stmt.setString(1, _userIn.trim());
					stmt.setString(2, escapeBackSlash(_doc.getPath()));
					stmt.setString(3, _userIn.trim());
					i = stmt.executeUpdate();

				}catch (SQLException ex) {
					throw new PersistencyException(ex);
				}
				if(i>0){
					return true;
				}else
				{
					return false;
				}
			}
		});

		return flag;
	}

	/**
	 * Lock a File in the DB if not already locked by another user
	 * @param _file: the java.io.File to lock
	 * @param _user the user who locks this document
	 * @return true if the document was locked, else false
	 * @throws Exception 
	 */
	public boolean lockFile(final java.io.File _file, final String _userIn)throws Exception{
		boolean flag = false;
		if(_file==null || _userIn == null || _userIn.trim().length()==0)
		{
			return flag;
		}
//		String user= IvySystemDBReuser.escapeForMSSQL(userIn);
		String query = "UPDATE "+this.tableName+" SET LOCKED=1, LOCKINGUSERID = ? WHERE FILEPATH LIKE ? AND (LOCKINGUSERID LIKE ? OR LOCKED <> 1)";

		flag = IvySystemDBReuser.executePreparedStatement(query, 
				new IPreparedStatementExecutable<Boolean>(){

			public Boolean execute(PreparedStatement stmt) throws PersistencyException {
				int i =0;
				try{
					stmt.setString(1, _userIn.trim());
					stmt.setString(2, escapeBackSlash(_file.getPath()));
					stmt.setString(3, _userIn.trim());
					i = stmt.executeUpdate();
				}catch (SQLException ex) {
					throw new PersistencyException(ex);
				}
				if(i>0){
					return true;
				}else
				{
					return false;
				}
			}
		});
		return flag;
	}

	/**
	 * unLock a document in the DB 
	 * @param _doc: the DocumentOnServer Object that has to be locked
	 * @return true if the document was unlocked, else false
	 * @throws Exception 
	 */
	public boolean unlockDocument(final DocumentOnServer _doc)throws Exception{
		boolean flag = false;
		if(_doc==null){
			return flag;
		}

		String query = "UPDATE "+this.tableName+" SET LOCKED=0, LOCKINGUSERID= ? WHERE FILEPATH LIKE ?";

		flag = IvySystemDBReuser.executePreparedStatement(query, 
				new IPreparedStatementExecutable<Boolean>(){

			public Boolean execute(PreparedStatement stmt) throws PersistencyException {
				int i =0;
				try{
					stmt.setString(1, "");
					stmt.setString(2, escapeBackSlash(_doc.getPath()));
					i = stmt.executeUpdate();

				}catch (SQLException ex) {
					throw new PersistencyException(ex);
				}
				if(i>0){
					return true;
				}else
				{
					return false;
				}
			}
		});
		return flag;
	}

	/**
	 * unLock a File in the DB
	 * @param _file: the java.io.File to lock
	 * @return true if the document was unlocked, else false
	 * @throws Exception 
	 */
	public boolean unlockFile(final java.io.File _file)throws Exception{
		boolean flag = false;
		if(_file == null)
		{
			return flag;
		}
		String query = "UPDATE "+this.tableName+" SET LOCKED=?, LOCKINGUSERID= ? WHERE FILEPATH LIKE ?";

		flag = IvySystemDBReuser.executePreparedStatement(query, 
				new IPreparedStatementExecutable<Boolean>(){

			public Boolean execute(PreparedStatement stmt) throws PersistencyException {
				int i =0;
				try{
					stmt.setInt(1, 0);
					stmt.setString(2, "");
					stmt.setString(3, escapeBackSlash(_file.getPath()));
					i = stmt.executeUpdate();

				}catch (SQLException ex) {
					throw new PersistencyException(ex);
				}
				if(i>0){
					return true;
				}else
				{
					return false;
				}
			}
		});

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
	public boolean unlockDocumentWithUSerCheck(final DocumentOnServer _doc,final String _user)throws Exception{
		boolean flag = false;
		if(_doc == null || _user == null || _user.trim().length()==0)
		{
			return flag;
		}

		String query = "UPDATE "+this.tableName+" SET LOCKED=0, LOCKINGUSERID = ? WHERE FILEPATH LIKE ? AND LOCKINGUSERID LIKE ?";
		flag = IvySystemDBReuser.executePreparedStatement(query, 
				new IPreparedStatementExecutable<Boolean>(){

			public Boolean execute(PreparedStatement stmt) throws PersistencyException {
				int i =0;
				try{
					stmt.setString(1, "");
					stmt.setString(2, escapeBackSlash(_doc.getPath()));
					stmt.setString(3, _user.trim());
					i = stmt.executeUpdate();

				}catch (SQLException ex) {
					throw new PersistencyException(ex);
				}
				if(i>0){
					return true;
				}else
				{
					return false;
				}
			}
		});
		return flag;
	}

	/**
	 * unLock a File in the DB with check if given user is the same who has locked the document.<br>
	 * If it is not the same, the File won't be locked.
	 * @param _file: the java.io.File to unlock
	 * @param _user the user who locks this document
	 * @return true if the document was unlocked, else false
	 * @throws Exception 
	 */
	public boolean unlockFileWithUSerCheck(final java.io.File _file, final String _user)throws Exception{
		boolean flag = false;
		if(_file==null || _user==null || _user.trim().length()==0)
		{
			return flag;
		}
		String query = "UPDATE "+this.tableName+" SET LOCKED=0, LOCKINGUSERID= ? WHERE FILEPATH LIKE ? AND LOCKINGUSERID LIKE ?";

		flag = IvySystemDBReuser.executePreparedStatement(query, 
				new IPreparedStatementExecutable<Boolean>(){

			public Boolean execute(PreparedStatement stmt) throws PersistencyException {
				int i =0;
				try{
					stmt.setString(1, "");
					stmt.setString(2, escapeBackSlash(_file.getPath()));
					stmt.setString(3, _user.trim());
					i = stmt.executeUpdate();

				}catch (SQLException ex) {
					throw new PersistencyException(ex);
				}
				if(i>0){
					return true;
				}else
				{
					return false;
				}
			}
		});

		return flag;
	}


	/**
	 * set the Lock info to "0" (unlocked) of all the files located under a specified _path and locked by a given Ivy user name.
	 * @param _path : the path under all the files should be unlocked
	 * @param _user : the Ivy user name who is locking the files
	 * @param _recursive : if true we unlock all the files located in the given path and its subdirectories,<br>
	 * else we unlock just the files directly located under the given path.
	 * @throws Exception 
	 */
	public void unlockFilesEdited(String _path,final String _user, final boolean _recursive) throws Exception {

		if(_path ==null || _path .trim().length()==0 || _user == null || _user.trim().length()==0)
		{
			return;
		}

		final String folderPath = escapeBackSlash(FileHandler.formatPathWithEndSeparator(_path, false));

		String query="";
		if(_recursive)
		{
			query="UPDATE "+ tableName + " SET LOCKED = 0, LOCKINGUSERID= ? WHERE LOCKINGUSERID LIKE ? AND FILEPATH LIKE ?";
		}else
		{
			//query="UPDATE "+ tableName + " SET LOCKED = 0 WHERE LOCKINGUSERID LIKE '"+user+"' AND FILEPATH LIKE '"+folderPath+"%' AND FILEPATH NOT LIKE '"+folderPath+"%["+java.io.File.separator+"]%'";
			query="UPDATE "+ tableName + " SET LOCKED = 0, LOCKINGUSERID= ? WHERE LOCKINGUSERID LIKE ? AND FILEPATH LIKE ? AND FILEPATH NOT LIKE ?";
		}

		IvySystemDBReuser.executePreparedStatement(query, 
				new IPreparedStatementExecutable<Void>(){

			public Void execute(PreparedStatement stmt) throws PersistencyException {

				try{
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

				}catch (SQLException ex) {
					throw new PersistencyException(ex);
				}
				return null;
			}
		});

	}


	/**
	 * Insert the given java.io.File Informations into the UPLOADEDFILE Table
	 * @param _file : the java.io.File which infos have to be saved
	 * @param _user : the Ivy user name who inserts the File
	 * @return 1 if success, else -1 if _file or _user are null or 0 if Exception thrown
	 * @throws Exception 
	 */
	public int insertFile(final java.io.File _file, final String _user)throws Exception {
		int insertedId = -1;
		if(_file== null || _user == null)
		{
			return insertedId;
		}
		final String date = new Date().format("d.M.yyyy");
		final String time = new Time().format();

		insertedId = IvySystemDBReuser.executePreparedStatement("INSERT INTO "+this.tableName+
				" (FILEID, FILENAME, FILEPATH, CREATIONUSERID, CREATIONDATE, CREATIONTIME, FILESIZE, LOCKED, LOCKINGUSERID, MODIFICATIONUSERID, MODIFICATIONDATE, MODIFICATIONTIME, DESCRIPTION) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)", 
				new IPreparedStatementExecutable<Integer>(){

			public Integer execute(PreparedStatement stmt) throws PersistencyException {
				int i = 0;
				try{
					stmt.setInt(1, IvySystemDBReuser.getNextFileID());
					stmt.setString(2, _file.getName());
					stmt.setString(3, escapeBackSlash(_file.getPath()));
					stmt.setString(4, _user);
					stmt.setString(5, date);
					stmt.setString(6, time);
					stmt.setString(7, FileHandler.getFileSize(_file));
					stmt.setString(8, "0");
					stmt.setString(9, "");
					stmt.setString(10, _user);
					stmt.setString(11, date);
					stmt.setString(12, time);
					stmt.setString(13, "");
					i= stmt.executeUpdate();
				}catch(SQLException ex){
					throw new PersistencyException(ex);
				}
				return new Integer(i);
			}

		});

		return insertedId;

	}


	/**
	 * Insert the given DocumentOnServer Object into the UPLOADEDFILE Table
	 * @param _document the DocumentOnServerOObject
	 * @return 1 if success, else -1 or 0
	 * @throws Exception 
	 */
	public int insertOneDocument(final DocumentOnServer _document) throws Exception{
		int insertedId = -1;

		if(_document== null)
		{
			return insertedId;
		}

		insertedId = IvySystemDBReuser.executePreparedStatement("INSERT INTO "+this.tableName+
				" (FILEID, FILENAME, FILEPATH, CREATIONUSERID, CREATIONDATE, CREATIONTIME, FILESIZE, LOCKED, LOCKINGUSERID, MODIFICATIONUSERID, MODIFICATIONDATE, MODIFICATIONTIME, DESCRIPTION) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)", 
				new IPreparedStatementExecutable<Integer>(){

			public Integer execute(PreparedStatement stmt) throws PersistencyException {
				int i = 0;
				try{
					stmt.setInt(1, IvySystemDBReuser.getNextFileID());
					stmt.setString(2, _document.getFilename());
					stmt.setString(3, escapeBackSlash(_document.getPath()));
					stmt.setString(4, _document.getUserID());
					stmt.setString(5, _document.getCreationDate());
					stmt.setString(6, _document.getCreationTime());
					stmt.setString(7, _document.getFileSize());
					stmt.setString(8, "0");
					stmt.setString(9, "");
					stmt.setString(10, _document.getModificationUserID());
					stmt.setString(11, _document.getModificationDate());
					stmt.setString(12, _document.getModificationTime());
					stmt.setString(13, _document.getDescription());
					i = stmt.executeUpdate();
				}catch(SQLException ex){
					throw new PersistencyException(ex);
				}
				return new Integer(i);

			}

		});

		return insertedId;
	}

	/**
	 * Insert a List of DocumentOnServer Objects into DB<br>
	 * It checks if the document already exits, if so, it delete them first.
	 * @param _ documents: the List<DocumentOnServer> arg
	 * @return the list of the last inserted Id's as a List of String
	 * @throws Exception 
	 */
	public int insertDocuments(final List<DocumentOnServer> _documents)throws Exception{
		int insertedIDs = -1;
		if(_documents==null || _documents.size()==0)
		{
			return insertedIDs;
		}

		// delete the documents that are already in the DB
		this.deleteDocuments(_documents);

		insertedIDs = IvySystemDBReuser.executePreparedStatement("INSERT INTO "+this.tableName+
				" (FILEID,FILENAME, FILEPATH, CREATIONUSERID, CREATIONDATE, CREATIONTIME, FILESIZE, LOCKED, LOCKINGUSERID, MODIFICATIONUSERID, MODIFICATIONDATE, MODIFICATIONTIME, DESCRIPTION) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)", 
				new IPreparedStatementExecutable<Integer>(){

			public Integer execute(PreparedStatement stmt) throws PersistencyException {
				int i=0;
				for(DocumentOnServer doc: _documents){
					try{
						stmt.setInt(1, IvySystemDBReuser.getNextFileID());
						stmt.setString(2, doc.getFilename());
						stmt.setString(3, escapeBackSlash(doc.getPath()));
						stmt.setString(4, doc.getUserID());
						stmt.setString(5, doc.getCreationDate());
						stmt.setString(6, doc.getCreationTime());
						stmt.setString(7, doc.getFileSize());
						stmt.setInt(8, 0);
						stmt.setString(9, "");
						stmt.setString(10, doc.getModificationUserID());
						stmt.setString(11, doc.getModificationDate());
						stmt.setString(12, doc.getModificationTime());
						stmt.setString(13, doc.getDescription());

						i = i+stmt.executeUpdate();
					}
					catch(SQLException ex){
						throw new PersistencyException(ex);
					}
				}
				//return String.valueOf(stmt.executeUpdate());
				//IvySystemDbReuser.insert(stmt);
				return i;


			}});

		return insertedIDs;

	}

	/**
	 * Insert a List of java.io.File Objects into DB
	 * @param files: List<java.io.File> the files to add into the db
	 * @param user: String representation of the user who is performing this operation
	 * @return the number of inserted files
	 * @throws Exception 
	 */
	public int insertFiles(final List<java.io.File> _files, final String _userIn)throws Exception{

		int insertedIDs = -1;
		if(_files==null || _files.size()==0)
		{
			return insertedIDs;
		}
		// deletes the file that are already in the DB
		this.deleteFiles(_files);

		insertedIDs = IvySystemDBReuser.executePreparedStatement("INSERT INTO "+this.tableName+
				" (FILEID, FILENAME, FILEPATH, CREATIONUSERID, CREATIONDATE, CREATIONTIME, FILESIZE, LOCKED, LOCKINGUSERID, MODIFICATIONUSERID, MODIFICATIONDATE, MODIFICATIONTIME, DESCRIPTION) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)", 
				new IPreparedStatementExecutable<Integer>(){

			public Integer execute(PreparedStatement stmt) throws PersistencyException {
				int i=0;
				for(java.io.File file:_files){
					String date = new Date().format("d.M.yyyy");
					String time = new Time().format();
					try{
						stmt.setInt(1, IvySystemDBReuser.getNextFileID());
						stmt.setString(2, file.getName());
						stmt.setString(3, escapeBackSlash(file.getPath()));
						stmt.setString(4, _userIn);
						stmt.setString(5, date);
						stmt.setString(6, time);
						stmt.setString(7, FileHandler.getFileSize(file));
						stmt.setString(8, "0");
						stmt.setString(9, "");
						stmt.setString(10, _userIn);
						stmt.setString(11, date);
						stmt.setString(12, time);
						stmt.setString(13, "");
						i=i+stmt.executeUpdate();
					}
					catch(SQLException ex){
						throw new PersistencyException(ex);
					}
				}
				return i;


			}});

		return insertedIDs;
	}

	/**
	 * Deletes files entries from the DB
	 * @param _files the list of the java.io.File to delete
	 * @return the number of items deleted
	 * @throws Exception 
	 */
	public int deleteFiles(final List<java.io.File> _files)throws Exception{
		int filesDeleted=0;
		if(_files==null || _files.size()==0)
		{
			return 0;
		}

		Integer _int= IvySystemDBReuser.executePreparedStatement("DELETE FROM "+this.tableName+" WHERE FILEPATH LIKE ?", 
				new IPreparedStatementExecutable<Integer>()
				{
			public Integer execute(PreparedStatement stmt)
			{
				int i=0;
				for(java.io.File file: _files){
					if(file != null)
					{
						try {
							stmt.setString(1, escapeBackSlash(file.getPath()));
							i=i+stmt.executeUpdate();
						} catch (SQLException ex) {

						}
					}
				}
				return new Integer(i);
			}

				}

		);
		filesDeleted= _int.intValue();

		return filesDeleted;
	}

	/**
	 * delete documents from the DB
	 * @param _documents the list of the DocumentOnServer to delete
	 * @return the number of items deleted
	 * @throws Exception 
	 */
	public int deleteDocuments(final List<DocumentOnServer> _documents)throws Exception{
		if(_documents==null || _documents.size()==0)
		{
			return 0;
		}
		int deletedFiles=0;

		Integer _int= IvySystemDBReuser.executePreparedStatement("DELETE FROM "+this.tableName+" WHERE FILEPATH LIKE ?", 
				new IPreparedStatementExecutable<Integer>()
				{
			public Integer execute(PreparedStatement stmt)
			{
				int i=0;
				for(DocumentOnServer doc: _documents){
					if(doc != null)
					{
						try {
							stmt.setString(1, escapeBackSlash(doc.getPath()));
							i=i+stmt.executeUpdate();
						} catch (SQLException ex) {

						}
					}
				}
				return new Integer(i);
			}

				}

		);
		deletedFiles = _int.intValue();


		return deletedFiles;
	}

	/**
	 * Look if a File is actually locked by a user<br>
	 * If you don't have a locking System for File edition, just override this method with no action in it and return always false.
	 * @param _file: the java.io.File to check
	 * @return true if the file is locked, else false
	 * @throws Exception
	 */
	public boolean isFileLocked(final java.io.File _file)throws Exception{
		if(_file == null)
		{
			return false;
		}
		boolean retour = false;


		Integer i=IvySystemDBReuser.executePreparedStatement("SELECT * FROM "+this.tableName+" WHERE LOCKED=1 AND FILEPATH LIKE ?", new IPreparedStatementExecutable<Integer>(){

			public Integer execute(PreparedStatement stmt) throws PersistencyException {
				try {
					stmt.setString(1,escapeBackSlash(_file.getPath()));
					Recordset rst=IvySystemDBReuser.executeStatement(stmt);
					return new Integer(rst.size());

				} catch (SQLException ex) {
					throw new PersistencyException(ex);
				}

			}

		});
		if(i.intValue()==1)
		{
			retour = true;
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
	public boolean isFileLockedByAnotherUser(final java.io.File _file, final String _user)throws Exception{
		if(_file==null || _user ==null || _user.trim().equals(""))
		{
			return false;
		}
		boolean retour = false;

		Integer i=IvySystemDBReuser.executePreparedStatement("SELECT * FROM "+this.tableName+" WHERE LOCKED=1 AND FILEPATH LIKE ? AND LOCKINGUSERID NOT LIKE ?", new IPreparedStatementExecutable<Integer>(){

			public Integer execute(PreparedStatement stmt) throws PersistencyException {
				try {
					stmt.setString(1,escapeBackSlash(_file.getPath()));
					stmt.setString(2,_user);
					Recordset rst=IvySystemDBReuser.executeStatement(stmt);
					return new Integer(rst.size());

				} catch (SQLException ex) {
					throw new PersistencyException(ex);
				}

			}

		});
		if(i.intValue()==1)
		{
			retour = true;
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
	public boolean isDocumentOnServerLocked(final DocumentOnServer _doc)throws Exception{
		if(_doc == null || _doc.getPath().trim().equals(""))
		{
			return false;
		}
		boolean retour = false;

		Integer i=IvySystemDBReuser.executePreparedStatement("SELECT * FROM "+this.tableName+" WHERE LOCKED=1 AND FILEPATH LIKE ?", new IPreparedStatementExecutable<Integer>(){

			public Integer execute(PreparedStatement stmt) throws PersistencyException {
				try {
					stmt.setString(1,escapeBackSlash(_doc.getPath()));
					Recordset rst=IvySystemDBReuser.executeStatement(stmt);
					return new Integer(rst.size());

				} catch (SQLException ex) {
					throw new PersistencyException(ex);
				}

			}

		});
		if(i.intValue()==1)
		{
			retour = true;
		}

		return retour;
	}


	/**
	 * get the Database Table name used to store the properties of the files
	 * @return the Database table name
	 */
	public String getTableName(){
		return tableName;
	}

	/**
	 * set the Database table name used to store the properties of the files
	 * @param tableName as String
	 */
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}

	/**
	 * get the Class Object of the current AbstractFileManagementHandler implementation Class
	 * @return the class Object of the current AbstractFileManagementHandler implementation Class
	 */
	public Class<? extends AbstractFileManagementHandler> getFileManagementHandlerClass() {
		return this.getClass();
	}



}
