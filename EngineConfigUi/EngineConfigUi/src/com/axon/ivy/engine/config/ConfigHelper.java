package com.axon.ivy.engine.config;

import static org.apache.commons.lang3.StringUtils.defaultString;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.stream.Collectors;

import org.apache.commons.lang3.StringUtils;

import com.axonivy.engine.config.ui.settings.ConfigData;

import ch.ivyteam.db.jdbc.ConnectionConfigurator;
import ch.ivyteam.db.jdbc.ConnectionProperty;
import ch.ivyteam.db.jdbc.DatabaseConnectionConfiguration;
import ch.ivyteam.db.jdbc.DatabaseProduct;
import ch.ivyteam.db.jdbc.JdbcDriver;
import ch.ivyteam.ivy.configuration.internal.yaml.ConfigurationPasswordEncryption;
import ch.ivyteam.ivy.persistence.db.DatabaseCreationParameter;
import ch.ivyteam.ivy.persistence.db.DatabasePersistencyServiceFactory;
import ch.ivyteam.ivy.server.configuration.Configuration;
import ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseCreator;

@SuppressWarnings("restriction")
public class ConfigHelper
{
  public static String getDefaultPort(JdbcDriver driver)
  {
    return defaultString(driver.getConnectionConfigurator().getDefaultValue(ConnectionProperty.PORT));
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
    var jdbcDriver = JdbcDriver.forConnectionConfiguration(dbConfig).orElseThrow();
    configData.setDriver(jdbcDriver);
    configData.setProduct(jdbcDriver.getDatabaseProduct());

    Map<ConnectionProperty, String> properties = jdbcDriver.getConnectionConfigurator().getDatabaseConnectionProperties(dbConfig);

    String host = properties.get(ConnectionProperty.HOST);
    configData.setHost(host);

    String port = properties.get(ConnectionProperty.PORT);
    configData.setPort(port);

    String dbName = findDatabaseName(properties);
    configData.setDatabaseName(dbName);

    configData.setUsername(dbConfig.getUserName());
    String fakedPassword = "";
    if (StringUtils.isNotEmpty(dbConfig.getPassword()))
    {
      fakedPassword = "*".repeat(dbConfig.getPassword().length()); 
    }
    configData.setPassword(fakedPassword);
    configData.setAdditionalProperties(dbConfig.getProperties());
    configData.setCreationParameters(new java.util.Properties());
  }

  private static String findDatabaseName(Map<ConnectionProperty, String> properties)
  {
    String dbName = properties.get(ConnectionProperty.DB_NAME);
    if (StringUtils.isNotBlank(dbName))
    {
      return dbName;
    }
    dbName = properties.get(ConnectionProperty.ORACLE_SERVICE_ID);
    if (StringUtils.isNotBlank(dbName))
    {
      return dbName;
    }
    return "";
  }

  public static DatabaseConnectionConfiguration createConfiguration(ConfigData configData, Configuration configuration)
  {
    ConnectionConfigurator configurator = configData.getDriver().getConnectionConfigurator();
    Map<ConnectionProperty, String> dbProps = new HashMap<>();
    
    dbProps.put(ConnectionProperty.HOST, configData.getHost());
    dbProps.put(ConnectionProperty.PORT, configData.getPort());
    dbProps.put(ConnectionProperty.DB_NAME, configData.getDatabaseName());
    dbProps.put(ConnectionProperty.ORACLE_SERVICE_ID, configData.getDatabaseName());

    DatabaseConnectionConfiguration tempConfig = configurator.getDatabaseConnectionConfiguration(dbProps);
    DatabaseConnectionConfiguration currentConfig = configuration.getSystemDatabaseConnectionConfiguration();
    currentConfig.setConnectionUrl(tempConfig.getConnectionUrl());
    currentConfig.setDriverName(tempConfig.getDriverName());

    String configDataPw = defaultString(configData.getPassword());
    
    String currentConfigPw = defaultString(currentConfig.getPassword());
    String fakedPassword = "*".repeat(currentConfigPw.length()); 
    
    if (!StringUtils.equals(configDataPw, fakedPassword))
    {
      currentConfig.setPassword(ConfigurationPasswordEncryption.addEncryptionTag(configDataPw));
    }
    currentConfig.setUserName(configData.getUsername());
    currentConfig.setProperties(configData.getAdditionalProperties());
    return currentConfig;
  }

  public static List<DatabaseCreationParameter> getDatabaseCreationParametersNeeded(ConfigData configData, Configuration configuration) throws Exception
  {
    DatabaseConnectionConfiguration currentConfig = createConfiguration(configData, configuration);
    return getCreationParameters(currentConfig);
  }

  public static List<DatabaseCreationParameter> getCreationParameters(DatabaseConnectionConfiguration currentConfig)
  {
    List<DatabaseCreationParameter> dbCreationParameters = DatabasePersistencyServiceFactory.createDatabaseCreator(currentConfig).getDatabaseCreationParameters();
    return dbCreationParameters;
  }

  public static SystemDatabaseCreator createDatabase(ConfigData configData, Configuration configuration) throws Exception
  {
    return createDatabase(configData, -1, configuration);
  }

  public static SystemDatabaseCreator createDatabase(ConfigData configData, int systemDatabaseVersion, Configuration configuration) throws Exception
  {
    DatabaseConnectionConfiguration currentConfig = ConfigHelper.createConfiguration(configData, configuration);
    return startSystemDatabaseCreation(currentConfig, configData.getCreationParameters(), systemDatabaseVersion);
  }

  private static SystemDatabaseCreator startSystemDatabaseCreation(DatabaseConnectionConfiguration dbConfig, Properties dbCreationParameters, int systemDatabaseVersion) throws Exception
  {
    List<DatabaseCreationParameter> creationParameters = ConfigHelper.getCreationParameters(dbConfig);
    List<String> dbCreationParamList = new ArrayList<>();
    for (DatabaseCreationParameter param : creationParameters)
    {
      String value = dbCreationParameters == null ? null : dbCreationParameters.getProperty(param.getName());
      if (value == null && param.getValues() != null)
      {
        value = param.getValues()[0];
      }
      dbCreationParamList.add(value);
    }
    SystemDatabaseCreator creator = SystemDatabaseCreator.createSystemDatabaseCreator(dbConfig, dbCreationParamList, systemDatabaseVersion);
    creator.start();
    return creator;
  }

  public static Properties getCreationParametersDefaultValues(ConfigData configData, Configuration configuration) throws Exception
  {
    DatabaseConnectionConfiguration systemDbConfig = configuration.getSystemDatabaseConnectionConfiguration();
    Properties creationParameters = new Properties();
    List<DatabaseCreationParameter> requiredParameters = getDatabaseCreationParametersNeeded(configData, configuration);
    for (DatabaseCreationParameter param : requiredParameters)
    {
      String value = param.getValue(systemDbConfig.getConnectionUrl());
      if (StringUtils.isNotBlank(value))
      {
        creationParameters.put(param.getName(), value);
      }
    }
    return creationParameters;
  }

  public static List<JdbcDriver> getSupportedJdbcDrivers(DatabaseProduct databaseProduct)
  {
    return DatabasePersistencyServiceFactory.getSupportedJdbcDrivers().stream()
            .filter(JdbcDriver::isInstalled)
            .filter(driver -> driver.getDatabaseProduct() == databaseProduct)
            .collect(Collectors.toList());
  }

  public static List<DatabaseProduct> getSupportedDatabases()
  {
    return new ArrayList<>(DatabasePersistencyServiceFactory.getSupportedDatabases());
  }
}
