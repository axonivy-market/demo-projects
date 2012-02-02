package ch.ivyteam.ivy.addons.util;

/**
 * Runtime exception that is thrown by Addons components.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 26.05.2009
 */
public class AddonsException extends Exception
{
  private static final long serialVersionUID = 5313922591773236026L;

  /**
   * Creates a new exception that encapsulates another one
   * 
   * @param cause initial cause
   */
  public AddonsException(Throwable cause)
  {
    super(cause);
  }

  /**
   * Creates a new exception with a specific message.
   * 
   * @param message message that describes the exception
   */
  public AddonsException(String message)
  {
    super(message);
  }

  /**
   * Creates a new exception that encapsulates another one with a specific message.
   * 
   * @param message message that describes the exception
   * @param cause initial cause
   */
  public AddonsException(String message, Throwable cause)
  {
    super(message, cause);
  }
}
