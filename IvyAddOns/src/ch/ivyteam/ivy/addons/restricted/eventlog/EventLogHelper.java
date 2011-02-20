package ch.ivyteam.ivy.addons.restricted.eventlog;

import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import ch.ivyteam.ivy.addons.data.technical.eventlog.EventLog;
import ch.ivyteam.ivy.addons.data.technical.eventlog.EventLogData;
import ch.ivyteam.ivy.addons.eventlog.data.technical.EventLogSeverity;
import ch.ivyteam.ivy.addons.eventlog.data.technical.EventLogStatus;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.persistence.IQueryResult;
import ch.ivyteam.ivy.persistence.PersistencyException;
import ch.ivyteam.ivy.scripting.objects.Date;
import ch.ivyteam.ivy.scripting.objects.DateTime;
import ch.ivyteam.ivy.scripting.objects.Time;
import ch.ivyteam.ivy.workflow.ICase;
import ch.ivyteam.ivy.workflow.IPropertyFilter;
import ch.ivyteam.ivy.workflow.IWorkflowContext;
import ch.ivyteam.ivy.workflow.eventlog.EventLogDescription;
import ch.ivyteam.ivy.workflow.eventlog.EventLogProperty;
import ch.ivyteam.ivy.workflow.eventlog.IEventLog;
import ch.ivyteam.log.Logger;
import ch.ivyteam.logicalexpression.RelationalOperator;

/**
 * 
 * @author tirib, tipaj, TI-Informatique
 * @since 16.11.2010
 * 
 */

public class EventLogHelper
{

  /**
   * It returns all case business events
   * 
   * @param wfCase case for which business events have to be found
   * @return list of business events, it could be empty, never null
 * @throws PersistencyException 
   */
  public static List<EventLog> findBusinessEventLogsAsSystemUser(final ICase wfCase) throws PersistencyException
  {
    List<IEventLog> eventLogs = null;
    List<IEventLog> businessEventLogs = new ArrayList<IEventLog>();

    // get all events that are related to that case
    eventLogs = Ivy.wf().findEventLogs(wfCase);

    for (IEventLog eventLog : eventLogs)
    {
      if (eventLog.isBusinessEvent())
    	  businessEventLogs.add(eventLog);
    }

    // sort the list
    sortByEventDateAndTime(businessEventLogs);

    // return the result as List<EventLog>    
    return getEventLogs(businessEventLogs);
   
  }
  
  
  /**
   * It returns true if case has business events; otherwise false.
   * 
   * @param wfCase case for which business events have to be found
   * @return 
 * @throws PersistencyException 
   */
  public static boolean caseContainsBusinessEventLogs(final ICase wfCase) throws PersistencyException
  {
	  boolean result = false;
	  
	  // get all events that are related to that case
	  List<IEventLog> eventLogs = Ivy.wf().findEventLogs(wfCase);
	
	    for (IEventLog eventLog : eventLogs)
	    {
	      if (eventLog.isBusinessEvent())
	      {
	    	  result = true;
	    	  break;
	      }
	    }
	
	 return result;
  }
  
  /**
   * It sorts the entries of the list based on the eventDate AND eventTime property of each entry
   * @param eventLogs is the list of editors to sort
   */
  public static void sortByEventDateAndTime(List<IEventLog> eventLogs)
  {
    Collections.sort(eventLogs, new Comparator<IEventLog>()
      {
        public int compare(IEventLog object1, IEventLog object2)
        {
          int result = -1;
          try
          {
            result = (object1.getEventDate()).compareTo(object2.getEventDate());

            if (result == 0)
              result = (object1.getEventTime()).compareTo(object2.getEventTime());

          }
          catch (PersistencyException e)
          {
            e.printStackTrace();
          }
          return result;
        }
      });
  }

  protected static final String MESSAGE = "MESSAGE";

  private EventLogHelper()
  {
    // This class is an helper class
  }

  /**
   * Creates the physical entry into the event log table.
   * 
   * @param eventLog informations that constitutes an event log entry
   * @param createTaskAndCaseHistory
   * @param wf workflow context
   * @throws Exception
   */
  public static void createEventLog(EventLogData eventLog, boolean createTaskAndCaseHistory,
          IWorkflowContext wf) throws Exception
  {
    EventLogDescription eventLogDescription;
    IEventLog event;
    String applicationName;

    eventLogDescription = new EventLogDescription(eventLog.getMessage(), eventLog.getEventType(), eventLog
            .getEventSubType());

    applicationName = eventLog.getApplication();
    eventLogDescription.setApplicationName(applicationName);
    if (eventLog.getIsBusinessEvent() != null)
    {
      eventLogDescription.setBusinessEvent(eventLog.getIsBusinessEvent());
    }
    eventLogDescription.setContext(eventLog.getContext());
    eventLogDescription.setData(eventLog.getEventData());
    eventLogDescription.setEnvironment(eventLog.getEnvironment());
    eventLogDescription.setErrorCode(eventLog.getErrorCode());
    eventLogDescription.setEventDateAndTime(eventLog.getEventDate() == null ? null : eventLog.getEventDate()
            .toDate(), eventLog.getEventTime() == null ? null : eventLog.getEventTime().toDate());
    eventLogDescription.setGroupId(eventLog.getGroupId());
    eventLogDescription.setInitiator(eventLog.getInitiator());
    eventLogDescription.setObjectId(eventLog.getObjectId());
    eventLogDescription.setServer(eventLog.getServer());
    if (eventLog.getSeverity() != null)
    {
      switch (eventLog.getSeverity())
      {
        case INFO:
          eventLogDescription.setSeverity(ch.ivyteam.ivy.workflow.eventlog.EventLogSeverity.INFO);
          break;
        case WARNING:
          eventLogDescription.setSeverity(ch.ivyteam.ivy.workflow.eventlog.EventLogSeverity.WARNING);
          break;
        case ERROR:
          eventLogDescription.setSeverity(ch.ivyteam.ivy.workflow.eventlog.EventLogSeverity.ERROR);
          break;
        case FATAL:
          eventLogDescription.setSeverity(ch.ivyteam.ivy.workflow.eventlog.EventLogSeverity.FATAL);
          break;
        default:
          eventLogDescription.setSeverity(ch.ivyteam.ivy.workflow.eventlog.EventLogSeverity.FATAL);
          break;
      }
    }
    eventLogDescription.setSource(eventLog.getSource());
    eventLogDescription.setSubsystem(eventLog.getModule());
    eventLogDescription.setSystem(eventLog.getTower());
    eventLogDescription.setUserComment(eventLog.getUserComment());
    eventLogDescription.setUserName(eventLog.getUserName());

    event = wf.createEventLog(eventLogDescription, createTaskAndCaseHistory);

    if (MESSAGE.equals(eventLog.getEventType()))
    {
      event.setStatus(ch.ivyteam.ivy.workflow.eventlog.EventLogStatus.WAITING);
    }
    if (MESSAGE.equals(eventLog.getEventType()) && applicationName != null
            && applicationName.equals(eventLog.getApplication()))
    {
      MessageBeanEngine.getInstance().publish(event.getIdentifier(), applicationName, wf);
    }
  }

  /**
   * Invokes the 'call' method of the given object and update the event log status.
   * 
   * @param event
   * @param callback object on which the method is invoked
   * @param param additional parameter given to the method, it can be null
   * @param log logger
   * @param wf workflow context
   * @return true if the called
   * @throws PersistencyException
   */
  public static synchronized boolean processMessage(EventLog event, IEventLogCallback callback, Object param,
          Logger log, IWorkflowContext wf) throws PersistencyException
  {
    boolean result;

    result = callback.call(event, param);
    if (result)
    {
      updateMessage(event.getEventLogId(), EventLogStatus.PROCESSING, wf);
    }
    return result;
  }

  /**
   * Loops on every untreated messages of a given name for a specific event object identifier and ask an
   * object to process them.
   * 
   * @param messageName name of the
   * @param objectId identifier of the corresponding object
   * @param applicationName name of the Ivy application used as filter
   * @param callback object that is responsible of the treatment
   * @param param additional parameter given to the method, it can be null
   * @param log logger
   * @param wf workflow context
   * @throws PersistencyException
   * @throws InvocationTargetException
   * @throws IllegalAccessException
   * @throws NoSuchMethodException
   * @throws SQLException
   */
  public static synchronized void processMessages(String messageName, String objectId,
          String applicationName, IEventLogCallback callback, Object param, Logger log, IWorkflowContext wf)
          throws PersistencyException, SQLException, NoSuchMethodException, IllegalAccessException,
          InvocationTargetException
  {
    IPropertyFilter<EventLogProperty> filter;
    List<IEventLog> events;

    filter = wf.createEventLogPropertyFilter(EventLogProperty.EVENT_TYPE, RelationalOperator.EQUAL, MESSAGE);
    filter.and(wf.createEventLogPropertyFilter(EventLogProperty.EVENT_SUB_TYPE, RelationalOperator.EQUAL,
            messageName));

    if (objectId != null)
    {
      filter.and(wf.createEventLogPropertyFilter(EventLogProperty.OBJECT_ID, RelationalOperator.EQUAL,
              objectId));
    }
    if (applicationName == null || applicationName.equals(""))
    {
      throw new IllegalArgumentException("Parameter applicationName is mandatory");
    }
    filter.and(wf.createEventLogPropertyFilter(EventLogProperty.APPLICATION_NAME, RelationalOperator.EQUAL,
            applicationName));

    events = new ArrayList<IEventLog>();
    events.addAll(wf.findEventLogs(ch.ivyteam.ivy.workflow.eventlog.EventLogStatus.PENDING, filter, null, 0,
            -1, true).getResultList());
    events.addAll(wf.findEventLogs(ch.ivyteam.ivy.workflow.eventlog.EventLogStatus.WAITING, filter, null, 0,
            -1, true).getResultList());

    for (IEventLog event : events)
    {
      processMessage(getEventLog(event), callback, param, log, wf);
    }
  }

  /**
   * Reads an event log entry.
   * 
   * @param eventLogId identifier of the event log entry
   * @param applicationName name of the Ivy application used as filter
   * @param wf workflow context
   * @return event log information
   * @throws PersistencyException
   */
  public static synchronized EventLog read(Integer eventLogId, String applicationName, IWorkflowContext wf)
          throws PersistencyException
  {
    EventLog result;
    IQueryResult<IEventLog> recordset;
    IPropertyFilter<EventLogProperty> filter;

    filter = wf.createEventLogPropertyFilter(EventLogProperty.ID, RelationalOperator.EQUAL, eventLogId);
    if (applicationName != null && !applicationName.equals(""))
    {
      filter.and(wf.createEventLogPropertyFilter(EventLogProperty.APPLICATION_NAME, RelationalOperator.EQUAL,
              applicationName));
    }

    recordset = wf.findEventLogs(filter, null, 0, -1, true);

    result = null;
    if (recordset.getAllCount() == 1)
    {
      result = getEventLogs(recordset.getResultList()).get(0);
    }

    return result;
  }

  /**
   * Reads every event log entries.
   * 
   * @param applicationName if not null, used as filter on the applicationName field
   * @param wf workflow context
   * @return the resulting list
   * @throws PersistencyException
   */
  public static synchronized List<EventLog> readAll(String applicationName, IWorkflowContext wf)
          throws PersistencyException
  {
    List<EventLog> result;
    IPropertyFilter<EventLogProperty> filter;

    filter = null;
    if (applicationName != null && !applicationName.equals(""))
    {
      filter = wf.createEventLogPropertyFilter(EventLogProperty.APPLICATION_NAME, RelationalOperator.EQUAL,
              applicationName);
    }
    result = getEventLogs(wf.findEventLogs(filter, null, 0, -1, true).getResultList());

    return result;
  }

  /**
   * Reads all the event log entries of a given case.
   * 
   * @param caseId identifier of the case
   * @param wf workflow context
   * @return the resulting list
   * @throws PersistencyException
   */
  public static synchronized List<EventLog> readAllByCase(Integer caseId, IWorkflowContext wf)
          throws PersistencyException
  {
    List<EventLog> result;
    ICase wfCase;

    wfCase = new DummyCase(caseId);

    result = null;
    if (wfCase != null)
    {
      result = getEventLogs(wf.findEventLogs(wfCase));
    }
    return result;
  }

  /**
   * Reads all the event log entries of a given task.
   * 
   * @param taskId identifier of the task
   * @param wf workflow context
   * @return the resulting list
   * @throws PersistencyException
   */
  public static synchronized List<EventLog> readAllByTask(Integer taskId, IWorkflowContext wf)
          throws PersistencyException
  {
    List<EventLog> result;

    result = getEventLogs(wf.findEventLogs(wf.findTask(taskId)));

    return result;
  }

  protected static List<EventLog> getEventLogs(List<IEventLog> findEventLogs) throws PersistencyException
  {
    List<EventLog> result;

    result = new ArrayList<EventLog>();
    for (IEventLog event : findEventLogs)
    {
      result.add(getEventLog(event));
    }
    return result;
  }

  private static EventLog getEventLog(IEventLog event) throws PersistencyException
  {
    EventLog eventLog;
    EventLogData eventLogData;
    EventLogSeverity severity;

    eventLog = new EventLog();
    eventLogData = new EventLogData();
    eventLog.setData(eventLogData);
    eventLog.setEventLogId(event.getIdentifier());
    eventLog.setTimeStamp(new DateTime(event.getTimestamp()));
    eventLogData.setApplication(event.getApplicationName());
    eventLogData.setContext(event.getContext());
    eventLogData.setEnvironment(event.getEnvironment());
    eventLogData.setErrorCode(event.getErrorCode());
    eventLogData.setEventData(event.getEventData());
    eventLogData.setEventDate(event.getEventDate() != null ? new Date(event.getEventDate()) : null);
    eventLogData.setEventTime(event.getEventTime() != null ? new Time(event.getEventTime()) : null);
    eventLogData.setEventSubType(event.getEventSubType());
    eventLogData.setEventType(event.getEventType());
    eventLogData.setGroupId(event.getGroupId());
    eventLogData.setInitiator(event.getInitiator());
    eventLogData.setIsBusinessEvent(event.isBusinessEvent());
    eventLogData.setMessage(event.getMessage());
    eventLogData.setModule(event.getSubsystem());
    eventLogData.setObjectId(event.getObjectId());
    eventLogData.setServer(event.getServer());
    eventLogData.setTower(event.getSystem());
    eventLogData.setUserComment(event.getUserComment());
    eventLogData.setUserName(event.getUserName());
    switch (event.getSeverity())
    {
      case INFO:
        severity = EventLogSeverity.INFO;
        break;
      case WARNING:
        severity = EventLogSeverity.WARNING;
        break;
      case ERROR:
        severity = EventLogSeverity.ERROR;
        break;
      case FATAL:
        severity = EventLogSeverity.FATAL;
        break;
      default:
        severity = null;
        break;
    }
    eventLogData.setSeverity(severity);
    eventLogData.setSource(event.getSource());

    return eventLog;
  }

  /**
   * Updates the status of a given event log entry.
   * 
   * @param eventLogId identifier of the event log to update
   * @param status new status
   * @param wf workflow context
   * @throws PersistencyException
   */
  public static synchronized void updateMessage(int eventLogId, EventLogStatus status, IWorkflowContext wf)
          throws PersistencyException
  {
    IQueryResult<IEventLog> recordset;
    IPropertyFilter<EventLogProperty> filter;
    ch.ivyteam.ivy.workflow.eventlog.EventLogStatus ivyStatus;

    ivyStatus = null;
    switch (status)
    {
      case PENDING:
        ivyStatus = ch.ivyteam.ivy.workflow.eventlog.EventLogStatus.PENDING;
        break;
      case PROCESSED:
        ivyStatus = ch.ivyteam.ivy.workflow.eventlog.EventLogStatus.PROCESSED;
        break;
      case PROCESSING:
        ivyStatus = ch.ivyteam.ivy.workflow.eventlog.EventLogStatus.PROCESSING;
        break;
      case WAITING:
        ivyStatus = ch.ivyteam.ivy.workflow.eventlog.EventLogStatus.WAITING;
        break;
    }

    filter = wf.createEventLogPropertyFilter(EventLogProperty.ID, RelationalOperator.EQUAL, eventLogId);
    recordset = wf.findEventLogs(filter, null, 0, -1, true);

    if (recordset.getAllCount() == 1 && ivyStatus != null)
    {
      recordset.get(0).setStatus(ivyStatus);
    }
  }
}
