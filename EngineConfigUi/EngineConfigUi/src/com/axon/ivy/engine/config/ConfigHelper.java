package com.axon.ivy.engine.config;

import ch.ivyteam.db.jdbc.ConnectionProperty;
import ch.ivyteam.db.jdbc.JdbcDriver;

public class ConfigHelper
{
  private static final String PORT_PROPERTY_NAME = "ch.ivyteam.jdbc.Port";

  public static String getDefaultPort(JdbcDriver driver)
  {
    for (ConnectionProperty prop : driver.getConnectionConfigurator()
            .getDatabaseConnectionProperties())
    {
      if (prop.getName() == PORT_PROPERTY_NAME)
      {
        return prop.getDefaultValue();
      }
    }
    return "";
  }
}
