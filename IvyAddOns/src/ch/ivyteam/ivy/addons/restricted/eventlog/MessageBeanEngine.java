package ch.ivyteam.ivy.addons.restricted.eventlog;

import java.util.concurrent.Callable;

import ch.ivyteam.ivy.addons.data.technical.eventlog.EventLog;
import ch.ivyteam.ivy.addons.eventlog.data.technical.EventLogStatus;
import ch.ivyteam.ivy.security.SecurityManagerFactory;
import ch.ivyteam.ivy.workflow.IWorkflowContext;

/**
 * This class provide mechanism to publish a message to every subscribers.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 08.11.2010
 */
public class MessageBeanEngine extends EventLogMessageProvider
{

  /**
   * Notifies every event log subscribers with System rights.
   *
   */
  private class NotifySubscribers implements Callable<Boolean>
  {
    private EventLog eventLog;

    public NotifySubscribers(EventLog eventLog)
    {
      this.eventLog = eventLog;
    }

    public Boolean call() throws Exception
    {
      notifySubscribers(eventLog);
      return true;
    }
  }

  /**
   * The only existing instance of MessageBeanEngine
   */
  private static final MessageBeanEngine singleton = new MessageBeanEngine();

  /**
   * Gets the singleton instance.
   * 
   * @return the engine
   */
  public static MessageBeanEngine getInstance()
  {
    return singleton;
  }

  /**
   * Constructs a MessageBeanEngine object.
   */
  private MessageBeanEngine()
  {
    super();
  }

  /**
   * Publishes an message event log entry.
   * 
   * @param eventLogId event log identifier
   * @param applicationName name of the Ivy application used as filter 
   * @throws Exception
   */
  protected synchronized void publish(int eventLogId, String applicationName, IWorkflowContext wf) throws Exception
  {
    EventLog eventLog;

    eventLog = EventLogHelper.read(eventLogId, applicationName, wf);
    if (eventLog != null && EventLogHelper.MESSAGE.equals(eventLog.getData().getEventType()))
    {
      EventLogHelper.updateMessage(eventLogId, EventLogStatus.PENDING, wf);

      SecurityManagerFactory.getSecurityManager().executeAsSystem(new NotifySubscribers(eventLog));
    }
  }
}
