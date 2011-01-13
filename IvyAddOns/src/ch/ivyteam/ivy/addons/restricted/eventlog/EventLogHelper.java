package ch.ivyteam.ivy.addons.restricted.eventlog;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.workflow.ICase;
import ch.ivyteam.ivy.workflow.eventlog.IEventLog;

/**
 * 
 * @author tirib, TI-Informatique
 * @since 16.11.2010
 *
 */

public class EventLogHelper {

	
	/**
	 * It returns all case business events
	 * 
	 * @param wfCase
	 * 				case for which business events have to be found
	 * @return
	 * 			list of business events, it could be empty, never null
	 */
	public static List<IEventLog> findBusinessEventLogsAsSystemUser(final ICase wfCase)
    {		
		List<IEventLog> businessEventLogs = null;
		
        try {
        	businessEventLogs = 
        		Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<List<IEventLog>>() {
                            public List<IEventLog> call() throws Exception {
                            	
                            	List<IEventLog> eventLogs = null;
                            	List<IEventLog> filteredEventLogs = new ArrayList<IEventLog>();
                            	                            	
                            	eventLogs = Ivy.wf().findEventLogs(wfCase);
                            	
                            	for (IEventLog eventLog: eventLogs)
                            	{
                            		if (eventLog.isBusinessEvent())
                            			filteredEventLogs.add(eventLog);
                            	}
                            	
                            	return filteredEventLogs;
                            }
            });               
        } catch (Exception e) {
	        Ivy.log().error("Error during the findBusinessEventLogsAsSystemUser(case): " + e.getMessage() + " case identifier: " + wfCase.getIdentifier(), e);
        }
        
		return businessEventLogs;
    }

}
