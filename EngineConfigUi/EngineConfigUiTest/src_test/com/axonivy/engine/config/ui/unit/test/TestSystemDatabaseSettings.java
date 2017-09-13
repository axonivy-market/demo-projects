package com.axonivy.engine.config.ui.unit.test;

import static org.assertj.core.api.Assertions.assertThat;

import java.sql.SQLException;
import java.util.Properties;
import java.util.concurrent.TimeUnit;

import mockit.NonStrictExpectations;

import org.apache.commons.lang.math.RandomUtils;
import org.apache.commons.lang3.StringUtils;
import org.junit.Before;
import org.junit.Test;

import ch.ivyteam.db.jdbc.DatabaseConnectionConfiguration;
import ch.ivyteam.db.jdbc.DatabaseProduct;
import ch.ivyteam.db.jdbc.DatabaseUtil;
import ch.ivyteam.db.jdbc.JdbcDriver;
import ch.ivyteam.ivy.server.configuration.Configuration;
import ch.ivyteam.ivy.server.configuration.system.db.ConnectionState;
import ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseCreator;
import ch.ivyteam.licence.LicenceConstants;
import ch.ivyteam.licence.SignedLicence;
import ch.ivyteam.util.WaitUtil;

import com.axon.ivy.engine.config.ConfigHelper;
import com.axon.ivy.engine.config.SystemDatabaseSettings;
import com.axonivy.engine.config.ui.settings.ConfigData;

@SuppressWarnings("restriction")
public class TestSystemDatabaseSettings
{
  private static String DBName;

  @Before
  public void setUp()
  {
    installFakeLicense();
  }

  @Test
  public void testLoadConfigData() throws Exception
  {
    ConfigData loadConfigData = SystemDatabaseSettings.create()
            .getConfigData();

    assertThat(loadConfigData.getDriver()).isNotNull();
    assertThat(loadConfigData.getProduct()).isNotNull();
  }
  
  @Test
  public void testLoadConfigs() throws Exception
  {
    SystemDatabaseSettings settings = SystemDatabaseSettings.create();
    ConfigData configData = settings.getConfigData();
    Configuration configuration = settings.getConfiguration();
    DatabaseConnectionConfiguration dbConnectionConfig = ConfigHelper.createConfiguration(
            configData, configuration);
    modifyConfiguration(configuration, dbConnectionConfig);
    ConfigData loadedConfigData = ConfigHelper.loadConfigData(configuration);

    assertThat(StringUtils.equals(loadedConfigData.getUsername(), "user"));
    assertThat(StringUtils.equals(loadedConfigData.getPassword(), "********"));

    DatabaseConnectionConfiguration modifiedDbConfig = getModifiedDbConfig(configData, configuration);

    assertThat(StringUtils.equals(modifiedDbConfig.getPassword(), "********"));
  }

  private DatabaseConnectionConfiguration getModifiedDbConfig(ConfigData configData,
          Configuration configuration)
  {
    configData.setPassword("password");
    return ConfigHelper.createConfiguration(configData, configuration);
  }

  private void modifyConfiguration(Configuration configuration,
          DatabaseConnectionConfiguration dbConnectionConfig)
  {
    dbConnectionConfig.setPassword("password");
    dbConnectionConfig.setUserName("user");
    configuration.setSystemDatabaseConnectionConfiguration(dbConnectionConfig);
  }

  @Test
  public void testConnecting() throws Exception
  {
    InMemoryEngineController inMemoryEngineController = new InMemoryEngineController();
    inMemoryEngineController.start();
    SystemDatabaseSettings settings = SystemDatabaseSettings.create();
    ConfigData configData = settings.getConfigData();
    try
    {
      changeConfigToMySqlSettings(configData);
      assertThat(settings.testConnection()).isEqualTo(
              ConnectionState.CONNECTION_FAILED);
      createDatabase(configData);
      settings.setConfigData(configData);
      assertThat(settings.testConnection()).isEqualTo(
              ConnectionState.CONNECTED);
    }
    finally
    {
      dropDatabase(configData);
      inMemoryEngineController.stop();
    }
  }

  @Test
  public void testCreating() throws Exception
  {
    ConfigData configData = getLocalMySqlSettings();
    try
    {
      createDatabase(configData);
      System.out.println(DBName);
    }
    finally
    {
      dropDatabase(configData);
    }
  }

  private void createDatabase(ConfigData configData) throws Exception
  {
    Properties properties = new Properties();
    properties.put("databaseName", DBName);
    configData.setCreationParameters(properties);

    SystemDatabaseSettings settings = SystemDatabaseSettings.create();
    settings.setConfigData(configData);
    SystemDatabaseCreator createDatabase = ConfigHelper
            .createDatabase(configData, settings.getConfiguration());
    WaitUtil.await(() -> createDatabase.isRunning() == false, 60,
            TimeUnit.SECONDS);
    if (createDatabase.getError() != null)
    {
      throw new RuntimeException("Could not create database",
              createDatabase.getError());
    }
  }

  private void dropDatabase(ConfigData configData) throws SQLException
  {
    if (DBName == null)
    {
      System.out.println("DBName was null!");
      return;
    }

    SystemDatabaseSettings settings = SystemDatabaseSettings.create();
    settings.setConfigData(configData);
    DatabaseConnectionConfiguration dbConnectionConfig = ConfigHelper
            .createConfiguration(configData, settings.getConfiguration());
    DatabaseUtil.dropDatabase(DBName, dbConnectionConfig);
    System.out.println("dropped DB!");
  }

  public static ConfigData getLocalMySqlSettings()
  {
    ConfigData configData = new ConfigData();
    changeConfigToMySqlSettings(configData);
    return configData;
  }

  private static void changeConfigToMySqlSettings(ConfigData configData)
  {
    configData.setProduct(DatabaseProduct.MYSQL);
    configData.setHost("zugtstdbsmys");
    configData.setUsername("admin");
    configData.setPassword("nimda");
    configData.setPort("3306");
    DBName = "tmp_engineConfigUi_testing_"
            + ((Integer) RandomUtils.nextInt()).toString();
    configData.setDatabaseName(DBName);
    JdbcDriver[] jdbcDriversForDriverName = JdbcDriver
            .getJdbcDriversForDriverName("com.mysql.jdbc.Driver");
    configData.setDriver(jdbcDriversForDriverName[0]);
  }

  @SuppressWarnings("unused")
  private static void installFakeLicense()
  {
    new NonStrictExpectations(SignedLicence.class)
      {
        {
          SignedLicence.isDemo();
          result = false;
          SignedLicence.isInstalled();
          result = true;
          SignedLicence.isParamDefined(LicenceConstants.PARAM_SRV_CLUSTER_LOCAL_NODE_ID);
          result = true;
          SignedLicence.getIntParam(LicenceConstants.PARAM_SRV_CLUSTER_LOCAL_NODE_ID);
          result = 0;
        }
      };
    assertThat(SignedLicence.isDemo()).isFalse();
  }
}
