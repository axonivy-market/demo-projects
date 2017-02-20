package com.axon.ivy.engine.config;

import javax.faces.bean.ApplicationScoped;
import javax.faces.bean.ManagedBean;

import ch.ivyteam.ivy.server.configuration.system.db.ConnectionState;

@ManagedBean
@ApplicationScoped
public class ConfigurationBean
{
  private static Boolean connectionOK;
  private static ConnectionState connectionState;

  public Boolean getConnectionOK()
  {
    return connectionOK;
  }
  public static Boolean checkConnectionOK()
  {
    return connectionOK;
  }
  
  public static ConnectionState getConnectionState()
  {
    return connectionState;
  }
  
  public static void setConnectionState(ConnectionState cs)
  {
    connectionState = cs;
    updateConnection();
  }

  private static void updateConnection()
  {
    if (ConnectionState.CONNECTED.equals(connectionState))
    {
      connectionOK = true;
    }
    else
    {
      connectionOK = false;
    }
  }
}
