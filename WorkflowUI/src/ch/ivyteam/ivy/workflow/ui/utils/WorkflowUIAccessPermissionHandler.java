package ch.ivyteam.ivy.workflow.ui.utils;

/**
 * Xpert.Ivy
 */
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
import ch.ivyteam.ivy.workflow.CaseProperty;
import ch.ivyteam.ivy.workflow.CaseState;
import ch.ivyteam.ivy.workflow.ICase;
import ch.ivyteam.ivy.workflow.IPageArchive;
import ch.ivyteam.ivy.workflow.IPropertyFilter;
import ch.ivyteam.ivy.workflow.ITask;
import ch.ivyteam.ivy.workflow.IWorkflowEvent;
import ch.ivyteam.ivy.workflow.PropertyOrder;
import ch.ivyteam.ivy.workflow.TaskProperty;
import ch.ivyteam.ivy.workflow.TaskState;
import ch.ivyteam.logicalexpression.RelationalOperator;

/**
 * 
 * @author tirib 
 * This tool class help to simplify the access to the Ivy API according to the fact if the
 *         currentyl authentificated user is workflow user (IWorkflowSession) or workflow administrator
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

  
  public static IPropertyFilter getTaskStatesPropertyFilterByRunningModeAndTaskDisplayMode(
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
  private static IPropertyFilter getRunningTaskStatesPropertyFilterByTaskDisplayMode(int taskDisplayMode)
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
  private static IPropertyFilter getWfUserRunningTaskStatesPropertyFilter() throws Exception
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
  private static IPropertyFilter getWfTeamRunningTaskStatesPropertyFilter()
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

  /**
   * 
   * 
   * @return
   */
  private static IPropertyFilter getWfAdministratorRunningTaskStatesPropertyFilter()
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
  private static IPropertyFilter getFinishedTaskStatesPropertyFilterByTaskDisplayMode(int taskDisplayMode)
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
  private static IPropertyFilter getWfUserFinishedTaskStatesPropertyFilter() throws Exception
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

  private static IPropertyFilter getWfTeamFinishedTaskStatesPropertyFilter()
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

  private static IPropertyFilter getWfAdministratorFinishedTaskStatesPropertyFilter()
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
  public static List findTaskCategories(IPropertyFilter<TaskProperty> categoryFilter, TaskProperty categoryProperty,
          OrderDirection categoryPropertyOrder, boolean runningTaskMode, int taskDisplayMode)
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
        return Ivy.wf().findTaskCategories(categoryFilter, categoryProperty, categoryPropertyOrder);

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
   * @param runningTaskMode if true then only "running tasks" will be returned; othewise "finished tasks"
   * @param taskDisplayMode where 
   * 		<ul>
   * 			<li>0 stands for your tasks</li>
   *			<li>1 stands for team tasks</li>
   *			<li>2 stands for all application tasks (ivy.wf) </li> 	
   * 		</ul>
   * @return
   * @throws Exception
   */
  public static IQueryResult<ITask> findTasks(IPropertyFilter<TaskProperty> filter, List order,
          int startIndex, int count, boolean returnAllCount, boolean runningTaskMode, int taskDisplayMode)
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
        // all applications's tasks
        return Ivy.wf().findTasks(filter, order, startIndex, count, returnAllCount);

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

  
  public static int getTaskIdentifierAsSystemUser(final ITask wfTask)
  {
    int result = -1;
    try
    {
      result = Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<Integer>()
        {
          public Integer call() throws Exception
          {
            return wfTask.getIdentifier();
          }
        });
    }
    catch (Exception e)
    {
      Ivy.log().error("Error: " + e.getMessage(), e);
    }
    return result;
  }

  /**
   * It return the task expiry activator 
   * whithout permission restriction
   * 
   * @param wfTask
   * @param securityMember
   */
  public static void setTaskExpiryActivatorAsSystemUser(final ITask wfTask,
          final ISecurityMember securityMember)
  {
    try
    {
      Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<Boolean>()
        {
          public Boolean call() throws Exception
          {
            wfTask.setExpiryActivator(securityMember);
            return true;
          }
        });
    }
    catch (Exception e)
    {
      Ivy.log().error("Error: " + e.getMessage(), e);
    }
  }

  public static void setTaskOriginalActivatorAsSystemUser(final ITask wfTask,
          final ISecurityMember securityMember)
  {
    try
    {
      Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<Boolean>()
        {
          public Boolean call() throws Exception
          {
            wfTask.setOriginalActivator(securityMember);
            return true;
          }
        });
    }
    catch (Exception e)
    {
      Ivy.log().error("Error: " + e.getMessage(), e);
    }
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
  public static List<IGroup<ICase>> findCaseCategories(IPropertyFilter<CaseProperty> categoryFilter,
          final CaseProperty categoryProperty, OrderDirection categoryPropertyOrder, boolean runningCaseMode,
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
    	
        List<IGroup<ICase>> involvedCasesByRoleCategories = Ivy.session().findInvolvedCasesByRoleCategories(
                userRoles, categoryFilter, categoryProperty,
                categoryPropertyOrder);
        
        Ivy.log().debug("Found {0} different {1} case categories.", involvedCasesByRoleCategories.size(), categoryProperty);
        
        for (IGroup<ICase> involvedCasesByRoleCategory: involvedCasesByRoleCategories)
        {
        	Ivy.log().debug("Analyzing the involved cases by case category {0}; category: {1}, process: {2}, type: {3}, subtype: {4}.",
        			categoryProperty,
        			involvedCasesByRoleCategory.getFirstObjectInGroup().getProcessCategoryName(),
        			involvedCasesByRoleCategory.getFirstObjectInGroup().getProcessName(),
        			involvedCasesByRoleCategory.getFirstObjectInGroup().getTypeName(),
        			involvedCasesByRoleCategory.getFirstObjectInGroup().getSubTypeName());
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

          // add only no existing group
          for (IGroup<ICase> managedTeamsCaseGroup : managedTeamsCaseCategories)
          {
            Ivy.log().debug("Analyzing the managed teams category IGroup<ICase>; category: {0}, process: {1}, type: {2}, subtype: {3}.",
                    managedTeamsCaseGroup.getFirstObjectInGroup().getProcessCategoryName(),
                    managedTeamsCaseGroup.getFirstObjectInGroup().getProcessName(),
                    managedTeamsCaseGroup.getFirstObjectInGroup().getTypeName(),
                    managedTeamsCaseGroup.getFirstObjectInGroup().getSubTypeName());

            // add only no existing IGroup<ICase> here
            // found the team manager group in the list of involved cases by role categories
            // if not found, add it to the list of involved cases by role categories
            if (!containsCaseGroupBasedOnCaseCategory(involvedCasesByRoleCategories, managedTeamsCaseGroup, categoryProperty))
            {
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
        return Ivy.wf().findCaseCategories(categoryFilter, categoryProperty, categoryPropertyOrder);

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
   * @throws PersistencyException
   */
  private static boolean containsCaseGroupBasedOnCaseCategory(final List<IGroup<ICase>> caseGroups,
          final IGroup<ICase> caseGroupToFind, final CaseProperty categoryProperty)
          throws PersistencyException
  {

    boolean result = false;

    try
    {
      result = Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<Boolean>()
        {
          public Boolean call() throws Exception
          {
            ICase firstCaseInGroup = null;
            ICase caseToFind = caseGroupToFind.getFirstObjectInGroup();
            Ivy.log().debug("Case to find {0} {1} - {2}.", 
            		caseToFind, caseToFind.getIdentifier(), caseToFind.getName());

            for (IGroup<ICase> currentCaseGroup : caseGroups)
            {            	
              firstCaseInGroup = currentCaseGroup.getFirstObjectInGroup();

              Ivy.log().debug("First case in group {0} {1} - {2}.", 
            		  firstCaseInGroup, firstCaseInGroup.getIdentifier(), firstCaseInGroup.getName());              

              // compare based on PROCESS_CATEGORY_CODE
              if (categoryProperty.compareTo(CaseProperty.PROCESS_CATEGORY_CODE) == 0)
            	  return (firstCaseInGroup.getProcessCategoryCode() == null? "": firstCaseInGroup.getProcessCategoryCode()).equals(
            			  caseToFind.getProcessCategoryCode() == null? "": caseToFind.getProcessCategoryCode());

              // compare based on PROCESS_CODE
              if (categoryProperty.compareTo(CaseProperty.PROCESS_CODE) == 0) 
            		  return (firstCaseInGroup.getProcessCode() == null? "": firstCaseInGroup.getProcessCode()).equals(
            				  caseToFind.getProcessCode() == null? "": firstCaseInGroup.getProcessCode());


              // compare based on TYPE_CODE
              if (categoryProperty.compareTo(CaseProperty.TYPE_CODE) == 0)
                      return (firstCaseInGroup.getTypeCode() == null? "": firstCaseInGroup.getTypeCode()).equals(
                    		  caseToFind.getTypeCode() == null? "": caseToFind.getTypeCode());


              // compare based on SUB_TYPE_CODE
              if (categoryProperty.compareTo(CaseProperty.SUB_TYPE_CODE) == 0)
                      return (firstCaseInGroup.getSubTypeCode() == null? "": firstCaseInGroup.getSubTypeCode()).equals(
                    		  caseToFind.getSubTypeCode() == null? "": caseToFind.getSubTypeCode());

              
              // compare based on BUSINESS_MAIN_CONTACT_ID
              if (categoryProperty.compareTo(CaseProperty.BUSINESS_MAIN_CONTACT_ID) == 0)
                      return (firstCaseInGroup.getBusinessMainContactId() == null? new Integer(-1): firstCaseInGroup.getBusinessMainContactId()).equals(
                              caseToFind.getBusinessMainContactId() == null? new Integer(-1): caseToFind.getBusinessMainContactId());

              
              // compare based on BUSINESS_START_TIMESTAMP
              if (categoryProperty.compareTo(CaseProperty.BUSINESS_START_TIMESTAMP) == 0)
                      return (firstCaseInGroup.getBusinessStartTimestamp() == null? new GregorianCalendar(1900,1,1).getTime(): firstCaseInGroup.getBusinessStartTimestamp()).equals(
                              caseToFind.getBusinessStartTimestamp() == null? new GregorianCalendar(1900,1,1).getTime(): caseToFind.getBusinessStartTimestamp());

              
              // compare based on BUSINESS_CREATOR_USER
              if (categoryProperty.compareTo(CaseProperty.BUSINESS_CREATOR_USER) == 0)
                      return (firstCaseInGroup.getBusinessCreatorUser() == null? "": firstCaseInGroup.getBusinessCreatorUser()).equals(
                              caseToFind.getBusinessCreatorUser() == null? "": caseToFind.getBusinessCreatorUser());
            }

            return false;
          }
        });
    }
    catch (Exception e)
    {
      Ivy.log().error("Error: " + e.getMessage(), e);
    }
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
   */
  public static List<IGroup<ICase>> findUserManagedTeamsCaseCategoriesAsSystemUser(
		  final IPropertyFilter<CaseProperty> categoryFilter,
          final List<String> userManagedTeams, final CaseProperty categoryProperty,
          final OrderDirection categoryPropertyOrder, final boolean runningCaseMode)
  {
    List<IGroup<ICase>> teamManagerCaseCategories = new ArrayList<IGroup<ICase>>();

    try
    {
      teamManagerCaseCategories = Ivy.session().getSecurityContext().executeAsSystemUser(
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
    catch (Exception e)
    {
      Ivy.log().error("Error: " + e.getMessage(), e);
      return teamManagerCaseCategories;
    }
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
    for (String managedTeam : userManagedTeams)
    {    	
    	if (userTeamManagedCasesFilter == null)
    	{
    		Ivy.log().debug("Create case property filter {0} {1} {2}.", 
    				CaseProperty.CUSTOM_VARCHAR_FIELD_5, RelationalOperator.EQUAL, managedTeam);
    		userTeamManagedCasesFilter = 
    			Ivy.wf().createCasePropertyFilter(CaseProperty.CUSTOM_VARCHAR_FIELD_5, RelationalOperator.EQUAL, managedTeam);
    	}
    	else
    	{
    		Ivy.log().debug("Add OR case property filter {0} {1} {2}.", 
    				CaseProperty.CUSTOM_VARCHAR_FIELD_5, RelationalOperator.EQUAL, managedTeam);
    		userTeamManagedCasesFilter = userTeamManagedCasesFilter.or(CaseProperty.CUSTOM_VARCHAR_FIELD_5, RelationalOperator.EQUAL, managedTeam);
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
   * 		</ul>
   * @param runningCaseMode
   * @return
 * @throws Exception 
   */
  public static List<ICase> findCases(IPropertyFilter<CaseProperty> contextFilter,
          List<PropertyOrder<CaseProperty>> order, int startIndex, int count, Boolean returnAllCount,
          int caseDisplayMode, boolean runningCaseMode) throws Exception
  {
    List<ICase> foundCases = null;

    // caseDisplayMode 0 : queryResult = ivy.session.findInvolvedCases(filter, order, startIndex, count,
    // returnAllCount);
    // caseDisplayMode 1 : queryResult =
    // ivy.session.findInvolvedCasesByRole(ivy.session.getSessionUser().getRoles(), filter, order, startIndex,
    // count, returnAllCount);
    // caseDisplayMode 2 : queryResult = ivy.wf.findCases(filter, order, startIndex, count, returnAllCount);

    switch (caseDisplayMode)
    {
      case 0:
        foundCases = Ivy.session().findInvolvedCases(contextFilter, order, startIndex, count, returnAllCount).getResultList();
        return foundCases;

      case 1:
    	  
        // team cases (involved cases by role including the user's managed teams)
        // get involved cases by role     	  
        IQueryResult<ICase> queryResult = 
        	Ivy.session().findInvolvedCasesByRole(
        			Ivy.session().getSessionUser().getRoles(), contextFilter, order, startIndex, count, returnAllCount);    
        
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
        			  sessionUserTeamManagerCase.getIdentifier(), sessionUserTeamManagerCase.getName());
        	  
            if (!containsCase(involvedCasesByRoleList, sessionUserTeamManagerCase))
            {
              mergedCasesLinkedHashSet.add(sessionUserTeamManagerCase);
              Ivy.log().debug("Adding to the Team cases the case #{0} {1}",
                      sessionUserTeamManagerCase.getIdentifier(), sessionUserTeamManagerCase.getName());
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
        foundCases = Ivy.wf().findCases(contextFilter, order, startIndex, count, returnAllCount).getResultList();
        return foundCases;

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
      if (currentCase.getIdentifier() == caseToFind.getIdentifier())
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
   */
  public static IQueryResult<ICase> findUserManagedTeamsCasesAsSystemUser(
          final IPropertyFilter<CaseProperty> contextFilter, final List<String> userManagedTeams,
          final List<PropertyOrder<CaseProperty>> order, final int startIndex, final int count,
          final Boolean returnAllCount, final boolean runningCaseMode)
  {
    IQueryResult<ICase> sessionUserManagedTeamsCases = null;

    try
    {
      sessionUserManagedTeamsCases = Ivy.session().getSecurityContext().executeAsSystemUser(
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
    catch (Exception e)
    {
      Ivy.log().error("Error: " + e.getMessage(), e);
      return sessionUserManagedTeamsCases;
    }
  }
  

  
  public static String getCaseProcessCategoryNameAsSystemUser(final ICase wfCase)
  {
    String description = null;
    try
    {
      description = Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<String>()
        {
          public String call() throws Exception
          {
            return wfCase.getProcessCategoryName();
          }
        });
    }
    catch (Exception e)
    {
      Ivy.log().error("Error: " + e.getMessage(), e);
    }

    return description;
  }

  public static String getCaseProcessNameAsSystemUser(final ICase wfCase)
  {
    String description = null;
    try
    {
      description = Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<String>()
        {
          public String call() throws Exception
          {
            return wfCase.getProcessName();
          }
        });
    }
    catch (Exception e)
    {
      Ivy.log().error("Error: " + e.getMessage(), e);
    }

    return description;
  }

  public static String getCaseTypeNameAsSystemUser(final ICase wfCase)
  {
    String description = null;
    try
    {
      description = Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<String>()
        {
          public String call() throws Exception
          {
            return wfCase.getTypeName();
          }
        });
    }
    catch (Exception e)
    {
      Ivy.log().error("Error: " + e.getMessage(), e);
    }

    return description;
  }

  public static String getCaseSubTypeNameAsSystemUser(final ICase wfCase)
  {
    String description = null;
    try
    {
      description = Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<String>()
        {
          public String call() throws Exception
          {
            return wfCase.getSubTypeName();
          }
        });
    }
    catch (Exception e)
    {
      Ivy.log().error("Error: " + e.getMessage(), e);
    }

    return description;
  }

  public static String getCaseDescriptionAsSystemUser(final ICase wfCase)
  {
    String description = null;
    try
    {
      description = Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<String>()
        {
          public String call() throws Exception
          {
            return wfCase.getDescription();
          }
        });
    }
    catch (Exception e)
    {
      Ivy.log().error("Error: " + e.getMessage(), e);
    }

    return description;
  }

  /**
   * It returns the case property value trought the system user permissions
   * @param wfCase is the case on which the method is invoked
   * @return case identifier
   */
  public static Object getCasePropertyValueAsSystemUser(final ICase wfCase, final CaseProperty caseProperty)
  {
    Object value = null;
    try
    {
      value = Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<Object>()
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
              return new Integer(wfCase.getIdentifier());

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
    }
    catch (Exception e)
    {
      Ivy.log().error("Error: " + e.getMessage(), e);
    }

    return value;
  }

  /**
   * It returns the list of workflow events of the case
   * whitout permission restriction
   * @param wfCase
   * @return list of events
   */
  public static List<IWorkflowEvent> getCaseWorkflowEventsAsSystemUser(final ICase wfCase)
  {
    List<IWorkflowEvent> workflowEvents = null;

    try
    {
      workflowEvents = Ivy.session().getSecurityContext().executeAsSystemUser(
              new Callable<List<IWorkflowEvent>>()
                {
                  public List<IWorkflowEvent> call() throws Exception
                  {
                    return wfCase.getWorkflowEvents();
                  }
                });
    }
    catch (Exception e)
    {
      Ivy.log().error("Error: " + e.getMessage(), e);
    }

    return workflowEvents;
  }


  /**
   * It returns the workflow event timestamp 
   * whithout permission restriction
   * 
   * @param workflowEvent
   * @return workflow event's timestamp
   */
  public static Date getWorkflowEventTimestampAsSystemUser(final IWorkflowEvent workflowEvent)
  {
    Date result = null;
    try
    {
      result = Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<Date>()
        {
          public Date call() throws Exception
          {
            return workflowEvent.getEventTimestamp();
          }
        });
    }
    catch (Exception e)
    {
      Ivy.log().error("Error: " + e.getMessage(), e);
    }

    return result;
  }

  /**
   * It returns the workflow event kind name
   * without permission restriction
   * 
   * @param workflowEvent
   * @return workflow event's kind name
   */
  public static String getWorkflowEventKindNameAsSystemUser(final IWorkflowEvent workflowEvent)
  {
    String result = null;
    try
    {
      result = Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<String>()
        {
          public String call() throws Exception
          {
            return workflowEvent.getEventKind().name();
          }
        });
    }
    catch (Exception e)
    {
      Ivy.log().error("Error: " + e.getMessage(), e);
    }

    return result;
  }

  /**
   * It returns the workflow event username
   * without permission restriction
   * 
   * @param workflowEvent
   * @return
   */
  public static String getWorkflowEventUserNameAsSystemUser(final IWorkflowEvent workflowEvent)
  {
    String result = null;
    try
    {
      result = Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<String>()
        {
          public String call() throws Exception
          {
            return workflowEvent.getUserName();
          }
        });
    }
    catch (Exception e)
    {
      Ivy.log().error("Error: " + e.getMessage(), e);
    }

    return result;
  }

  /**
   * It returns a flag that inform if this is a task workflow event
   * whitout permission restriction
   * 
   * @param workflowEvent
   * @return
   */
  public static Boolean getWorkflowEventIsTaskEventAsSystemUser(final IWorkflowEvent workflowEvent)
  {
    Boolean result = null;
    try
    {
      result = Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<Boolean>()
        {
          public Boolean call() throws Exception
          {
            return workflowEvent.isTaskEvent();
          }
        });
    }
    catch (Exception e)
    {
      Ivy.log().error("Error: " + e.getMessage(), e);
    }

    return result;
  }

  /**
   * 
   * 
   * @param workflowEvent
   * @return
   */
  public static Integer getWorkflowEventTaskIdEventAsSystemUser(final IWorkflowEvent workflowEvent)
  {
    Integer result = null;
    try
    {
      result = Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<Integer>()
        {
          public Integer call() throws Exception
          {
            return workflowEvent.getTask().getIdentifier();
          }
        });
    }
    catch (Exception e)
    {
      Ivy.log().error("Error: " + e.getMessage(), e);
    }

    return result;
  }

  public static String getWorkflowEventTaskNameEventAsSystemUser(final IWorkflowEvent workflowEvent)
  {
    String result = null;
    try
    {
      result = Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<String>()
        {
          public String call() throws Exception
          {
            return workflowEvent.getTask().getName();
          }
        });
    }
    catch (Exception e)
    {
      Ivy.log().error("Error: " + e.getMessage(), e);
    }

    return result;
  }

  public static List<String> getWorkflowEventAdditionalInfoAsSystemUser(final IWorkflowEvent workflowEvent)
  {
    List<String> result = null;
    try
    {
      result = Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<List<String>>()
        {
          public List<String> call() throws Exception
          {
            return workflowEvent.getAdditionalInfo();
          }
        });
    }
    catch (Exception e)
    {
      Ivy.log().error("Error: " + e.getMessage(), e);
    }

    return result;
  }

  /**
   * It returns all roles, flat in the Enumeration without any hierarchy with System User permission.
   * @return enumeration with all roles
   */
  public static List<IRole> wfGetRolesAsSystemUser()
  {
    List<IRole> result = null;
    try
    {
      result = Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<List<IRole>>()
        {
          public List<IRole> call() throws Exception
          {
            Ivy.log().debug("Found {0} role(s).", Ivy.wf().getSecurityContext().getRoles().size());
            return Ivy.wf().getSecurityContext().getRoles();
          }
        });
    }
    catch (Exception e)
    {
      Ivy.log().error("Error: " + e.getMessage(), e);
    }

    return result;
  }

  /**
   * Gets all users with System User permission.
   * @return enumeration with all users
   */
  public static List<IUser> wfGetUsersAsSystemUser()
  {
    List<IUser> result = null;
    try
    {
      result = Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<List<IUser>>()
        {
          public List<IUser> call() throws Exception
          {
            Ivy.log().debug("Found {0} user(s).", Ivy.wf().getSecurityContext().getUsers().size());
            return Ivy.wf().getSecurityContext().getUsers();
          }
        });
    }
    catch (Exception e)
    {
      Ivy.log().error("Error: " + e.getMessage(), e);
    }

    return result;
  }
  
  
  /**
   * it find the task by its identifier using the ivy.wf interface
   * 
   * @param taskIdentifier
   * @return
   */
  public static ITask wfFindTaskAsSystemUser(final int taskIdentifier)
  {
	  ITask result = null;
	    try
	    {
	      result = Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<ITask>()
	        {
	          public ITask call() throws Exception
	          {	            
	            return Ivy.wf().findTask(taskIdentifier);
	          }
	        });
	    }
	    catch (Exception e)
	    {
	      Ivy.log().error("Error: " + e.getMessage(), e);
	    }
	    
	    return result;
  }
  
  
  

  /**
   * it delegate the task to the given security member
   * 
   * @param task
   * @param securityMember
   */
  public static void delegateTaskAsSystemUser(final ITask task, final ISecurityMember securityMember)
  {
	    try
	    {
	      Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<Boolean>()
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
	    catch (Exception e)
	    {
	      Ivy.log().error("Error during the task delegation: " + e.getMessage(), e);
	    }
	    
  }
  
  
  
  /**
   * it reset the task as system user
   * 
   * @param task 
   */
  public static void resetTaskAsSystemUser(final ITask task)
  {
	    try
	    {
	      Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<Boolean>()
	        {
	          public Boolean call() throws Exception
	          {
	      		task.reset();
	      		return true;
	          }
	        });
	    }
	    catch (Exception e)
	    {
	      Ivy.log().error("Error during the task reset: " + e.getMessage(), e);
	    }
	    
  } 
  
  
  /**
   * It returns the task's page archives 
   * @param task
   * @return
   */
  public static List<IPageArchive> getTaskPageArchivesAsSystemUser(final ITask task)
  {
	    try
	    {
	      return Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<List<IPageArchive>>()
	        {
	          public List<IPageArchive> call() throws Exception
	          {
	      		return task.getPageArchives();
	          }
	        });
	    }
	    catch (Exception e)
	    {
	      Ivy.log().error("Error during the get task page archives: " + e.getMessage(), e);
	      return new ArrayList<IPageArchive>();
	    }
  }
  
  
  
  /**
   * It returns the case's page archives 
   * @param wfCase
   * @return
   */
  public static List<IPageArchive> getCasePageArchivesAsSystemUser(final ICase wfCase)
  {
	    try
	    {
	      return Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<List<IPageArchive>>()
	        {
	          public List<IPageArchive> call() throws Exception
	          {
	      		return wfCase.getPageArchives();
	          }
	        });
	    }
	    catch (Exception e)
	    {
	      Ivy.log().error("Error during the get case page archives: " + e.getMessage(), e);
	      return new ArrayList<IPageArchive>();
	    }
  }
  
  
  
  
  
  /**
   * It returns a list of human users of Ivy application
   * 
   * @return
   * 		list of users; if no data, it return empty list
   */
  public static List<IUser> getWfHumanUsersAsSystemUser()
  {
	  // "SYSTEM".equals(user.getName()
	    try
	    {
	      return Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<List<IUser>>()
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
	        	  
	        	  return humanUsers; 
	          }
	        });
	    }
	    catch (Exception e)
	    {
	      Ivy.log().error("Error during wf get human users: " + e.getMessage(), e);
	      return new ArrayList<IUser>();
	    }
	  
  }
  

  /**
   * 
   * It returns all users of Ivy application
   * @return list of users; if no data, it return empty list
   */
  public static List<IUser> getWfUsers()
  {
	    try
	    {
	      return Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<List<IUser>>()
	        {
	          public List<IUser> call() throws Exception
	          {
	        	  return Ivy.wf().getSecurityContext().getUsers();
	          }
	        });
	    }
	    catch (Exception e)
	    {
	      Ivy.log().error("Error during wf get users: " + e.getMessage(), e);
	      return new ArrayList<IUser>();
	    }
  }
  
}