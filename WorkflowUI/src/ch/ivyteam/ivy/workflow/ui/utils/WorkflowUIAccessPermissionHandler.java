package ch.ivyteam.ivy.workflow.ui.utils;

/**
 * Xpert.Ivy 
 */
import java.util.List;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.persistence.IQueryResult;
import ch.ivyteam.ivy.persistence.OrderDirection;
import ch.ivyteam.ivy.workflow.IPropertyFilter;
import ch.ivyteam.ivy.workflow.TaskProperty;
import ch.ivyteam.ivy.workflow.TaskState;
import ch.ivyteam.logicalexpression.RelationalOperator;


/**
 * 
 * @author tirib
 * This tool class help to simplify the access to the Ivy API according to the fact if the currentyl authentificated user
 * is workflow user (IWorkflowSession) or workflow administrator (IWorfkflowContext)
 */
public class WorkflowUIAccessPermissionHandler {

	private static java.util.EnumSet INCLUDE_RUNNING_TASK_STATE;
	private static IPropertyFilter WF_USER_RUNNING_TASK_STATES_PROPERTY_FILTER;
	private static IPropertyFilter WF_TEAM_RUNNING_TASK_STATES_PROPERTY_FILTER;
	private static IPropertyFilter WF_ADMINISTRATOR_RUNNING_TASK_STATES_PROPERTY_FILTER;
	
	
	// private static java.util.EnumSet INCLUDE_FINISHED_TASK_STATE; not used
	private static IPropertyFilter WF_USER_FINISHED_TASK_STATES_PROPERTY_FILTER;
	private static IPropertyFilter WF_TEAM_FINISHED_TASK_STATES_PROPERTY_FILTER;
	private static IPropertyFilter WF_ADMINISTRATOR_FINISHED_TASK_STATES_PROPERTY_FILTER;
	
	

	public static IPropertyFilter getTaskStatesPropertyFilterByRunningModeAndTaskDisplayMode(boolean runningTaskMode, int taskDisplayMode) throws Exception
	{
		return (runningTaskMode? 
			getRunningTaskStatesPropertyFilterByTaskDisplayMode(taskDisplayMode): 
			getFinishedTaskStatesPropertyFilterByTaskDisplayMode(taskDisplayMode));
	}
	
	
	
	
	private static IPropertyFilter getRunningTaskStatesPropertyFilterByTaskDisplayMode(int taskDisplayMode) throws Exception
	{
		switch(taskDisplayMode)
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
	
	
	
	private static IPropertyFilter getWfUserRunningTaskStatesPropertyFilter() throws Exception
	{
		if (WF_USER_RUNNING_TASK_STATES_PROPERTY_FILTER == null)
		{
			
			WF_USER_RUNNING_TASK_STATES_PROPERTY_FILTER = 
				Ivy.wf().createTaskPropertyFilter(TaskProperty.STATE, RelationalOperator.EQUAL, TaskState.SUSPENDED.intValue()).or(
						TaskProperty.STATE, RelationalOperator.EQUAL, TaskState.RESUMED.intValue()).or(
								TaskProperty.STATE, RelationalOperator.EQUAL, TaskState.PARKED.intValue());
			
			if (Ivy.session().getSessionUser()!= null) 
				WF_USER_RUNNING_TASK_STATES_PROPERTY_FILTER.and(Ivy.wf().createTaskPropertyFilter(TaskProperty.ACTIVATOR_NAME, RelationalOperator.EQUAL, Ivy.session().getSessionUser().getMemberName()));
			
		}
		return WF_USER_RUNNING_TASK_STATES_PROPERTY_FILTER;
	}
	
	private static IPropertyFilter getWfTeamRunningTaskStatesPropertyFilter()
	{
		if (WF_TEAM_RUNNING_TASK_STATES_PROPERTY_FILTER == null)
		{
			
			WF_TEAM_RUNNING_TASK_STATES_PROPERTY_FILTER = Ivy.wf().createTaskPropertyFilter(TaskProperty.STATE, RelationalOperator.EQUAL, TaskState.SUSPENDED.intValue()).or(
			TaskProperty.STATE, RelationalOperator.EQUAL, TaskState.RESUMED.intValue()).or(
					TaskProperty.STATE, RelationalOperator.EQUAL, TaskState.PARKED.intValue());
		}
		return WF_TEAM_RUNNING_TASK_STATES_PROPERTY_FILTER;
	}
	
	private static IPropertyFilter getWfAdministratorRunningTaskStatesPropertyFilter()
	{
		if (WF_ADMINISTRATOR_RUNNING_TASK_STATES_PROPERTY_FILTER == null)
		{
			WF_ADMINISTRATOR_RUNNING_TASK_STATES_PROPERTY_FILTER = Ivy.wf().createTaskPropertyFilter(
						TaskProperty.STATE, RelationalOperator.UNEQUAL, TaskState.DONE.intValue()).or(
						TaskProperty.STATE, RelationalOperator.UNEQUAL, TaskState.DESTROYED.intValue());
		}
		return WF_ADMINISTRATOR_RUNNING_TASK_STATES_PROPERTY_FILTER;
	}
	
	
	
	
	
	
	private static IPropertyFilter getFinishedTaskStatesPropertyFilterByTaskDisplayMode(int taskDisplayMode) throws Exception
	{
		switch(taskDisplayMode)
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
		READY_FOR_JOIN
		JOINING
		JOIN_FAILED
		DONE
		DESTROYED
	 */
	private static IPropertyFilter getWfUserFinishedTaskStatesPropertyFilter() throws Exception
	{
		if (WF_USER_FINISHED_TASK_STATES_PROPERTY_FILTER == null)
		{
			WF_USER_FINISHED_TASK_STATES_PROPERTY_FILTER = 
					Ivy.wf().createTaskPropertyFilter(TaskProperty.STATE, RelationalOperator.EQUAL, TaskState.READY_FOR_JOIN.intValue()).or(
							TaskProperty.STATE, RelationalOperator.EQUAL, TaskState.JOINING.intValue()).or(
									TaskProperty.STATE, RelationalOperator.EQUAL, TaskState.JOIN_FAILED.intValue()).or(
											TaskProperty.STATE, RelationalOperator.EQUAL, TaskState.DONE.intValue()).or(
													TaskProperty.STATE, RelationalOperator.EQUAL, TaskState.DESTROYED.intValue());
		
		}
		return WF_USER_FINISHED_TASK_STATES_PROPERTY_FILTER;
	}
	
	
	
	private static IPropertyFilter getWfTeamFinishedTaskStatesPropertyFilter()
	{
		if (WF_TEAM_FINISHED_TASK_STATES_PROPERTY_FILTER == null)
		{
			WF_TEAM_FINISHED_TASK_STATES_PROPERTY_FILTER = 
				Ivy.wf().createTaskPropertyFilter(TaskProperty.STATE, RelationalOperator.EQUAL, TaskState.READY_FOR_JOIN.intValue()).or(
						TaskProperty.STATE, RelationalOperator.EQUAL, TaskState.JOINING.intValue()).or(
								TaskProperty.STATE, RelationalOperator.EQUAL, TaskState.JOIN_FAILED.intValue()).or(
										TaskProperty.STATE, RelationalOperator.EQUAL, TaskState.DONE.intValue()).or(
												TaskProperty.STATE, RelationalOperator.EQUAL, TaskState.DESTROYED.intValue());
		}
		return WF_TEAM_FINISHED_TASK_STATES_PROPERTY_FILTER;
	}

	
	
	
	private static IPropertyFilter getWfAdministratorFinishedTaskStatesPropertyFilter()
	{
		if (WF_ADMINISTRATOR_FINISHED_TASK_STATES_PROPERTY_FILTER == null)
		{
			WF_ADMINISTRATOR_FINISHED_TASK_STATES_PROPERTY_FILTER = 
				Ivy.wf().createTaskPropertyFilter(TaskProperty.STATE, RelationalOperator.EQUAL, TaskState.READY_FOR_JOIN.intValue()).or(
						TaskProperty.STATE, RelationalOperator.EQUAL, TaskState.JOINING.intValue()).or(
								TaskProperty.STATE, RelationalOperator.EQUAL, TaskState.JOIN_FAILED.intValue()).or(
										TaskProperty.STATE, RelationalOperator.EQUAL, TaskState.DONE.intValue()).or(
												TaskProperty.STATE, RelationalOperator.EQUAL, TaskState.DESTROYED.intValue());
		}
		return WF_ADMINISTRATOR_FINISHED_TASK_STATES_PROPERTY_FILTER;
	}	
	
	
	
	
	
	public static List findTaskCategories(IPropertyFilter categoryFilter, TaskProperty categoryProperty, OrderDirection categoryPropertyOrder, 
			boolean runningTaskMode, int taskDisplayMode) throws Exception
	{	
		
		switch(taskDisplayMode)
		{
		case 0:
			return (runningTaskMode? 
					Ivy.session().findWorkTaskCategories(categoryFilter, categoryProperty, categoryPropertyOrder, getIncludeRunningTaskState()):
					Ivy.session().findWorkedOnTaskCategories(categoryFilter, categoryProperty, categoryPropertyOrder)
			);

		case 1:
			// team tasks
			return (runningTaskMode?
					Ivy.session().findWorkTaskCategories(categoryFilter, categoryProperty, categoryPropertyOrder, getIncludeRunningTaskState()):
					Ivy.session().findWorkedOnTaskCategories(categoryFilter, categoryProperty, categoryPropertyOrder)
			);
								
		case 2:
			// all environment's tasks
			return Ivy.wf().findTaskCategories(categoryFilter, categoryProperty, categoryPropertyOrder);

								
		default:
			return null;
		}
	}
	
	
	
	public static IQueryResult findTasks(IPropertyFilter filter, List order, int startIndex, int count, boolean returnAllCount, boolean runningTaskMode, int taskDisplayMode) throws Exception
	{
		
		switch (taskDisplayMode)
		{
		case 0:
			// your tasks
			return (runningTaskMode?
					Ivy.session().findWorkTasks(filter, order, startIndex, count, returnAllCount, getIncludeRunningTaskState()):
					Ivy.session().findWorkedOnTasks(filter, order, startIndex, count, returnAllCount)
					);
			
		case 1:
			// team tasks
			return (runningTaskMode?
				Ivy.session().findWorkTasks(filter, order, startIndex, count, returnAllCount, getIncludeRunningTaskState()):
				Ivy.session().findWorkedOnTasksByRole((Ivy.session().getSessionUser() != null? Ivy.session().getSessionUser().getRoles(): null), 
						filter, order, startIndex, count, returnAllCount)
				);
			
		case 2:
			// all environment's tasks
			return Ivy.wf().findTasks(filter, order, startIndex, count, returnAllCount);
		
		default:
			return null;
		
		}
	}



	private static java.util.EnumSet getIncludeRunningTaskState() {
		if (INCLUDE_RUNNING_TASK_STATE == null)
		{
			INCLUDE_RUNNING_TASK_STATE = java.util.EnumSet.of(TaskState.SUSPENDED, TaskState.RESUMED, TaskState.PARKED);
		}
		return INCLUDE_RUNNING_TASK_STATE;
	}

}