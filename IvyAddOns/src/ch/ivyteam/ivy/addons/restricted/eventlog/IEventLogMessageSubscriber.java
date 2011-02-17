package ch.ivyteam.ivy.addons.restricted.eventlog;

import ch.ivyteam.ivy.addons.data.technical.eventlog.EventLog;

/**
 * Interface that classes should implement to subscribe to an event log message provider.
 *
 * {@see EventLogMessageProvider}
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 08.11.2010
 */
public interface IEventLogMessageSubscriber
{
  /**
   * Method called back
   * 
   * @param provider object that is invoking this method
   * @param eventLog event log information
   */
  public void call(EventLogMessageProvider provider, EventLog eventLog);
}
