package ch.ivyteam.demo.jpa.demos.test.service;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import org.apache.commons.lang.exception.ExceptionUtils;
import org.dbunit.DatabaseUnitException;

import ch.ivyteam.demo.jpa.demos.test.dao.DemoDAO;

import ch.ivyteam.demo.jpa.demos.Logger;
import ch.ivyteam.demo.jpa.demos.entities.Department;
import ch.ivyteam.demo.jpa.demos.entities.Person;
import ch.ivyteam.demo.jpa.demos.service.PersonService;

public class TestService {
	private static final Logger LOG = Logger.getLogger(TestService.class);
	private static final String NL = System.lineSeparator();
	private static final DemoDAO demoDao = DemoDAO.getInstance();

	private TestService() {}

	/**
	 * Load standard test data.
	 * 
	 * @param clean
	 * @param tableNames
	 * @throws SQLException
	 * @throws DatabaseUnitException
	 * @throws IOException
	 */
	public static void loadStandardTestData(boolean clean, String...tableNames) throws SQLException, DatabaseUnitException, IOException {
		LOG.info("Preparing test data");
		demoDao.loadStandardTestdata(clean, tableNames);
	}


	/**
	 * Prepare the test environment.
	 * 
	 * @param clean
	 * @param throwException
	 * @return
	 */
	public static String prepareTestDataAndIvy(boolean clean, boolean throwException) {
		String result = "";
		try {
			loadStandardTestData(clean);
			result += "Loaded test data " +  (clean ? "whith" : "without") + " cleaning." + NL;
			PersonService.syncUsers();
			result += "Synced Ivy users" + NL;
		} catch (Exception e) {
			result += "Preparing test enviroment caused exception." + NL + ExceptionUtils.getStackTrace(e);
			if(throwException) {
				throw new RuntimeException("Could not create test environment", e);
			}
		}
		return result;
	}

	/**
	 * Prepare the test environment, catch errors returned in result string.
	 * 
	 * @param clean
	 * @return
	 */
	public static String prepareTestDataAndIvy(boolean clean) {
		return prepareTestDataAndIvy(clean, false);
	}

	private static String[] simpleNames(Class<?>...classes) {
		return Stream.of(classes).map(c -> c.getSimpleName()).toArray(String[]::new);
	}

	/**
	 * Get an {@link InputStream} containing data of all mentioned tables.
	 * 
	 * If no tables are given, use a standard set.
	 * 
	 * @param tablenames
	 * @return
	 */
	public static InputStream getDBExport(String...tablenames) {

		ByteArrayInputStream iStream = new ByteArrayInputStream(new byte[0]);
		try {
			LOG.info("Exporting testdata");
			if(tablenames == null || tablenames.length == 0) {
				tablenames = simpleNames (
						Department.class,
						Person.class
						);
				LOG.info("No tablesnames given, using: {0}",
						Stream.of(tablenames).collect(Collectors.joining(", ")));
			}
			ByteArrayOutputStream oStream = new ByteArrayOutputStream();
			demoDao.exportTablesToExcel(oStream, tablenames);

			// convert OutputStream to InputStream
			iStream = new ByteArrayInputStream(oStream.toByteArray());

			LOG.info("Exported testdata");
		}
		catch(Exception e) {
			throw new RuntimeException("Could not export database to Excel.", e);
		}
		return iStream;
	}

}
