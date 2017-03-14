package com.axonivy.engine.config.ui.unit.test;

import static org.assertj.core.api.Assertions.assertThat;

import java.sql.SQLException;
import java.util.Properties;
import java.util.concurrent.TimeUnit;

import mockit.NonStrictExpectations;

import org.apache.commons.lang.math.RandomUtils;
import org.junit.Before;
import org.junit.Test;

import ch.ivyteam.db.jdbc.DatabaseConnectionConfiguration;
import ch.ivyteam.db.jdbc.DatabaseProduct;
import ch.ivyteam.db.jdbc.DatabaseUtil;
import ch.ivyteam.db.jdbc.JdbcDriver;
import ch.ivyteam.ivy.server.configuration.system.db.ConnectionState;
import ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseCreator;
import ch.ivyteam.licence.SignedLicence;
import ch.ivyteam.util.WaitUtil;

import com.axon.ivy.engine.config.ConfigHelper;
import com.axon.ivy.engine.config.SystemDatabaseSettings;
import com.axonivy.engine.config.ui.settings.ConfigData;

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
    ConfigData loadConfigData = SystemDatabaseSettings.create().getConfigData();

    assertThat(loadConfigData.getDriver()).isNotNull();
    assertThat(loadConfigData.getProduct()).isNotNull();
  }

  @Test
  public void testConnecting() throws Exception
  {
    SystemDatabaseSettings settings = SystemDatabaseSettings.create();
    ConfigData configData = settings.getConfigData();
    changeConfigToMySqlSettings(configData);
    assertThat(settings.testConnection()).isEqualTo(ConnectionState.CONNECTION_FAILED);
    
    createDatabase(configData);
    assertThat(settings.testConnection()).isEqualTo(ConnectionState.CONNECTED);

    dropDatabase(configData);
  }

  @Test
  public void testCreating() throws Exception
  {
    ConfigData configData = getLocalMySqlSettings();

    createDatabase(configData);
    System.out.println(DBName);
    dropDatabase(configData);
  }

  private void createDatabase(ConfigData configData) throws Exception
  {
    Properties properties = new Properties();
    properties.put("databaseName", DBName);
    configData.setCreationParameters(properties);

    SystemDatabaseCreator createDatabase = ConfigHelper.createDatabase(configData);
    WaitUtil.await(() -> createDatabase.isRunning() == false, 60, TimeUnit.SECONDS);
    if (createDatabase.getError() != null)
    {
      throw new RuntimeException("Could not create database", createDatabase.getError());
    }
  }

  private void dropDatabase(ConfigData configData) throws SQLException
  {
    if (DBName == null)
    {
      System.out.println("DBName was null!");
      return;
    }
    DatabaseConnectionConfiguration dbConnectionConfig = ConfigHelper.createConfiguration(configData);
    DatabaseUtil.dropDatabase(DBName, dbConnectionConfig);
    System.out.println("dropped DB!");
  }

  private static ConfigData getLocalMySqlSettings()
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
    DBName = "tmp_engineConfigUi_testing_" + ((Integer) RandomUtils.nextInt()).toString();
    configData.setDatabaseName(DBName);
    JdbcDriver[] jdbcDriversForDriverName = JdbcDriver.getJdbcDriversForDriverName("com.mysql.jdbc.Driver");
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
        }
      };
    assertThat(SignedLicence.isDemo()).isFalse();
  }
}
