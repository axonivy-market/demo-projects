package com.axon.ivy.engine.config;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

import ch.ivyteam.ivy.server.configuration.system.db.ConnectionState;
import ch.ivyteam.ivy.server.configuration.system.db.IConnectionListener;
import ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseConnectionTester;
import ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseCreator;
import ch.ivyteam.util.WaitUtil;

import com.axonivy.engine.config.ui.settings.ConfigData;

public class SystemDatabaseConnecting
{
  public static ConnectionState testConnection(ConfigData configData) throws Exception
  {
    BlockingListener listener = new BlockingListener();
    SystemDatabaseConnectionTester tester = SystemDatabaseSettings.testConnection(configData, listener);
    try{      
      WaitUtil.await(() -> listener.gotResult, 10, TimeUnit.SECONDS);
    }
    catch(TimeoutException ex)
    {
      return ConnectionState.CONNECTION_FAILED;
    }
    return tester.getConnectionState();
  }

  public static void createDatabase(ConfigData configData) throws Exception
  {
    SystemDatabaseCreator createDatabase = SystemDatabaseSettings.createDatabase(configData);
    WaitUtil.await(() -> createDatabase.isRunning() == false, 60, TimeUnit.SECONDS);
    if (createDatabase.getError() != null)
    {
      throw new RuntimeException("Could not create database", createDatabase.getError());
    }
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
