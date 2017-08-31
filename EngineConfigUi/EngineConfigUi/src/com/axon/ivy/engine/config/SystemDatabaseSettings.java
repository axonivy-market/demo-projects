package com.axon.ivy.engine.config;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

import org.apache.commons.lang3.BooleanUtils;
import org.apache.commons.lang3.StringUtils;

import ch.ivyteam.db.jdbc.DatabaseConnectionConfiguration;
import ch.ivyteam.ivy.server.ServerFactory;
import ch.ivyteam.ivy.server.configuration.Configuration;
import ch.ivyteam.ivy.server.configuration.system.db.AdministratorManager;
import ch.ivyteam.ivy.server.configuration.system.db.ConnectionState;
import ch.ivyteam.ivy.server.configuration.system.db.IConnectionListener;
import ch.ivyteam.ivy.server.configuration.system.db.SystemDatabase;
import ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseConnectionTester;
import ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseConverter;
import ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseCreator;
import ch.ivyteam.ivy.system.ISystemProperty;
import ch.ivyteam.ivy.system.UserInterfaceFormat;
import ch.ivyteam.util.Property;
import ch.ivyteam.util.WaitUtil;

import com.axonivy.engine.config.ui.settings.ConfigData;
import com.axonivy.engine.config.ui.settings.SystemProperty;
import com.axonivy.engine.config.ui.settings.WebServerConfig;

@SuppressWarnings("restriction")
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
  private ConfigData configData = ConfigHelper.loadConfigData(configuration);
  private final ConnectionInfo info = ConnectionInfo.create();
  private final WebServerConfig webServerConfig = new WebServerConfig();
  private final List<SystemProperty> systemProperties = new ArrayList<SystemProperty>();

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
  
  public void setConfigData(ConfigData configData)
  {
    this.configData = configData;
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
      updateDbConfig();
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

  public void updateSystemPropsFromWebServerConfig()
  {
    replaceProperty(WEB_SERVER_AJP_ENABLED, webServerConfig.getAjpEnabled().toString());
    replaceProperty(WEB_SERVER_AJP_PORT, webServerConfig.getAjpPort());
    replaceProperty(WEB_SERVER_HTTP_ENABLED, webServerConfig.getHttpEnabled().toString());
    replaceProperty(WEB_SERVER_HTTP_PORT, webServerConfig.getHttpPort());
    replaceProperty(WEB_SERVER_HTTPS_ENABLED, webServerConfig.getHttpsEnabled().toString());
    replaceProperty(WEB_SERVER_HTTPS_PORT, webServerConfig.getHttpsPort());
  }

  private void replaceProperty(String propertyName, String value)
  {
    systemProperties.stream().filter(x -> x.getName().equalsIgnoreCase(propertyName)).findFirst()
            .get().setValue(value);
  }

  public void updateWebServerConfigFromSystemProps() throws Exception
  {
    AdministratorManager adminManager = getAdministratorManager();
    setWebServerProperty(adminManager, WEB_SERVER_AJP_ENABLED, "ajpEnabled");
    setWebServerProperty(adminManager, WEB_SERVER_AJP_PORT, "ajpPort");
    setWebServerProperty(adminManager, WEB_SERVER_HTTP_ENABLED, "httpEnabled");
    setWebServerProperty(adminManager, WEB_SERVER_HTTP_PORT, "httpPort");
    setWebServerProperty(adminManager, WEB_SERVER_HTTPS_ENABLED, "httpsEnabled");
    setWebServerProperty(adminManager, WEB_SERVER_HTTPS_PORT, "httpsPort");
  }

  private void setWebServerProperty(AdministratorManager adminManager, String propertyName,
          String webServerFieldName) throws Exception
  {
    String value = systemProperties.stream().filter(x -> x.getName().equals(propertyName)).findFirst()
            .get().getValue();
    setProperty(adminManager, propertyName, value);
    if (propertyName.contains("Enabled"))
    {
      boolean booleanValue = BooleanUtils.toBoolean(value);
      webServerConfig.set(webServerFieldName, booleanValue);
    }
    else
    {
      webServerConfig.set(webServerFieldName, value);
    }
  }

  public boolean saveWebServerConfig()
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

  public void updateWebServerSystemProperties()
  {
    try
    {
      ServerFactory.getServer().getSecurityManager()
              .executeAsSystem(() -> updateWebServerSystemPropertiesAsSystem());
    }
    catch (Exception ex)
    {
      throw new RuntimeException("Could not update Web Server System Properties", ex);
    }
  }

  private Object updateWebServerSystemPropertiesAsSystem()
  {
    systemProperties.clear();
    List<ISystemProperty> systemProps = ServerFactory.getServer()
            .getApplicationConfigurationManager()
            .getSystemProps();
    for (ISystemProperty property : systemProps)
    {
      if (!property.getUserInterfaceFormat().equals(UserInterfaceFormat.INVISIBLE)
              && StringUtils.startsWith(property.getName(), "WebServer"))
      {
        SystemProperty sysProperty = createNewSystemProperty(property);
        systemProperties.add(sysProperty);
      }
    }
    return null;
  }

  private SystemProperty createNewSystemProperty(ISystemProperty property)
  {
    String value = getAdministratorManager().getProperty(property.getName());
    SystemProperty sysProperty = new SystemProperty();
    sysProperty.setName(property.getName());
    sysProperty.setDefaultValue(property.getDefaultValue());
    sysProperty.setDescription(property.getDescription());
    sysProperty.setValue(value);
    sysProperty.setUserInterfaceFormat(property.getUserInterfaceFormat());
    if (property.getUserInterfaceFormat().equals(UserInterfaceFormat.ENUMERATION))
    {
      sysProperty.setEnumerationValues(Arrays.asList(property.getEnumerationValues()));
    }
    return sysProperty;
  }

  public List<SystemProperty> getWebServerSystemProperties()
  {
    return systemProperties;
  }

  public void saveWebServerSystemProperties() throws Exception
  {
    AdministratorManager adminManager = getAdministratorManager();
    if (!adminManager.isConnected())
    {
      return;
    }
    for (SystemProperty systemProperty : systemProperties)
    {
      String systemValue = StringUtils.defaultIfEmpty(systemProperty.getValue(), "");
      String dbValue = StringUtils.defaultIfEmpty(adminManager.getProperty(systemProperty.getName()), "");
      if (!StringUtils.equals(dbValue, systemValue))
      {
        adminManager.storeProperty(systemProperty.getName(), systemValue);
      }
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
    UiModder.restartHint();
  }

  private void saveAllToDB() throws Exception
  {
    saveAdmins();
    if (LicenceUtil.isCluster())
    {
      saveClusterNodes();
    }
    saveWebServerSystemProperties();
    saveWebServerConfig();
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
        updateWebServerSystemProperties();
      }
    }
  }
}