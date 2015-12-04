package ch.ivyteam.wf;

import javax.faces.bean.ApplicationScoped;
import javax.faces.bean.ManagedBean;

import ch.ivyteam.ivy.workflow.CaseState;
import ch.ivyteam.ivy.workflow.TaskState;
import ch.ivyteam.ivy.workflow.WorkflowPriority;

@ManagedBean
@ApplicationScoped
public class IconConverter 
{

	public String getCaseIcon(CaseState state)
	{
		switch (state) 
		{
		case CREATED:
			return "pencil-square-o";
		case DESTROYED:
			return "minus-circle";
		case DONE:
			return "check";
		case RUNNING:
			return "cogs";
		case ZOMBIE:
			return "exclamation-circle";
		}
		return "";
	}

	public String getCaseColor(CaseState state)
	{
		switch (state)
		{
		case CREATED:
			return "green";
		case DESTROYED:
			return "red";
		case DONE:
			return "green";
		case RUNNING:
			return ""; //Standard gray
		case ZOMBIE:
			return "";
		
		}
		return "";
	}

	public String getTaskIcon(TaskState state) 
	{
		switch (state) 
		{
		case CREATED:
			return "pencil-square-o";
		case DELAYED:
			return "clock-o";
		case DESTROYED:
			return "minus-circle";
		case DONE:
			return "check";
		case FAILED:
			return "times-circle";
		case JOINING:
			return "spinner";
		case JOIN_FAILED:
			return "ban";
		case PARKED:
			return "pause";
		case READY_FOR_JOIN:
			return "ellipsis-h";
		case RESUMED:
			return "cogs";
		case SUSPENDED:
			return "cog";
		case UNASSIGNED:
			return "exclamation-triangle";
		case WAITING_FOR_INTERMEDIATE_EVENT:
			return "spinner";
		case ZOMBIE:
			return "exclamation-circle";
		}
		return "";
	}

	public String getTaskColor(TaskState state)
	{
		switch (state) 
		{
		case CREATED:
			return "green";
		case DELAYED:
			return "orange";
		case DESTROYED:
			return "red";
		case DONE:
			return "green";
		case FAILED:
			return "red";
		case JOINING:
			return "blue";
		case JOIN_FAILED:
			return "red";
		case PARKED:
			return "blue";
		case READY_FOR_JOIN:
			return "orange";
		case RESUMED:
			return "blue";
		case SUSPENDED:
			return "blue";
		case UNASSIGNED:
			return "orange";
		case WAITING_FOR_INTERMEDIATE_EVENT:
			return "orange";
		case ZOMBIE:
			return "";

		}
		return "";
	}

	public String getPriorityIcon(WorkflowPriority priority)
	{
		
		switch (priority) 
		{
		case EXCEPTION:
			return "exclamation";
		case HIGH:
			return "arrow-up";
		case LOW:
			return "arrow-down";
		case NORMAL:
			return "arrow-right";
		}
		return "";
	}

	public String getPriorityColor(WorkflowPriority priority) 
	{
		switch (priority)
		{
		case EXCEPTION:
			return "red";
		case HIGH:
			return "red";
		case LOW:
			return "blue";
		case NORMAL:
			return "green";
		}
		return "";
	}

}
