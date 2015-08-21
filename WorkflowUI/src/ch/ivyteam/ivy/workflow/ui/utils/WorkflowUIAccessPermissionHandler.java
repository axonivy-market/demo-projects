package ch.ivyteam.ivy.workflow.ui.utils;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.EnumSet;
import java.util.GregorianCalendar;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.regex.Pattern;

import ch.ivyteam.ivy.addons.restricted.workflow.CaseManagedTeamHelper;
import ch.ivyteam.ivy.environment.EnvironmentNotAvailableException;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.persistence.IGroup;
import ch.ivyteam.ivy.persistence.IQueryResult;
import ch.ivyteam.ivy.persistence.OrderDirection;
import ch.ivyteam.ivy.persistence.PersistencyException;
import ch.ivyteam.ivy.security.IRole;
import ch.ivyteam.ivy.security.ISecurityMember;
import ch.ivyteam.ivy.security.IUser;
import ch.ivyteam.ivy.security.SecurityManagerFactory;
import ch.ivyteam.ivy.workflow.CaseProperty;
import ch.ivyteam.ivy.workflow.CaseState;
import ch.ivyteam.ivy.workflow.ICase;
import ch.ivyteam.ivy.workflow.IPageArchive;
import ch.ivyteam.ivy.workflow.IPropertyFilter;
import ch.ivyteam.ivy.workflow.ITask;
import ch.ivyteam.ivy.workflow.IWorkflowEvent;
import ch.ivyteam.ivy.workflow.IWorkflowSession;
import ch.ivyteam.ivy.workflow.PropertyOrder;
import ch.ivyteam.ivy.workflow.TaskProperty;
import ch.ivyteam.ivy.workflow.TaskState;
import ch.ivyteam.logicalexpression.RelationalOperator;

/**
 * 
 * @author tirib, TI-Informatique 
 * This tool class help to simplify the access to the Ivy API according to the fact if the
 *         currently logged in user is workflow user (IWorkflowSession) or workflow administrator
 *         (IWorfkflowContext)
 * @since 2007/08/01
 * 
 */
public class WorkflowUIAccessPermissionHandler
{

  private static EnumSet<TaskState> INCLUDE_RUNNING_TASK_STATE;
  private static IPropertyFilter<TaskProperty> WF_USER_RUNNING_TASK_STATES_PROPERTY_FILTER;
  private static IPropertyFilter<TaskProperty> WF_TEAM_RUNNING_TASK_STATES_PROPERTY_FILTER;
  private static IPropertyFilter<TaskProperty> WF_ADMINISTRATOR_RUNNING_TASK_STATES_PROPERTY_FILTER;

  // private static java.util.EnumSet INCLUDE_FINISHED_TASK_STATE; not used
  private static IPropertyFilter<TaskProperty> WF_USER_FINISHED_TASK_STATES_PROPERTY_FILTER;
  private static IPropertyFilter<TaskProperty> WF_TEAM_FINISHED_TASK_STATES_PROPERTY_FILTER;
  private static IPropertyFilter<TaskProperty> WF_ADMINISTRATOR_FINISHED_TASK_STATES_PROPERTY_FILTER;

  
  public static IPropertyFilter<TaskProperty> getTaskStatesPropertyFilterByRunningModeAndTaskDisplayMode(
          boolean runningTaskMode, int taskDisplayMode) throws Exception
  {
    return (runningTaskMode ? getRunningTaskStatesPropertyFilterByTaskDisplayMode(taskDisplayMode)
            : getFinishedTaskStatesPropertyFilterByTaskDisplayMode(taskDisplayMode));
  }

  
  /**
   * It returns the filter according to the selected task display mode
   * 
   * @param taskDisplayMode where 
   * 		<ul>
   * 			<li>0 stands for your tasks</li>
   *			<li>1 stands for team tasks</li>
   *			<li>2 stands for all application tasks (ivy.wf) </li> 	
   * 		</ul>
   * @return
   * @throws Exception
   */
  private static IPropertyFilter<TaskProperty> getRunningTaskStatesPropertyFilterByTaskDisplayMode(int taskDisplayMode)
          throws Exception
  {
    switch (taskDisplayMode)
    {
      case 0:
        // your tasks
        return getWfUserRunningTaskStatesPropertyFilter();

      case 1:
        // team tasks
        return getWfTeamRunningTaskStatesPropertyFilter();

      case 2:
        // all environment's tasks
        return getWfAdministratorRunningTaskStatesPropertyFilter();

      default:
        return null;
    }
  }

  /**
   * It return the filter in order to find the user's running tasks
   * 
   * @return
   * @throws Exception
   */
  private static IPropertyFilter<TaskProperty> getWfUserRunningTaskStatesPropertyFilter() throws Exception
  {
    if (WF_USER_RUNNING_TASK_STATES_PROPERTY_FILTER == null)
    {

      WF_USER_RUNNING_TASK_STATES_PROPERTY_FILTER = Ivy.wf().createTaskPropertyFilter(TaskProperty.STATE,
              RelationalOperator.EQUAL, TaskState.SUSPENDED.intValue()).or(TaskProperty.STATE,
              RelationalOperator.EQUAL, TaskState.RESUMED.intValue()).or(TaskProperty.STATE,
              RelationalOperator.EQUAL, TaskState.PARKED.intValue());

      if (Ivy.session().getSessionUser() != null)
        WF_USER_RUNNING_TASK_STATES_PROPERTY_FILTER.and(Ivy.wf().createTaskPropertyFilter(
                TaskProperty.ACTIVATOR_NAME, RelationalOperator.EQUAL,
                Ivy.session().getSessionUser().getMemberName()));

    }
    return WF_USER_RUNNING_TASK_STATES_PROPERTY_FILTER;
  }

  
  /**
   * It returns the filter in order to find team running tasks
   * 
   * @return
   */
  private static IPropertyFilter<TaskProperty> getWfTeamRunningTaskStatesPropertyFilter()
  {
    if (WF_TEAM_RUNNING_TASK_STATES_PROPERTY_FILTER == null)
    {

      WF_TEAM_RUNNING_TASK_STATES_PROPERTY_FILTER = Ivy.wf().createTaskPropertyFilter(TaskProperty.STATE,
              RelationalOperator.EQUAL, TaskState.SUSPENDED.intValue()).or(TaskProperty.STATE,
              RelationalOperator.EQUAL, TaskState.RESUMED.intValue()).or(TaskProperty.STATE,
              RelationalOperator.EQUAL, TaskState.PARKED.intValue());
    }
    return WF_TEAM_RUNNING_TASK_STATES_PROPERTY_FILTER;
  }


  private static IPropertyFilter<TaskProperty> getWfAdministratorRunningTaskStatesPropertyFilter()
  {
    if (WF_ADMINISTRATOR_RUNNING_TASK_STATES_PROPERTY_FILTER == null)
    {
      WF_ADMINISTRATOR_RUNNING_TASK_STATES_PROPERTY_FILTER = Ivy.wf().createTaskPropertyFilter(
              TaskProperty.STATE, RelationalOperator.UNEQUAL, TaskState.DONE.intValue()).and(
              TaskProperty.STATE, RelationalOperator.UNEQUAL, TaskState.DESTROYED.intValue());
    }
    return WF_ADMINISTRATOR_RUNNING_TASK_STATES_PROPERTY_FILTER;
  }

  
  /**
   * 
   * @param taskDisplayMode where 
   * 		<ul>
   * 			<li>0 stands for your tasks</li>
   *			<li>1 stands for team tasks</li>
   *			<li>2 stands for all application tasks (ivy.wf) </li> 	
   * 		</ul>
   * @return
   * @throws Exception
   */
  private static IPropertyFilter<TaskProperty> getFinishedTaskStatesPropertyFilterByTaskDisplayMode(int taskDisplayMode)
          throws Exception
  {
    switch (taskDisplayMode)
    {
      case 0:
        // your tasks
        return getWfUserFinishedTaskStatesPropertyFilter();

      case 1:
        // team tasks
        return getWfTeamFinishedTaskStatesPropertyFilter();

      case 2:
        // all environment's tasks
        return getWfAdministratorFinishedTaskStatesPropertyFilter();

      default:
        return null;
    }
  }

  /**
   * 
   * @return
   * @throws Exception
   * 
   * READY_FOR_JOIN JOINING JOIN_FAILED DONE DESTROYED
   */
  private static IPropertyFilter<TaskProperty> getWfUserFinishedTaskStatesPropertyFilter() throws Exception
  {
    if (WF_USER_FINISHED_TASK_STATES_PROPERTY_FILTER == null)
    {
      WF_USER_FINISHED_TASK_STATES_PROPERTY_FILTER = Ivy.wf().createTaskPropertyFilter(TaskProperty.STATE,
              RelationalOperator.EQUAL, TaskState.READY_FOR_JOIN.intValue()).or(TaskProperty.STATE,
              RelationalOperator.EQUAL, TaskState.JOINING.intValue()).or(TaskProperty.STATE,
              RelationalOperator.EQUAL, TaskState.JOIN_FAILED.intValue()).or(TaskProperty.STATE,
              RelationalOperator.EQUAL, TaskState.DONE.intValue()).or(TaskProperty.STATE,
              RelationalOperator.EQUAL, TaskState.DESTROYED.intValue());

    }
    return WF_USER_FINISHED_TASK_STATES_PROPERTY_FILTER;
  }

  private static IPropertyFilter<TaskProperty> getWfTeamFinishedTaskStatesPropertyFilter()
  {
    if (WF_TEAM_FINISHED_TASK_STATES_PROPERTY_FILTER == null)
    {
      WF_TEAM_FINISHED_TASK_STATES_PROPERTY_FILTER = Ivy.wf().createTaskPropertyFilter(TaskProperty.STATE,
              RelationalOperator.EQUAL, TaskState.READY_FOR_JOIN.intValue()).or(TaskProperty.STATE,
              RelationalOperator.EQUAL, TaskState.JOINING.intValue()).or(TaskProperty.STATE,
              RelationalOperator.EQUAL, TaskState.JOIN_FAILED.intValue()).or(TaskProperty.STATE,
              RelationalOperator.EQUAL, TaskState.DONE.intValue()).or(TaskProperty.STATE,
              RelationalOperator.EQUAL, TaskState.DESTROYED.intValue());
    }
    return WF_TEAM_FINISHED_TASK_STATES_PROPERTY_FILTER;
  }

  private static IPropertyFilter<TaskProperty> getWfAdministratorFinishedTaskStatesPropertyFilter()
  {
    if (WF_ADMINISTRATOR_FINISHED_TASK_STATES_PROPERTY_FILTER == null)
    {
      WF_ADMINISTRATOR_FINISHED_TASK_STATES_PROPERTY_FILTER = Ivy.wf().createTaskPropertyFilter(
              TaskProperty.STATE, RelationalOperator.EQUAL, TaskState.READY_FOR_JOIN.intValue()).or(
              TaskProperty.STATE, RelationalOperator.EQUAL, TaskState.JOINING.intValue()).or(
              TaskProperty.STATE, RelationalOperator.EQUAL, TaskState.JOIN_FAILED.intValue()).or(
              TaskProperty.STATE, RelationalOperator.EQUAL, TaskState.DONE.intValue()).or(
            		  TaskProperty.STATE, RelationalOperator.EQUAL, TaskState.DESTROYED.intValue());
    }
    return WF_ADMINISTRATOR_FINISHED_TASK_STATES_PROPERTY_FILTER;
  }

  /**
   * 
   * It return the task categories accoring to the input parameters
   * 
   * 
   * @param categoryFilter
   * @param categoryProperty
   * @param categoryPropertyOrder
   * @param runningTaskMode
   * @param taskDisplayMode where 
   * 		<ul>
   * 			<li>0 stands for your tasks</li>
   *			<li>1 stands for team tasks</li>
   *			<li>2 stands for all application tasks (ivy.wf) </li> 	
   * 		</ul>
   * @return
   * @throws Exception
   */
  public static List<IGroup<ITask>> findTaskCategories(final IPropertyFilter<TaskProperty> categoryFilter, final TaskProperty categoryProperty,
          final OrderDirection categoryPropertyOrder, boolean runningTaskMode, int taskDisplayMode)
          throws Exception
  {

    switch (taskDisplayMode)
    {
      case 0:
        return (runningTaskMode ? Ivy.session().findWorkTaskCategories(categoryFilter, categoryProperty,
                categoryPropertyOrder, getIncludeRunningTaskState()) : Ivy.session()
                .findWorkedOnTaskCategories(categoryFilter, categoryProperty, categoryPropertyOrder));

      case 1:
        // team tasks
        return (runningTaskMode ? Ivy.session().findWorkTaskCategories(categoryFilter, categoryProperty,
                categoryPropertyOrder, getIncludeRunningTaskState()) : Ivy.session()
                .findWorkedOnTaskCategories(categoryFilter, categoryProperty, categoryPropertyOrder));

      case 2:
        // all environment's tasks
    	  List<IGroup<ITask>>  taskCategories = SecurityManagerFactory.getSecurityManager().executeAsSystem(new Callable<List<IGroup<ITask>>>()
		        {
	        public List<IGroup<ITask>> call() throws Exception
	        {
	      	  return Ivy.wf().findTaskCategories(categoryFilter, categoryProperty, categoryPropertyOrder);
	        }
	      });
		  return taskCategories;

      default:
        return null;
    }
  }

  
  /**
   * It finds tasks according to the input parameters
   * 
   * @param filter
   * @param order
   * @param startIndex
   * @param count
   * @param returnAllCount
   * @param runningTaskMode if true then only "running tasks" will be returned; otherwise "finished tasks"
   * @param taskDisplayMode where 
   * 		<ul>
   * 			<li>0 stands for your tasks</li>
   *			<li>1 stands for team tasks</li>
   *			<li>2 stands for all application tasks (ivy.wf)</li>
   *			<li>3 any query tasks: it means find all tasks that fit to the received criteria (property filter)</li> 	
   * 		</ul>
   * @return
   * @throws Exception
   */
  public static IQueryResult<ITask> findTasks(final IPropertyFilter<TaskProperty> filter, final List<PropertyOrder<TaskProperty>> order,
          final int startIndex, final int count, final boolean returnAllCount, boolean runningTaskMode, int taskDisplayMode)
          throws Exception
  {

    switch (taskDisplayMode)
    {
      case 0:
        // your tasks
        return (runningTaskMode ? Ivy.session().findWorkTasks(filter, order, startIndex, count,
                returnAllCount, getIncludeRunningTaskState()) : Ivy.session().findWorkedOnTasks(filter,
                order, startIndex, count, returnAllCount));

      case 1:
        // team tasks
        return (runningTaskMode ? Ivy.session().findWorkTasks(filter, order, startIndex, count,
                returnAllCount, getIncludeRunningTaskState()) : Ivy.session().findWorkedOnTasksByRole(
                (Ivy.session().getSessionUser() != null ? Ivy.session().getSessionUser().getRoles() : null),
                filter, order, startIndex, count, returnAllCount));

      case 2:
    	  // all applications's tasks (same "as any query tasks" below):
      case 3:
    	  // any query tasks: it means find all tasks that fit to the received criteria (property filter)
    	  IQueryResult<ITask> queryResult = SecurityManagerFactory.getSecurityManager().executeAsSystem(new Callable<IQueryResult<ITask>>()
    		        {
              public IQueryResult<ITask> call() throws Exception
              {
            	  return Ivy.wf().findTasks(filter, order, startIndex, count, returnAllCount);
              }
            });
    	  return queryResult;

      default:
        return null;

    }
  }

  
  private static EnumSet<TaskState> getIncludeRunningTaskState()
  {
    if (INCLUDE_RUNNING_TASK_STATE == null)
    {
      INCLUDE_RUNNING_TASK_STATE = java.util.EnumSet.of(TaskState.SUSPENDED, TaskState.RESUMED, TaskState.PARKED);
    }
    return INCLUDE_RUNNING_TASK_STATE;
  }

  
  
  public static long getTaskIdentifierAsSystemUser(final ITask wfTask) throws EnvironmentNotAvailableException, Exception
  {
    long result = -1;
      result = SecurityManagerFactory.getSecurityManager().executeAsSystem(new Callable<Long>()
        {
          public Long call() throws Exception
          {
            return wfTask.getId();
          }
        });
    return result;
  }

  /**
   * It return the task expiry activator 
   * whithout permission restriction
   * 
   * @param wfTask
   * @param securityMember
 * @throws Exception 
 * @throws EnvironmentNotAvailableException 
   */
  public static void setTaskExpiryActivatorAsSystemUser(final ITask wfTask,
          final ISecurityMember securityMember) throws EnvironmentNotAvailableException, Exception
  {
      SecurityManagerFactory.getSecurityManager().executeAsSystem(new Callable<Boolean>()
        {
          public Boolean call() throws Exception
          {
            wfTask.setExpiryActivator(securityMember);
            return true;
          }
        });
  }

  public static void setTaskOriginalActivatorAsSystemUser(final ITask wfTask,
          final ISecurityMember securityMember) throws EnvironmentNotAvailableException, Exception
  {

      SecurityManagerFactory.getSecurityManager().executeAsSystem(new Callable<Boolean>()
        {
          public Boolean call() throws Exception
          {
            wfTask.setOriginalActivator(securityMember);
            return true;
          }
        });
  }

  
  
  /**
   * 
   * @param categoryFilter
   * @param categoryProperty
   * @param categoryPropertyOrder
   * @param runningCaseMode
   * @param caseDisplayMode where 
   * 		<ul>
   * 			<li>0 stands for your cases</li>
   *			<li>1 stands for team cases</li>
   *			<li>2 stands for all application cases (ivy.wf) </li> 	
   * 		</ul>
   * @return
   * @throws Exception
   */
  public static List<IGroup<ICase>> findCaseCategories(final IPropertyFilter<CaseProperty> categoryFilter,
          final CaseProperty categoryProperty, final OrderDirection categoryPropertyOrder, boolean runningCaseMode,
          int caseDisplayMode) throws Exception
  {
    switch (caseDisplayMode)
    {
      case 0:
    	// 
        // personal cases
        return Ivy.session().findInvolvedCasesCategories(categoryFilter, categoryProperty,
                categoryPropertyOrder);

      case 1:
    	//
        // team cases
    	List<IRole> userRoles = Ivy.session().getSessionUser().getRoles();
    	ICase involvedCaseAsFirstObjectInGroup = null;
    	
        List<IGroup<ICase>> involvedCasesByRoleCategories = Ivy.session().findInvolvedCasesByRoleCategories(
                userRoles, categoryFilter, categoryProperty,
                categoryPropertyOrder);
        
        Ivy.log().debug("Found {0} different {1} case categories.", involvedCasesByRoleCategories.size(), categoryProperty);
        
        for (IGroup<ICase> involvedCasesByRoleCategory: involvedCasesByRoleCategories)
        {
        	involvedCaseAsFirstObjectInGroup = involvedCasesByRoleCategory.getFirstObjectInGroup();
        	
        	Ivy.log().debug("Found involved case by case category {0}; category: {1}, process: {2}, type: {3}, subtype: {4}.",
        			categoryProperty,
        			involvedCaseAsFirstObjectInGroup.getProcessCategoryName(),
        			involvedCaseAsFirstObjectInGroup.getProcessName(),
        			involvedCaseAsFirstObjectInGroup.getTypeName(),
        			involvedCaseAsFirstObjectInGroup.getSubTypeName());
        }
        
        // get the managed teams of the user
        List<String> userManagedTeams = CaseManagedTeamHelper.getSessionUserManagedTeamsAsList();
        Ivy.log().debug("The user {0} managed teams are {1}.", Ivy.session().getSessionUserName(), userManagedTeams.toString());
        
        
        if (userManagedTeams.isEmpty())
        {
        	return involvedCasesByRoleCategories;
        }
        
        
    	// get all case categories that matches with user's managed teams
        List<IGroup<ICase>> managedTeamsCaseCategories = findUserManagedTeamsCaseCategoriesAsSystemUser(
                categoryFilter, userManagedTeams, categoryProperty, categoryPropertyOrder, runningCaseMode);
        
        if (managedTeamsCaseCategories.isEmpty())
        {
        	return involvedCasesByRoleCategories;
        }
        else
        {          
          // define the hash
          Set<IGroup<ICase>> involvedCasesByRoleCategoriesLinkedHashSet = new LinkedHashSet<IGroup<ICase>>(); 
          // keeps the order          
          involvedCasesByRoleCategoriesLinkedHashSet.addAll(involvedCasesByRoleCategories);
          
          ICase managedTeamsCaseFirstObjectInGroup = null;

          // add only no existing group
          for (IGroup<ICase> managedTeamsCaseGroup : managedTeamsCaseCategories)
          {
        	  managedTeamsCaseFirstObjectInGroup = managedTeamsCaseGroup.getFirstObjectInGroup();
        		  
            Ivy.log().debug("Analyzing the managed teams category IGroup<ICase>; category: {0}, process: {1}, type: {2}, subtype: {3}.",
            		managedTeamsCaseFirstObjectInGroup.getProcessCategoryName(),
            		managedTeamsCaseFirstObjectInGroup.getProcessName(),
            		managedTeamsCaseFirstObjectInGroup.getTypeName(),
            		managedTeamsCaseFirstObjectInGroup.getSubTypeName());

            // add only no existing IGroup<ICase> here
            // found the team manager group in the list of involved cases by role categories
            // if not found, add it to the list of involved cases by role categories
            if (!containsCaseGroupBasedOnCaseCategory(involvedCasesByRoleCategories, managedTeamsCaseGroup, categoryProperty))
            {
            	Ivy.log().debug("Adding to the hash set the {0} - {1}.", 
            			managedTeamsCaseFirstObjectInGroup.getId(), 
            			managedTeamsCaseFirstObjectInGroup.getName());
            	involvedCasesByRoleCategoriesLinkedHashSet.add(managedTeamsCaseGroup);
            }

          }
          // sort the list result
          Collections.sort(new ArrayList<IGroup<ICase>>(involvedCasesByRoleCategoriesLinkedHashSet),
                  new Comparator<IGroup<ICase>>()
                    {
                      public int compare(IGroup<ICase> caseGroupA, IGroup<ICase> caseGroupB)
                      {
                        ICase caseA = caseGroupA.getFirstObjectInGroup();
                        ICase caseB = caseGroupB.getFirstObjectInGroup();

                        int result = -1;

                        try
                        {
                          // PROCESS_CATEGORY_CODE
                          if (categoryProperty.compareTo(CaseProperty.PROCESS_CATEGORY_CODE) == 0)
                            return (caseA.getProcessCategoryCode() == null? "": caseA.getProcessCategoryCode()).compareTo(
                            		caseB.getProcessCategoryCode() == null? "": caseB.getProcessCategoryCode());

                          // PROCESS_CODE
                          if (categoryProperty.compareTo(CaseProperty.PROCESS_CODE) == 0)
                            return (caseA.getProcessCode() == null? "": caseA.getProcessCode()).compareTo(
                            		caseB.getProcessCode() == null? "": caseB.getProcessCode());

                          // TYPE_CODE
                          if (categoryProperty.compareTo(CaseProperty.TYPE_CODE) == 0)
                            return (caseA.getTypeCode() == null? "": caseA.getTypeCode()).compareTo(
                            		caseB.getTypeCode() == null? "": caseB.getTypeCode());

                          // SUB_TYPE_CODE
                          if (categoryProperty.compareTo(CaseProperty.SUB_TYPE_CODE) == 0)
                            return (caseA.getSubTypeCode() == null? "": caseA.getSubTypeCode()).compareTo(
                            		caseB.getSubTypeCode() == null? "": caseB.getSubTypeCode());

                          // BUSINESS_MAIN_CONTACT_ID
                          if (categoryProperty.compareTo(CaseProperty.BUSINESS_MAIN_CONTACT_ID) == 0)
                            return (caseA.getBusinessMainContactId() == null? new Integer(-1): caseA.getBusinessMainContactId()).compareTo(
                                    caseB.getBusinessMainContactId() == null? new Integer(-1): caseB.getBusinessMainContactId());

                          // BUSINESS_START_TIMESTAMP
                          if (categoryProperty.compareTo(CaseProperty.BUSINESS_START_TIMESTAMP) == 0)
                            return (caseA.getBusinessStartTimestamp() == null?  new GregorianCalendar(1900, 1, 1).getTime(): caseA.getBusinessStartTimestamp()).compareTo(
                                    caseB.getBusinessStartTimestamp() == null? new GregorianCalendar(1900, 1, 1).getTime(): caseB.getBusinessMilestoneTimestamp());

                          // BUSINESS_CREATOR_USER
                          if (categoryProperty.compareTo(CaseProperty.BUSINESS_CREATOR_USER) == 0)
                            return (caseA.getBusinessCreatorUser() == null? "": caseA.getBusinessCreatorUser()).compareTo(
                            		caseB.getBusinessCreatorUser() == null? "": caseB.getBusinessCreatorUser());
                          

                        }
                        catch (PersistencyException e)
                        {
                          Ivy.log().error("Error during the compare of case categories of case{0}, case{1}.",caseA, caseB);
                        }

                        return result;

                      }

                    });
          Ivy.log().debug("Involved case categories including managed teams case categories size is {0}.", involvedCasesByRoleCategoriesLinkedHashSet.size());

          // remove the list of case categories including the user managed cases
          List<IGroup<ICase>> involvedCasesByRoleAndManagedCasesCategories = new ArrayList<IGroup<ICase>>();          
          for (IGroup<ICase> caseCategory: involvedCasesByRoleCategoriesLinkedHashSet)
          {
        	  involvedCasesByRoleAndManagedCasesCategories.add(caseCategory); 
          }
          
          return involvedCasesByRoleAndManagedCasesCategories;
        }

      case 2:
    	//
        // all cases
    	  List<IGroup<ICase>>  caseCategories = SecurityManagerFactory.getSecurityManager().executeAsSystem(new Callable<List<IGroup<ICase>>>()
  		        {
  	        public List<IGroup<ICase>> call() throws Exception
  	        {
  	      	  return Ivy.wf().findCaseCategories(categoryFilter, categoryProperty, categoryPropertyOrder);
  	        }
  	      });
  		  return caseCategories;

      default:
        return null;
    }
  }


  
  /**
   * It check if the list of case's group contain a given group
   * 
   * @param caseGroups
   * @param caseGroupToFind
   * @param categoryProperty
   * @return
 * @throws Exception 
 * @throws EnvironmentNotAvailableException 
   */
  private static boolean containsCaseGroupBasedOnCaseCategory(final List<IGroup<ICase>> caseGroups,
          final IGroup<ICase> caseGroupToFind, final CaseProperty categoryProperty)
          throws EnvironmentNotAvailableException, Exception
  {

    boolean result = false;

      result = SecurityManagerFactory.getSecurityManager().executeAsSystem(new Callable<Boolean>()
        {
          public Boolean call() throws Exception
          {
            ICase firstCaseInGroup = null;
            ICase caseToFind = caseGroupToFind.getFirstObjectInGroup();
            Boolean found = false;
            
            Ivy.log().debug("Case to find {0}-{1} based on case property {2}.", 
            		caseToFind.getId(), caseToFind.getName(), categoryProperty);

            for (IGroup<ICase> currentCaseGroup : caseGroups)
            {            	
              firstCaseInGroup = currentCaseGroup.getFirstObjectInGroup();

              Ivy.log().debug("First case in group {0} {1} - {2}.", 
            		  firstCaseInGroup, firstCaseInGroup.getId(), firstCaseInGroup.getName());              

              if (categoryProperty.compareTo(CaseProperty.PROCESS_CATEGORY_CODE) == 0)
              {
            	  found = (firstCaseInGroup.getProcessCategoryCode() == null? "": firstCaseInGroup.getProcessCategoryCode()).equals(
            			  caseToFind.getProcessCategoryCode() == null? "": caseToFind.getProcessCategoryCode());
            	  Ivy.log().debug("{0} are {1}.", categoryProperty, (found? "same": "different"));
            	  
              }else if (categoryProperty.compareTo(CaseProperty.PROCESS_CODE) == 0)
              {
        		  found = (firstCaseInGroup.getProcessCode() == null? "": firstCaseInGroup.getProcessCode()).equals(
        				  caseToFind.getProcessCode() == null? "": caseToFind.getProcessCode());
        		  Ivy.log().debug("{0} are {1}.", categoryProperty, (found? "same": "different"));
        		  
              }else if (categoryProperty.compareTo(CaseProperty.TYPE_CODE) == 0)
              {
            	  found =  (firstCaseInGroup.getTypeCode() == null? "": firstCaseInGroup.getTypeCode()).equals(
                		  caseToFind.getTypeCode() == null? "": caseToFind.getTypeCode());
            	  Ivy.log().debug("{0} are {1}.", categoryProperty, (found? "same": "different"));
            	  
              }else if (categoryProperty.compareTo(CaseProperty.SUB_TYPE_CODE) == 0)
              {
                  found = (firstCaseInGroup.getSubTypeCode() == null? "": firstCaseInGroup.getSubTypeCode()).equals(
                		  caseToFind.getSubTypeCode() == null? "": caseToFind.getSubTypeCode());
                  Ivy.log().debug("{0} are {1}.", categoryProperty, (found? "same": "different"));
                  
              }else if (categoryProperty.compareTo(CaseProperty.BUSINESS_MAIN_CONTACT_ID) == 0)
              {
                  found = (firstCaseInGroup.getBusinessMainContactId() == null? new Integer(-1): firstCaseInGroup.getBusinessMainContactId()).equals(
                          caseToFind.getBusinessMainContactId() == null? new Integer(-1): caseToFind.getBusinessMainContactId());
                  Ivy.log().debug("{0} are {1}.", categoryProperty, (found? "same": "different"));
                  
              }else if (categoryProperty.compareTo(CaseProperty.BUSINESS_START_TIMESTAMP) == 0)
              {
                  found =  (firstCaseInGroup.getBusinessStartTimestamp() == null? new GregorianCalendar(1900,1,1).getTime(): firstCaseInGroup.getBusinessStartTimestamp()).equals(
                          caseToFind.getBusinessStartTimestamp() == null? new GregorianCalendar(1900,1,1).getTime(): caseToFind.getBusinessStartTimestamp());
                  Ivy.log().debug("{0} are {1}.", categoryProperty, (found? "same": "different"));
                  
              }else if (categoryProperty.compareTo(CaseProperty.BUSINESS_CREATOR_USER) == 0)
              {
                  found = (firstCaseInGroup.getBusinessCreatorUser() == null? "": firstCaseInGroup.getBusinessCreatorUser()).equals(
                          caseToFind.getBusinessCreatorUser() == null? "": caseToFind.getBusinessCreatorUser());
                  Ivy.log().debug("{0} are {1}.", categoryProperty, (found? "same": "different"));
              }
              
              if (found)
              {
            	  break;
              }
            }

            return found;
          }
        });

    return result;
  }

  /**
   * It returns the case categories where the user is team manager
   * 
   * @param userManagedTeams
   * @param categoryProperty
   * @param categoryPropertyOrder
   * @param runningCaseMode
   * @return
 * @throws Exception 
 * @throws EnvironmentNotAvailableException 
   */
  public static List<IGroup<ICase>> findUserManagedTeamsCaseCategoriesAsSystemUser(
		  final IPropertyFilter<CaseProperty> categoryFilter,
          final List<String> userManagedTeams, final CaseProperty categoryProperty,
          final OrderDirection categoryPropertyOrder, final boolean runningCaseMode) throws EnvironmentNotAvailableException, Exception
  {
    List<IGroup<ICase>> teamManagerCaseCategories = new ArrayList<IGroup<ICase>>();

      teamManagerCaseCategories = SecurityManagerFactory.getSecurityManager().executeAsSystem(
              new Callable<List<IGroup<ICase>>>()
                {
                  public List<IGroup<ICase>> call() throws Exception
                  {
                    return Ivy.wf()
                            .findCaseCategories(
                                    categoryFilter.and(createUserManagedTeamsCasePropertyFilter(userManagedTeams, runningCaseMode)), 
                                    categoryProperty, categoryPropertyOrder);
                  }
                });

      return teamManagerCaseCategories;

  }

  
  


  
  /**
   * It creates the filter in order to find all cases that matches with
   * the user's managed team(s)
   * 
   * @param userManagedTeams
   * @param runningCaseMode
   * @return
   * @throws EnvironmentNotAvailableException
   * @throws PersistencyException
   */
  private static IPropertyFilter<CaseProperty> createUserManagedTeamsCasePropertyFilter(
          List<String> userManagedTeams, boolean runningCaseMode)
          throws EnvironmentNotAvailableException, PersistencyException
  {
	  
	// set case states property filter for case list
	IPropertyFilter<CaseProperty> caseStateFilter = runningCaseMode ? Ivy.wf().createCasePropertyFilter(
	        CaseProperty.STATE, RelationalOperator.EQUAL, CaseState.RUNNING.intValue())
	        : Ivy.wf().createCasePropertyFilter(CaseProperty.STATE, RelationalOperator.EQUAL,
	                CaseState.DONE.intValue());
	            
    // define the filter based on user property value managed teams
    // and the cases custom varchar field 5		  
    IPropertyFilter<CaseProperty> userTeamManagedCasesFilter = null;
    String searchCriteria = "";
    for (String managedTeam : userManagedTeams)
    {  
    	searchCriteria = "%" + managedTeam + "%";
    	if (userTeamManagedCasesFilter == null)
    	{
    		Ivy.log().debug("Create case property filter {0} {1} {2}.", CaseProperty.CUSTOM_VARCHAR_FIELD_5, RelationalOperator.LIKE, searchCriteria);
//    		userTeamManagedCasesFilter = Ivy.wf().createCasePropertyFilter(CaseProperty.CUSTOM_VARCHAR_FIELD_5, RelationalOperator.EQUAL, managedTeam);
    		userTeamManagedCasesFilter = Ivy.wf().createCasePropertyFilter(CaseProperty.CUSTOM_VARCHAR_FIELD_5, RelationalOperator.LIKE, searchCriteria);
    	}
    	else
    	{
    		Ivy.log().debug("Add OR case property filter {0} {1} {2}.", CaseProperty.CUSTOM_VARCHAR_FIELD_5, RelationalOperator.LIKE, searchCriteria);
//    		userTeamManagedCasesFilter = userTeamManagedCasesFilter.or(CaseProperty.CUSTOM_VARCHAR_FIELD_5, RelationalOperator.EQUAL, managedTeam);
    		userTeamManagedCasesFilter = userTeamManagedCasesFilter.or(CaseProperty.CUSTOM_VARCHAR_FIELD_5, RelationalOperator.LIKE, searchCriteria);
    	}    	
    }

    
    return caseStateFilter.and(userTeamManagedCasesFilter);

  }
  
      

  /**
   * 
   * It returns cases according to input parameters  
   * 
   * @param contextFilter
   * @param order
   * @param startIndex
   * @param count
   * @param returnAllCount
   * @param caseDisplayMode where 
   * 		<ul>
   * 			<li>0 stands for your cases</li>
   *			<li>1 stands for team cases</li>
   *			<li>2 stands for all application cases (ivy.wf) </li>
   *			<li>3 any query cases: it means find all cases that fit to the received criteria (property filter)</li> 	
   * 		</ul>
   * @param runningCaseMode
   * @return
 * @throws Exception 
   */
  public static List<ICase> findCases(final IPropertyFilter<CaseProperty> contextFilter,
          final List<PropertyOrder<CaseProperty>> order, final int startIndex, final int count, final Boolean returnAllCount,
          final int caseDisplayMode, final boolean runningCaseMode) throws Exception
  {
    List<ICase> foundCases = null;
    IQueryResult<ICase> queryResult = null;

    switch (caseDisplayMode)
    {
      case 0:    	  
    	// your cases
        foundCases = Ivy.session().findInvolvedCases(contextFilter, order, startIndex, count, returnAllCount).getResultList();
        return foundCases;

      case 1:    	  
        // team cases (involved cases by role including the user's managed teams)
        // get involved cases by role     	  
    	queryResult = Ivy.session().findInvolvedCasesByRole(Ivy.session().getSessionUser().getRoles(), contextFilter, order, startIndex, count, returnAllCount);    
        
        List<ICase> involvedCasesByRoleList = queryResult.getResultList();
        Ivy.log().debug("Found {1} involved case(s) by role.", involvedCasesByRoleList.size());

        // get session user team manager roles
        List<String> sessionUserTeamManagerRoles = CaseManagedTeamHelper.getSessionUserManagedTeamsAsList();
        if (!sessionUserTeamManagerRoles.isEmpty())
        {
          // get cases on which the session user is the team manager
          IQueryResult<ICase> sessionUserTeamManagerCases = findUserManagedTeamsCasesAsSystemUser(
                  contextFilter, sessionUserTeamManagerRoles, order, startIndex, count, returnAllCount,
                  runningCaseMode);
          

          // merge the list of involved cases with the list of cases on which the session user is team
          List<ICase> sessionUserTeamManagerCasesList = sessionUserTeamManagerCases.getResultList();
          

          Set<ICase> mergedCasesLinkedHashSet = new LinkedHashSet<ICase>(); // keeps the order
          mergedCasesLinkedHashSet.addAll(involvedCasesByRoleList);

          // loop on the session user team manager cases and
          // if the case does not exists already in the involved cases by role add it to the list
          for (ICase sessionUserTeamManagerCase : sessionUserTeamManagerCasesList)
          {
        	  Ivy.log().debug("Is the involved cases by role contains the team managed case {0}-{1}...", 
        			  sessionUserTeamManagerCase.getId(), sessionUserTeamManagerCase.getName());
        	  
            if (!containsCase(involvedCasesByRoleList, sessionUserTeamManagerCase))
            {
              mergedCasesLinkedHashSet.add(sessionUserTeamManagerCase);
              Ivy.log().debug("Adding to the Team cases the case #{0} {1}",
                      sessionUserTeamManagerCase.getId(), sessionUserTeamManagerCase.getName());
            }
          }

          foundCases = new ArrayList<ICase>(mergedCasesLinkedHashSet);
          // find cases on which the session user is team manager
          return foundCases;
        }
        else
        {
		    // return only involved cases by role
		    return involvedCasesByRoleList;
        }

      case 2:
    	// all cases (same as "any query tasks" below)
      case 3:    	  
    	// any query tasks: it means find all tasks that fit to the received criteria (property filter)
	   queryResult = SecurityManagerFactory.getSecurityManager().executeAsSystem(new Callable<IQueryResult<ICase>>(){
          public IQueryResult<ICase> call() throws Exception
          {
      	    return Ivy.wf().findCases(contextFilter, order, startIndex, count, returnAllCount);
          }
	   });
	  return queryResult.getResultList();      	

      default:
        return foundCases;
    }
  }

  /**
   * It return true if the list contains the given case to find
   * 
   * @param cases
   * @param caseToFind
   * @return
   */
  private static boolean containsCase(List<ICase> cases, ICase caseToFind)
  {
    for (ICase currentCase : cases)
    {
      if (currentCase.getId() == caseToFind.getId())
        return true;
    }
    return false;

  }
  

  /**
   * It return the case list where the user can act as team manager
   * 
   * @param contextFilter
   * @param userManagedTeams
   * @param order
   * @param startIndex
   * @param count
   * @param returnAllCount
   * @param runningCaseMode
   * @return
 * @throws Exception 
 * @throws EnvironmentNotAvailableException 
   */
  public static IQueryResult<ICase> findUserManagedTeamsCasesAsSystemUser(
          final IPropertyFilter<CaseProperty> contextFilter, final List<String> userManagedTeams,
          final List<PropertyOrder<CaseProperty>> order, final int startIndex, final int count,
          final Boolean returnAllCount, final boolean runningCaseMode) throws EnvironmentNotAvailableException, Exception
  {
    IQueryResult<ICase> sessionUserManagedTeamsCases = null;

      sessionUserManagedTeamsCases = SecurityManagerFactory.getSecurityManager().executeAsSystem(
              new Callable<IQueryResult<ICase>>()
                {
                  public IQueryResult<ICase> call() throws Exception
                  {
                    return Ivy.wf().findCases(
                            contextFilter.and(createUserManagedTeamsCasePropertyFilter(userManagedTeams, runningCaseMode)), 
                            order, startIndex, count, returnAllCount);
                  }
                });

      return sessionUserManagedTeamsCases;
  }
  

  
  public static String getCaseProcessCategoryNameAsSystemUser(final ICase wfCase) throws EnvironmentNotAvailableException, Exception
  {
    String description = SecurityManagerFactory.getSecurityManager().executeAsSystem(new Callable<String>()
        {
          public String call() throws Exception
          {
            return wfCase.getProcessCategoryName();
          }
        });

    return description;
  }

  public static String getCaseProcessNameAsSystemUser(final ICase wfCase) throws EnvironmentNotAvailableException, Exception
  {
    String description = SecurityManagerFactory.getSecurityManager().executeAsSystem(new Callable<String>()
        {
          public String call() throws Exception
          {
            return wfCase.getProcessName();
          }
        });

    return description;
  }

  public static String getCaseTypeNameAsSystemUser(final ICase wfCase) throws EnvironmentNotAvailableException, Exception
  {
    String description = SecurityManagerFactory.getSecurityManager().executeAsSystem(new Callable<String>()
        {
          public String call() throws Exception
          {
            return wfCase.getTypeName();
          }
        });

    return description;
  }

  
  public static String getCaseSubTypeNameAsSystemUser(final ICase wfCase) throws EnvironmentNotAvailableException, Exception
  {
    String description = SecurityManagerFactory.getSecurityManager().executeAsSystem(new Callable<String>()
        {
          public String call() throws Exception
          {
            return wfCase.getSubTypeName();
          }
        });

    return description;
  }

  
  public static String getCaseDescriptionAsSystemUser(final ICase wfCase) throws EnvironmentNotAvailableException, Exception
  {
    String description = SecurityManagerFactory.getSecurityManager().executeAsSystem(new Callable<String>()
        {
          public String call() throws Exception
          {
            return wfCase.getDescription();
          }
        });

    return description;
  }

  /**
   * It returns the case property value trought the system user permissions
   * @param wfCase is the case on which the method is invoked
   * @return case identifier
 * @throws Exception 
 * @throws EnvironmentNotAvailableException 
   */
  public static Object getCasePropertyValueAsSystemUser(final ICase wfCase, final CaseProperty caseProperty) throws EnvironmentNotAvailableException, Exception
  {
    Object value = SecurityManagerFactory.getSecurityManager().executeAsSystem(new Callable<Object>()
        {
          public Object call() throws Exception
          {
            // BUSINESS_CORRESPONDENT_ID
            if (caseProperty.equals(CaseProperty.BUSINESS_CORRESPONDENT_ID))
              return wfCase.getBusinessCorrespondentId();

            // BUSINESS_CREATOR_USER
            if (caseProperty.equals(CaseProperty.BUSINESS_CREATOR_USER))
              return wfCase.getBusinessCreatorUser();

            // BUSINESS_MAIN_CONTACT_DOCUMENT_DATABASE_CODE
            if (caseProperty.equals(CaseProperty.BUSINESS_MAIN_CONTACT_DOCUMENT_DATABASE_CODE))
              return wfCase.getBusinessMainContactDocumentDatabaseCode();

            // BUSINESS_MAIN_CONTACT_FOLDER_ID
            if (caseProperty.equals(CaseProperty.BUSINESS_MAIN_CONTACT_FOLDER_ID))
              return wfCase.getBusinessMainContactFolderId();

            // BUSINESS_MAIN_CONTACT_ID
            if (caseProperty.equals(CaseProperty.BUSINESS_MAIN_CONTACT_ID))
              return wfCase.getBusinessMainContactId();

            // BUSINESS_MAIN_CONTACT_NAME
            if (caseProperty.equals(CaseProperty.BUSINESS_MAIN_CONTACT_NAME))
              return wfCase.getBusinessMainContactName();

            // BUSINESS_MAIN_CONTACT_TYPE
            if (caseProperty.equals(CaseProperty.BUSINESS_MAIN_CONTACT_TYPE))
              return wfCase.getBusinessMainContactType();

            // BUSINESS_MILESTONE_TIMESTAMP
            if (caseProperty.equals(CaseProperty.BUSINESS_MILESTONE_TIMESTAMP))
              return wfCase.getBusinessMilestoneTimestamp();

            // BUSINESS_OBJECT_CODE
            if (caseProperty.equals(CaseProperty.BUSINESS_OBJECT_CODE))
              return wfCase.getBusinessObjectCode();

            // BUSINESS_OBJECT_DOCUMENT_DATABASE_CODE
            if (caseProperty.equals(CaseProperty.BUSINESS_OBJECT_DOCUMENT_DATABASE_CODE))
              return wfCase.getBusinessObjectDocumentDatabaseCode();

            // BUSINESS_OBJECT_FOLDER_ID
            if (caseProperty.equals(CaseProperty.BUSINESS_OBJECT_FOLDER_ID))
              return wfCase.getBusinessObjectFolderId();

            // BUSINESS_OBJECT_NAME
            if (caseProperty.equals(CaseProperty.BUSINESS_OBJECT_NAME))
              return wfCase.getBusinessObjectName();

            // BUSINESS_PRIORITY
            if (caseProperty.equals(CaseProperty.BUSINESS_PRIORITY))
              return wfCase.getBusinessPriority();

            // BUSINESS_START_TIMESTAMP
            if (caseProperty.equals(CaseProperty.BUSINESS_START_TIMESTAMP))
              return wfCase.getBusinessStartTimestamp();

            // CUSTOM_DECIMAL_FIELD_1
            if (caseProperty.equals(CaseProperty.CUSTOM_DECIMAL_FIELD_1))
              return wfCase.getCustomDecimalField1();

            // CUSTOM_DECIMAL_FIELD_2
            if (caseProperty.equals(CaseProperty.CUSTOM_DECIMAL_FIELD_2))
              return wfCase.getCustomDecimalField2();

            // CUSTOM_DECIMAL_FIELD_3
            if (caseProperty.equals(CaseProperty.CUSTOM_DECIMAL_FIELD_3))
              return wfCase.getCustomDecimalField3();

            // CUSTOM_DECIMAL_FIELD_4
            if (caseProperty.equals(CaseProperty.CUSTOM_DECIMAL_FIELD_4))
              return wfCase.getCustomDecimalField4();

            // CUSTOM_DECIMAL_FIELD_5
            if (caseProperty.equals(CaseProperty.CUSTOM_DECIMAL_FIELD_5))
              return wfCase.getCustomDecimalField5();

            // CUSTOM_TIMESTAMP_FIELD_1
            if (caseProperty.equals(CaseProperty.CUSTOM_TIMESTAMP_FIELD_1))
              return wfCase.getCustomTimestampField1();

            // CUSTOM_TIMESTAMP_FIELD_2
            if (caseProperty.equals(CaseProperty.CUSTOM_TIMESTAMP_FIELD_2))
              return wfCase.getCustomTimestampField2();

            // CUSTOM_TIMESTAMP_FIELD_3
            if (caseProperty.equals(CaseProperty.CUSTOM_TIMESTAMP_FIELD_3))
              return wfCase.getCustomTimestampField3();

            // CUSTOM_TIMESTAMP_FIELD_4
            if (caseProperty.equals(CaseProperty.CUSTOM_TIMESTAMP_FIELD_4))
              return wfCase.getCustomTimestampField4();

            // CUSTOM_TIMESTAMP_FIELD_5
            if (caseProperty.equals(CaseProperty.CUSTOM_TIMESTAMP_FIELD_5))
              return wfCase.getCustomTimestampField5();

            // CUSTOM_VARCHAR_FIELD_1
            if (caseProperty.equals(CaseProperty.CUSTOM_VARCHAR_FIELD_1))
              return wfCase.getCustomVarCharField1();

            // CUSTOM_VARCHAR_FIELD_2
            if (caseProperty.equals(CaseProperty.CUSTOM_VARCHAR_FIELD_2))
              return wfCase.getCustomVarCharField2();

            // CUSTOM_VARCHAR_FIELD_3
            if (caseProperty.equals(CaseProperty.CUSTOM_VARCHAR_FIELD_3))
              return wfCase.getCustomVarCharField3();

            // CUSTOM_VARCHAR_FIELD_4
            if (caseProperty.equals(CaseProperty.CUSTOM_VARCHAR_FIELD_4))
              return wfCase.getCustomVarCharField4();

            // CUSTOM_VARCHAR_FIELD_5
            if (caseProperty.equals(CaseProperty.CUSTOM_VARCHAR_FIELD_5))
              return wfCase.getCustomVarCharField5();

            // END_TIMESTAMP
            if (caseProperty.equals(CaseProperty.END_TIMESTAMP))
              return wfCase.getEndTimestamp();

            // ID
            if (caseProperty.equals(CaseProperty.ID))
              return new Long(wfCase.getId());

            // NAME
            if (caseProperty.equals(CaseProperty.NAME))
              return wfCase.getName();

            // TODO DESCRIPTION enum value is missing

            // PRIORITY
            if (caseProperty.equals(CaseProperty.PRIORITY))
              return wfCase.getPriority();

            // PROCESS_CATEGORY_CODE
            if (caseProperty.equals(CaseProperty.PROCESS_CATEGORY_CODE))
              return wfCase.getProcessCategoryCode();

            // TODO PROCESS_CATEGORY_NAME enum value is missing

            // PROCESS_CODE
            if (caseProperty.equals(CaseProperty.PROCESS_CODE))
              return wfCase.getProcessCode();

            // TODO PROCESS_NAME enum value is missing

            // START_TIMESTAMP
            if (caseProperty.equals(CaseProperty.START_TIMESTAMP))
              return wfCase.getStartTimestamp();

            // STATE
            if (caseProperty.equals(CaseProperty.STATE))
              return wfCase.getState();

            // SUB_TYPE_CODE
            if (caseProperty.equals(CaseProperty.SUB_TYPE_CODE))
              return wfCase.getSubTypeCode();

            // TODO SUB_TYPE_CODE_NAME enum value is missing

            // TYPE_CODE
            if (caseProperty.equals(CaseProperty.TYPE_CODE))
              return wfCase.getTypeCode();

            // TODO TYPE_CODE_NAME enum value is missing

            return null;
          }
        });

    return value;
  }

  /**
   * It returns the list of workflow events of the case
   * whitout permission restriction
   * @param wfCase
   * @return list of events
 * @throws Exception 
 * @throws EnvironmentNotAvailableException 
   */
  public static List<IWorkflowEvent> getCaseWorkflowEventsAsSystemUser(final ICase wfCase) throws EnvironmentNotAvailableException, Exception
  {
    List<IWorkflowEvent> workflowEvents = null;

      workflowEvents = SecurityManagerFactory.getSecurityManager().executeAsSystem(
              new Callable<List<IWorkflowEvent>>()
                {
                  public List<IWorkflowEvent> call() throws Exception
                  {
                    return wfCase.getWorkflowEvents();
                  }
                });

    return workflowEvents;
  }


  /**
   * It returns the workflow event timestamp 
   * whithout permission restriction
   * 
   * @param workflowEvent
   * @return workflow event's timestamp
 * @throws Exception 
 * @throws EnvironmentNotAvailableException 
   */
  public static Date getWorkflowEventTimestampAsSystemUser(final IWorkflowEvent workflowEvent) throws EnvironmentNotAvailableException, Exception
  {
    Date result = null;
      result = SecurityManagerFactory.getSecurityManager().executeAsSystem(new Callable<Date>()
        {
          public Date call() throws Exception
          {
            return workflowEvent.getEventTimestamp();
          }
        });

    return result;
  }

  /**
   * It returns the workflow event kind name
   * without permission restriction
   * 
   * @param workflowEvent
   * @return workflow event's kind name
 * @throws Exception 
 * @throws EnvironmentNotAvailableException 
   */
  public static String getWorkflowEventKindNameAsSystemUser(final IWorkflowEvent workflowEvent) throws EnvironmentNotAvailableException, Exception
  {
    String result = null;
      result = SecurityManagerFactory.getSecurityManager().executeAsSystem(new Callable<String>()
        {
          public String call() throws Exception
          {
            return workflowEvent.getEventKind().name();
          }
        });

    return result;
  }

  /**
   * It returns the workflow event username
   * without permission restriction
   * 
   * @param workflowEvent
   * @return
 * @throws Exception 
 * @throws EnvironmentNotAvailableException 
   */
  public static String getWorkflowEventUserNameAsSystemUser(final IWorkflowEvent workflowEvent) throws EnvironmentNotAvailableException, Exception
  {
    String result = null;
      result = SecurityManagerFactory.getSecurityManager().executeAsSystem(new Callable<String>()
        {
          public String call() throws Exception
          {
            return workflowEvent.getUserName();
          }
        });

    return result;
  }

  /**
   * It returns a flag that inform if this is a task workflow event
   * whitout permission restriction
   * 
   * @param workflowEvent
   * @return
 * @throws Exception 
 * @throws EnvironmentNotAvailableException 
   */
  public static Boolean getWorkflowEventIsTaskEventAsSystemUser(final IWorkflowEvent workflowEvent) throws EnvironmentNotAvailableException, Exception
  {
    Boolean result = null;
      result = SecurityManagerFactory.getSecurityManager().executeAsSystem(new Callable<Boolean>()
        {
          public Boolean call() throws Exception
          {
            return workflowEvent.isTaskEvent();
          }
        });

    return result;
  }

  /**
   * 
   * 
   * @param workflowEvent
   * @return
 * @throws Exception 
 * @throws EnvironmentNotAvailableException 
   */
  public static Long getWorkflowEventTaskIdEventAsSystemUser(final IWorkflowEvent workflowEvent) throws EnvironmentNotAvailableException, Exception
  {
    Long result = null;
      result = SecurityManagerFactory.getSecurityManager().executeAsSystem(new Callable<Long>()
        {
          public Long call() throws Exception
          {
            return workflowEvent.getTask().getId();
          }
        });

    return result;
  }

  public static String getWorkflowEventTaskNameEventAsSystemUser(final IWorkflowEvent workflowEvent) throws EnvironmentNotAvailableException, Exception
  {
    String result = null;
      result = SecurityManagerFactory.getSecurityManager().executeAsSystem(new Callable<String>()
        {
          public String call() throws Exception
          {
            return workflowEvent.getTask().getName();
          }
        });


    return result;
  }

  public static List<String> getWorkflowEventAdditionalInfoAsSystemUser(final IWorkflowEvent workflowEvent) throws EnvironmentNotAvailableException, Exception
  {
    List<String> result = null;

      result = SecurityManagerFactory.getSecurityManager().executeAsSystem(new Callable<List<String>>()
        {
          public List<String> call() throws Exception
          {
            return workflowEvent.getAdditionalInfo();
          }
        });


    return result;
  }

  /**
   * It returns all roles, flat in the Enumeration without any hierarchy with System User permission.
   * @return enumeration with all roles
 * @throws Exception 
 * @throws EnvironmentNotAvailableException 
   */
  public static List<IRole> wfGetRolesAsSystemUser() throws EnvironmentNotAvailableException, Exception
  {
    List<IRole> result = null;
      result = SecurityManagerFactory.getSecurityManager().executeAsSystem(new Callable<List<IRole>>()
        {
          public List<IRole> call() throws Exception
          {
            Ivy.log().debug("Found {0} role(s).", Ivy.wf().getSecurityContext().getRoles().size());
            return Ivy.wf().getSecurityContext().getRoles();
          }
        });

    return result;
  }

  /**
   * Gets all users with System User permission.
   * @return enumeration with all users
 * @throws Exception 
 * @throws EnvironmentNotAvailableException 
   */
  public static List<IUser> wfGetUsersAsSystemUser() throws EnvironmentNotAvailableException, Exception
  {
    List<IUser> result = null;
      result = SecurityManagerFactory.getSecurityManager().executeAsSystem(new Callable<List<IUser>>()
        {
          public List<IUser> call() throws Exception
          {
            Ivy.log().debug("Found {0} user(s).", Ivy.wf().getSecurityContext().getUsers().size());
            return Ivy.wf().getSecurityContext().getUsers();
          }
        });

    return result;
  }
  
  
  /**
   * It returns the list of roles that user owns except Everybody
   * 
   * @return list of user roles
 * @throws Exception 
 * @throws EnvironmentNotAvailableException 
   */
  public static List<IRole> getUserRolesExceptEverybodyAsSystemUser(final IUser user) throws EnvironmentNotAvailableException, Exception
  {
    List<IRole> result = null;
      result = SecurityManagerFactory.getSecurityManager().executeAsSystem(new Callable<List<IRole>>()
        {
          public List<IRole> call() throws Exception
          {
        	List<IRole> userRoles = user.getRoles();
        	List<IRole> userRolesExceptEverybody = new ArrayList<IRole>();
        	
        	for(IRole role : userRoles){
        		if(role.getName().equals("Everybody")){
        			continue;
        		}
        		userRolesExceptEverybody.add(role);
        	}
        	
        	Ivy.log().debug("User {0} owns {1} roles(s).", user, userRolesExceptEverybody);
        	return userRolesExceptEverybody;
          }
        });

    return result;
  }
  
  
  
  /**
   * it find the task by its identifier using the ivy.wf interface
   * 
   * @param taskIdentifier
   * @return
 * @throws Exception 
 * @throws EnvironmentNotAvailableException 
   */
  public static ITask wfFindTaskAsSystemUser(final long taskIdentifier) throws EnvironmentNotAvailableException, Exception
  {
	  ITask result = null;
	  result = SecurityManagerFactory.getSecurityManager().executeAsSystem(new Callable<ITask>()
	        {
	          public ITask call() throws Exception
	          {	            
	            return Ivy.wf().findTask(taskIdentifier);
	          }
	        });
	    
	    return result;
  }
  
  
  

  /**
   * it delegate the task to the given security member
   * 
   * @param task
   * @param securityMember
 * @throws Exception 
 * @throws EnvironmentNotAvailableException 
   */
  public static void delegateTaskAsSystemUser(final ITask task, final ISecurityMember securityMember) throws EnvironmentNotAvailableException, Exception
  {
	      SecurityManagerFactory.getSecurityManager().executeAsSystem(new Callable<Boolean>()
	        {
	          public Boolean call() throws Exception
	          {
	      		if (task.isExpired())
	    		{
	    			task.setExpiryActivator(securityMember);
	    		}
	    		else
	    		{
	    			task.setOriginalActivator(securityMember);
	    		}
	      		return true;
	          }
	        });
  }
  
  
  
  /**
   * it reset the task as system user
   * 
   * @param task 
 * @throws Exception 
 * @throws EnvironmentNotAvailableException 
   */
  public static void resetTaskAsSystemUser(final ITask task) throws EnvironmentNotAvailableException, Exception
  {
	      SecurityManagerFactory.getSecurityManager().executeAsSystem(new Callable<Boolean>()
	        {
	          public Boolean call() throws Exception
	          {
	      		task.reset();
	      		return true;
	          }
	        });    
  } 
  
  
  /**
   * It returns the task's page archives 
   * @param task
   * @return
 * @throws Exception 
 * @throws EnvironmentNotAvailableException 
   */
  public static List<IPageArchive> getTaskPageArchivesAsSystemUser(final ITask task) throws EnvironmentNotAvailableException, Exception
  {
	      return SecurityManagerFactory.getSecurityManager().executeAsSystem(new Callable<List<IPageArchive>>()
	        {
	          public List<IPageArchive> call() throws Exception
	          {
	      		return task.getPageArchives();
	          }
	        });
  }
  
  
  
  /**
   * It returns the case's page archives 
   * @param wfCase
   * @return
 * @throws Exception 
 * @throws EnvironmentNotAvailableException 
   */
  public static List<IPageArchive> getCasePageArchivesAsSystemUser(final ICase wfCase) throws EnvironmentNotAvailableException, Exception
  {
	      return SecurityManagerFactory.getSecurityManager().executeAsSystem(new Callable<List<IPageArchive>>()
	        {
	          public List<IPageArchive> call() throws Exception
	          {
	      		return wfCase.getPageArchives();
	          }
	        });
  }
  
  
  
  
  
  /**
   * It returns a list of "human" users of Ivy application (without SYSTEM user)
   * 
   * @return
   * 		list of users; if no data, it return empty list
 * @throws Exception 
 * @throws EnvironmentNotAvailableException 
   */
  public static List<IUser> getWfHumanUsersAsSystemUser() throws EnvironmentNotAvailableException, Exception
  {
	  // "SYSTEM".equals(user.getName()
	      return SecurityManagerFactory.getSecurityManager().executeAsSystem(new Callable<List<IUser>>()
	        {
	          public List<IUser> call() throws Exception
	          {
	        	  List<IUser> allUsers = Ivy.wf().getSecurityContext().getUsers(); 
	        	  List<IUser> humanUsers = new ArrayList<IUser>();
	        	  
	        	  for(IUser user: allUsers)
	        	  {
	        		  if (!"SYSTEM".equals(user.getName()))
	        		  {
	        			  humanUsers.add(user);
	        		  }
	        	  }
	        	  
	        	  // sort the list by user name
	        	  Collections.sort(humanUsers, new Comparator<IUser> ()
					{
						public int compare(IUser user1, IUser user2)
						{
							int result = -1; 
							try {
								result = (user1.getName()).compareTo(user2.getName());
							} catch (PersistencyException e) {
								e.printStackTrace();
							}
							return result;
						}
					});
	        	  
	        	  return humanUsers; 
	          }
	        });	  
  }
  

  /**
   * 
   * It returns all users of Ivy application
   * @return list of users; if no data, it returns empty list
 * @throws Exception 
 * @throws EnvironmentNotAvailableException 
   */
  public static List<IUser> getWfUsers() throws EnvironmentNotAvailableException, Exception
  {
	      return SecurityManagerFactory.getSecurityManager().executeAsSystem(new Callable<List<IUser>>()
	        {
	          public List<IUser> call() throws Exception
	          {
	        	  return Ivy.wf().getSecurityContext().getUsers();
	          }
	        });
  }
  
  
  
  public static Boolean filterUserList(final List<IUser> userList, final List<IUser> filteredUserList, final String nameCriteria) throws EnvironmentNotAvailableException, Exception
  {
	      return SecurityManagerFactory.getSecurityManager().executeAsSystem(new Callable<Boolean>()
	        {
	          public Boolean call() throws Exception
	          {
	        	  filteredUserList.clear();


	        	  if (userList.size() > 0)
	        	  {
	        	  	Pattern patternOnName = Pattern.compile(".*" + nameCriteria + ".*", Pattern.CASE_INSENSITIVE);
	        	  	
	        	  	for(IUser user: userList)
	        	  	{
	        	  		if (patternOnName.matcher(user.getName()).matches() ||
	        	  				(user.getFullName() != null && patternOnName.matcher(user.getFullName()).matches()))
	        	  		{
	        	  			filteredUserList.add(user);
	        	  		}
	        	  	}
	        	  }
	        	  else
	        	  {
	        	  	filteredUserList.addAll(userList);	
	        	  }
	        	  return true;
	          }
	        });

  }
  
  

  /**
   * It returns the external security system name without permission check 
   * 
   * @return the external security system name. For Ivy is: Xpert.ivy
 * @throws Exception 
 * @throws EnvironmentNotAvailableException 
   * 
   */
  public static String getExternalSecuritySystemNameAsSystemUser() throws EnvironmentNotAvailableException, Exception
  {
	      return SecurityManagerFactory.getSecurityManager().executeAsSystem(new Callable<String>()
	        {
	          public String call() throws Exception
	          {
	        	  return Ivy.wf().getSecurityContext().getExternalSecuritySystemName();
	        	  
	          }
	        });

  }
  
  
  /**
   * It returns child roles of the role
   * 
   * @param role for which child roles should be returned
   * 
   * @return the list of roles
 * @throws Exception 
 * @throws EnvironmentNotAvailableException 
   */
  public static List<IRole> getChildRolesAsSystemUser(final IRole role) throws EnvironmentNotAvailableException, Exception
  {
	      return SecurityManagerFactory.getSecurityManager().executeAsSystem(new Callable<List<IRole>>()
	        {
	          public List<IRole> call() throws Exception
	          {
	        	  return role.getChildRoles();
	          }
	        });
  }
  
  /**
   * 
   * It returns boolean value needed to enable actions for the "Any query " task list mode. 
   * It returns true if this task is done and the user worked on
   *  
   * @param user
   * @param task
   * @return
 * @throws Exception 
 * @throws EnvironmentNotAvailableException 
   */
  public static boolean userHasWorkedOnTask(final IUser user, final ITask task) throws EnvironmentNotAvailableException, Exception
  {
	  return SecurityManagerFactory.getSecurityManager().executeAsSystem(new Callable<Boolean>()
        {
  	          public Boolean call() throws Exception
  	          {
				  boolean result = false;
				  
				  if ((task.getState().equals(TaskState.DONE) || task.getState().equals(TaskState.READY_FOR_JOIN)) && 
						  user.getName().equals(task.getWorkerUserName()))
				  {
					  result = true;
				  }
				  
				  return result;
  	          }
        });
  }
  
  /**
   * 
   * It returns boolean value needed to enable actions for the "Any query " task list mode. 
   * It returns true if this task is in to be executed state and the user could work on (task is part of his task list), 
   * see {@link IWorkflowSession#findWorkTasks(IPropertyFilter, List, int, int, boolean, EnumSet)}
   *  
   * @param workflowSession
   * @param wfTask
   * @return
   * @throws Exception 
   * @throws EnvironmentNotAvailableException 
   */
  public static boolean userIsTaskActivatorCandidate(final IWorkflowSession workflowSession, final ITask wfTask) throws EnvironmentNotAvailableException, Exception
  {	  
      return SecurityManagerFactory.getSecurityManager().executeAsSystem(new Callable<Boolean>()
  	        {
  	          public Boolean call() throws Exception
  	          {
				boolean result = false;
				
				IPropertyFilter<TaskProperty> filter = null;
                List<PropertyOrder<TaskProperty>> order = null;
                int startIndex = 0;
                int count = -1;
                boolean returnAllCount = true;
                EnumSet<TaskState> includeTaskStates = java.util.EnumSet.of(TaskState.SUSPENDED, TaskState.PARKED);
                IQueryResult<ITask> queryResult = null;
                List<ITask> wfTasks = null;
                
                queryResult = workflowSession.findWorkTasks(filter, order, startIndex, count, returnAllCount, includeTaskStates);
                wfTasks = queryResult.getResultList();
                Ivy.log().debug("User {0} can work on {1} tasks.", workflowSession.getSessionUserName(), wfTasks.size());
                
                for (ITask actualWfTask: wfTasks)
                {
                	if (actualWfTask.getId() == wfTask.getId())
                	{
                		result = true;
                		Ivy.log().debug("User {0} can work on task with id {1}.", workflowSession.getSessionUserName(), wfTask.getId());
                		break;
                	}
                }				
		  
				return result;
  	          }
  	        });
  }
  
  
  /**
   * It returns true if the user is involved on case, see {@link IWorkflowSession#findInvolvedCases}  
   * 
   * @param workflowSession is the user's workflow session
   * @param wfCase on which the check has to be done
   * @return true if the user is involved; otherwise false
   * 
   * @throws EnvironmentNotAvailableException
   * @throws Exception
   */
  public static boolean userIsInvolvedOnCase(final IWorkflowSession workflowSession, final ICase wfCase) throws EnvironmentNotAvailableException, Exception
  {
	  return SecurityManagerFactory.getSecurityManager().executeAsSystem(new Callable<Boolean>()
        {
          public Boolean call() throws Exception
          {
        	  boolean userIsInvolvedOnCase = false;
        	  IQueryResult<ICase> queryResult = null;
        	  IPropertyFilter<CaseProperty> filter = null;
              List<PropertyOrder<CaseProperty>> order = null;
              int startIndex = 0;
              int count = -1;
              boolean returnAllCount = true;
              List<ICase> wfCases = null;
              
        	  queryResult = workflowSession.findInvolvedCases(filter, order, startIndex, count, returnAllCount);
        	  wfCases = queryResult.getResultList();
        	  
        	  Ivy.log().debug("Is user {0} involved on {1} cases also involved on case with id {2}.", workflowSession.getSessionUserName(), wfCases.size(), wfCase.getId());
        	  
        	  for (ICase actualCase: wfCases)
        	  {
        		  if (wfCase.getId() == actualCase.getId())
				  {
        			  userIsInvolvedOnCase = true;
        			  Ivy.log().debug("User {0} is involved on case with id {2}.", workflowSession.getSessionUserName(), wfCase.getId());
        			  break;        			  
				  }
        	  }        	          	  
        	  
        	  return userIsInvolvedOnCase;
          }
        });
	  
  }
  
  
  
  
  /**
   * It returns a list of ordered security members (set of roles and users)
   * @return
   * @throws EnvironmentNotAvailableException
   * @throws Exception
   */
  public static List<ISecurityMember> getAllSecurityMembersAsSystemUser() throws EnvironmentNotAvailableException, Exception
  {
	  return SecurityManagerFactory.getSecurityManager().executeAsSystem(new Callable<List<ISecurityMember>>()
	  	        {
	  	          public List<ISecurityMember> call() throws Exception
	  	          {
	  	        	  List<ISecurityMember> securityMembers = new ArrayList<ISecurityMember>();
	  	        	  securityMembers.addAll(Ivy.session().getSecurityContext().getRoles());
	  	        	  
		        	  List<IUser> allUsers = Ivy.wf().getSecurityContext().getUsers(); 
		        	  List<IUser> humanUsers = new ArrayList<IUser>();
		        	  
		        	  for(IUser user: allUsers)
		        	  {
		        		  if (!"SYSTEM".equals(user.getName()))
		        		  {
		        			  humanUsers.add(user);
		        		  }
		        	  }
	  	        	  
	  	        	  securityMembers.addAll(humanUsers);

	  	        	  // sort the list by member name
		        	  Collections.sort(securityMembers, new Comparator<ISecurityMember> ()
						{
							public int compare(ISecurityMember securityMember1, ISecurityMember securityMember2)							
							{
								int compareResult = -1; 
								try {
									String name1 = securityMember1.isUser()? ((IUser)securityMember1).getName(): securityMember1.getMemberName();
									String name2 = securityMember2.isUser()? ((IUser)securityMember2).getName(): securityMember2.getMemberName();									
									compareResult = name1.compareTo(name2);
								} catch (PersistencyException e) {
									e.printStackTrace();
								}

								return compareResult;
							}
						});
	  	        	  
	  	        	  return securityMembers;
	  	          }
	  	        }); 
	  
  }
  
}