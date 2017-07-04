package com.axon.ivy.engine.config;

import java.util.Properties;

import javax.faces.bean.ApplicationScoped;
import javax.faces.bean.ManagedBean;

import ch.ivyteam.ivy.environment.Ivy;

@ManagedBean
@ApplicationScoped
public class HelperBean
{
  boolean demoLicence = LicenceUtil.isDemo();
  
  public String getPropertiesSize(Properties properties)
  {
    if (properties.isEmpty())
    {
      return "";
    }
    return "(" + properties.size() + ")";
  }

  public boolean mustAuthenticate()
  {
    if (isNotDemoLicence() && isNotAuthenticated() && isNotServerConfigurationApplicaton() && hasAtLeastOneAdmin())
    {
      return true;
    }
    return false;
  }

  private boolean hasAtLeastOneAdmin()
  {
    // There is always one System user
    return Ivy.session().getSecurityContext().getUsers().size()>1;
  }

  private boolean isNotDemoLicence()
  {
    return !demoLicence;
  }

  public boolean isNotAuthenticated()
  {
    return Ivy.session().isSessionUserUnknown();
  }

  private boolean isNotServerConfigurationApplicaton()
  {
    return Ivy.wf().getApplication().getName() != "ServerConfiguration";
  }
}
