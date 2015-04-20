package ch.ivyteam.wf.history;

import ch.ivyteam.ivy.scripting.objects.List;
import ch.ivyteam.ivy.workflow.ITask;

public class CaseDetailUtil 
{
	static public List<ITask> filterTasksOfCase(List<ITask> listOfTasks, boolean showSystemTasks) 
	{
		if (!showSystemTasks) 
		{
			for (ITask task : listOfTasks) 
			{
				if ("#SYSTEM".equals(task.getActivatorName())) 
				{
					listOfTasks.remove(task);
				}
			}
		}
		return listOfTasks;
	}
}
