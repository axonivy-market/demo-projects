package com.axon.ivy.engine.config;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.exception.ExceptionUtils;

import ch.ivyteam.db.jdbc.DatabaseProduct;
import ch.ivyteam.ivy.server.configuration.system.db.ConnectionState;

@SuppressWarnings("restriction")
public class SystemDatabaseAdvice
{
  public static FailedConnectionState whatsIncorrect(SystemDatabaseSettings settings)
          throws Exception
  {
    ConnectionState newState = settings.testConnection();
    return getAdvice(newState, settings.getConfigData().getProduct(), settings.getConnectionInfo()
            .getConnectionError());
  }

  public static FailedConnectionState getAdvice(ConnectionState cs, DatabaseProduct product,
          Throwable error)
  {
    String errorMessage = ExceptionUtils.getMessage(error);

    FailedConnectionState advice = getGeneralAdvice(cs);
    if (advice != null)
    {
      return advice;
    }

    switch (product)
    {
      case HSQLDB:
        return getHsqlDbAdvice(errorMessage);
      case MICROSOFT_SQL_SERVER:
        return getMssqlAdvice(errorMessage);
      case MYSQL:
        return getMysqlAdvice(errorMessage);
      case ORACLE:
        return getOracleAdvice(errorMessage);
      case POSTGRE_SQL:
        return getPostgreSqlAdvice(errorMessage);
      default:
        break;
    }
    return FailedConnectionState.UNKNOWN;
  }

  private static FailedConnectionState getGeneralAdvice(ConnectionState cs)
  {
    switch (cs)
    {
      case CONNECTED:
      case CONNECTED_WRONG_NEWER_VERSION:
      case CONNECTED_WRONG_OLDER_VERSION:
      case CONNECTING:
      case CONNECTION_FAILED:
      case NOT_CONNECTED:
        break;
      case CONNECTED_NO_DATABASE_OR_SCHEMA:
      case CONNECTED_NO_TABLES:
        return FailedConnectionState.CREATE_DB;
    }
    return null;
  }

  private static FailedConnectionState getHsqlDbAdvice(String errorMessage)
  {
    if (StringUtils.containsIgnoreCase(errorMessage, "SOO10 Invalid argument in JDBC call"))
    {
      return FailedConnectionState.CREATE_DB;
    }
    if (StringUtils.containsIgnoreCase(errorMessage, "User not found"))
    {
      return FailedConnectionState.WRONG_LOGIN;
    }
    return FailedConnectionState.UNKNOWN;
  }

  private static FailedConnectionState getPostgreSqlAdvice(String errorMessage)
  {
    if (StringUtils.containsIgnoreCase(errorMessage, "The connection attempt failed"))
    {
      return FailedConnectionState.WRONG_HOST;
    }
    if (errorMessage
            .contains("The server requested password-based authentication, but no password was provided"))
    {
      return FailedConnectionState.WRONG_PASSWORD;
    }
    if (StringUtils.containsIgnoreCase(errorMessage, "password authentication failed for user"))
    {
      return FailedConnectionState.WRONG_PASSWORD;
    }
    if (StringUtils.containsIgnoreCase(errorMessage, "does not exist"))
    {
      return FailedConnectionState.CREATE_DB;
    }
    return FailedConnectionState.UNKNOWN;
  }

  private static FailedConnectionState getOracleAdvice(String errorMessage)
  {
    if (StringUtils.containsIgnoreCase(errorMessage, "The Network Adapter could not establish"))
    {
      return FailedConnectionState.WRONG_HOST;
    }
    if (StringUtils.containsIgnoreCase(errorMessage, "Access denied for user"))
    {
      if (StringUtils.containsIgnoreCase(errorMessage, "using password: NO"))
      {
        return FailedConnectionState.WRONG_PASSWORD;
      }
      else
      {
        return FailedConnectionState.WRONG_LOGIN;
      }
    }
    if (StringUtils.containsIgnoreCase(errorMessage, "Unknown database"))
    {
      return FailedConnectionState.CREATE_DB;
    }
    return FailedConnectionState.UNKNOWN;
  }

  private static FailedConnectionState getMysqlAdvice(String errorMessage)
  {
    if (StringUtils.containsIgnoreCase(errorMessage,
            "The driver has not received any packets from the server"))
    {
      return FailedConnectionState.WRONG_HOST;
    }
    if (StringUtils.containsIgnoreCase(errorMessage, "Access denied for user"))
    {
      if (StringUtils.containsIgnoreCase(errorMessage, "using password: NO"))
      {
        return FailedConnectionState.WRONG_PASSWORD;
      }
      else
      {
        return FailedConnectionState.WRONG_LOGIN;
      }
    }
    if (StringUtils.containsIgnoreCase(errorMessage, "Unknown database"))
    {
      return FailedConnectionState.CREATE_DB;
    }
    return FailedConnectionState.UNKNOWN;
  }

  private static FailedConnectionState getMssqlAdvice(String errorMessage)
  {
    if (StringUtils.containsIgnoreCase(errorMessage, "unknown server host name"))
    {
      return FailedConnectionState.WRONG_HOST;
    }
    if (StringUtils.containsIgnoreCase(errorMessage, "SSO Failed: Native SSPI library not loaded"))
    {
      return FailedConnectionState.WRONG_LOGIN;
    }
    if (StringUtils.containsIgnoreCase(errorMessage, "Login failed for user"))
    {
      return FailedConnectionState.WRONG_LOGIN;
    }
    if (StringUtils.containsIgnoreCase(errorMessage, "Cannot open database"))
    {
      return FailedConnectionState.CREATE_DB;
    }
    return FailedConnectionState.UNKNOWN;
  }
}