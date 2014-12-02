package ch.ivyteam.ivy.server.configuration.util;

import java.util.ArrayList;
import java.util.List;

import ch.ivyteam.db.jdbc.DatabaseProduct;
import ch.ivyteam.ivy.persistence.db.DatabasePersistencyServiceFactory;

/**
 * Utility class for the server configuration
 */
public class ConfigurationUtil {

	/** VM argument to set the server configuration into the development mode (e.g. HSQL to appear) */
	private static final String CONFIGURATION_DEVELOPMENT_MODE = "ch.ivyteam.ivy.server.configuration.development";

	private ConfigurationUtil() {
		// This is only a utility class
	}

	/**
	 * Returns all supported databases. This method will remove the memory db (HSQLDB) from 
	 * the list of supported databases.<br>
	 * Add vm argument 'ch.ivyteam.ivy.server.configuration.development' to add hsqldb to the list.
	 * @return Supported databases
	 */
	public static DatabaseProduct[] getSupportedDatabases()
	{
		boolean removeMemDb = !isDevelopmentMode();
		List<DatabaseProduct> databases = new ArrayList<DatabaseProduct>();
		for (DatabaseProduct database : DatabasePersistencyServiceFactory.getSupportedDatabases())
		{
			if (!(removeMemDb && database.equals(DatabaseProduct.HSQLDB)))
			{
				databases.add(database);
			}
		}
		return databases.toArray(new DatabaseProduct[databases.size()]);
	}
	
	/**
	 * @return returns true, if we are in development mode.<br>
	 * Generally used for automatic testing
	 */
	public static boolean isDevelopmentMode()
	{
		return System.getProperty(CONFIGURATION_DEVELOPMENT_MODE) != null;
	}
}
