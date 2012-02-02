package ch.ivyteam.ivy.addons.restricted.util;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.StringTokenizer;

import ch.ivyteam.ivy.environment.EnvironmentNotAvailableException;
import ch.ivyteam.ivy.environment.Ivy;

/**
 * 
 * @author Rifat Binjos, TI-Informatique
 * @since 12.05.2010
 *
 */
public class UserPropertyUtil {
	
	// allowed environments user's property
	private final static String ALLOWED_ENVIRONMENTS = "xivy.addons.allowedEnvironments";
	
	// property value delimiters
	private final static String DELIMITER = ", ";

	

	/**
	 * Gets the user's allowed environments from its properties
	 * The list of environments are stored in the specific comma separated user property value
	 * ex: "VTH, GRM, MT, Demo" 
	 * @param userName
	 * @return list of strings (list of allowed environments that he can choose at login); if property value empty/null then it returns an empty list
	 * @throws EnvironmentNotAvailableException
	 * @throws Exception
	 */
	public static List<String> getUserAllowedEnvironments(String userName) throws EnvironmentNotAvailableException, Exception
	{
		List<String> allowedEnvironments = new ArrayList<String>();
		
		String propertyValue = ExecutionHelper.getUserPropertyAsSystemUser(userName, ALLOWED_ENVIRONMENTS);
		
		Ivy.log().debug("Processing the property name {0} with value {1}.", ALLOWED_ENVIRONMENTS, propertyValue);
		
		if (propertyValue != null && !propertyValue.equals(""))
		{
						
			StringTokenizer environmentsStringTokenizer = new StringTokenizer(propertyValue, DELIMITER, false);
			while (environmentsStringTokenizer.hasMoreTokens())
			{
				String token = environmentsStringTokenizer.nextToken();
				Ivy.log().debug("Property value {0} token is {1}.", propertyValue, token);
				allowedEnvironments.add(token);				
			}
			
			// sort the list
			Collections.sort(allowedEnvironments, String.CASE_INSENSITIVE_ORDER); 
		}

		
		return allowedEnvironments;
	}
	
	
	/**
	 * Gets the user's allowed environments from its properties
	 * The list of environments are stored in the specific comma separated user property value
	 * ex: "VTH, GRM, MT, Demo"  
	 * @param userName
	 * @return comma separated list of user's allowed environements (that he can choose at login); if no data, then it returns empty string
	 * @throws EnvironmentNotAvailableException
	 * @throws Exception
	 */
	public static String getUserAllowedEnvironmentsAsString(String userName) throws EnvironmentNotAvailableException, Exception
	{
		String allowedEnvironments = ExecutionHelper.getUserPropertyAsSystemUser(userName, ALLOWED_ENVIRONMENTS); 
		Ivy.log().debug("Processing the property name {0} with value {1} for the user {2}.", ALLOWED_ENVIRONMENTS, allowedEnvironments, userName);
		return  allowedEnvironments != null? allowedEnvironments: "";

	}
	
	
	
	
	/**
	 * Sets the allowed environments to the user's properties
	 * @param userName
	 * @param allowedEnvironments is list of user allowed environments that he could select one during the login
	 * @return true if operation successful; otherwise false
	 * @throws EnvironmentNotAvailableException
	 * @throws Exception
	 */
	public static boolean setUserAllowedEnvironments(String userName, List<String> allowedEnvironments) throws EnvironmentNotAvailableException, Exception
	{
		String environments = "";
		for(String entry: allowedEnvironments)
		{
			environments += entry + ", ";
		}
				
		return ExecutionHelper.setUserPropertyAsSystemUser(userName, ALLOWED_ENVIRONMENTS, environments);
	}
	
	
	/**
	 * Sets the allowed environments to the user's properties
	 * @param userName
	 * @param allowedEnvironments is list of user allowed environments that he could select one during the login
	 * @return if operation successful; otherwise false
	 * @throws EnvironmentNotAvailableException
	 * @throws Exception
	 */
	public static boolean setUserAllowedEnvironmentsAsString(String userName, String allowedEnvironments) throws EnvironmentNotAvailableException, Exception
	{
		return ExecutionHelper.setUserPropertyAsSystemUser(userName, ALLOWED_ENVIRONMENTS, allowedEnvironments);
	}
	

}
