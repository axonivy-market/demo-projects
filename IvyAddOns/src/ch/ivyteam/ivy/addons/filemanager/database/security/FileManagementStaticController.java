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
import java.util.concurrent.Callable;

import ch.ivyteam.db.jdbc.DatabaseUtil;
import ch.ivyteam.ivy.addons.filemanager.DocumentOnServer;
import ch.ivyteam.ivy.addons.filemanager.FileHandler;
import ch.ivyteam.ivy.addons.filemanager.ReturnedMessage;
import ch.ivyteam.ivy.db.IExternalDatabase;
import ch.ivyteam.ivy.db.IExternalDatabaseApplicationContext;
import ch.ivyteam.ivy.db.IExternalDatabaseRuntimeConnection;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.scripting.objects.List;
import ch.ivyteam.ivy.scripting.objects.Record;
import ch.ivyteam.ivy.scripting.objects.Recordset;

/**
 * @author ec
 *
 */
public abstract class FileManagementStaticController {

	/**
	 * used to get Ivy IExternalDatabase object with given user friendly name of Ivy Database configuration
	 * @param _nameOfTheDatabaseConnection: the user friendly name of Ivy Database configuration
	 * @return the IExternalDatabase object
	 * @throws Exception 
	 * @throws EnvironmentNotAvailableException 
	 */
	private static IExternalDatabase getDatabase(final String _nameOfTheDatabaseConnection) throws Exception{
		IExternalDatabase database = Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<IExternalDatabase>(){
			public IExternalDatabase call() throws Exception {
				IExternalDatabaseApplicationContext context = (IExternalDatabaseApplicationContext)Ivy.wf().getApplication().getAdapter(IExternalDatabaseApplicationContext.class);
				return context.getExternalDatabase(_nameOfTheDatabaseConnection);
			}
		});

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

	/**
	 * 
	 * @param _nameOfTheDatabaseConnection
	 * @param tableNameSpace
	 * @param _path
	 * @param _isRecursive
	 * @return
	 * @throws Exception
	 */
	public static ArrayList<DocumentOnServer> getDocumentsInPath(final String _nameOfTheDatabaseConnection, String tableNameSpace, String _path,
			boolean _isRecursive) throws Exception {
		if(_path==null || _path.trim().length()==0)
		{
			throw new Exception("Invalid path in getDocumentsInPath method");
		}

		ArrayList<DocumentOnServer>  al = new ArrayList<DocumentOnServer>();

		String folderPath = AbstractDirectorySecurityController.formatPathForDirectoryWithoutLastSeparator(_path)+"/";
		Recordset rset = null;
		List<Record> recordList= (List<Record>) List.create(Record.class);

		String query="";
		IExternalDatabase database = null;
		IExternalDatabaseRuntimeConnection connection = null;
		try {
			database = getDatabase(_nameOfTheDatabaseConnection);
			connection = database.getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();
			if(_isRecursive)
			{
				query="SELECT * FROM "+tableNameSpace+" WHERE FilePath LIKE ?";
			}
			else
			{
				query="SELECT * FROM "+tableNameSpace+" WHERE FilePath LIKE ? AND FilePath NOT LIKE ?";
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
			if(database != null && connection!=null ){
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
				al.add(doc);
			}
		}
		al.trimToSize();
		return al;
	}

	/**
	 * delete all the files from the db that are in the file Structure under a directory.
	 * @param _directoryPath
	 * @return
	 * @throws Exception
	 */
	public static ReturnedMessage deleteAllFilesUnderDirectory(final String _nameOfTheDatabaseConnection, 
			String tableNameSpace, String fileContentTableNameSpace, String _directoryPath) throws Exception
			{
		ReturnedMessage message = new ReturnedMessage();
		message.setFiles(List.create(java.io.File.class));
		if(_directoryPath==null || _directoryPath.trim().equals(""))
		{
			message.setType(FileHandler.INFORMATION_MESSAGE);
			message.setText("The directory to delete does not exist.");
			return message;
		}

		//Query to delete the files under a path
		String base ="DELETE FROM "+tableNameSpace+" WHERE FilePath LIKE ?";
		String query="DELETE FROM "+fileContentTableNameSpace+" WHERE file_id = ?";
		Ivy.log().info("We get the file ids...");
		int[] ids = getFileIdsUnderPath(_nameOfTheDatabaseConnection, tableNameSpace, _directoryPath+"/%");
		Ivy.log().info("File ids under the path to delete" +_directoryPath + " "+ids.length);
		IExternalDatabaseRuntimeConnection connection=null;
		IExternalDatabase database = null;
		try {
			database = getDatabase(_nameOfTheDatabaseConnection);
			connection = database.getAndLockConnection();
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
			if(database!=null && connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}
		return message;
			}
	
	/**
	 * returns an array of all the file ids contained under a specifically path
	 * @param _path
	 * @return
	 * @throws Exception
	 */
	public static int[] getFileIdsUnderPath(final String _nameOfTheDatabaseConnection, 
			String tableNameSpace,String _path) throws Exception
	{
		int[] i =null;
		if(_path==null || _path.trim().equals(""))
		{
			return i;
		}
		
		String query="";

		IExternalDatabaseRuntimeConnection connection = null;
		Recordset rset = null;
		List<Record> recordList= (List<Record>) List.create(Record.class);
		IExternalDatabase database = null;
		try {
			database = getDatabase(_nameOfTheDatabaseConnection);
			connection = database.getAndLockConnection();
			Connection jdbcConnection=connection.getDatabaseConnection();

			query="SELECT FileId FROM "+tableNameSpace+" WHERE FilePath LIKE ?";
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
			if(database != null && connection!=null ){
				database.giveBackAndUnlockConnection(connection);
			}
		}
		return i;
	}

}
