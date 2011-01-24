package ch.ivyteam.ivy.addons.sudo;

import java.util.concurrent.Callable;

import ch.ivyteam.ivy.addons.util.AddonsException;
import ch.ivyteam.ivy.application.IProcessModelVersion;
import ch.ivyteam.ivy.persistence.PersistencyException;
import ch.ivyteam.ivy.security.SecurityManagerFactory;

/**
 * Gives access to getVersionNumber.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 02.06.2009
 */
public final class GetModelVersionSudo implements Callable<Integer>
{
  private IProcessModelVersion processModelVersion;

  @SuppressWarnings("unused")
private GetModelVersionSudo()
  {
  }

  /**
   * Constructs a ProcessModelVersion object that can be used with
   * SecurityManagerFactory.getSecurityManager().executeAsSystem.
   * @see SecurityManagerFactory#getSecurityManager()
   * 
   * @deprecated Prefers using static method getModelVersionSudo.
   * @see #getModelVersionSudo(IProcessModelVersion)
   * 
   * @param processModelVersion process model version
   */
  @Deprecated
  public GetModelVersionSudo(IProcessModelVersion processModelVersion)
  {
    this.processModelVersion = processModelVersion;
  }

  /**
   * {@inheritDoc}
   */
  public Integer call() throws PersistencyException
  {
    return processModelVersion.getVersionNumber();
  }

  /**
   * Gets the version number of a process model version
   * 
   * @param processModelVersion process model version
   * @return procecess model version number
   * @throws AddonsException
   */
  public static Integer getModelVersionSudo(IProcessModelVersion processModelVersion) throws AddonsException
  {
    try
    {
      return SecurityManagerFactory.getSecurityManager().executeAsSystem(
              new GetModelVersionSudo(processModelVersion));
    }
    catch (Exception e)
    {
      throw new AddonsException(e);
    }
  }
}