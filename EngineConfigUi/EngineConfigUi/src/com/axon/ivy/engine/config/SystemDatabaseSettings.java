package com.axon.ivy.engine.config;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

import org.apache.commons.lang3.BooleanUtils;

import ch.ivyteam.db.jdbc.DatabaseConnectionConfiguration;
import ch.ivyteam.ivy.persistence.db.DatabasePersistencyService;
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

@SuppressWarnings("restriction")
public class SystemDatabaseSettings
{
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
  
  private SystemDatabaseSettings()
  {
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
    return startSystemDatabaseConversion(currentConfig, DatabasePersistencyService.DATABASE_VERSION);
  }

  private SystemDatabaseConverter startSystemDatabaseConversion(
          DatabaseConnectionConfiguration dbConfig, int dbVersion)
  {
    SystemDatabaseConverter converter = SystemDatabaseConverter.createSystemDatabaseConverter(dbConfig,
            dbVersion);
    converter.start();
    return converter;
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

  public void saveSystemDb() throws Exception
  {
    configuration.saveConfiguration();
  }

  public AdministratorManager getAdministratorManager()
  {
    return getSystemDb().getAdministratorManager();
  }

  public void setWebServerSettings(WebServerConfig config)
  {
    AdministratorManager adminManager = getAdministratorManager();
    setProperty(adminManager, WEB_SERVER_HTTP_ENABLED, config.getHttpEnabled().toString());
    setProperty(adminManager, WEB_SERVER_HTTP_PORT, config.getHttpPort());
    setProperty(adminManager, WEB_SERVER_HTTPS_ENABLED, config.getHttpsEnabled().toString());
    setProperty(adminManager, WEB_SERVER_HTTPS_PORT, config.getHttpsPort());
    setProperty(adminManager, WEB_SERVER_AJP_ENABLED, config.getAjpEnabled().toString());
    setProperty(adminManager, WEB_SERVER_AJP_PORT, config.getAjpPort());
    adminManager.storeSystemProperties();
  }

  private static void setProperty(AdministratorManager adminManager, String key, String value)
  {
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

  public WebServerConfig getWebServerSettings()
  {
    AdministratorManager adminManager = getAdministratorManager();
    WebServerConfig webServerConfig = new WebServerConfig();
    webServerConfig.setHttpEnabled(getPropertyAsBoolean(adminManager, WEB_SERVER_HTTP_ENABLED));
    webServerConfig.setHttpPort(getProperty(adminManager, WEB_SERVER_HTTP_PORT));
    webServerConfig.setHttpsEnabled(getPropertyAsBoolean(adminManager, WEB_SERVER_HTTPS_ENABLED));
    webServerConfig.setHttpsPort(getProperty(adminManager, WEB_SERVER_HTTPS_PORT));
    webServerConfig.setAjpEnabled(getPropertyAsBoolean(adminManager, WEB_SERVER_AJP_ENABLED));
    webServerConfig.setAjpPort(getProperty(adminManager, WEB_SERVER_AJP_PORT));
    return webServerConfig;
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
  
  public ConnectionState testConnection() throws Exception
  {
    BlockingListener listener = new BlockingListener();
    SystemDatabaseConnectionTester tester = testConnection(listener);
    try
    {
      WaitUtil.await(() -> listener.gotResult, 10, TimeUnit.SECONDS);
    }
    catch (TimeoutException ex)
    {
      return ConnectionState.CONNECTION_FAILED;
    }
    return tester.getConnectionState();
  }
  
  private SystemDatabaseConnectionTester testConnection(IConnectionListener listener)
          throws Exception
  {
    updateDbConfig();
    SystemDatabaseConnectionTester tester = getSystemDb().getConnectionTester();
    tester.reset();
    tester.addConnectionListener(listener);
    tester.configurationChanged();
    return tester;
  }

  private class BlockingListener implements IConnectionListener
  {
    private boolean gotResult = false;

    @Override
    public void connectionStateChanged(ConnectionState newState)
    {
      getConnectionInfo().setConnectionState(newState);
      if (newState != ConnectionState.CONNECTING)
      {
        gotResult = true;
      }
    }
  }
}
