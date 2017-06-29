package ch.ivyteam.wf.common;

import ch.ivyteam.ivy.workflow.start.IWebStartable;

public class ProcessListUtil
{

	public static boolean isWorkflowHome(IWebStartable startable)
	{
		return startable.getLink().getRelative().endsWith("DefaultApplicationHomePage.ivp");
	}
}
