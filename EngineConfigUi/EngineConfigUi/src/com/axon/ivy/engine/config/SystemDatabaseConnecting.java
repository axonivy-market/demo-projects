package com.axon.ivy.engine.config;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

import ch.ivyteam.ivy.server.configuration.system.db.ConnectionState;
import ch.ivyteam.ivy.server.configuration.system.db.IConnectionListener;
import ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseConnectionTester;
import ch.ivyteam.util.WaitUtil;

import com.axonivy.engine.config.ui.settings.ConfigData;

public class SystemDatabaseConnecting
{
  public static ConnectionState testConnection(ConfigData configData) throws Exception
  {
    BlockingListener listener = new BlockingListener();
    SystemDatabaseConnectionTester tester = testConnection(configData, listener);
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
  
  private static SystemDatabaseConnectionTester testConnection(
          ConfigData configData, IConnectionListener listener)
          throws Exception
  {
    SystemDatabaseSettings.updateDbConfig(configData);
    SystemDatabaseConnectionTester tester = SystemDatabaseSettings.getSystemDb().getConnectionTester();
    tester.reset();
    tester.addConnectionListener(listener);
    tester.configurationChanged();
    return tester;
  }

  private static class BlockingListener implements IConnectionListener
  {
    private boolean gotResult = false;

    @Override
    public void connectionStateChanged(ConnectionState newState)
    {
      if (newState != ConnectionState.CONNECTING)
      {
        gotResult = true;
      }
    }
  }
}
