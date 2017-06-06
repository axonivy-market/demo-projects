package com.axon.ivy.engine.config;

import java.util.Properties;

import javax.faces.bean.ApplicationScoped;
import javax.faces.bean.ManagedBean;

import ch.ivyteam.licence.SignedLicence;

@ManagedBean
@ApplicationScoped
public class LicenceBean
{
  public String getValueFromProperty(String key)
  {
    return getLicenceProperties().getProperty(key);
  }

  public Properties getLicenceProperties()
  {
    return SignedLicence.getLicenceParameters();
  }

  public boolean isCluster()
  {
    return LicenceUtil.isCluster();
  }

  public boolean isDemo()
  {
    return LicenceUtil.isDemo();
  }
}
