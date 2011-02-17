package ch.ivyteam.ivy.addons.restricted.eventlog;

import ch.ivyteam.ivy.addons.data.technical.eventlog.EventLog;

/**
 * Interface that classes should implement to be used with methods that process messages.
 * 
 * {@see EventLogHelper}
 * {@see EventLogHelper#processMessage(EventLog, IEventLogCallback, Object, ch.ivyteam.log.Logger)}
 * {@see EventLogHelper#processMessages(String, String, IEventLogCallback, Object, ch.ivyteam.log.Logger)}
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 08.11.2010
 */
public interface IEventLogCallback
{
  /**
   * Method called back
   * 
   * @param eventLog event log information
   * @param param additional parameter
   * @return true if the object has processed the received event
   */
  public boolean call(EventLog eventLog, Object param);
}
