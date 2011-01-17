package ch.ivyteam.ivy.workflow.ui.restricted.utils;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.workflow.ICase;
import ch.ivyteam.ivy.workflow.IWorkflowEvent;

/** 
 * 
 * @author tirib
 * @date 2010/05/31
 *
 *  It provide the methods to access to the Ivy Public API without need to set the permissions for it
 *   
 *
 */

public class PublicAPIHelper {

		
	/**
	 * Gets the workflow events of the case
	 * @param wfCase
	 * @return list of workflow events 
	 */
	public static List<IWorkflowEvent> getWorkflowEventsAsSystemUser(final ICase wfCase)
    {
		List<IWorkflowEvent> workflowEvents = null;
		
        try {
        	workflowEvents = Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<List<IWorkflowEvent>>() {
                                            public List<IWorkflowEvent> call() throws Exception {
                                            		return wfCase.getWorkflowEvents();
                                            }
            });               
        } catch (Exception e) {
	        Ivy.log().error("Error during the getWorkflowEventsAsSystemUser(): " + e.getMessage() + " case: " + wfCase.getIdentifier(), e);
        }
        
		return workflowEvents != null? workflowEvents: new ArrayList<IWorkflowEvent>();
    }
	

}
