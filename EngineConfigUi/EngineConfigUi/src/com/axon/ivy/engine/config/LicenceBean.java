package com.axon.ivy.engine.config;

import java.util.Properties;

import javax.faces.bean.ApplicationScoped;
import javax.faces.bean.ManagedBean;

import ch.ivyteam.licence.SystemLicence;

@ManagedBean
@ApplicationScoped
public class LicenceBean
{
  public String getValueFromProperty(String key)
  {
    return SystemLicence.getParam(key);
  }

  public Properties getLicenceProperties()
  {
    return SystemLicence.getParams();
  }

  public boolean isCluster()
  {
    return SystemLicence.isEnterprise();
  }

  public boolean isDemo()
  {
    return SystemLicence.isDemo();
  }
  
  public boolean isInvalid()
  {
	return SystemLicence.isInstalled() && !SystemLicence.isValid();
  }
}