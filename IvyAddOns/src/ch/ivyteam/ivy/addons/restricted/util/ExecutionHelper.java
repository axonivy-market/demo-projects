package ch.ivyteam.ivy.addons.restricted.util;

import java.util.concurrent.Callable;

import ch.ivyteam.ivy.environment.EnvironmentNotAvailableException;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.security.IUser;

/**
 * 
 * @author Rifat Binjos, TI-Informatique
 * @since 12.05.2010
 *
 */
public class ExecutionHelper {

	/**
	 * Gets a property to the user without permission restrictions
	 * @param userName
	 * @param propertyName
	 * @return property value or null if no such property exists 
	 * @throws EnvironmentNotAvailableException
	 * @throws Exception
	 */
	public static String getUserPropertyAsSystemUser(final String userName,
			final String propertyName) throws EnvironmentNotAvailableException,
			Exception {
		String propertyValue = null;

		propertyValue = Ivy.session().getSecurityContext().executeAsSystemUser(
				new Callable<String>() {
					public String call() throws Exception {
						IUser user = Ivy.wf().getSecurityContext().findUser(userName);

						if (user != null) {
							Ivy.log().debug("User {0} found.", user.getName());
							return user.getProperty(propertyName);
						} else
						{
							Ivy.log().error("Get property name {0} failed; user {1} not found.", 
									propertyName, userName);
							return null;
						}
					}
				});

		return propertyValue;
	}
	
	
	
	/**
	 * Sets a property to the user without permission restrictions
	 * 
	 * @param userName
	 * @param propertyName
	 * @param propertyValue
	 * @return true if operation successful; otherwise false
	 * @throws EnvironmentNotAvailableException
	 * @throws Exception
	 */
	public static boolean setUserPropertyAsSystemUser(final String userName,
			final String propertyName, final String propertyValue) throws EnvironmentNotAvailableException,
			Exception {

		return Ivy.session().getSecurityContext().executeAsSystemUser(
				new Callable<Boolean>() {
					public Boolean call() throws Exception {
						IUser user = Ivy.wf().getSecurityContext().findUser(userName);

						if (user != null) {
							Ivy.log().debug("User {0} found.", user.getName());
							user.setProperty(propertyName, propertyValue);
							return true;
						} else
						{
							Ivy.log().error("Set property name {0} with value {1} failed; user {2} not found.", 
									propertyName, propertyValue, userName);
							return false;
						}
					}
				});

	}

}
