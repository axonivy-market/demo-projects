package ch.ivyteam.ivy.addons.eventstart.beans;

import java.awt.Component;
import java.awt.GridLayout;
import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;

import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;

import ch.ivyteam.ivy.addons.data.technical.eventlog.EventLog;
import ch.ivyteam.ivy.addons.restricted.eventlog.EventLogHelper;
import ch.ivyteam.ivy.addons.restricted.eventlog.EventLogMessageProvider;
import ch.ivyteam.ivy.addons.restricted.eventlog.IEventLogCallback;
import ch.ivyteam.ivy.addons.restricted.eventlog.IEventLogMessageSubscriber;
import ch.ivyteam.ivy.addons.restricted.eventlog.MessageBeanEngine;
import ch.ivyteam.ivy.application.IApplication;
import ch.ivyteam.ivy.application.ReleaseState;
import ch.ivyteam.ivy.persistence.PersistencyException;
import ch.ivyteam.ivy.process.eventstart.AbstractProcessStartEventBean;
import ch.ivyteam.ivy.process.eventstart.IProcessStartEventBeanConfigurationEditorEx;
import ch.ivyteam.ivy.process.eventstart.IProcessStartEventBeanRuntime;
import ch.ivyteam.ivy.process.extension.IProcessExtensionConfigurationEditorEnvironment;
import ch.ivyteam.ivy.request.RequestException;
import ch.ivyteam.ivy.workflow.IWorkflowContext;
import ch.ivyteam.ivy.workflow.WorkflowNavigationUtil;
import ch.ivyteam.util.Flag;

/**
 * Implements a start event bean that is waiting on a message. A message is a special case of event log entry
 * that have 'MESSAGE' as event type.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 08.11.2010
 */
public class MessageStartEventBean extends AbstractProcessStartEventBean implements
        IEventLogMessageSubscriber
{
  public static class Editor extends JPanel implements IProcessStartEventBeanConfigurationEditorEx
  {
    private static final long serialVersionUID = 3080497040207032159L;

    private static final String ATTRIBUTE_NAME = "Attribute of type EventLog that receives the message content";

    private static final String MESSAGE_NAME = "Name of the message to listen";

    private JTextField receiverName;

    private JTextField attributeName;

    public Editor()
    {
      super(new GridLayout(4, 2));
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
      return receiverName.getText() + CONFIG_SEPARATOR + attributeName.getText();
    }

    public void setConfiguration(String config)
    {
      StringTokenizer st = new StringTokenizer(config, CONFIG_SEPARATOR);
      if (st.hasMoreElements())
        receiverName.setText(st.nextElement().toString());
      if (st.hasMoreElements())
        attributeName.setText(st.nextElement().toString());
    }

    public void setEnvironment(IProcessExtensionConfigurationEditorEnvironment env)
    {
      receiverName = new JTextField();
      attributeName = new JTextField();

      add(new JLabel(MESSAGE_NAME));
      add(receiverName);
      add(new JLabel(ATTRIBUTE_NAME));
      add(attributeName);
    }
  }

  /**
   * Separator used between parameters of the bean configuration
   */
  private static final String CONFIG_SEPARATOR = "|";

  /**
   * Used to avoid two thread processing the same start event element in the same time
   */
  private Flag oneThreadIsProcessing = new Flag(false);

  /**
   * Name of the message to listen.
   */
  private String messageName;

  /**
   * Name of the attribute of the DC used by the process that receive the parameter.
   */
  private String attributeName;

  public MessageStartEventBean()
  {
    super(MessageStartEventBean.class.getName(),
            "This bean wait on a message. A message is an EventLog entry that has 'MESSAGE' as EventType.");
  }

  /**
   * {@inheritDoc}
   */
  public void call(EventLogMessageProvider provider, EventLog eventLog)
  {
    try
    {
      EventLogHelper.processMessage(eventLog, new IEventLogCallback()
        {
          public boolean call(EventLog eventLog, Object param)
          {
            return fireStartEvent(eventLog);
          }
        }, null, getEventBeanRuntime().getRuntimeLogLogger(), getWorkflowContext());
    }
    catch (Exception ex)
    {
      logError("Could not evaluate if an event should be fired", ex);
    }
  }

  /**
   * Prepares the parameter and fire the start event.
   * 
   * @param eventLog event log
   * @return true if the start event is fired; false otherwise
   */
  private boolean fireStartEvent(EventLog eventLog)
  {
    boolean result;
    Map<String, Object> map;

    result = false;

    try
    {
      if (eventLog != null)
      {
        if (eventLog.getData().getEventSubType().equals(messageName))
        {
          map = new HashMap<String, Object>();

          if (attributeName != null)
          {
            map.put(attributeName, eventLog);
          }

          try
          {
            getEventBeanRuntime().fireProcessStartEventRequest(null, "", map);
            result = true;
          }
          catch (RequestException e)
          {
            logError("Unable to start process", e);
          }
        }
      }
    }
    catch (Exception e)
    {
      logError("Unable to fire event", e);
    }

    return result;
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
  public void initialize(IProcessStartEventBeanRuntime eventRuntime, String configuration)
  {
    super.initialize(eventRuntime, configuration);

    boolean isProcessModelVersionReleased;

    try
    {
      isProcessModelVersionReleased = false;

      isProcessModelVersionReleased = eventRuntime.getProcessModelVersion().getReleaseState() == ReleaseState.RELEASED;

      if (isProcessModelVersionReleased)
      {
        StringTokenizer st = new StringTokenizer(configuration, CONFIG_SEPARATOR);
        if (st.hasMoreElements())
        {
          messageName = st.nextElement().toString();
        }
        if (st.hasMoreElements())
        {
          attributeName = st.nextElement().toString();
        }
        if (messageName == null || messageName.length() == 0)
        {
          logError("Start Event Bean Disabled. Message name not set on the element configuration.");
          eventRuntime.setPollTimeInterval(0L);
          return;
        }

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
    boolean isProcessModelVersionReleased;

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

        isProcessModelVersionReleased = false;

        isProcessModelVersionReleased = getEventBeanRuntime().getProcessModelVersion().getReleaseState() == ReleaseState.RELEASED;

        if (!isProcessModelVersionReleased)
        {
          return;
        }

        logInfo("Start polling");
        searchMessageAndFireEvent();
      }
      catch (Exception e)
      {
        logError("Could not evaluate if an event should be fired", e);
      }
      finally
      {
        oneThreadIsProcessing.setValue(false);
      }
    }
  }

  /**
   * Search all non treated messages of a given type and fires a start event for each.
   */
  private void searchMessageAndFireEvent()
  {
    IWorkflowContext wf;

    try
    {
      IApplication application = getEventBeanRuntime().getProcessModelVersion().getApplication();
      wf = WorkflowNavigationUtil.getWorkflowContext(application);

      EventLogHelper.processMessages(this.messageName, null, getEventBeanRuntime().getProcessModelVersion()
              .getApplication().getName(), new IEventLogCallback()
        {
          public boolean call(EventLog eventLog, Object param)
          {
            return fireStartEvent(eventLog);
          }
        }, null, getEventBeanRuntime().getRuntimeLogLogger(), wf);
    }
    catch (Exception ex)
    {
      logError("Could not evaluate if an event should be fired", ex);
    }
  }
  
  /**
   * Get a workflow context.
   * 
   * @return the workflow context of the application
   * @throws PersistencyException
   */
  private IWorkflowContext getWorkflowContext() throws PersistencyException
  {
    IApplication application = getEventBeanRuntime().getProcessModelVersion()
            .getApplication();
    return WorkflowNavigationUtil.getWorkflowContext(application);
  }
}
