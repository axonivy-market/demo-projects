package ch.ivyteam.ivy.addons.util;

import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.Callable;

import org.apache.commons.io.IOUtils;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;

import ch.ivyteam.api.PublicAPI;
import ch.ivyteam.ivy.application.IProcessModelVersion;
import ch.ivyteam.ivy.security.SecurityManagerFactory;

/**
 * An advisor to access build properties of Ivy RIA projects. The build
 * properties can be defined/inspected in the
 * <code>.settings/riaProjectAdvisor.properties</code> file of an Ivy project.
 * The intention is, that those properties are e.g. set by a build or deployment
 * process, whenever a project is made ready for delivery.
 * 
 * <p>
 * Please note that this class is intended to be used for RIA projects that are
 * developed with Xpert.ivy. The build properties of the Xpert.ivy product
 * itself can be accessed over the <code>ch.ivyteam.ivy.Advisor</code> class, which
 * is not public API.
 * 
 * @author kvg
 * @since 24.08.2009
 */
@PublicAPI
public class ProjectAdvisor
{
	/** The project-local path to the advisor properties */
	private static final IPath ADVISOR_PROPERTIES_PATH = new Path(".settings/riaProjectAdvisor.properties");

	/** Cached advisor properties */
	private static Map<IProcessModelVersion, ProjectAdvisor> sAdvisors = new HashMap<IProcessModelVersion, ProjectAdvisor>();

	/** This advisor's properties */
	private Properties fAdvisorProperties;

	/** The version instance */
	private String fVersion;

	/**
	 * Clears the cache (all previously loaded project advisors will be refreshed).
	 */
	public static final void clearCache()
	{
		sAdvisors.clear();
	}
	
	/**
	 * Gets an advisor instance for the given {@link IProcessModelVersion}. Inside
	 * IvyScript the process model version of the currently executing step can be
	 * retrieved with <code>ivy.request.getProcessModelVersion()</code>
	 * 
	 * <p>
	 * Check {@link #hasError()} to know if the returned object could be loaded
	 * with correct information.
	 * 
	 * @param pmv
	 *          process model version
	 * @return {@link ProjectAdvisor} instance for the given riaProject
	 * @throws IllegalArgumentException
	 *           if riaProject is null
	 */
	public static ProjectAdvisor getInstance(final IProcessModelVersion pmv) throws IllegalArgumentException
	{
		if (pmv == null)
		{
			throw new IllegalArgumentException("ProcessModelVersion must not be null");
		}

		ProjectAdvisor projectAdvisor = sAdvisors.get(pmv);
		if (projectAdvisor == null)
		{
			Properties properties = new Properties();
			try
			{
				IFile propertiesFile = SecurityManagerFactory.getSecurityManager().executeAsSystem2(new Callable<IFile>() {
							public IFile call() throws Exception
							{
								return (IFile) pmv.getProject().findMember(ADVISOR_PROPERTIES_PATH);
							}
						});
				InputStream is = null;
				try
				{
					// find advisor properties
					is = propertiesFile.getContents();
					if (is != null)
					{
						properties.load(is);
					}
				}
				finally
				{
					IOUtils.closeQuietly(is);
				}
			}
			catch (Throwable t)
			{
				properties.setProperty("error", "Could not read properties. Reason: " + t.getClass().getSimpleName() + ", " + t.getMessage() + ".");
			}
			projectAdvisor = new ProjectAdvisor(properties);
			sAdvisors.put(pmv, projectAdvisor);
		}
		return projectAdvisor;
	}

	/**
	 * Constructor
	 * 
	 * @param properties
	 */
	private ProjectAdvisor(Properties properties)
	{
		fAdvisorProperties = properties;
	}

	/**
	 * Gets the short name of the application.
	 * 
	 * @return the application short name
	 */
	public String getApplicationShortName()
	{
		return fAdvisorProperties.getProperty("ApplicationShortName", "?");
	}

	/**
	 * Gets the full name of the application.
	 * 
	 * @return the application name
	 */
	public String getApplicationName()
	{
		return fAdvisorProperties.getProperty("ApplicationName", "?");
	}

	/**
	 * Gets the vendor's name.
	 * 
	 * @return the the vendor name
	 */
	public String getVendorName()
	{
		return fAdvisorProperties.getProperty("VendorName", "?");
	}

	/**
	 * Gets the application version.
	 * 
	 * @param includeRevisionNumber
	 *          if <code>true</code> then the revision number will be appended to
	 *          the version (major,minor,patch)
	 * @return the application version major.minor.patch[.rev]
	 */
	public String getApplicationVersion(boolean includeRevisionNumber)
	{
		if (fVersion == null)
		{
			StringBuffer buf = new StringBuffer();
			buf.append(fAdvisorProperties.getProperty("MajorVersion", "?"));
			buf.append('.');
			buf.append(fAdvisorProperties.getProperty("MinorVersion", "?"));
			buf.append('.');
			buf.append(fAdvisorProperties.getProperty("PatchNumber", "?"));
			if (includeRevisionNumber)
			{
				buf.append('.');
				buf.append(fAdvisorProperties.getProperty("RevisionNumber", "?"));
			}
			fVersion = buf.toString();
		}
		return fVersion;
	}

	/**
	 * @return the copyright
	 */
	public String getCopyright()
	{
		return fAdvisorProperties.getProperty("Copyright", "?");
	}

	/**
	 * @return the the revision number
	 */
	public String getRevisionNumber()
	{
		return fAdvisorProperties.getProperty("RevisionNumber", "?");
	}

	/**
	 * @return the build date
	 */
	public String getBuildDate()
	{
		return fAdvisorProperties.getProperty("BuildDate", "?");
	}

	/**
	 * Checks if an error happened during reading of properties.
	 * 
	 * @return <code>true</code> if error happened, <code>false</code> otherwise
	 */
	public boolean hasError()
	{
		return fAdvisorProperties.containsKey("error");
	}

	/**
	 * If {@link #hasError()} is <code>true</code> then this returns the error
	 * message.
	 * 
	 * @return error message or <code>null</code> if no error happened
	 */
	public String getErrorMessage()
	{
		return fAdvisorProperties.getProperty("error");
	}
	
	@Override
	public String toString()
	{
		if (hasError())
		{
			return getErrorMessage();
		}
		
		StringBuffer buf = new StringBuffer();
		buf.append("ApplicationName=").append(getApplicationName()).append('\n');
		buf.append("ApplicationShortName=").append(getApplicationShortName()).append('\n');
		buf.append("ApplicationVersion=").append(getApplicationVersion(true)).append('\n');
		buf.append("VendorName=").append(getVendorName()).append('\n');
		buf.append("Copyright=").append(getCopyright()).append('\n');
		buf.append("BuildDate=").append(getBuildDate()).append('\n');
		return buf.toString();
	}

}
