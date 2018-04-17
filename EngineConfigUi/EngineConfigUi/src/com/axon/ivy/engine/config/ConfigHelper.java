package com.axon.ivy.engine.config;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import org.apache.commons.lang3.StringUtils;

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
    String ORACLE_SERVICE_ID = "ch.ivyteam.jdbc.OracleServiceId";
    String SCHEMA_NAME = "ch.ivyteam.jdbc.SchemaName";
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
    updateConfigData(configData, dbConfig);
    return configData;
  }

  public static void updateConfigData(ConfigData configData, DatabaseConnectionConfiguration dbConfig)
  {
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
        case JdbcProperties.ORACLE_SERVICE_ID:
        case JdbcProperties.SCHEMA_NAME:
          configData.setDatabaseName(entry.getValue());
          break;

        default:
          break;
      }
    }

    configData.setUsername(dbConfig.getUserName());
    String fakedPassword = "";
    if (StringUtils.isNotEmpty(dbConfig.getPassword()))
    {
      fakedPassword = StringUtils.leftPad("", dbConfig.getPassword().length(), '*'); 
    }
    configData.setPassword(fakedPassword);
    configData.setAdditionalProperties(dbConfig.getProperties());
    configData.setCreationParameters(new java.util.Properties());
  }

  public static DatabaseConnectionConfiguration createConfiguration(
          ConfigData configData, Configuration configuration)
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
        case JdbcProperties.ORACLE_SERVICE_ID:
        case JdbcProperties.SCHEMA_NAME:
          dbProps.put(prop, configData.getDatabaseName());
          break;

        default:
          break;
      }
    }

    DatabaseConnectionConfiguration tempConfig = configurator
            .getDatabaseConnectionConfiguration(dbProps);
    DatabaseConnectionConfiguration currentConfig = configuration.getSystemDatabaseConnectionConfiguration();
    currentConfig.setConnectionUrl(tempConfig.getConnectionUrl());
    currentConfig.setDriverName(tempConfig.getDriverName());

    String configDataPw = StringUtils.defaultString(configData.getPassword());
    
    String currentConfigPw = StringUtils.defaultString(currentConfig.getPassword());
    String fakedPassword = StringUtils.leftPad("", currentConfigPw.length(), '*'); 
    
    if (!StringUtils.equals(configDataPw, fakedPassword))
    {
      currentConfig.setPassword(configDataPw);
    }
    currentConfig.setUserName(configData.getUsername());
    currentConfig.setProperties(configData.getAdditionalProperties());
    return currentConfig;
  }

  public static List<DatabaseCreationParameter> getDatabaseCreationParametersNeeded(
          ConfigData configData, Configuration configuration) throws Exception
  {
    DatabaseConnectionConfiguration currentConfig = createConfiguration(configData, configuration);
    return getCreationParameters(currentConfig);
  }

  public static List<DatabaseCreationParameter> getCreationParameters(
          DatabaseConnectionConfiguration currentConfig)
  {
    List<DatabaseCreationParameter> dbCreationParameters = DatabasePersistencyServiceFactory
            .createDatabaseCreator(currentConfig).getDatabaseCreationParameters();
    return dbCreationParameters;
  }

  public static SystemDatabaseCreator createDatabase(ConfigData configData, Configuration configuration)
          throws Exception
  {
    return createDatabase(configData, -1, configuration);
  }

  public static SystemDatabaseCreator createDatabase(ConfigData configData, int systemDatabaseVersion, Configuration configuration)
          throws Exception
  {
    DatabaseConnectionConfiguration currentConfig = ConfigHelper.createConfiguration(configData, configuration);
    return startSystemDatabaseCreation(currentConfig, configData.getCreationParameters(),
            systemDatabaseVersion);
  }

  private static SystemDatabaseCreator startSystemDatabaseCreation(
          DatabaseConnectionConfiguration dbConfig,
          Properties dbCreationParameters, int systemDatabaseVersion) throws Exception
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
            .createSystemDatabaseCreator(dbConfig, dbCreationParamList, systemDatabaseVersion);
    creator.start();
    return creator;
  }
  
  public static Properties getCreationParametersDefaultValues(ConfigData configData, Configuration configuration) throws Exception
  {
    Properties creationParameters = new Properties();
    List<DatabaseCreationParameter> requiredParameters = ConfigHelper
            .getDatabaseCreationParametersNeeded(configData, configuration);

    for (DatabaseCreationParameter param : requiredParameters)
    {
      if ("databaseName".equals(param.getName()))
      {
        creationParameters.put(param.getName(), configData.getDatabaseName());
      }

      if (param.getValues() != null && param.getValues().length == 1)
      {
        creationParameters.put(param.getName(), param.getValues()[0]);
      }
    }
    return creationParameters;
  }
}
