/**
 * 
 */
package ch.ivyteam.ivy.addons.filemanager.database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.concurrent.Callable;


import ch.ivyteam.ivy.db.IExternalDatabase;
import ch.ivyteam.ivy.db.IExternalDatabaseApplicationContext;
import ch.ivyteam.ivy.db.IExternalDatabaseRuntimeConnection;
import ch.ivyteam.ivy.environment.EnvironmentNotAvailableException;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.persistence.PersistencyException;
import ch.ivyteam.ivy.persistence.db.DatabaseUtil;
import ch.ivyteam.ivy.scripting.objects.List;
import ch.ivyteam.ivy.scripting.objects.Record;
import ch.ivyteam.ivy.scripting.objects.Recordset;
import ch.ivyteam.ivy.addons.filemanager.KeyValuePair;

/**
 * @author ec
 * This class allows reusing an Ivy Database Connection in a java context.<br>
 * This class allows connecting and executing SQL Requests on a DataBase.<br>
 * It was delvelopped for the FileManagement System and specially for an MS SQL Server connection.<br>
 * Other Classes extending this one exists for some other DB Engine for the Filemenager : IvyMySQLDBReuser, IvyPOSTGRESQLDBReuser.
 */
@SuppressWarnings("restriction")
public class IvyDBReuser {


	/**
	 * used to get Ivy IExternalDatabase object with given user friendly name of Ivy Database configuration
	 * @param _nameOfTheDatabaseConnection: the user friendly name of Ivy Database configuration
	 * @return the IExternalDatabase object
	 * @throws Exception 
	 * @throws EnvironmentNotAvailableException 
	 */
	protected static IExternalDatabase getDatabase(final String _nameOfTheDatabaseConnection) throws EnvironmentNotAvailableException, Exception{
		IExternalDatabase database = Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<IExternalDatabase>(){
			public IExternalDatabase call() throws Exception {
				IExternalDatabaseApplicationContext context = (IExternalDatabaseApplicationContext)Ivy.wf().getApplication().getAdapter(IExternalDatabaseApplicationContext.class);
				return context.getExternalDatabase(_nameOfTheDatabaseConnection);
			}
		});
		return database;	
	}

	/**
	 * creates a Table for the FileManager in the   Db if it doesn't exists.
	 * @param _dbConnectionName: the name of the Ivy DB Connection
	 * @param the table name to create if not exists
	 * @throws PersistencyException
	 * @throws SQLException 
	 *
	 */
	public static void createFileManagerTableIfNotExist(String _dbConnectionName, String _tableName) throws Exception{


		ResultSet res = null;
		PreparedStatement stmt=null;
		String createFileManagerTable = "CREATE TABLE "+_tableName.trim()+" (" +
		"FILEID INT NOT NULL AUTO_INCREMENT,"+
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
		IExternalDatabase database = getDatabase(_dbConnectionName);
		IExternalDatabaseRuntimeConnection connection = database.getAndLockConnection();
		Connection jdbcConnection;
		try
		{
			jdbcConnection=connection.getDatabaseConnection();
			try{
				res = jdbcConnection.getMetaData().getTables(null, null, _tableName.trim(), null);
				if(!res.next())
				{//the table doesn't exists
					// get a jdbc prepared statement
					stmt = jdbcConnection.prepareStatement(jdbcConnection.nativeSQL(createFileManagerTable));
					try
					{
						//Ivy.log().info("TRY TO EXECUTE: "+con.nativeSQL(createFileManagerTable));
						// execute stmt
						stmt.execute();
					}
					finally
					{
						DatabaseUtil.close(stmt);
					}						
				}
			}
			finally
			{
				DatabaseUtil.close(res);
			}
		}
		finally{
			database.giveBackAndUnlockConnection(connection);
		}


	}

	/**
	 * returns the list of the column names in a table from a Microsoft SQL DB.<br>
	 * @param _nameOfTheDatabaseConnection : the user friendly name of the ivy database connection
	 * @param _nameOfTheTable : the table
	 * @return an arrayList of String, the names of the table columns.
	 * @throws Exception 
	 * @throws Exception 
	 */

	public static ArrayList<String> getTableColumnsInMSDB(String _nameOfTheDatabaseConnection, String _nameOfTheTable)throws Exception{
		if(!checkNameOfDBConnection(_nameOfTheDatabaseConnection))
		{
			throw(new SQLException("Invalid Ivy Database connection Name","Connection to Database refused"));
		}
		ArrayList<String> columns= new ArrayList<String>();
		ResultSet rst =null;
		IExternalDatabase database = getDatabase(_nameOfTheDatabaseConnection);
		IExternalDatabaseRuntimeConnection connection = database.getAndLockConnection();
		Connection jdbcConnection;
		try{
			jdbcConnection=connection.getDatabaseConnection();
			String sql="SELECT * FROM INFORMATION_SCHEMA.Columns where TABLE_NAME = '"+_nameOfTheTable+"'";
			Statement stmt = jdbcConnection.createStatement();
			try {
				rst=stmt.executeQuery(sql);
				try{
					ResultSetMetaData rsmd = rst.getMetaData();
					int numCols = rsmd.getColumnCount();
					if(rst.next()){
						for(int i=1; i<=numCols; i++){
							if(rst.getString(i)!=null&& !rst.getString(i).trim().equals(""))
								columns.add(rst.getString(i));
						}
					}
				}
				finally
				{
					DatabaseUtil.close(rst);
				}
			}finally{
				DatabaseUtil.close(stmt);
			}
		}finally{
			database.giveBackAndUnlockConnection(connection);
		}
		return columns;
	}

	/**
	 * Allows executing any SQL Query on a database connection
	 * @param _nameOfTheDatabaseConnection: the user friendly name of the ivy database connection
	 * @param sql: the SQL Query as a String
	 * @return the ch.ivyteam.ivy.scripting.objects.Recordset build with the ResultSet of the query execution
	 * @throws Exception 
	 * @throws EnvironmentNotAvailableException 
	 */
	public static Recordset executeQuery(final String _nameOfTheDatabaseConnection, String _sql) throws Exception{
		if(!checkNameOfDBConnection(_nameOfTheDatabaseConnection)){
			throw(new SQLException("Invalid Ivy Database connection Name","Connection to Database refused"));
		}
		IExternalDatabase database = getDatabase(_nameOfTheDatabaseConnection);
		IExternalDatabaseRuntimeConnection connection = database.getAndLockConnection();
		Connection jdbcConnection;
		ResultSet rst = null;
		Recordset r= new Recordset();
		Statement stmt=null;
		try {
			jdbcConnection=connection.getDatabaseConnection();
			stmt = jdbcConnection.createStatement();
			try{
				rst=stmt.executeQuery(_sql);
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
			}
			finally
			{
				DatabaseUtil.close(stmt);
			}
		}finally{
			database.giveBackAndUnlockConnection(connection);
		}
		return r;
	}

	/**
	 * Allows executing any SQL Query on a database connection
	 * the SQL Query is dynamic and you don't know if it returns a Resultset.
	 * If it returns a ResultSet, than the returned Recordset is built with the ResultSet of the query execution,
	 * else it is empty.
	 * @param _nameOfTheDatabaseConnection : the user friendly name of the ivy database connection
	 * @param sql: the SQL Query as a String
	 * @return the ch.ivyteam.ivy.scripting.objects.Recordset build with the ResultSet of the query execution
	 * @throws SQLException
	 * @throws PersistencyException 
	 */
	public static Recordset execute(String _nameOfTheDatabaseConnection, String _sql) throws Exception{
		if(!checkNameOfDBConnection(_nameOfTheDatabaseConnection)){
			throw(new SQLException("Invalid Ivy Database connection Name","Connection to Database refused"));
		}
		IExternalDatabase database = getDatabase(_nameOfTheDatabaseConnection);
		IExternalDatabaseRuntimeConnection connection = database.getAndLockConnection();
		Connection jdbcConnection;
		ResultSet rst = null;
		Recordset r= new Recordset();
		try {
			jdbcConnection=connection.getDatabaseConnection();
			Statement stmt = jdbcConnection.createStatement();
			try{
				boolean b =stmt.execute(_sql);
				if(b)
				{//the returned object is a Resultset
					rst = stmt.getResultSet();
					try{
						ResultSetMetaData rsmd = rst.getMetaData();
						int numCols = rsmd.getColumnCount();
						List<String> colNames= List.create(String.class);
						for(int i=1; i<=numCols; i++){
							colNames.add(rsmd.getColumnName(i));
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
					}finally{
						DatabaseUtil.close(rst);
					}
				}
			}finally{
				DatabaseUtil.close(stmt);
			}
		}finally{
			database.giveBackAndUnlockConnection(connection);
		}
		return r;
	}

	/**
	 * Allows executing an INSERT, UPDATE or DELETE SQL Query on a database connection
	 * @param nameOfTheDatabaseConnection: the user friendly name of the ivy database connection
	 * @param sql: the SQL Query as a String
	 * @return the number of changed rows
	 * @throws SQLException
	 * @throws PersistencyException 
	 */
	public static int updateQuery(String _nameOfTheDatabaseConnection, String _sql) throws Exception{
		if(!checkNameOfDBConnection(_nameOfTheDatabaseConnection)){
			throw(new SQLException("Invalid Ivy Database connection Name","Connection to Database refused"));
		}
		IExternalDatabase database = getDatabase(_nameOfTheDatabaseConnection);
		IExternalDatabaseRuntimeConnection connection = database.getAndLockConnection();
		Connection jdbcConnection;
		Statement stmt =null;
		int rows=0;

		//check if the query is an UPDATE, Insert or delete query, if not throws an SQLException
		if(!isUpdateInsertDeleteQuery(_sql))
		{
			throw(new SQLException("The query "+_sql+" is not an UPDATE, INSERT or DELETE query.","Use of updateQuery(String sql) method in IvyDBReuser refused."));
		}
		try {
			jdbcConnection=connection.getDatabaseConnection();
			stmt = jdbcConnection.createStatement();
			try{
				rows=stmt.executeUpdate(_sql, Statement.RETURN_GENERATED_KEYS);
			}finally{
				DatabaseUtil.close(stmt);
			}
		}finally{
			database.giveBackAndUnlockConnection(connection);
		}
		return rows;
	}

	/**
	 * Allows executing an UPDATE SQL query on a Table with the given Key/Value pairs and conditions
	 * @param _nameOfTheDatabaseConnection : the String representation of the ivy database connection
	 * @param tableName: the table name
	 * @param KVP: a List of Key/Value pairs, it must contain at least one element
	 * @param conditions: a List of String conditions, it must contain at least one element
	 * @return the number of changed rows
	 * @throws SQLException
	 * @throws PersistencyException 
	 */
	public static int updateQuery(String _nameOfTheDatabaseConnection, String _tableName, List<KeyValuePair> _KVP, List<String> _conditions) throws Exception{
		if(!checkNameOfDBConnection(_nameOfTheDatabaseConnection))
		{
			throw(new SQLException("Invalid Ivy Database connection Name","Connection to Database refused"));
		}
		IExternalDatabase database = getDatabase(_nameOfTheDatabaseConnection);
		IExternalDatabaseRuntimeConnection connection = database.getAndLockConnection();
		Connection jdbcConnection;
		int rows=0;
		Statement stmt =null;
		if(_KVP==null || _KVP.size()==0 || _conditions==null || _conditions.size()==0)
		{
			return rows;
		}
		String sql="UPDATE "+_tableName+" SET";
		for(KeyValuePair kvp: _KVP){
			sql+=" "+kvp.getKey().toString()+"='"+escapeForMSSQL(kvp.getValue().toString())+"', ";
		}
		sql=sql.substring(0, sql.lastIndexOf(","));
		sql+=" WHERE ";
		int numConditions= _conditions.size()-1;
		for(int i=0; i<numConditions;i++){
			sql+= _conditions.get(i).trim()+" AND ";
		}
		sql+=_conditions.get(numConditions);

		try {
			jdbcConnection=connection.getDatabaseConnection();
			stmt = jdbcConnection.createStatement();
			try{
				rows=stmt.executeUpdate(sql, Statement.RETURN_GENERATED_KEYS);
			}finally{
				DatabaseUtil.close(stmt);
			}
		}finally{
			database.giveBackAndUnlockConnection(connection);
		}
		return rows;
	}

	/**
	 * Allows executing multiple INSERT  SQL Queries on a database connection
	 * @param nameOfTheDatabaseConnection: the user friendly name of the ivy database connection
	 * @param sql: the List<String> of SQL Queries 
	 * @return the number of successfull inserted queries
	 * @throws SQLException
	 * @throws PersistencyException 
	 */
	public static int insertQueries(String _nameOfTheDatabaseConnection, List<String> _sql) throws Exception{
		if(!checkNameOfDBConnection(_nameOfTheDatabaseConnection))
		{
			throw(new SQLException("Invalid Ivy Database connection Name","Connection to Database refused"));
		}
		IExternalDatabase database = getDatabase(_nameOfTheDatabaseConnection);
		IExternalDatabaseRuntimeConnection connection = database.getAndLockConnection();
		Connection jdbcConnection;
		int insertedIDs = 0;
		Statement  stmt=null;
		try {
			jdbcConnection=connection.getDatabaseConnection();
			stmt = jdbcConnection.createStatement();
			try{
				for(String query: _sql){
					if(!isInsertQuery(query)){
						break;
					}	
					insertedIDs = insertedIDs+stmt.executeUpdate(query);
				}
			}finally{
				DatabaseUtil.close(stmt); 
			}
		}finally{
			database.giveBackAndUnlockConnection(connection);
		}
		return insertedIDs;
	}

	/**
	 * Allows executing an INSERT SQL Query on a database connection
	 * @param nameOfTheDatabaseConnection: the user friendly name of the ivy database connection
	 * @param sql: the SQL Query
	 * @return the inserted ID of the query execution, , -1 if the insertion failed.
	 * @throws SQLException
	 * @throws PersistencyException 
	 */
	public static int insertQuery(String _nameOfTheDatabaseConnection, String _sql) throws Exception{
		if(!checkNameOfDBConnection(_nameOfTheDatabaseConnection))
		{
			throw(new SQLException("Invalid Ivy Database connection Name","Connection to Database refused"));
		}
		IExternalDatabase database = getDatabase(_nameOfTheDatabaseConnection);
		IExternalDatabaseRuntimeConnection connection = database.getAndLockConnection();
		Connection jdbcConnection;
		ResultSet rst = null;
		int insertedId = -1;

		if(!isInsertQuery(_sql))
		{
			return insertedId;
		}
		try {
			jdbcConnection=connection.getDatabaseConnection();
			Statement stmt = jdbcConnection.createStatement();
			try{
				stmt.executeUpdate(_sql, Statement.RETURN_GENERATED_KEYS);
				try{
					rst= stmt.getGeneratedKeys();
					if(rst.next())
					{
						insertedId=rst.getInt(1);
					}
				}finally{
					DatabaseUtil.close(rst);
				}
			}finally{
				DatabaseUtil.close(stmt);
			}
		}finally{
			database.giveBackAndUnlockConnection(connection);
		}

		return insertedId;
	}

	/**
	 * 
	 * @param nameOfTheDatabaseConnection: String name of the ivy Database configuration
	 * @param nameOfTheTable: String name of the SQL table
	 * @param valuesName: List<String> the list of the Fields name of the table
	 * @param values: List<String> the list of the values of the new Item in the same oder as the valuesName List
	 * @return the id of the inserted Item
	 * @throws SQLException
	 * @throws PersistencyException 
	 */
	public static int insertItem(String _nameOfTheDatabaseConnection, String _nameOfTheTable, List<String> _valuesName, List<String> _values) throws Exception{
		if(!checkNameOfDBConnection(_nameOfTheDatabaseConnection))
		{
			throw(new SQLException("Invalid Ivy Database connection Name","Connection to Database refused"));
		}
		IExternalDatabase database = getDatabase(_nameOfTheDatabaseConnection);
		IExternalDatabaseRuntimeConnection connection = database.getAndLockConnection();
		Connection jdbcConnection;
		ResultSet rst = null;
		int insertedId = -1;

		String query= "INSERT INTO "+ _nameOfTheTable +" (";
		for(String s: _valuesName){
			query+=s+",";
		}
		query=query.substring(0, query.lastIndexOf(","));
		query+=") VALUES (";
		for(String s: _values){
			query+="'"+s+"',";
		}
		query=query.substring(0, query.lastIndexOf(","));
		query+=")";
		try {
			jdbcConnection=connection.getDatabaseConnection();
			Statement stmt = jdbcConnection.createStatement();
			try{

				stmt.executeUpdate(query, Statement.RETURN_GENERATED_KEYS);
				try{
					rst= stmt.getGeneratedKeys();
					if(rst.next()){
						insertedId=rst.getInt(1);
					}
				}finally{
					DatabaseUtil.close(rst);
				}
			}finally{
				DatabaseUtil.close(stmt);
			}
		}finally{
			database.giveBackAndUnlockConnection(connection);
		}
		return insertedId;
	}

	/**
	 * Allows executing multiple a DELETE queries on a database connection
	 * @param nameOfTheDatabaseConnection: the user friendly name of the ivy database connection
	 * @param sql: the List<String> of SQL Queries 
	 * @return the number of deleted Items
	 * @throws SQLException
	 * @throws PersistencyException 
	 */
	public static int deleteQueries(String _nameOfTheDatabaseConnection, List<String> _sql) throws Exception{
		if(!checkNameOfDBConnection(_nameOfTheDatabaseConnection))
		{
			throw(new SQLException("Invalid Ivy Database connection Name","Connection to Database refused"));
		}
		IExternalDatabase database = getDatabase(_nameOfTheDatabaseConnection);
		IExternalDatabaseRuntimeConnection connection = database.getAndLockConnection();
		Connection jdbcConnection;
		int itemsDeleted=0;
		Statement stmt=null;

		try {
			jdbcConnection=connection.getDatabaseConnection();
			stmt = jdbcConnection.createStatement();
			try{
				stmt.getUpdateCount();
				for(String query: _sql){
					if(!isDeleteQuery(query)){
						break;
					}
					int a=stmt.executeUpdate(query);
					itemsDeleted=itemsDeleted+a;
				}
			}finally{
				DatabaseUtil.close(stmt);
			}
		}finally{
			database.giveBackAndUnlockConnection(connection);
		}

		return itemsDeleted;
	}

	/**
	 * replaces the ' char by '' for MS SQL queries
	 * @param _s the query as String to treat
	 * @return the query that is valid for MS SQL
	 */
	public static String escapeForMSSQL(String _s){
		return _s.replaceAll("'", "''");
	}

	/**
	 * Check the if the name of the Ivy user friendly database configuration name is valid.
	 * @param _nameOfTheDatabaseConnection
	 * @return
	 */
	protected static boolean checkNameOfDBConnection(String _nameOfTheDatabaseConnection){
		if(_nameOfTheDatabaseConnection==null || _nameOfTheDatabaseConnection.trim().equals(""))
		{
			return false;
		}
		else{
			return true;
		}

	}

	/**
	 * checks if a query begins with UPDATE, INSERT or DELETE, denoting it is surely an update statement
	 * @param _sql the query to check
	 * @return true if query begins with UPDATE, INSERT or DELETE, else false
	 */
	protected static boolean isUpdateInsertDeleteQuery(String _sql){
		String s = _sql.substring(0,6);
		if(s.equals("UPDATE") || s.equals("INSERT") || s.equals("DELETE")){
			return true;
		}
		else return false;
	}

	/**
	 * checks if a query begins with UPDATE
	 * @param _sql the query to check
	 * @return true if query begins with UPDATE, else false
	 */
	protected static boolean isUpdateQuery(String _sql){
		String s = _sql.substring(0,6);
		if(s.equals("UPDATE")){
			return true;
		}
		else return false;
	}

	/**
	 * checks if a query begins with INSERT
	 * @param _sql the query to check
	 * @return true if query begins with INSERT, else false
	 */
	protected static boolean isInsertQuery(String _sql){
		String s = _sql.substring(0,6);
		if(s.equals("INSERT")){
			return true;
		}
		else return false;
	}

	/**
	 * checks if a query begins with DELETE
	 * @param _sql the query to check
	 * @return true if query begins with DELETE, else false
	 */
	protected static boolean isDeleteQuery(String _sql){
		String s = _sql.substring(0,6);
		if(s.equals("DELETE")){
			return true;
		}
		else return false;
	}

	/**
	 * Replaces all the backslashes through "/" in a String
	 * @param _s the String (query) to treat
	 * @return the String with all its backslashes replaced by "/" char
	 */
	static protected String escapeBackSlash(String _s){
		if(_s!=null)
		{
			_s=_s.replaceAll("\\\\", "/");
		}

		return _s;
	}
}
