package ch.ivyteam.demo.jpa.demos.test.dao;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.stream.Stream;

import org.dbunit.DatabaseUnitException;
import org.dbunit.database.AmbiguousTableNameException;
import org.dbunit.database.DatabaseConfig;
import org.dbunit.database.DatabaseConnection;
import org.dbunit.database.QueryDataSet;
import org.dbunit.dataset.DataSetException;
import org.dbunit.dataset.DefaultDataSet;
import org.dbunit.dataset.DefaultTable;
import org.dbunit.dataset.FilteredDataSet;
import org.dbunit.dataset.IDataSet;
import org.dbunit.dataset.ITable;
import org.dbunit.dataset.excel.XlsDataSet;
import org.dbunit.ext.hsqldb.HsqldbDataTypeFactory;
import org.dbunit.operation.DatabaseOperation;
import org.hibernate.internal.SessionImpl;
import org.hibernate.jpa.HibernateEntityManager;

import com.axonivy.persistence.beans.GenericEntity;
import com.axonivy.persistence.beans.GenericEntity_;
import com.axonivy.persistence.dao.GenericDAO;

import ch.ivyteam.demo.jpa.demos.Logger;

public abstract class TestDAO extends GenericDAO<GenericEntity_, GenericEntity<String>> {
	private static final Logger LOG = Logger.getLogger(TestDAO.class);

	@Override
	protected Class<GenericEntity<String>> getType() {
		return null;
	}

	public HibernateEntityManager getInternalEm() {
		return getEM();
	}

	/**
	 * Function needed mainly for testing or showing system information.
	 * @param propertyKey
	 *
	 * @return value of the key in the emf properties map
	 */
	@Override
	public Object getEntityManagerProperty(String propertyKey) {
		return getEM().getEntityManagerFactory().getProperties().get(propertyKey);
	}


	/**
	 * Get a DBUnit {@link DatabaseConnection} for the persistence unit related to the DAO.
	 * 
	 * Use auto-commit
	 * 
	 * @return
	 */
	public DatabaseConnection getDatabaseConnection() {
		return getDatabaseConnection(true);
	}

	/**
	 * Get a DBUnit {@link DatabaseConnection} for the persistence unit related to the DAO.
	 * 
	 * @param autoCommit
	 * @return
	 */
	public DatabaseConnection getDatabaseConnection(boolean autoCommit) {
		Connection connection;
		try {
			connection = ((SessionImpl) getEM().getSession()).connection();
			connection.setAutoCommit(autoCommit);
			DatabaseConnection conn = new DatabaseConnection(connection);
			configureDatabaseConnection(conn);
			return conn;
		} catch (SQLException | DatabaseUnitException e) {
			throw new RuntimeException("Cannot get database conection", e);
		}
	}

	/**
	 * Set features of database connection used by DBUnit.
	 * 
	 * Override this function in you test if you need to change the configuration.
	 * 
	 * @param conn
	 */
	public void configureDatabaseConnection(DatabaseConnection conn) {
		DatabaseConfig config = conn.getConfig();

		config.setProperty(DatabaseConfig.FEATURE_ALLOW_EMPTY_FIELDS, true);
		config.setProperty(DatabaseConfig.PROPERTY_DATATYPE_FACTORY, new HsqldbDataTypeFactory());
	}

	/**
	 * Export one or more tables to Excel.
	 * 
	 * @param oStream output stream
	 * @param tables table name (i.e. typically {@link Class#getSimpleName()}
	 * @throws DataSetException
	 * @throws FileNotFoundException
	 * @throws IOException
	 */
	public void exportTablesToExcel(OutputStream oStream, String...tables) throws DataSetException, FileNotFoundException, IOException {
		DatabaseConnection connection = getDatabaseConnection();
		connection.getConfig().setProperty(DatabaseConfig.FEATURE_QUALIFIED_TABLE_NAMES, true);

		QueryDataSet dataSet = new QueryDataSet(connection);
		for (String table : tables) {
			dataSet.addTable(table);
		}

		XlsDataSet.write(dataSet, oStream);
	}

	/**
	 * Import tables from resources.
	 * 
	 * @param clean
	 * @param resources
	 * @throws SQLException
	 * @throws DatabaseUnitException
	 * @throws IOException
	 */
	public void importTablesFromExcelResources(boolean clean, String...resources) throws SQLException, DatabaseUnitException, IOException {
		for (String resource : resources) {
			importTablesFromExcelResource(clean, resource);
		}

		getDatabaseConnection().getConnection().commit();
	}

	/**
	 * Import specified tables from an Excel dataset.
	 * 
	 * @param clean
	 * @param resource
	 * @param tableNames if empty, then all tables will be imported
	 * @throws SQLException
	 * @throws DatabaseUnitException
	 * @throws IOException
	 */
	public void importTablesFromExcelResource(boolean clean, String resource, String...tableNames) throws SQLException, DatabaseUnitException, IOException {
		DatabaseConnection connection = getDatabaseConnection();
		DatabaseOperation dbOp = clean ? DatabaseOperation.CLEAN_INSERT : DatabaseOperation.INSERT;
		InputStream stream = getClass().getResourceAsStream(resource);
		if(stream == null) {
			throw new RuntimeException("Could not load resource from path: " + resource);
		}
		IDataSet importDataSet = new XlsDataSet(stream);
		if(tableNames.length > 0) {
			importDataSet = new FilteredDataSet(tableNames, importDataSet);
		}
		dbOp.execute(connection, importDataSet);

		connection.getConnection().commit();
	}

	public void shutDown() throws Exception {
		Connection connection = getDatabaseConnection().getConnection();

		Statement statement = connection.createStatement();
		statement.execute("SHUTDOWN");
	}

	public void truncateTables(String...tableNames) throws AmbiguousTableNameException, DatabaseUnitException, SQLException {
		ITable[] tables = Stream.of(tableNames).map(t -> new DefaultTable(t)).toArray(ITable[]::new);
		DatabaseOperation.TRUNCATE_TABLE.execute(
				getDatabaseConnection(),
				new DefaultDataSet(tables));
	}

	public String[] objectTablenames(Class<?> objects) {
		return Stream.of(objects).map(o -> o.getSimpleName()).toArray(String[]::new);
	}
}

