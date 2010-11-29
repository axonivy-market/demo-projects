package ch.ivyteam.ivy.addons.util;

/**
 * Runtime exception that is thrown by Addons components.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 31.08.2010
 */
public class AddonsRuntimeException extends RuntimeException
{
  private static final long serialVersionUID = 1507178158756298605L;

  /**
   * Creates a new exception that encapsulates another one
   * 
   * @param cause initial cause
   */
  public AddonsRuntimeException(Throwable cause)
  {
    super(cause);
  }

  /**
   * Creates a new exception with a specific message.
   * 
   * @param message message that describes the exception
   */
  public AddonsRuntimeException(String message)
  {
    super(message);
  }

  /**
   * Creates a new exception that encapsulates another one with a specific message.
   * 
   * @param message message that describes the exception
   * @param cause initial cause
   */
  public AddonsRuntimeException(String message, Throwable cause)
  {
    super(message, cause);
  }
}
