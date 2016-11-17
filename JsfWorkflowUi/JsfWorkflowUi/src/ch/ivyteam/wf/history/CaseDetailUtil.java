package ch.ivyteam.wf.history;

import java.util.ArrayList;

import org.apache.commons.collections4.CollectionUtils;

import ch.ivyteam.ivy.scripting.objects.List;
import ch.ivyteam.ivy.workflow.ITask;

public class CaseDetailUtil 
{
	static public List<ITask> filterTasksOfCase(List<ITask> listOfTasks, boolean showSystemTasks) 
	{
		if (!showSystemTasks) 
		{
			listOfTasks = List.create(ITask.class, new ArrayList<>(listOfTasks));
			CollectionUtils.filterInverse(listOfTasks, task -> "#SYSTEM".equals(task.getActivatorName()));
		}
		return listOfTasks;
	}
}
