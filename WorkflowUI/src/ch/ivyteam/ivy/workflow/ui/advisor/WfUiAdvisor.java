package ch.ivyteam.ivy.workflow.ui.advisor;

import java.io.InputStream;
import java.util.Properties;

import org.apache.commons.io.IOUtils;

public final class WfUiAdvisor 
{
	/** The properties from the WorflowUI_Build.properties file */
	private static Properties sProperties;
	
	/** @return the cached properties */
	private static Properties getProperties()
	{
		if (sProperties == null)
		{
			sProperties = new Properties();
			InputStream is = null;
			try
			{
				is = WfUiAdvisor.class.getResourceAsStream("WorkflowUI.properties");
				if (is != null)
				{
					sProperties.load(is);
				}
			}
			catch (Throwable t)
			{
				sProperties.setProperty("error", "Could not read properties. Reason: "+t.getClass().getSimpleName()+", "+t.getMessage()+".");
			}
			finally
			{
				IOUtils.closeQuietly(is);
			}
		}
		return sProperties;
	}
	
	/**
	 * @return the application identifier
	 */
	public static String getApplicationIdentifier()
	{
		return getProperties().getProperty("ApplicationIdentifier", "?");
	}
	
	/**
	 * @return the application short name
	 */
	public static String getApplicationShortName()
	{
		return getProperties().getProperty("ApplicationShortName", "?");
	}

	/**
	 * @return the application name
	 */
	public static String getApplicationName()
	{
		return getProperties().getProperty("ApplicationName", "?");
	}
	
	/**
	 * @return the the vendor name
	 */
	public static String getVendorName()
	{
		return getProperties().getProperty("VendorName", "?");
	}

	/**
	 * @return the application version
	 */
	public static String getApplicationVersion()
	{
		return getProperties().getProperty("ApplicationVersion", "?");
	}
	
	/**
	 * @return the copyright
	 */
	public static String getCopyright()
	{
		return getProperties().getProperty("Copyright", "?");
	}
	
	/**
	 * @return the the revision number
	 */
	public static String getRevisionNumber()
	{
		return getProperties().getProperty("RevisionNumber", "?");
	}
	
	/**
	 * @return the build date
	 */
	public static String getBuildDate()
	{
		return getProperties().getProperty("BuildDate", "?");
	}
	
	/**
	 * Checks if an error happened during reading of properties.
	 * @return <code>true</code> if error happened, <code>false</code> otherwise
	 */
	public static boolean hasError()
	{
		return getProperties().containsKey("error");
	}
	
	/**
	 * If {@link #hasError()} is <code>true</code> then this
	 * returns the error message.
	 * @return error message or <code>null</code> if no error happened
	 */
	public static String getErrorMessage()
	{
		return getProperties().getProperty("error");
	}
}
