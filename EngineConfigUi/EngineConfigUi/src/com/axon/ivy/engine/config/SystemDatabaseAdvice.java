package com.axon.ivy.engine.config;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.exception.ExceptionUtils;

import ch.ivyteam.db.jdbc.DatabaseProduct;

public class SystemDatabaseAdvice
{
  public static SystemDatabaseConnectionState whatsIncorrect(SystemDatabaseSettings settings)
          throws Exception
  {
    settings.testConnection();
    return getAdvice(settings.getConfigData().getProduct(), settings.getConnectionInfo().getConnectionError());
  }

  public static SystemDatabaseConnectionState getAdvice(DatabaseProduct product, Throwable error)
  {
    String errorMessage = ExceptionUtils.getMessage(error);

    if (getGeneralAdvice(errorMessage) != null)
    {
      return getGeneralAdvice(errorMessage);
    }
    switch (product)
    {
      case AS400:
        return getAs400Advice(errorMessage);
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
    return SystemDatabaseConnectionState.UNKNOWN;
  }

  private static SystemDatabaseConnectionState getGeneralAdvice(String errorMessage)
  {
    if (StringUtils.containsIgnoreCase(errorMessage, "older version"))
    {
      return SystemDatabaseConnectionState.CONVERT_DB;
    }
    if (StringUtils.containsIgnoreCase(errorMessage, "Wrong system database version"))
    {
      return SystemDatabaseConnectionState.WRONG_DB_VERSION;
    }
    if (StringUtils.containsIgnoreCase(errorMessage, "Connection was established"))
    {
      return SystemDatabaseConnectionState.CONNECTION_OK;
    }
    if (StringUtils.containsIgnoreCase(errorMessage, "Missing system application"))
    {
      return SystemDatabaseConnectionState.UNKNOWN;
    }
    return null;
  }

  private static SystemDatabaseConnectionState getHsqlDbAdvice(String errorMessage)
  {
    if (StringUtils.containsIgnoreCase(errorMessage, "SOO10 Invalid argument in JDBC call"))
    {
      return SystemDatabaseConnectionState.CREATE_DB;
    }
    if (StringUtils.containsIgnoreCase(errorMessage, "No ivy tables"))
    {
      return SystemDatabaseConnectionState.CREATE_DB;
    }
    if (StringUtils.containsIgnoreCase(errorMessage, "User not found"))
    {
      return SystemDatabaseConnectionState.WRONG_LOGIN;
    }
    return SystemDatabaseConnectionState.UNKNOWN;
  }

  private static SystemDatabaseConnectionState getPostgreSqlAdvice(String errorMessage)
  {
    if (StringUtils.containsIgnoreCase(errorMessage, "The connection attempt failed"))
    {
      return SystemDatabaseConnectionState.WRONG_HOST;
    }
    if (errorMessage
            .contains("The server requested password-based authentication, but no password was provided"))
    {
      return SystemDatabaseConnectionState.WRONG_PASSWORD;
    }
    if (StringUtils.containsIgnoreCase(errorMessage, "password authentication failed for user"))
    {
      return SystemDatabaseConnectionState.WRONG_PASSWORD;
    }
    if (StringUtils.containsIgnoreCase(errorMessage, "does not exist"))
    {
      return SystemDatabaseConnectionState.CREATE_DB;
    }
    return SystemDatabaseConnectionState.UNKNOWN;
  }

  private static SystemDatabaseConnectionState getOracleAdvice(String errorMessage)
  {
    if (StringUtils.containsIgnoreCase(errorMessage, "The Network Adapter could not establish"))
    {
      return SystemDatabaseConnectionState.WRONG_HOST;
    }
    if (StringUtils.containsIgnoreCase(errorMessage, "Access denied for user"))
    {
      if (StringUtils.containsIgnoreCase(errorMessage, "using password: NO"))
      {
        return SystemDatabaseConnectionState.WRONG_PASSWORD;
      }
      else
      {
        return SystemDatabaseConnectionState.WRONG_LOGIN;
      }
    }
    if (StringUtils.containsIgnoreCase(errorMessage, "Unknown database"))
    {
      return SystemDatabaseConnectionState.CREATE_DB;
    }
    return SystemDatabaseConnectionState.UNKNOWN;
  }

  private static SystemDatabaseConnectionState getMysqlAdvice(String errorMessage)
  {
    if (StringUtils.containsIgnoreCase(errorMessage,
            "The driver has not received any packets from the server"))
    {
      return SystemDatabaseConnectionState.WRONG_HOST;
    }
    if (StringUtils.containsIgnoreCase(errorMessage, "Access denied for user"))
    {
      if (StringUtils.containsIgnoreCase(errorMessage, "using password: NO"))
      {
        return SystemDatabaseConnectionState.WRONG_PASSWORD;
      }
      else
      {
        return SystemDatabaseConnectionState.WRONG_LOGIN;
      }
    }
    if (StringUtils.containsIgnoreCase(errorMessage, "Unknown database"))
    {
      return SystemDatabaseConnectionState.CREATE_DB;
    }
    return SystemDatabaseConnectionState.UNKNOWN;
  }

  private static SystemDatabaseConnectionState getMssqlAdvice(String errorMessage)
  {
    if (StringUtils.containsIgnoreCase(errorMessage, "unknown server host name"))
    {
      return SystemDatabaseConnectionState.WRONG_HOST;
    }
    if (StringUtils.containsIgnoreCase(errorMessage, "SSO Failed: Native SSPI library not loaded"))
    {
      return SystemDatabaseConnectionState.WRONG_LOGIN;
    }
    if (StringUtils.containsIgnoreCase(errorMessage, "Login failed for user"))
    {
      return SystemDatabaseConnectionState.WRONG_LOGIN;
    }
    if (StringUtils.containsIgnoreCase(errorMessage, "Cannot open database"))
    {
      return SystemDatabaseConnectionState.CREATE_DB;
    }
    return SystemDatabaseConnectionState.UNKNOWN;
  }

  private static SystemDatabaseConnectionState getAs400Advice(String errorMessage)
  {
    if (StringUtils.containsIgnoreCase(errorMessage, "The application requester cannot establish"))
    {
      return SystemDatabaseConnectionState.WRONG_HOST;
    }
    if (StringUtils.containsIgnoreCase(errorMessage, "The application server rejected"))
    {
      if (StringUtils.containsIgnoreCase(errorMessage, "Password is incorrect"))
      {
        return SystemDatabaseConnectionState.WRONG_PASSWORD;
      }
      return SystemDatabaseConnectionState.WRONG_LOGIN;
    }
    if (StringUtils.containsIgnoreCase(errorMessage, "Database/Schema is missing"))
    {
      return SystemDatabaseConnectionState.CREATE_DB;
    }
    return SystemDatabaseConnectionState.UNKNOWN;
  }
}