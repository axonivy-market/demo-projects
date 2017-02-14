package com.axonivy.engine.config.ui.unit.test;

import static org.assertj.core.api.Assertions.assertThat;

import java.util.Properties;

import mockit.NonStrictExpectations;

import org.junit.Before;
import org.junit.Test;

import ch.ivyteam.db.jdbc.DatabaseProduct;
import ch.ivyteam.db.jdbc.JdbcDriver;
import ch.ivyteam.ivy.server.configuration.system.db.ConnectionState;
import ch.ivyteam.licence.SignedLicence;

import com.axon.ivy.engine.config.SystemDatabaseConnecting;
import com.axon.ivy.engine.config.SystemDatabaseSettings;
import com.axonivy.engine.config.ui.settings.ConfigData;

public class TestSystemDatabaseSettings
{

  @Before
  public void setUp()
  {
    installFakeLicense();
  }

  @Test
  public void testLoadConfigData() throws Exception
  {
    ConfigData loadConfigData = SystemDatabaseSettings.loadConfigData();

    assertThat(loadConfigData.getDriver()).isNotNull();
    assertThat(loadConfigData.getProduct()).isNotNull();
  }

  @Test
  public void testConnecting() throws Exception
  {
    ConfigData configData = getLocalMySqlSettings();
    assertThat(SystemDatabaseConnecting.testConnection(configData)).isEqualTo(
            ConnectionState.CONNECTION_FAILED);

    Properties properties = new Properties();
    properties.put("databaseName", "temp_dhu_axivy_6.4.1_53127_testing_123");
    configData.setCreationParameters(properties);
    SystemDatabaseConnecting.createDatabase(configData);
    assertThat(SystemDatabaseConnecting.testConnection(configData)).isEqualTo(ConnectionState.CONNECTED);

  }

  @Test
  public void testCreating() throws Exception
  {
    ConfigData configData = getLocalMySqlSettings();
    Properties properties = new Properties();
    properties.put("databaseName", "temp_dhu_axivy_6.4.1_53127_testing");
    configData.setCreationParameters(properties);
    SystemDatabaseConnecting.createDatabase(configData);
  }

  @Test
  public void testConvertDb() throws Exception
  {
    ConfigData configData = getLocalMySqlSettings();
  }

  private static ConfigData getLocalMySqlSettings()
  {
    ConfigData configData = new ConfigData();
    configData.setProduct(DatabaseProduct.MYSQL);
    configData.setHost("localhost");
    configData.setUsername("tstuser");
    configData.setPassword("X.ivyi1.k");
    configData.setPort("3306");
    configData.setDatabaseName("temp_dhu_axivy_6.4.1_53127_testing_123");
    JdbcDriver[] jdbcDriversForDriverName = JdbcDriver.getJdbcDriversForDriverName("com.mysql.jdbc.Driver");
    configData.setDriver(jdbcDriversForDriverName[0]);
    return configData;
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
