package com.axon.ivy.engine.config;

import org.apache.commons.lang.StringUtils;

import ch.ivyteam.ivy.server.configuration.system.db.ConnectionState;
import ch.ivyteam.licence.SignedLicence;

public class ConnectionInfo
{
  private Boolean connectionOK = false;
  private ConnectionState connectionState = ConnectionState.NOT_CONNECTED;
  private Throwable connectionError;

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

  public String getStateCssValue()
  {
    switch (connectionState)
    {
      case CONNECTED:
        return "alert-success";

      case CONNECTED_NO_DATABASE_OR_SCHEMA:
      case CONNECTED_NO_TABLES:
      case CONNECTED_WRONG_NEWER_VERSION:
      case CONNECTED_WRONG_OLDER_VERSION:
        return "alert-warning";

      case NOT_CONNECTED:
      case CONNECTING:
        return "alert-info";

      case CONNECTION_FAILED:
        return "alert-danger";

      default:
        return "alert-danger";
    }
  }

  public String getStateTitle()
  {
    switch (connectionState)
    {
      case CONNECTED:
        return "Connected";
      case CONNECTED_NO_DATABASE_OR_SCHEMA:
        return "Missing Database/Schema";
      case CONNECTED_NO_TABLES:
        return "No tables found";
      case CONNECTED_WRONG_NEWER_VERSION:
        return "Database too new";
      case CONNECTED_WRONG_OLDER_VERSION:
        return "Database too old";
      case CONNECTING:
        return "Connecting...";
      case CONNECTION_FAILED:
        return "Connection failed";
      case NOT_CONNECTED:
        return "Connection state unknown";
      default:
        return "";
    }
  }

  public String getStateMessage()
  {
    switch (connectionState)
    {
      case CONNECTED:
        return "Your settings are valid. Connection was established.";
      case CONNECTED_NO_DATABASE_OR_SCHEMA:
        return "Database/Schema is missing. Please create a Database/Schema.";
      case CONNECTED_NO_TABLES:
        return "No ivy tables found (e.g. IWA_Version). Please create the tables with the \"Create Database\" button.";
      case CONNECTED_WRONG_NEWER_VERSION:
        return "Your Database has an newer version. Please use a newer Engine.";
      case CONNECTED_WRONG_OLDER_VERSION:
        return "Your Database has an older version. Please convert it.";
      case CONNECTING:
        return "Trying to connect with Database...";
      case CONNECTION_FAILED:
        String msg = connectionError != null ? connectionError.getCause().getMessage() : "";
        return "Error occured: " + msg;
      case NOT_CONNECTED:
        return "Please check the connection to the Database.";
      default:
        return "";
    }
  }

  public String getConnectionIcon()
  {
    if (connectionState == ConnectionState.CONNECTING)
    {
      return "fa fa-plug fa-fw fa-pulse";
    }
    return "fa fa-plug fa-fw";
  }

  public boolean getIsCluster()
  {
    return LicenceUtil.isCluster()
            || StringUtils.isNotEmpty(
                    System.getProperty("ch.ivyteam.ivy.server.configuration.development.cluster"));
  }

  public Boolean getIsLicenceValid()
  {
    return SignedLicence.isServer() && !SignedLicence.isDemo() || StringUtils.isNotEmpty(System
            .getProperty("ch.ivyteam.ivy.server.configuration.development"));
  }

  protected void setConnectionError(Throwable connectionError)
  {
    this.connectionError = connectionError;
  }

  public Throwable getConnectionError()
  {
    return connectionError;
  }
  
  public boolean canConvert()
  {
    return connectionState == ConnectionState.CONNECTED_WRONG_OLDER_VERSION;
  }
}
