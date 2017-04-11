package com.axon.ivy.engine.config;

import java.util.Properties;

import javax.faces.bean.ApplicationScoped;
import javax.faces.bean.ManagedBean;

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
}
