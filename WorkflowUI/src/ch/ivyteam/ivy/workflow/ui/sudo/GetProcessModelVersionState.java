package ch.ivyteam.ivy.workflow.ui.sudo;



import java.util.concurrent.Callable;

import ch.ivyteam.ivy.application.IProcessModelVersion;

/**
 * Returns the State of a Processmodelversion.through a Callable. True if ACTIVE and RELEASED.
 * Useful with SecurityManagerFactory.getSecurityManager().executeAsSystem.
 * 
 * @author Bruno Bütler ivyTeam
 * @since 21.08.2009
 */

public class GetProcessModelVersionState implements Callable<Boolean>
{
  private IProcessModelVersion processModelVersion;

  public GetProcessModelVersionState(IProcessModelVersion _processModelVersion)
  {
    processModelVersion = _processModelVersion;
  }

  public Boolean call() throws Exception
  {
    return new Boolean(processModelVersion.getActivityState()==ch.ivyteam.ivy.application.ActivityState.ACTIVE
	 && processModelVersion.getReleaseState()==ch.ivyteam.ivy.application.ReleaseState.RELEASED);
  }
}