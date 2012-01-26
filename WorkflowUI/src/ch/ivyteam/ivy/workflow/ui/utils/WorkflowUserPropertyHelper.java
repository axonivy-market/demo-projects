package ch.ivyteam.ivy.workflow.ui.utils;

import java.util.concurrent.Callable;

import ch.ivyteam.ivy.environment.EnvironmentNotAvailableException;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.persistence.PersistencyException;
import ch.ivyteam.ivy.security.IUser;
import ch.ivyteam.ivy.security.SecurityManagerFactory;

/**
 * 
 * @author Rifat Binjos, TI-Informatique
 * @since 12.08.2011
 * 
 * It helps to manage the user properties that are related to the WorkflowUI like preferences, etc.
 *
 */
public class WorkflowUserPropertyHelper {

	/**
	 * It set the preference if the user would like to have the tree of tasks sorted by priority
	 *
	 * @param user is the one for which the preference has to be set 
	 * @param enableTaskSortedByPriority is the preference value: 
	 * 	if true then tasks are sorted by priority in the tree of tasks; otherwise not 
	 * @return true if operation was successful
	 * 
	 * @throws Exception 
	 * @throws PersistencyException 
	 * @throws EnvironmentNotAvailableException 
	 */
	public static boolean setTasksSortedByPriorityPreference(final IUser user, Boolean enableTaskSortedByPriority) throws EnvironmentNotAvailableException, PersistencyException, Exception
	{
		return setUserPropertyAsSystemUser(
							user,
							UserPropertyKeys.TASKS_SORTED_BY_PRIORITY_PROPERTY_KEY,
							enableTaskSortedByPriority.toString());
	}
	
	/**
	 * It gets the actual preference of the user regarding the tree of tasks sorted by priority
	 * 
	 * @param user is the one for which the preference has to be get
	 * @return true if the actual preference is turned on; otherwise false.
	 * 
	 * @throws EnvironmentNotAvailableException
	 * @throws Exception
	 */
	public static boolean getTasksSortedByPriorityPreference(IUser user) throws EnvironmentNotAvailableException, Exception
	{
		String propertyValue = getUserPropertyAsSystemUser(user, UserPropertyKeys.TASKS_SORTED_BY_PRIORITY_PROPERTY_KEY);
		
		return "true".equals(propertyValue);
	}

	
	
	/**
	 * It sets the preference on tasks hierarchy layout that the user would like to have per default
	 * 
	 * @param user is the one for which the preference has to be set 
	 * @param selectedTaskHierarchyLayoutIndex is the string value of the preferred tasks hierarchy layout index in combobox on UI
	 *  
	 * @return true if operation was successful 
	 * @throws Exception 
	 * @throws EnvironmentNotAvailableException 
	 */
	public static boolean setTasksHierarchyLayoutIndexPreference(IUser user, int selectedTaskHierarchyLayoutIndex) throws EnvironmentNotAvailableException, Exception
	{
		return setUserPropertyAsSystemUser(
						user, 
						UserPropertyKeys.TASKS_HIERARCHY_LAYOUT_INDEX_PROPERTY_KEY,
						"" + selectedTaskHierarchyLayoutIndex);
	}
	
	
	/**
	 * It gets the actual preference of the user regarding the task hierarchy layout index
	 * 
	 * @param user is the one for which the preference has to be get
	 * @return the actual hierarchy layout index; if no preferences has been set it returns -1.
	 * 
	 * @throws EnvironmentNotAvailableException
	 * @throws Exception
	 */
	public static int getTasksHierarchyLayoutIndexPreference(IUser user) throws EnvironmentNotAvailableException, Exception
	{
		String propertyValue = getUserPropertyAsSystemUser(user, UserPropertyKeys.TASKS_HIERARCHY_LAYOUT_INDEX_PROPERTY_KEY);
		
		if (propertyValue != null)
			return Integer.parseInt(propertyValue);
		else
			return -1;
	}
	
	
	
	/**
	 * It sets the preference if user would like to have running task list loaded automatically during the WFUI startup.
	 * 
	 * @param user is the one for which the preference has to be set
	 * @param loadTaskListAtStartUp is the preference value; if true then the running task list will be loaded at WFUI startup; otherwise not
	 * @return true if operation was successful
	 * @throws EnvironmentNotAvailableException
	 * @throws Exception
	 */
	public static boolean setLoadTaskListAtStartUpPreference(IUser user, Boolean loadTaskListAtStartUp) throws EnvironmentNotAvailableException, Exception
	{
		return setUserPropertyAsSystemUser(
					user, 
					UserPropertyKeys.LOAD_TASK_LIST_AT_START_UP_PROPERTY_KEY, 
					loadTaskListAtStartUp.toString());
	}
	
	/**
	 * It returns the actual user preference regarding the running task list loading at WFUI startup.
	 * 
	 * @param user is the one for which the preference has to be get
	 * @return true if operation was successful
	 * @throws EnvironmentNotAvailableException
	 * @throws Exception
	 */
	public static boolean getLoadTaskListAtStartUpPreference(IUser user) throws EnvironmentNotAvailableException, Exception
	{
		String propertyValue = getUserPropertyAsSystemUser(user, UserPropertyKeys.LOAD_TASK_LIST_AT_START_UP_PROPERTY_KEY);
		
		return "true".equals(propertyValue);
	}
	
	/**
	 * 
	 * @param user is the one for which the preference has to be set
	 * @param loadTaskTreeAtStartUp is the preference value; if true then the running task tree will be loaded at WFUI startup; otherwise not
	 * @return true if operation was successful
	 * @throws EnvironmentNotAvailableException
	 * @throws Exception
	 */
	public static boolean setLoadTaskTreeAtStartUpPreference(IUser user, Boolean loadTaskTreeAtStartUp) throws EnvironmentNotAvailableException, Exception
	{
		return setUserPropertyAsSystemUser(
					user, 
					UserPropertyKeys.LOAD_TASK_TREE_AT_START_UP_PROPERTY_KEY, 
					loadTaskTreeAtStartUp.toString());
	}
	
	/**
	 * It returns the actual user preference regarding the running task tree loading at WFUI startup.
	 * 
	 * @param user is the one for which the preference has to be get
	 * @return true if operation was successful
	 * @throws EnvironmentNotAvailableException
	 * @throws Exception
	 */
	public static boolean getLoadTaskTreeAtStartUpPreference(IUser user) throws EnvironmentNotAvailableException, Exception
	{
		String propertyValue = getUserPropertyAsSystemUser(user, UserPropertyKeys.LOAD_TASK_TREE_AT_START_UP_PROPERTY_KEY);
		
		return "true".equals(propertyValue);
	}
	
	
	
	
	
	/**
	 * 
	 * It sets the preference if user would like to have multiple task list displayed at same time (each task list is a additional tab)
	 * 
	 * @param user is the one for which the preference has to be set
	 * @param enableMultipleTaskListMode is the preference value: if true then the user will be able to load multiple task list at same time; otherwise not.
	 * @return true if operation was successful
	 * @throws EnvironmentNotAvailableException
	 * @throws Exception
	 */
	public static boolean setMultipleTaskListModePreference(IUser user, Boolean enableMultipleTaskListMode) throws EnvironmentNotAvailableException, Exception
	{
		return setUserPropertyAsSystemUser(
				user, 
				UserPropertyKeys.IS_MULTIPLE_TASKLIST_MODE_PROPERTY_KEY,
				enableMultipleTaskListMode.toString());
	}
	
	
	/**
	 * It gets the actual preference of the user regarding the multiple task list mode
	 * 
	 * @param user is the one for which the preference has to be get
	 * @return true if the actual preference is turned on; otherwise false.
	 * 
	 * @throws EnvironmentNotAvailableException
	 * @throws Exception
	 */
	public static boolean getMultipleTaskListModePreference(IUser user) throws EnvironmentNotAvailableException, Exception
	{
		String propertyValue = getUserPropertyAsSystemUser(user, UserPropertyKeys.IS_MULTIPLE_TASKLIST_MODE_PROPERTY_KEY);
		
		return "true".equals(propertyValue);
	}
	
	
	
	
		
	
	/**
	 * It sets the preference of the user would like to hide the menu on the left side during the task execution.
	 * 
	 * @param user is the one for which the preference has to be set
	 * @param enableMenuAutoHideMode is the preference value; if true then the the menu on the left side will be hidden during the task execution; othewise not.
	 * @return true if operation was successful
	 * @throws Exception 
	 * @throws EnvironmentNotAvailableException 
	 */
	public static boolean setMenuAutoHidePreference(IUser user, Boolean enableMenuAutoHideMode) throws EnvironmentNotAvailableException, Exception
	{
		return setUserPropertyAsSystemUser(
				user, 
				UserPropertyKeys.MENU_AUTO_HIDE_PROPERTY_KEY, 
				enableMenuAutoHideMode.toString());
	}
	
	/**
	 * It gets the actual preference of the user regarding the menu auto hide preference
	 * 
	 * @param user is the one for which the preference has to be get 
	 * @return true if the actual preference is turned on; otherwise false.
	 * 
	 * @throws EnvironmentNotAvailableException
	 * @throws Exception
	 */
	public static boolean getMenuAutoHidePreference(IUser user) throws EnvironmentNotAvailableException, Exception
	{
		String propertyValue = getUserPropertyAsSystemUser(user, UserPropertyKeys.MENU_AUTO_HIDE_PROPERTY_KEY);	
		
		return "true".equals(propertyValue);
	}
	
	
	/**
	 * It set the preference if the user would like to have the case of tree sorted by priority
	 *
	 * @param user is the one for which the preference has to be set 
	 * @param enableCaseSortedByPriority is representing the preference: 
	 * 	if true then cases are sorted by priority in the tree of cases; otherwise not 
	 * @return true if operation was successful
	 * 
	 * @throws Exception 
	 * @throws PersistencyException 
	 * @throws EnvironmentNotAvailableException 
	 */
	public static boolean setCasesSortedByPriorityPreference(final IUser user, Boolean enableCaseSortedByPriority) throws EnvironmentNotAvailableException, PersistencyException, Exception
	{
		return setUserPropertyAsSystemUser(
							user,
							UserPropertyKeys.CASES_SORTED_BY_PRIORITY_PROPERTY_KEY,
							enableCaseSortedByPriority.toString());
	}
	
	
	/**
	 * It gets the actual preference of the user regarding the tree of cases sorted by priority
	 * 
	 * @param user is the one for which the preference has to be get
	 * @return true if the actual preference is turned on; otherwise false.
	 * 
	 * @throws EnvironmentNotAvailableException
	 * @throws Exception
	 */
	public static boolean getCasesSortedByPriorityPreference(IUser user) throws EnvironmentNotAvailableException, Exception
	{
		String propertyValue = getUserPropertyAsSystemUser(user, UserPropertyKeys.CASES_SORTED_BY_PRIORITY_PROPERTY_KEY);		
		
		return "true".equals(propertyValue);
	}
	
	
	
	
	
	/**
	 * It sets the preference on tasks hierarchy layout that the user would like to have per default
	 * 
	 * @param user is the one for which the preference has to be set 
	 * @param selectedCaseHierarchyLayoutIndex is the preferred cases hierarchy layout index in combobox on UI 
	 * @return true if operation was successful 
	 * @throws Exception 
	 * @throws EnvironmentNotAvailableException 
	 */
	public static boolean setCasesHierarchyLayoutIndexPreference(IUser user, int selectedCaseHierarchyLayoutIndex) throws EnvironmentNotAvailableException, Exception
	{
		return setUserPropertyAsSystemUser(
						user, 
						UserPropertyKeys.CASES_HIERARCHY_LAYOUT_INDEX_PROPERTY_KEY,
						"" + selectedCaseHierarchyLayoutIndex);
		
	}
	
	
	/**
	 * It gets the actual preference of the user regarding the case hierarchy layout index
	 * 
	 * @param user is the one for which the preference has to be get
	 * @return the actual hierarchy layout index; if no preferences has been set it returns -1.
	 * 
	 * @throws EnvironmentNotAvailableException
	 * @throws Exception
	 */
	public static int getCasesHierarchyLayoutIndexPreference(IUser user) throws EnvironmentNotAvailableException, Exception
	{
		String propertyValue = getUserPropertyAsSystemUser(user, UserPropertyKeys.CASES_HIERARCHY_LAYOUT_INDEX_PROPERTY_KEY);
		
		if (propertyValue != null)
			return Integer.parseInt(propertyValue);
		else
			return -1;
	}
	
	
	
	/**
	 * 
	 * It sets the preference if user would like to have multiple task list displayed at same time (each task list is a additional tab)
	 * 
	 * @param user is the one for which the preference has to be set
	 * @param enableMultipleCaseListMode is the preference value: if true then the user will be able to load multiple task list at same time; otherwise not.
	 * @return true if operation was successful
	 * @throws EnvironmentNotAvailableException
	 * @throws Exception
	 */
	public static boolean setMultipleCaseListModePreference(IUser user, Boolean enableMultipleCaseListMode) throws EnvironmentNotAvailableException, Exception
	{
		return setUserPropertyAsSystemUser(
				user, 
				UserPropertyKeys.IS_MULTIPLE_CASELIST_MODE_PROPERTY_KEY,
				enableMultipleCaseListMode.toString());
	}
	
	
	
	/**
	 * It gets the actual preference of the user regarding the multiple case list mode
	 * 
	 * @param user is the one for which the preference has to be get
	 * @return true if the actual preference is turned on; otherwise false.
	 * 
	 * @throws EnvironmentNotAvailableException
	 * @throws Exception
	 */
	public static boolean getMultipleCaseListModePreference(IUser user) throws EnvironmentNotAvailableException, Exception
	{
		String propertyValue = getUserPropertyAsSystemUser(user, UserPropertyKeys.IS_MULTIPLE_CASELIST_MODE_PROPERTY_KEY);
		
		return "true".equals(propertyValue);
	}
		
	
	
	/**
	 * it sets a property to the user without permission restrictions
	 * 
	 * @param user is the one for which the preference has to be set
	 * @param propertyName
	 * @param propertyValue
	 * 
	 * @return true if operation successful; otherwise false
	 * 
	 * @throws EnvironmentNotAvailableException
	 * @throws Exception
	 */
	public static boolean setUserPropertyAsSystemUser(final IUser user,
			final String propertyName, final String propertyValue) throws EnvironmentNotAvailableException,
			Exception {

		return SecurityManagerFactory.getSecurityManager().executeAsSystem(
				new Callable<Boolean>() {
					public Boolean call() throws Exception {
						if (user != null) {
							Ivy.log().debug("User {0} found.", user.getName());
							user.setProperty(propertyName, propertyValue);
							Ivy.log().debug("User {0} has now property {1} with value {2}.", 
									user.getName(), propertyName, propertyValue);
							return true;
						} else
						{
							Ivy.log().error("Set property name {0} with value {1} failed; user {2} not set.", 
									propertyName, propertyValue, user);
							return false;
						}
					}
				});

	}
	
	
	/**
	 * It gets a property to the user without permission restrictions
	 * 
	 * @param user is the one for which the preference has to be get
	 * @param propertyName
	 * 
	 * @return property value or null if no such property exists 
	 * 
	 * @throws EnvironmentNotAvailableException
	 * @throws Exception
	 */
	public static String getUserPropertyAsSystemUser(final IUser user,
			final String propertyName) throws EnvironmentNotAvailableException,
			Exception {
		String propertyValue = null;

		propertyValue = SecurityManagerFactory.getSecurityManager().executeAsSystem(
				new Callable<String>() {
					public String call() throws Exception {
						if (user != null) {
							Ivy.log().debug("User {0} found.", user.getName());  
							return user.getProperty(propertyName);
						} else
						{
							Ivy.log().error("Get property name {0} failed; user {1} not set.", propertyName, user);
							return null;
						}
					}
				});

		return propertyValue;
	}
	
}
