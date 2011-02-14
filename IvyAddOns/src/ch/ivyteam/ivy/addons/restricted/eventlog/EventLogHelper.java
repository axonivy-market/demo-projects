package ch.ivyteam.ivy.addons.restricted.eventlog;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.Callable;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.persistence.PersistencyException;
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
                            	
                            	// sort the list
                            	sortByEventDateAndTime(filteredEventLogs);
                            	// return the result
                            	return filteredEventLogs;
                            }
            });               
        } catch (Exception e) {
	        Ivy.log().error("Error during the findBusinessEventLogsAsSystemUser(case): " + e.getMessage() + " case identifier: " + wfCase.getIdentifier(), e);
        }
        
		return businessEventLogs;
    }
	
	

	/**
	 * It sorts the entries of the list based on the eventDate AND eventTime property of each entry
	 * @param eventLogs is the list of editors to sort
	 */
	public static void sortByEventDateAndTime(List<IEventLog> eventLogs)	
	{
		Collections.sort(eventLogs, new Comparator<IEventLog> ()
		{
			public int compare(IEventLog object1, IEventLog object2)
			{
				int result = -1; 
				try {
					result = (object1.getEventDate()).compareTo(object2.getEventDate());
					
					if (result == 0)
						result = (object1.getEventTime()).compareTo(object2.getEventTime());
					
				} catch (PersistencyException e) {
					e.printStackTrace();
				}
				return result;
			}
		});
	}

}
