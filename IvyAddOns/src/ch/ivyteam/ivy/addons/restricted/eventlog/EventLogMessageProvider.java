package ch.ivyteam.ivy.addons.restricted.eventlog;


import java.util.HashMap;
import java.util.Map;

import ch.ivyteam.ivy.addons.data.technical.eventlog.EventLog;
import ch.ivyteam.log.Logger;

/**
 * Implements a mechanism derived from the Observer pattern.
 * The subscriber should provide the message name on which it is subscribing.
 * Only one subscriber can subscribe for a given name.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 08.11.2010
 */
public class EventLogMessageProvider
{
  /**
   * This map keeps in relation subscribers to the listen name.
   */
  private Map<String, IEventLogMessageSubscriber> map = new HashMap<String, IEventLogMessageSubscriber>();

  /**
   * Subscribes to a specific message name.
   * 
   * @param name message name on which the subscriber is subscribing
   * @param subscriber subscriber
   * @throws AlreadyBoundException
   */
  public synchronized void addSubscriber(String name, IEventLogMessageSubscriber subscriber, Logger logger)
  {
    if (map.containsKey(name))
    {
      logger.info("Replace event log subscriber to message '"+name+"'");
    }
    else
    {
      logger.info("Add event log subscriber to message '"+name+"'");
    }
    map.put(name, subscriber);
  }

  /**
   * Unsubscribes the subscriber listening the given message name
   * 
   * @param name message name
   */
  public synchronized void deleteSubscriber(String name)
  {
    if (map.containsKey(name))
    {
      map.remove(name);
    }
  }

  /**
   * Unsubscribes all subscribers.
   */
  public synchronized void deleteSubscribers()
  {
    map.clear();
  }

  /**
   * Notify every subscribers.
   * 
   * @param arg event log infomration given to the subscribers
   */
  public synchronized void notifySubscribers(EventLog arg)
  {
    for (IEventLogMessageSubscriber subscriber : map.values())
    {
      subscriber.call(this, arg);
    }
  }
}
