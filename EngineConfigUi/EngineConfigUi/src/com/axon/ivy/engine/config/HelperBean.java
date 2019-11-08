package com.axon.ivy.engine.config;

import java.util.Properties;

import javax.faces.bean.ApplicationScoped;
import javax.faces.bean.ManagedBean;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.server.restricted.EngineMode;

@ManagedBean
@ApplicationScoped
public class HelperBean
{
  public String getPropertiesSize(Properties properties)
  {
    if (properties.isEmpty())
    {
      return "";
    }
    return "(" + properties.size() + ")";
  }

  public void validateConfig(SystemDatabaseSettings settings)
  {
    testConnection(settings);
    StyleSystemDatabaseInputs.setIncorrectInputs(settings
            .getConnectionInfo());
  }

  public void testConnection(SystemDatabaseSettings settings)
  {
    if (!settings.getConnectionInfo().getConnectionOK())
    {
      settings.testConnection();
    }
  }

  public boolean mustAuthenticate()
  {
    if (isInProductiveMode() && 
    	isNotAuthenticated() && 
    	hasAtLeastOneAdmin())
    {
      return true;
    }
    return false;
  }

  public void shutdown()
  {
    System.exit(-1);
  }

  private boolean hasAtLeastOneAdmin()
  {
    // There is always one System user
    return Ivy.session().getSecurityContext().getUsers().size() > 1;
  }

  private boolean isInProductiveMode()
  {
    return EngineMode.isAnyOf(EngineMode.STANDARD, EngineMode.ENTERPRISE, EngineMode.MAINTENANCE);
  }

  public boolean isNotAuthenticated()
  {
    return Ivy.session().isSessionUserUnknown();
  }
}
