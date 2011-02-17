package ch.ivyteam.ivy.addons.eventlog.data.technical;

/**
 * Defines the status of an event log. Usually, only event log entries that have 'MESSAGE' as type have a
 * status.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 08.11.2010
 */
public enum EventLogStatus
{
  /** Event log message not yet read by the frame work */
  WAITING(0),

  /** Event log message not yet consumed */
  PENDING(1),

  /** Event log message that is processing */
  PROCESSING(2),

  /** Event log messaged that is processed */
  PROCESSED(3);

  /** The value of the enum */
  private int value;

  /**
   * Constructor
   * @param _value the value
   */
  private EventLogStatus(int _value)
  {
    value = _value;
  }

  /**
   * Gets the int value
   * @return the value
   */
  public int intValue()
  {
    return value;
  }

  /**
   * Gets the enum value out of an int value
   * @param value the int value
   * @return the enum value
   */
  public static EventLogStatus valueOf(int value)
  {
    EventLogStatus[] values;

    values = EventLogStatus.values();
    for (int pos = 0; pos < values.length; pos++)
    {
      if (values[pos].intValue() == value)
      {
        return values[pos];
      }
    }
    return null;
  }

}
