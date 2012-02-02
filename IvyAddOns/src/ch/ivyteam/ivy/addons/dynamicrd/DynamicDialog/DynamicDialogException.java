package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import ch.ivyteam.ivy.addons.util.AddonsRuntimeException;

/**
 * Runtime exception that is thrown by DynamicDialog.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 26.05.2009
 */
public class DynamicDialogException extends AddonsRuntimeException
{
  private static final long serialVersionUID = 5313922591773236026L;

  /**
   * Creates a new exception that encapsulates another one
   * 
   * @param cause initial cause
   */
  public DynamicDialogException(Throwable cause)
  {
    super(cause);
  }

  /**
   * Creates a new exception with a specific message.
   * 
   * @param message message that describes the exception
   */
  public DynamicDialogException(String message)
  {
    super(message);
  }
}
