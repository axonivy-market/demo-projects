package ch.ivyteam.ivy.addons.eventlog.data.technical;

/**
 * Defines the severity of an event log.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 21.05.2010
 */
public enum EventLogSeverity
{
  /** Event log priority */
  INFO(0), WARNING(1), ERROR(2), FATAL(3);

  /** The value of the enum */
  private int value;

  /**
   * Constructor
   * @param _value the value
   */
  private EventLogSeverity(int _value)
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
  public static EventLogSeverity valueOf(int value)
  {
    EventLogSeverity[] values;

    values = EventLogSeverity.values();
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
