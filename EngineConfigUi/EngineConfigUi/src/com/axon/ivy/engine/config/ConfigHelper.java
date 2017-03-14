package com.axon.ivy.engine.config;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import ch.ivyteam.db.jdbc.ConnectionConfigurator;
import ch.ivyteam.db.jdbc.ConnectionProperty;
import ch.ivyteam.db.jdbc.DatabaseConnectionConfiguration;
import ch.ivyteam.db.jdbc.JdbcDriver;
import ch.ivyteam.ivy.persistence.db.DatabaseCreationParameter;
import ch.ivyteam.ivy.persistence.db.DatabasePersistencyServiceFactory;
import ch.ivyteam.ivy.server.configuration.Configuration;
import ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseCreator;

import com.axonivy.engine.config.ui.settings.ConfigData;

@SuppressWarnings("restriction")
public class ConfigHelper
{
  private interface JdbcProperties
  {
    String HOST = "ch.ivyteam.jdbc.Host";
    String PORT = "ch.ivyteam.jdbc.Port";
    String DB_NAME = "ch.ivyteam.jdbc.DbName";
  }
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
  
  public static ConfigData loadConfigData(Configuration configuration)
  {
    ConfigData configData = new ConfigData();

    DatabaseConnectionConfiguration dbConfig = configuration.getSystemDatabaseConnectionConfiguration();
    configData.setUsername(dbConfig.getUserName());
    configData.setPassword(dbConfig.getPassword());

    JdbcDriver jdbcDriver = JdbcDriver.getJdbcDriverForConnectionConfiguration(dbConfig);

    configData.setDriver(jdbcDriver);
    configData.setProduct(jdbcDriver.getDatabaseProduct());

    Map<ConnectionProperty, String> properties = jdbcDriver.getConnectionConfigurator()
            .getDatabaseConnectionProperties(dbConfig);

    for (Map.Entry<ConnectionProperty, String> entry : properties.entrySet())
    {
      ConnectionProperty property = entry.getKey();
      switch (property.getName())
      {
        case JdbcProperties.HOST:
          configData.setHost(entry.getValue());
          break;

        case JdbcProperties.PORT:
          configData.setPort(entry.getValue());
          break;

        case JdbcProperties.DB_NAME:
          configData.setDatabaseName(entry.getValue());
          break;

        default:
          break;
      }
    }

    configData.setCreationParameters(new java.util.Properties());
    return configData;
  }
  
  public static DatabaseConnectionConfiguration createConfiguration(
          ConfigData configData)
  {
    ConnectionConfigurator configurator = configData.getDriver()
            .getConnectionConfigurator();
    Map<ConnectionProperty, String> dbProps = new HashMap<>();

    for (ConnectionProperty prop : configurator
            .getDatabaseConnectionProperties())
    {
      switch (prop.getName())
      {
        case JdbcProperties.HOST:
          dbProps.put(prop, configData.getHost());
          break;

        case JdbcProperties.PORT:
          dbProps.put(prop, configData.getPort());
          break;

        case JdbcProperties.DB_NAME:
          dbProps.put(prop, configData.getDatabaseName());
          break;

        default:
          break;
      }
    }
    DatabaseConnectionConfiguration currentConfig = configurator
            .getDatabaseConnectionConfiguration(dbProps);

    currentConfig.setPassword(configData.getPassword());
    currentConfig.setUserName(configData.getUsername());
    return currentConfig;
  }
  
  public static List<DatabaseCreationParameter> getDatabaseCreationParametersNeeded(
          ConfigData configData) throws Exception
  {
    DatabaseConnectionConfiguration currentConfig = createConfiguration(configData);
    return getCreationParameters(currentConfig);
  }

  public static List<DatabaseCreationParameter> getCreationParameters(
          DatabaseConnectionConfiguration currentConfig)
  {
    List<DatabaseCreationParameter> dbCreationParameters = DatabasePersistencyServiceFactory
            .createDatabaseCreator(currentConfig).getDatabaseCreationParameters();
    return dbCreationParameters;
  }
  
  public static SystemDatabaseCreator createDatabase(ConfigData configData)
          throws Exception
  {
    DatabaseConnectionConfiguration currentConfig = ConfigHelper.createConfiguration(configData);
    return startSystemDatabaseCreation(currentConfig, configData.getCreationParameters());
  }

  private static SystemDatabaseCreator startSystemDatabaseCreation(
          DatabaseConnectionConfiguration dbConfig,
          Properties dbCreationParameters) throws Exception
  {
    List<DatabaseCreationParameter> creationParameters = ConfigHelper.getCreationParameters(dbConfig);

    List<String> dbCreationParamList = new ArrayList<>();
    for (DatabaseCreationParameter param : creationParameters)
    {
      String value = dbCreationParameters != null ? dbCreationParameters.getProperty(param.getName()) : null;
      if (value == null)
      {
        ConnectionProperty property = param.getConnectionPropertyThatHoldsDefaultValue();
        if (property != null)
        {
          value = property.getDefaultValue();
        }
        else if (param.getValues() != null)
        {
          value = param.getValues()[0];
        }
      }
      dbCreationParamList.add(value);
    }
    SystemDatabaseCreator creator = SystemDatabaseCreator
            .createSystemDatabaseCreator(dbConfig, dbCreationParamList);
    creator.start();
    return creator;
  }
}