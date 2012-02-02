package ch.ivyteam.ivy.addons.intermediateevent.beans;

import java.awt.Component;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;

import ch.ivyteam.ivy.addons.data.technical.eventlog.EventLog;
import ch.ivyteam.ivy.addons.data.technical.eventlog.EventLogMessage;
import ch.ivyteam.ivy.addons.restricted.eventlog.EventLogHelper;
import ch.ivyteam.ivy.addons.restricted.eventlog.EventLogMessageProvider;
import ch.ivyteam.ivy.addons.restricted.eventlog.IEventLogCallback;
import ch.ivyteam.ivy.addons.restricted.eventlog.IEventLogMessageSubscriber;
import ch.ivyteam.ivy.addons.restricted.eventlog.MessageBeanEngine;
import ch.ivyteam.ivy.application.IApplication;
import ch.ivyteam.ivy.application.ReleaseState;
import ch.ivyteam.ivy.persistence.PersistencyException;
import ch.ivyteam.ivy.process.eventstart.IProcessStartEventBeanConfigurationEditorEx;
import ch.ivyteam.ivy.process.extension.IProcessExtensionConfigurationEditorEnvironment;
import ch.ivyteam.ivy.process.intermediateevent.AbstractProcessIntermediateEventBean;
import ch.ivyteam.ivy.process.intermediateevent.IProcessIntermediateEventBeanRuntime;
import ch.ivyteam.ivy.process.intermediateevent.IProcessIntermediateEventFiringResult;
import ch.ivyteam.ivy.process.intermediateevent.IntermediateEventFiringResult;
import ch.ivyteam.ivy.workflow.ICase;
import ch.ivyteam.ivy.workflow.IIntermediateEvent;
import ch.ivyteam.ivy.workflow.IIntermediateEventElement;
import ch.ivyteam.ivy.workflow.IPropertyFilter;
import ch.ivyteam.ivy.workflow.ITask;
import ch.ivyteam.ivy.workflow.IWorkflowContext;
import ch.ivyteam.ivy.workflow.IntermediateEventProperty;
import ch.ivyteam.ivy.workflow.IntermediateEventState;
import ch.ivyteam.ivy.workflow.WorkflowNavigationUtil;
import ch.ivyteam.logicalexpression.RelationalOperator;
import ch.ivyteam.util.Flag;

/**
 * This bean wait on a message. A message is an EventLog entry that has 'MESSAGE' as EventType and the the
 * message name as EventSubType. This implementation permits to fire the task that have the ObjectId of the
 * message equals to the value given at the end of the event identifier with format '-ObjectId=xxx' or in the
 * 'Case Business Object Code' of the case.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 21.01.2011
 */
public class MessageIntermediateEventBean extends AbstractProcessIntermediateEventBean implements
        IEventLogMessageSubscriber
{
  private static final String EVENT_DESCRIPTION = "This bean wait on a message.\nA message is an EventLog entry that has 'MESSAGE' as EventType and the the message name as EventSubType.\nThis implementation permits to fire the task that have the ObjectId of the message equals to the value given at the end of the event identifier with format '-ObjectId=xxx' or in the 'Case Business Object Code' of the case.";

  public static class Editor extends JPanel implements IProcessStartEventBeanConfigurationEditorEx
  {
    private static final String MESSAGE_NAME = "Name of the message to listen";

    private static final long serialVersionUID = 1L;

    @SuppressWarnings("unused")
    private IProcessExtensionConfigurationEditorEnvironment env;

    private JTextField receiverName;

    public Editor()
    {
      super(new GridBagLayout());
    }

    public boolean acceptInput()
    {
      return true;
    }

    public Component getComponent()
    {
      return this;
    }

    public String getConfiguration()
    {
      return receiverName.getText();
    }

    public void setConfiguration(String config)
    {
      StringTokenizer st = new StringTokenizer(config, CONFIG_SEPARATOR);
      if (st.hasMoreElements())
        receiverName.setText(st.nextElement().toString());
    }

    public void setEnvironment(IProcessExtensionConfigurationEditorEnvironment env)
    {
      this.env = env;
      GridBagConstraints c;

      receiverName = new JTextField();

      c = new GridBagConstraints();

      c.fill = GridBagConstraints.HORIZONTAL;
      c.weightx = 1;
      c.gridy = 0;
      c.gridx = 0;

      add(
              new JLabel("<html><body>" + EVENT_DESCRIPTION.replaceAll("\n", "<br>")
                      + "<br>&nbsp;</body></html>"), c);
      c.gridy++;
      add(new JLabel(MESSAGE_NAME), c);
      c.gridy++;
      add(receiverName, c);
    }
  }

  private class EventLogCallback implements IEventLogCallback
  {

    public boolean call(EventLog eventLog, Object param)
    {
      IIntermediateEvent event;
      boolean result;

      result = false;

      if (param instanceof IIntermediateEvent)
      {
        event = (IIntermediateEvent) param;

        result = fireEvent(event, eventLog);
      }
      return result;
    }
  }

  /**
   * Separator used between parameters of the bean configuration
   */
  private static final String CONFIG_SEPARATOR = "|";

  /**
   * Name of the message to listen.
   */
  private String messageName;

  /**
   * Used to avoid two thread processing the same intermediate event element in the same time
   */
  private Flag oneThreadIsProcessing = new Flag(false);

  /**
   * Constructs the MessageIntermediateEventBean and fills bean information.
   */
  public MessageIntermediateEventBean()
  {
    super(MessageIntermediateEventBean.class.getSimpleName(), EVENT_DESCRIPTION, Object.class);
  }

  /**
   * {@inheritDoc}
   */
  public void call(EventLogMessageProvider arg0, EventLog eventLog)
  {
    if (eventLog != null)
    {
      if (messageName.equals(eventLog.getData().getEventSubType()))
      {
        searchTaskAndFireEvent(eventLog);
      }
    }
  }

  /**
   * Prepares the parameter and fire the event.
   * 
   * @param event intermediate event
   * @param eventLog event log
   * @return true if the event is fired; false otherwise
   */
  private boolean fireEvent(IIntermediateEvent event, EventLog eventLog)
  {
    boolean result;
    EventLogMessage message;
    IProcessIntermediateEventFiringResult fireResult;

    message = new EventLogMessage();
    message.setEventLogId(eventLog.getEventLogId());
    message.setMessage(eventLog.getData().getMessage());

    result = false;

    try
    {
      if (event.getState() == IntermediateEventState.WAITING)
      {
        logInfo("Fire event listening on message '" + messageName + "' for object '"
                + eventLog.getData().getObjectId() + "'");

        fireResult = fireProcessIntermediateEventEx(event.getEventIdentifier(), message);

        result = fireResult.getFiringResult().equals(IntermediateEventFiringResult.PROCESSED);

        assert result == true;
      }
    }
    catch (Exception e)
    {
      logError("Unable to fire event", e);
    }
    return result;
  }

  /**
   * Fires the intermediate event.
   * 
   * @param id intermediate event identifier
   * @param data parameter received as output of the intermediate event element
   * @return result of the firing
   * @throws Exception
   */
  public IProcessIntermediateEventFiringResult fireProcessIntermediateEventEx(String id, Object data)
          throws Exception
  {
    return getEventBeanRuntime().fireProcessIntermediateEventEx(id, data, null);
  }

  /**
   * Prepares the message used with logger.
   * 
   * @param message initial message to log
   * @return a formated message
   */
  private String getMessage(String message)
  {
    return getClass().getSimpleName() + "/" + messageName + " " + message;
  }

  /**
   * {@inheritDoc}
   */
  public Class<?> getResultObjectClass()
  {
    return EventLogMessage.class;
  }

  /**
   * {@inheritDoc}
   */
  public void initialize(IProcessIntermediateEventBeanRuntime eventRuntime, String configuration)
  {
    super.initialize(eventRuntime, configuration);

    boolean isProcessModelVersionReleased;

    try
    {
      StringTokenizer st = new StringTokenizer(configuration, CONFIG_SEPARATOR);
      if (st.hasMoreElements())
      {
        messageName = st.nextElement().toString();
      }

      if (messageName == null || messageName.length() == 0)
      {
        logError("Intermediate Event Bean Disabled. Message name not set on the element configuration.");
        eventRuntime.setPollTimeInterval(0L);
        return;
      }

      isProcessModelVersionReleased = false;

      isProcessModelVersionReleased = eventRuntime.getIntermediateEventElement().getProcessModelVersion()
              .getReleaseState() == ReleaseState.RELEASED;

      if (isProcessModelVersionReleased)
      {
        MessageBeanEngine.getInstance().addSubscriber(messageName, this, eventRuntime.getRuntimeLogLogger());
      }
    }
    catch (Exception e)
    {
      logError("Error initalizing intermediate event bean", e);
      eventRuntime.setPollTimeInterval(0L);
    }
  }

  /**
   * Log an error message with the event bean logger.
   * 
   * @param message message to log
   */
  private void logError(String message)
  {
    getEventBeanRuntime().getRuntimeLogLogger().error(getMessage(message));
  }

  /**
   * Log an error message with the event bean logger.
   * 
   * @param message message to log
   * @param e exception associated to the message
   */
  private void logError(String message, Exception e)
  {
    getEventBeanRuntime().getRuntimeLogLogger().error(getMessage(message), e);
  }

  /**
   * Log an information message with the event bean logger.
   * 
   * @param message message to log
   */
  private void logInfo(String message)
  {
    getEventBeanRuntime().getRuntimeLogLogger().info(getMessage(message));
  }

  @Override
  public void poll()
  {
    if (oneThreadIsProcessing.getValue())
    {
      // there is still an other thread reading, stop this thread
      return;
    }

    synchronized (oneThreadIsProcessing)
    {
      oneThreadIsProcessing.setValue(true);
      try
      {
        logInfo("Start polling");
        searchMessageAndFireEvent();
      }
      finally
      {
        oneThreadIsProcessing.setValue(false);
      }
    }
  }

  /**
   * For each task waiting on an event search if the corresponding messages is arrived.
   */
  private void searchMessageAndFireEvent()
  {
    String businessObjectCode;
    String applicationName;
    IPropertyFilter<IntermediateEventProperty> eventFilter;
    IIntermediateEventElement intermediateEventElement;

    try
    {
      applicationName = getEventBeanRuntime().getIntermediateEventElement().getProcessModelVersion()
              .getApplication().getName();

      // gets the intermediate event element of this intermediate event bean
      intermediateEventElement = getEventBeanRuntime().getIntermediateEventElement();

      // create filter to search for intermediate events that are still waiting
      eventFilter = intermediateEventElement.getProcessModelVersion().getWorkflowContext()
              .createIntermediateEventPropertyFilter(IntermediateEventProperty.STATE,
                      RelationalOperator.EQUAL, IntermediateEventState.WAITING.intValue());

      // iterate over all waiting intermediate events of the intermediate event element
      for (IIntermediateEvent event : getEventBeanRuntime().getIntermediateEventElement()
              .findIntermediateEvents(eventFilter, null, 0, -1, false).getResultList())
      {
        businessObjectCode = getObjectId(event);
        if (businessObjectCode != null)
        {
          EventLogHelper.processMessages(this.messageName, businessObjectCode, applicationName,
                  new EventLogCallback(), event, getEventBeanRuntime().getRuntimeLogLogger(),
                  getWorkflowContext());
        }
      }
    }
    catch (Exception ex)
    {
      logError("Could not evaluate if an event should be fired", ex);
    }
  }

  /**
   * Gets the object id on which the current intermediate event is waiting
   * 
   * @param event intermediate event
   * @return object id
   * @throws PersistencyException
   */
  private static String getObjectId(IIntermediateEvent event) throws PersistencyException
  {
    String objectId;
    Matcher matcher;

    objectId = null;

    matcher = Pattern.compile("^.*-ObjectId=(.*)$").matcher(event.getEventIdentifier());
    if (matcher.matches())
    {
      objectId = matcher.group(1);
    }

    if (objectId == null || "".equals(objectId))
    {
      objectId = getBusinessObjectCode(event);
    }

    return objectId;
  }

  /**
   * Gets the business object code of the case waiting on this intermediate event.
   * 
   * @param event intermediate event
   * @return business object code
   * @throws PersistencyException
   */
  private static String getBusinessObjectCode(IIntermediateEvent event) throws PersistencyException
  {
    ITask wfTask;
    ICase wfCase;
    String businessObjectCode;

    businessObjectCode = null;

    wfTask = event.getTask();
    if (wfTask != null)
    {
      wfCase = wfTask.getCase();
      if (wfCase != null)
      {
        businessObjectCode = wfCase.getBusinessObjectCode();
      }
    }
    return businessObjectCode;
  }

  /**
   * For each task waiting on an event check if the received message is corresponding.
   * 
   * @param eventLog message event log
   * @return true if an event is fired; false otherwise
   */
  private boolean searchTaskAndFireEvent(EventLog eventLog)
  {
    boolean result;

    result = false;
    try
    {
      List<IIntermediateEvent> events;
      IPropertyFilter<IntermediateEventProperty> eventFilter;
      IIntermediateEventElement intermediateEventElement;
      String objectId;

      events = new ArrayList<IIntermediateEvent>();

      // gets the intermediate event element of this intermediate event bean
      intermediateEventElement = getEventBeanRuntime().getIntermediateEventElement();

      // create filter to search for intermediate events that are still waiting
      eventFilter = intermediateEventElement.getProcessModelVersion().getWorkflowContext()
              .createIntermediateEventPropertyFilter(IntermediateEventProperty.STATE,
                      RelationalOperator.EQUAL, IntermediateEventState.WAITING.intValue());

      // iterate over all waiting intermediate events of the intermediate event element
      for (IIntermediateEvent event : intermediateEventElement.findIntermediateEvents(eventFilter, null, 0,
              -1, false).getResultList())
      {
        objectId = getObjectId(event);

        if (objectId == null || "".equals(objectId))
        {
          objectId = getBusinessObjectCode(event);
        }
        if (objectId == null)
        {
          continue;
        }
        if (!objectId.equals(eventLog.getData().getObjectId()))
        {
          continue;
        }

        if (event.getState() != IntermediateEventState.WAITING)
        {
          continue;
        }

        events.add(event);
      }

      assert events.size() <= 1;

      for (IIntermediateEvent event : events)
      {
        result = EventLogHelper.processMessage(eventLog, new EventLogCallback(), event, getEventBeanRuntime()
                .getRuntimeLogLogger(), getWorkflowContext());
      }
    }
    catch (Exception ex)
    {
      logError("Could not evaluate if an event should be fired", ex);
    }
    return result;
  }

  /**
   * Get a workflow context.
   * 
   * @return the workflow context of the application
   * @throws PersistencyException
   */
  private IWorkflowContext getWorkflowContext() throws PersistencyException
  {
    IApplication application = getEventBeanRuntime().getIntermediateEventElement().getProcessModelVersion()
            .getApplication();
    return WorkflowNavigationUtil.getWorkflowContext(application);
  }
}
