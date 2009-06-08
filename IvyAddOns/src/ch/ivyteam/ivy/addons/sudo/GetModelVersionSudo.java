package ch.ivyteam.ivy.addons.sudo;

import java.util.concurrent.Callable;

import ch.ivyteam.ivy.application.IProcessModelVersion;

/**
 * Gives access to getVersionNumber through a Callable. Useful with
 * SecurityManagerFactory.getSecurityManager().executeAsSystem.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 02.06.2009
 */
public class GetModelVersionSudo implements Callable<Integer>
{
  private IProcessModelVersion processModelVersion;

  public GetModelVersionSudo(IProcessModelVersion _processModelVersion)
  {
    processModelVersion = _processModelVersion;
  }

  public Integer call() throws Exception
  {
    return processModelVersion.getVersionNumber();
  }
}