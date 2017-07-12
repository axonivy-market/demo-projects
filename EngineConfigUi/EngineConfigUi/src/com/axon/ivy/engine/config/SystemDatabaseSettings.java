package com.axon.ivy.engine.config;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

import org.apache.commons.lang3.BooleanUtils;

import ch.ivyteam.db.jdbc.DatabaseConnectionConfiguration;
import ch.ivyteam.ivy.server.configuration.Configuration;
import ch.ivyteam.ivy.server.configuration.system.db.AdministratorManager;
import ch.ivyteam.ivy.server.configuration.system.db.ConnectionState;
import ch.ivyteam.ivy.server.configuration.system.db.IConnectionListener;
import ch.ivyteam.ivy.server.configuration.system.db.SystemDatabase;
import ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseConnectionTester;
import ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseConverter;
import ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseCreator;
import ch.ivyteam.util.Property;
import ch.ivyteam.util.WaitUtil;

import com.axonivy.engine.config.ui.settings.ConfigData;
import com.axonivy.engine.config.ui.settings.WebServerConfig;

public class SystemDatabaseSettings
{
  private static final int CONNETION_TEST_TIMEOUT = 15;
  private static final String WEB_SERVER_AJP_PORT = "WebServer.AJP.Port";
  private static final String WEB_SERVER_AJP_ENABLED = "WebServer.AJP.Enabled";
  private static final String WEB_SERVER_HTTPS_PORT = "WebServer.HTTPS.Port";
  private static final String WEB_SERVER_HTTPS_ENABLED = "WebServer.HTTPS.Enabled";
  private static final String WEB_SERVER_HTTP_PORT = "WebServer.HTTP.Port";
  private static final String WEB_SERVER_HTTP_ENABLED = "WebServer.HTTP.Enabled";

  private final Configuration configuration = loadOrCreateConfig();
  private final SystemDatabase systemDatabase = createSystemDb(configuration);
  private final ConfigData configData = ConfigHelper.loadConfigData(configuration);
  private final ConnectionInfo info = ConnectionInfo.create();
  private final WebServerConfig webServerConfig = new WebServerConfig();

  private final SystemDatabaseConnectionTester tester = getSystemDb().getConnectionTester();
  private final BlockingListener connectionListener = new BlockingListener();

  private SystemDatabaseSettings()
  {
    tester.addConnectionListener(connectionListener);
  }

  public static SystemDatabaseSettings create()
  {
    return new SystemDatabaseSettings();
  }

  private static Configuration loadOrCreateConfig()
  {
    try
    {
      return Configuration.loadOrCreateConfiguration();
    }
    catch (Exception ex)
    {
      return Configuration.createNewConfiguration();
    }
  }

  private static SystemDatabase createSystemDb(Configuration config)
  {
    SystemDatabase.initialize(config);
    return SystemDatabase.getSystemDatabase();
  }

  public SystemDatabaseCreator createDatabase()
          throws Exception
  {
    return ConfigHelper.createDatabase(configData);
  }

  public SystemDatabaseConverter convertDatabase()
          throws Exception
  {
    DatabaseConnectionConfiguration currentConfig = ConfigHelper.createConfiguration(configData);
    int systemDatabaseVersion = getSystemDb().getConnectionTester().getSystemDatabaseVersion();
    return startSystemDatabaseConversion(currentConfig, systemDatabaseVersion);
  }

  private SystemDatabaseConverter startSystemDatabaseConversion(
          DatabaseConnectionConfiguration dbConfig, int dbVersion)
  {
    SystemDatabaseConverter converter = SystemDatabaseConverter.createSystemDatabaseConverter(dbConfig,
            dbVersion);
    converter.start();
    return converter;
  }

  public void updateConfig(SystemDatabaseCreator creator)
  {
    DatabaseConnectionConfiguration dbConfig = creator.getCreatedDatabaseConnectionConfiguration();
    configuration.setSystemDatabaseConnectionConfiguration(dbConfig);
    ConfigHelper.updateConfigData(configData, dbConfig);
  }

  public SystemDatabase getSystemDb()
  {
    return systemDatabase;
  }

  public ConfigData getConfigData()
  {
    return configData;
  }

  public ConnectionInfo getConnectionInfo()
  {
    return info;
  }

  public void updateDbConfig()
  {
    DatabaseConnectionConfiguration dbConfig = ConfigHelper.createConfiguration(configData);
    configuration.setSystemDatabaseConnectionConfiguration(dbConfig);
  }

  public void saveSystemDb()
  {
    try
    {
      configuration.saveConfiguration();
      UiModder.systemDatabaseConfigSaved();
    }
    catch (Exception ex)
    {
      UiModder.systemDatabaseConfigNotSaved(ex);
    }
  }

  public Configuration getConfiguration()
  {
    return configuration;
  }

  public AdministratorManager getAdministratorManager()
  {
    return getSystemDb().getAdministratorManager();
  }

  private boolean saveAdmins()
  {
    AdministratorManager adminManager = getAdministratorManager();
    if (!adminManager.isConnected())
    {
      return false;
    }
    return adminManager.storeAdministrators();
  }

  public WebServerConfig getWebServerConfig()
  {
    return webServerConfig;
  }

  private boolean saveWebServerConfig()
  {
    AdministratorManager adminManager = getAdministratorManager();
    if (!adminManager.isConnected())
    {
      return false;
    }
    setProperty(adminManager, WEB_SERVER_HTTP_ENABLED,
            BooleanUtils.toStringTrueFalse(webServerConfig.getHttpEnabled()));
    setProperty(adminManager, WEB_SERVER_HTTP_PORT, webServerConfig.getHttpPort());
    setProperty(adminManager, WEB_SERVER_HTTPS_ENABLED,
            BooleanUtils.toStringTrueFalse(webServerConfig.getHttpsEnabled()));
    setProperty(adminManager, WEB_SERVER_HTTPS_PORT, webServerConfig.getHttpsPort());
    setProperty(adminManager, WEB_SERVER_AJP_ENABLED,
            BooleanUtils.toStringTrueFalse(webServerConfig.getAjpEnabled()));
    setProperty(adminManager, WEB_SERVER_AJP_PORT, webServerConfig.getAjpPort());

    return adminManager.storeSystemProperties();
  }

  private static void setProperty(AdministratorManager adminManager, String key, String value)
  {
    if (value == null)
    {
      return;
    }
    Property systemProperty = adminManager.getSystemProperty(key);
    if (systemProperty == null)
    {
      Property property = new Property(key, value);
      adminManager.getSystemProperties().add(property);
    }
    else
    {
      systemProperty.setValue(value);
    }
  }

  private void updateWebServerConfig()
  {
    AdministratorManager adminManager = getAdministratorManager();
    webServerConfig.setHttpEnabled(getPropertyAsBoolean(adminManager, WEB_SERVER_HTTP_ENABLED));
    webServerConfig.setHttpPort(getProperty(adminManager, WEB_SERVER_HTTP_PORT));
    webServerConfig.setHttpsEnabled(getPropertyAsBoolean(adminManager, WEB_SERVER_HTTPS_ENABLED));
    webServerConfig.setHttpsPort(getProperty(adminManager, WEB_SERVER_HTTPS_PORT));
    webServerConfig.setAjpEnabled(getPropertyAsBoolean(adminManager, WEB_SERVER_AJP_ENABLED));
    webServerConfig.setAjpPort(getProperty(adminManager, WEB_SERVER_AJP_PORT));
  }

  private static boolean getPropertyAsBoolean(AdministratorManager adminManager, String key)
  {
    String property = getProperty(adminManager, key);
    if (property.isEmpty())
    {
      return false;
    }
    return BooleanUtils.toBooleanObject(property);
  }

  private static String getProperty(AdministratorManager adminManager, String key)
  {
    Property systemProperty = adminManager.getSystemProperty(key);
    if (systemProperty == null)
    {
      return "";
    }
    else
    {
      return systemProperty.getValue();
    }
  }

  private boolean saveClusterNodes()
  {
    AdministratorManager adminManager = getAdministratorManager();
    if (!adminManager.isConnected())
    {
      return false;
    }
    return adminManager.storeClusterNodes();
  }

  public ConnectionState testConnection()
  {
    updateDbConfig();
    tester.reset();
    connectionListener.gotResult = false;
    tester.configurationChanged();
    try
    {
      WaitUtil.await(() -> connectionListener.gotResult, CONNETION_TEST_TIMEOUT, TimeUnit.SECONDS);
    }
    catch (TimeoutException ex)
    {
      String msg = "Could not connect to database within " + CONNETION_TEST_TIMEOUT + " Seconds";
      getConnectionInfo().updateConnectionStates(ConnectionState.CONNECTION_FAILED,
              new TimeoutException(msg),
              getConfigData().getProduct());
      return ConnectionState.CONNECTION_FAILED;
    }
    return tester.getConnectionState();
  }

  public void saveAll()
  {
    saveSystemDb();

    if (!getAdministratorManager().isConnected())
    {
      UiModder.notConnected();
      return;
    }

    try
    {
      saveAllToDB();
      UiModder.savedAllToDatabase();
    }
    catch (Exception ex)
    {
      UiModder.allNotSaved(ex);
    }
  }

  private void saveAllToDB()
  {
    saveWebServerConfig();
    saveAdmins();
    if (LicenceUtil.isCluster())
    {
      saveClusterNodes();
    }
  }

  private class BlockingListener implements IConnectionListener
  {
    private boolean gotResult = false;

    @Override
    public void connectionStateChanged(ConnectionState newState)
    {
      Throwable connectionError = getSystemDb().getConnectionTester().getConnectionError();
      getConnectionInfo().updateConnectionStates(newState, connectionError, getConfigData().getProduct());
      if (newState != ConnectionState.CONNECTING)
      {
        gotResult = true;
      }

      if (newState == ConnectionState.CONNECTED)
      {
        updateWebServerConfig();
      }
    }
  }
}
