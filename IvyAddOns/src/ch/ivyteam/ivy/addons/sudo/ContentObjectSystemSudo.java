package ch.ivyteam.ivy.addons.sudo;

import java.util.Locale;
import java.util.concurrent.Callable;

import ch.ivyteam.ivy.addons.util.AddonsException;
import ch.ivyteam.ivy.cm.IContentObject;
import ch.ivyteam.ivy.cm.IContentObjectValue;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.persistence.PersistencyException;
import ch.ivyteam.ivy.security.SecurityManagerFactory;

/**
 * Gives access to ivy.cms with System rights.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 24.02.2010
 */
public final class ContentObjectSystemSudo
{
  private ContentObjectSystemSudo()
  {
  }

  // TODO Change it for 4.2. APIs used no more throw a permission exception

  /**
   * Call ivy.cms.getContentObject as system user.
   * 
   * @throws AddonsException
   */
  public static IContentObject getContentObject(String uri, boolean searchInRequiredProjects)
          throws AddonsException
  {
    try
    {
      return SecurityManagerFactory.getSecurityManager().executeAsSystem(
              new GetContentObject(uri, searchInRequiredProjects));
    }
    catch (Exception e)
    {
      throw new AddonsException(e);
    }
  }

  /**
   * Call ivy.cms.getContentObjectValue as system user.
   * 
   * @throws AddonsException
   */
  public static IContentObjectValue getContentObjectValue(String uri, Locale locale,
          boolean searchInRequiredProjects) throws AddonsException
  {
    try
    {
      return SecurityManagerFactory.getSecurityManager().executeAsSystem(
              new GetContentObjectValue(uri, locale, searchInRequiredProjects));
    }
    catch (Exception e)
    {
      throw new AddonsException(e);
    }
  }

  private static final class GetContentObject implements Callable<IContentObject>
  {
    private String uri;

    private boolean searchInRequiredProjects;

    private GetContentObject(String uri, boolean searchInRequiredProjects)
    {
      this.uri = uri;
      this.searchInRequiredProjects = searchInRequiredProjects;
    }

    /**
     * {@inheritDoc}
     */
    public IContentObject call() throws PersistencyException
    {
      if (searchInRequiredProjects)
      {
        return Ivy.cms().findContentObject(uri);
      }
      else
      {
        return Ivy.cms().getContentObject(uri);
      }
    }
  }

  private static final class GetContentObjectValue implements Callable<IContentObjectValue>
  {
    private String uri;

    private boolean searchInRequiredProjects;

    private Locale locale;

    private GetContentObjectValue(String uri, Locale locale, boolean searchInRequiredProjects)
    {
      this.uri = uri;
      this.searchInRequiredProjects = searchInRequiredProjects;
      this.locale = locale;
    }

    /**
     * {@inheritDoc}
     */
    public IContentObjectValue call() throws PersistencyException
    {
      if (searchInRequiredProjects)
      {
        return Ivy.cms().findContentObjectValue(uri, locale);
      }
      else
      {
        return Ivy.cms().getContentObjectValue(uri, locale);
      }
    }
  }
}
