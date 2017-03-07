package com.axon.ivy.engine.config;

import org.apache.commons.lang.StringUtils;

import ch.ivyteam.ivy.server.configuration.system.db.ConnectionState;
import ch.ivyteam.licence.LicenceConstants;
import ch.ivyteam.licence.SignedLicence;

public class ConnectionInfo
{
  private Boolean connectionOK = false;
  private ConnectionState connectionState = ConnectionState.NOT_CONNECTED;

  private ConnectionInfo()
  {
  }

  public static ConnectionInfo create()
  {
    return new ConnectionInfo();
  }

  public Boolean getConnectionOK()
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

  public boolean getIsCluster()
  {
    if (getIsLicenceValid())
    {
      boolean isClusterLicence =
              LicenceConstants.VAL_LICENCE_TYPE_ENTERPRISE.equals(SignedLicence.getParam(
                      ch.ivyteam.licence.LicenceConstants.PARAM_LICENCE_TYPE))
                      || StringUtils.isNotEmpty(
                              System.getProperty("ch.ivyteam.ivy.server.configuration.development.cluster"));
      return isClusterLicence;
    }
    return false;
  }

  public Boolean getIsLicenceValid()
  {
    return SignedLicence.isServer() && !SignedLicence.isDemo() || StringUtils.isNotEmpty(System
            .getProperty("ch.ivyteam.ivy.server.configuration.development"));
  }
}
