package com.axon.ivy.engine.config;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang3.exception.ExceptionUtils;

import ch.ivyteam.db.jdbc.DatabaseProduct;
import ch.ivyteam.ivy.Advisor;
import ch.ivyteam.ivy.server.configuration.system.db.ConnectionState;
import ch.ivyteam.licence.SignedLicence;

@SuppressWarnings("restriction")
public class ConnectionInfo
{
  private Boolean connectionOK = false;
  private ConnectionState connectionState = ConnectionState.NOT_CONNECTED;
  private Throwable connectionError;
  private FailedConnectionState failedConnectionState = FailedConnectionState.UNKNOWN;

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

  public void updateConnectionStates(ConnectionState cs, Throwable error, DatabaseProduct product)
  {
    setConnectionState(cs);
    connectionError = error;
    failedConnectionState = SystemDatabaseAdvice.getAdvice(cs, product, connectionError);
  }

  public void setConnectionState(ConnectionState cs)
  {
    connectionState = cs;
    if (connectionState == ConnectionState.CONNECTED)
    {
      connectionOK = true;
    }
    else
    {
      connectionOK = false;
    }
  }

  public FailedConnectionState getFailedState()
  {
    return failedConnectionState;
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
        switch (failedConnectionState)
        {
          case WRONG_HOST:
            return "Incorrect host/port";
          case WRONG_PASSWORD:
            return "Incorrect Password";
          case WRONG_LOGIN:
            return "Incorrect Login";
          case CREATE_DB:
            return "Database doesn't exist";
          case UNKNOWN:
            return "Connection failed";
        }
        return "";
      case NOT_CONNECTED:
        return "Connection state unknown";
    }
    return "";
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
        switch (failedConnectionState)
        {
          case WRONG_HOST:
            return "Please check your host or port.";
          case WRONG_PASSWORD:
            return "Please check your password.";
          case WRONG_LOGIN:
            return "Please check your username and password.";
          case CREATE_DB:
            return "Your referenced database doesn't seem to exist. Please create a database.";
          case UNKNOWN:
            Throwable th = getCauseIfAvailable(connectionError);
            String msg = ExceptionUtils.getMessage(th);
            return "Error occured: " + msg;
        }
        return "";
      case NOT_CONNECTED:
        return "Please check the connection to the Database.";
    }
    return "";
  }

  private static Throwable getCauseIfAvailable(Throwable th)
  {
    if (th == null)
    {
      return null;
    }

    Throwable cause = th.getCause();
    if (cause != null)
    {
      return cause;
    }

    return th;
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
    return SignedLicence.isEnterprise()
            || StringUtils.isNotEmpty(
                    System.getProperty("ch.ivyteam.ivy.server.configuration.development.cluster"));
  }

  public Boolean getIsLicenceValid()
  {
    return Advisor.getAdvisor().isServer() && !SignedLicence.isDemo() || StringUtils.isNotEmpty(System
            .getProperty("ch.ivyteam.ivy.server.configuration.development"));
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
