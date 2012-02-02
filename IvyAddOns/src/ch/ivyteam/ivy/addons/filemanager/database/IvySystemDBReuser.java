/**
 * 
 */
package ch.ivyteam.ivy.addons.filemanager.database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;

import ch.ivyteam.ivy.persistence.IPersistencyManager;
import ch.ivyteam.ivy.persistence.IPersistencyService;
import ch.ivyteam.ivy.persistence.IPersistentTransaction;
import ch.ivyteam.ivy.persistence.ITransactionExecutable;
import ch.ivyteam.ivy.persistence.PersistencyException;
import ch.ivyteam.ivy.persistence.db.DatabasePersistencyService;
import ch.ivyteam.ivy.persistence.db.DatabaseTransaction;
import ch.ivyteam.ivy.persistence.db.DatabaseUtil;
import ch.ivyteam.ivy.persistence.db.IPreparedStatementExecutable;
import ch.ivyteam.ivy.scripting.objects.List;
import ch.ivyteam.ivy.scripting.objects.Record;
import ch.ivyteam.ivy.scripting.objects.Recordset;
import ch.ivyteam.ivy.server.IServer;
import ch.ivyteam.ivy.server.ServerFactory;

/**
 * @author ec, Soreco AG
 * @since 28.01.2010
 * This class is used to connect the FileManager to the 
 * Ivy System DB.
 * 
 */
@SuppressWarnings("restriction")
public class IvySystemDBReuser {

	/**
	 * Gets the persistency service
	 * @return persistency service
	 */
	private static IPersistencyService getPersistencyService()
	{
		//		get the Xpert.ivy server
		IServer server = ServerFactory.getServer();

		//get the persistency manager
		IPersistencyManager pm = server.getPersistencyManager();
		//get the database persistency service
		return pm.getPersistencyService("WORKFLOW");
	}

	/**
	 * creates a Table for the FileManager in the Ivy System Db if it doesn't exists.
	 * @param the table name to create if not exists
	 * @throws PersistencyException
	 * @throws SQLException 
	 *
	 */
	public static void createFileManagerTableIfNotExist(final String _tableName) throws PersistencyException, SQLException{
		getPersistencyService().execute(new ITransactionExecutable<Void>(){

			public Void execute(IPersistentTransaction transaction) throws PersistencyException {
				DatabaseTransaction dt = (DatabaseTransaction)transaction;
				ResultSet res = null;
				PreparedStatement stmt;
				String createFileManagerTable = "CREATE TABLE IWA_UPLOADEDFILE (" +
				"FILEID INT NOT NULL,"+
				"FILENAME VARCHAR(255) NOT NULL,"+
				"FILEPATH VARCHAR(1024) NOT NULL,"+
				"CREATIONUSERID VARCHAR(64) NULL,"+
				"CREATIONDATE VARCHAR(10) NULL,"+
				"CREATIONTIME VARCHAR (8) NULL,"+
				"FILESIZE VARCHAR(20) NULL,"+
				"LOCKED INTEGER NULL,"+
				"LOCKINGUSERID VARCHAR(64) NULL,"+
				"MODIFICATIONUSERID VARCHAR(64) NULL,"+
				"MODIFICATIONDATE VARCHAR(10) NULL,"+
				"MODIFICATIONTIME VARCHAR(8) NULL,"+
				"DESCRIPTION VARCHAR(1024) NULL,"+
				"PRIMARY KEY (FILEID)"+
				");";
				Connection con = dt.getDbConnection().getConnection();
				try
				{
					res = con.getMetaData().getTables(null, null, _tableName.trim(), null);
					if(!res.next())
					{//the table doesn't exists
						// get a jdbc prepared statement
						stmt = dt.getDbConnection().getPreparedStatement(con.nativeSQL(createFileManagerTable));
						try
						{
							//Ivy.log().info("TRY TO EXECUTE: "+con.nativeSQL(createFileManagerTable));
							// execute stmt
							stmt.execute();
						}
						finally
						{
							// give back statement
							dt.getDbConnection().giveBackPreparedStatement(stmt);
						}						
					}
					return null;
				}
				catch(SQLException ex)
				{
					throw new PersistencyException(ex);
				}
				finally
				{
					DatabaseUtil.close(res);
				}

			}});
	}
	
	/**
	 * returns the next File ID in the UPLOADEDFILE table
	 * @return
	 * @throws Exception
	 */
	protected static int getNextFileID() throws PersistencyException{
		try{
		DatabasePersistencyService dbp =(DatabasePersistencyService) IvySystemDBReuser.getPersistencyService();
		return dbp.getNextIdentifier("IWA_UploadedFile");
		}catch(Exception _ex){
			throw new PersistencyException("getNextFileID() "+_ex.getMessage());
		
		}
	}
	
	/**
	 * Executes a PreparedStatement using executeQuery method
	 * @param _stmt the PreparedStatement
	 * @return the recordSet resulting of the PreparedStatement execution
	 * @throws PersistencyException 
	 * @throws SQLException 
	 */
	public static Recordset executeStatement (PreparedStatement _stmt) throws PersistencyException{
		final Recordset r= new Recordset();
		ResultSet rst = null;
		ResultSetMetaData rsmd = null;
		try
		{
			rst = _stmt.executeQuery();
			rsmd = rst.getMetaData();

			int numCols = rsmd.getColumnCount();
			List<String> colNames= List.create(String.class);
			for(int i=1; i<=numCols; i++){
				colNames.add(rsmd.getColumnName(i));
			}
			while(rst.next()){
				List<Object> values = List.create(numCols);
				
				for(int i=1; i<=numCols; i++){
					if(rst.getString(i)==null)
					{
						values.add(" ");
					}
					else
					{
						values.add(rst.getString(i));
					}
				}
				Record rec = new Record(colNames,values);
				
				r.add(rec);
			}
			return r;
		}
		catch(SQLException ex){
			throw new PersistencyException(ex);
		}
		finally
		{
			DatabaseUtil.close(rst);
		}						
	}
	
	/**
	 * executes a PreparedStatement with the assurance to close and give back the used DB Connection.
	 */
	public static <T> T executePreparedStatement(final String _sql, final IPreparedStatementExecutable<T> _executor) throws PersistencyException
	{
		return ((DatabasePersistencyService)getPersistencyService()).execute(_sql, _executor);	
	}
}
