package ch.ivyteam.ivy.workflow.ui.utils;

import ch.ivyteam.ivy.environment.Ivy;

public class UserSessionAttributesHelper
{	 	
	private static final String WORKFLOW_UI_SESSION_IS_INITIALIZED = "xivy.workflow.ui.params.sessionIsInitialized";

	public static boolean isWorkflowUISessionInitialized()
	{
		return Ivy.session().getAttribute(WORKFLOW_UI_SESSION_IS_INITIALIZED) != null && 
			"true".equals(Ivy.session().getAttribute(WORKFLOW_UI_SESSION_IS_INITIALIZED));
	}

	public static void setWorkflowUISessionInitialized(boolean initialized) {
		Ivy.session().setAttribute(WORKFLOW_UI_SESSION_IS_INITIALIZED, initialized? "true": "false");
	}
		
}