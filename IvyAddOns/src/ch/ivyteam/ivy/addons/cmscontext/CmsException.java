package ch.ivyteam.ivy.addons.cmscontext;

import ch.ivyteam.ivy.addons.util.AddonsException;

/**
 * Exception that is thrown by CMS context methods.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 03.06.2009
 */
public class CmsException extends AddonsException
{
  private static final long serialVersionUID = 1741029292395781378L;

  /**
   * Creates a new exception with a specific message.
   * 
   * @param message message that describes the exception
   */
  public CmsException(String message)
  {
    super(message);
  }
}
