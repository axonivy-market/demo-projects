package ch.ivyteam.wf;

import javax.faces.bean.ApplicationScoped;
import javax.faces.bean.ManagedBean;

import ch.ivyteam.ivy.security.ISecurityMember;
import ch.ivyteam.ivy.workflow.CaseState;
import ch.ivyteam.ivy.workflow.TaskState;
import ch.ivyteam.ivy.workflow.WorkflowPriority;

@ManagedBean
@ApplicationScoped
public class IconConverter 
{
	public String getSecurityMemberIcon(ISecurityMember member) {
		if (member == null) {
			return "";
		}
		if (member.isUser()) {
			return "fa fa-user";
		}
		return "fa fa-users";
	}

	public String getCaseIcon(CaseState state)
	{
		switch (state) 
		{
		case CREATED:
			return "pencil-square-o case-state-created";
		case DESTROYED:
			return "minus-circle case-state-destroyed";
		case DONE:
			return "check case-state-done";
		case RUNNING:
			return "gears case-state-running";
		case ZOMBIE:
			return "exclamation-circle case-state-zombie";
		}
		return "";
	}


	public String getTaskIcon(TaskState state) 
	{
		switch (state) 
		{
		case CREATED:
			return "pencil-square-o task-state-created";
		case DELAYED:
			return "clock-o task-state-delayed";
		case DESTROYED:
			return "minus-circle task-state-destroyed";
		case DONE:
			return "check task-state-done";
		case FAILED:
			return "times-circle task-state-failed";
		case JOINING:
			return "spinner task-state-joining";
		case JOIN_FAILED:
			return "ban task-state-join-failed";
		case PARKED:
			return "pause task-state-parked";
		case READY_FOR_JOIN:
			return "ellipsis-h task-state-ready-for-join";
		case RESUMED:
			return "cogs task-state-resumed";
		case SUSPENDED:
			return "cog task-state-suspended";
		case UNASSIGNED:
			return "exclamation-triangle task-state-unassigned";
		case WAITING_FOR_INTERMEDIATE_EVENT:
			return "spinner task-state-waiting-for-intermediate-event";
		case ZOMBIE:
			return "exclamation-circle task-state-zombie";
		}
		return "";
	}

	public String getPriorityIcon(WorkflowPriority priority)
	{
		
		switch (priority) 
		{
		case EXCEPTION:
			return "exclamation priority-exception";
		case HIGH:
			return "arrow-up priority-high";
		case LOW:
			return "arrow-down priority-low";
		case NORMAL:
			return "arrow-right priority-normal";
		}
		return "";
	}
	
	public String getPriorityMailIcon(WorkflowPriority priority)
	{
		switch (priority)
		{
		case EXCEPTION:
			return "exclamation-mail";
		case HIGH:
			return "arrow-up-mail";
		case LOW:
			return "arrow-down-mail";
		case NORMAL:
			return "arrow-right-mail";
		}
		return "";
	}
}