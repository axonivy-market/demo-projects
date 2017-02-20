package com.axon.ivy.engine.config;

import ch.ivyteam.ivy.server.configuration.system.db.ConnectionState;

public class ConnectionInfo 
{
  private static ConnectionInfo info = new ConnectionInfo();
  private Boolean connectionOK = false;
  private ConnectionState connectionState = ConnectionState.NOT_CONNECTED;
  
  private ConnectionInfo()
  {  
  }
  
  public static ConnectionInfo getConnectionInfo()
  {
    return info;
  }

  public Boolean getConnectionOK()
  {
    return connectionOK;
  }
  public Boolean checkConnectionOK()
  {
    return connectionOK;
  }
  
  public ConnectionState getConnectionState()
  {
    return connectionState;
  }
  
  public void setConnectionState(ConnectionState cs)
  {
    connectionState = cs;
    updateConnection();
  }

  private void updateConnection()
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
