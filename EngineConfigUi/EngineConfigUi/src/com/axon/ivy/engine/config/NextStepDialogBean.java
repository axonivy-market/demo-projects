package com.axon.ivy.engine.config;

import javax.faces.bean.ApplicationScoped;
import javax.faces.bean.ManagedBean;

import ch.ivyteam.db.jdbc.DatabaseProduct;

@ManagedBean
@ApplicationScoped
public class NextStepDialogBean
{
  private static final String WRONG_PASSWORD = "wrongPassword";
  private static final String UNKNOWN = "unknown";
  private static final String CONVERT_DB = "convertDb";
  private static final String CREATE_DB = "createDb";
  private static final String WRONG_LOGIN = "wrongLogin";
  private static final String WRONG_HOST = "wrongHost";
  private static final String CONNECTION_OK = "connectionOk";
  private static final String WRONG_DB_VERSION = "wrongDbVersion";
  private String step = UNKNOWN;
  private static String errorMessage;

  public String getMessage()
  {
    switch (step)
    {
      case WRONG_HOST:
        return "Please check your host";
      case WRONG_PASSWORD:
        return "Please check your password";
      case WRONG_LOGIN:
        return "Please check your login";
      case CREATE_DB:
        return "Your referenced database seems to not exist. Please create a database";
      case CONVERT_DB:
        return "Your referenced database seems to be outdated. Please convert your database";
      case CONNECTION_OK:
        return "Connection was established";
      case WRONG_DB_VERSION:
        return "Your database has a wrong version";
      case UNKNOWN:
      default:
        return "";
    }
  }

  public String getStep()
  {
    return step;
  }

  public String getTitle()
  {
    switch (step)
    {
      case WRONG_HOST:
        return "Incorrect Host";
      case WRONG_PASSWORD:
        return "Incorrect Password";
      case WRONG_LOGIN:
        return "Incorrect Login";
      case CREATE_DB:
        return "Database not found";
      case CONVERT_DB:
        return "Database is outdated";
      case CONNECTION_OK:
        return "Connection established";
      case WRONG_DB_VERSION:
        return "Wrong db version";
      case UNKNOWN:
        return "Unknown Error: " + errorMessage;
      default:
        return "Unknown Error";
    }
  }

  public void checkNextStepConnectionProblem(SystemDatabaseSettings settings) throws Exception
  {
    settings.testConnection();
    step = getAdvice(settings.getConfigData().getProduct(), settings.getConnectionInfo());
  }

  private static String getAdvice(DatabaseProduct product, ConnectionInfo info)
  {
    String stateMessage = info.getStateMessage();

    if (getGeneralAdvice(stateMessage) != null)
    {
      return getGeneralAdvice(stateMessage);
    }
    switch (product)
    {
      case AS400:
        return getAs400Advice(stateMessage);
      case HSQLDB:
        return getHsqlDbAdvice(stateMessage);
      case MICROSOFT_SQL_SERVER:
        return getMssqlAdvice(stateMessage);
      case MYSQL:
        return getMysqlAdvice(stateMessage);
      case ORACLE:
        return getOracleAdvice(stateMessage);
      case POSTGRE_SQL:
        return getPostgreSqlAdvice(stateMessage);
      default:
        break;
    }
    errorMessage = stateMessage;
    return UNKNOWN;
  }

  private static String getGeneralAdvice(String stateMessage)
  {
    if (stateMessage.contains("older version"))
    {
      return CONVERT_DB;
    }
    if (stateMessage.contains("Wrong system database version"))
    {
      return WRONG_DB_VERSION;
    }
    if (stateMessage.contains("Connection was established"))
    {
      return CONNECTION_OK;
    }
    if (stateMessage.contains("Missing system application"))
    {
      return UNKNOWN;
    }
    return null;
  }

  private static String getHsqlDbAdvice(String stateMessage)
  {
    if (stateMessage.contains("SOO10 Invalid argument in JDBC call"))
    {
      return CREATE_DB;
    }
    if (stateMessage.contains("No ivy tables"))
    {
      return CREATE_DB;
    }
    if (stateMessage.contains("User not found"))
    {
      return WRONG_LOGIN;
    }
    errorMessage = stateMessage;
    return UNKNOWN;
  }

  private static String getPostgreSqlAdvice(String stateMessage)
  {
    if (stateMessage.contains("The connection attempt failed"))
    {
      return WRONG_HOST;
    }
    if (stateMessage
            .contains("The server requested password-based authentication, but no password was provided"))
    {
      return WRONG_PASSWORD;
    }
    if (stateMessage.contains("password authentication failed for user"))
    {
      return WRONG_PASSWORD;
    }
    if (stateMessage.contains("does not exist"))
    {
      return CREATE_DB;
    }
    errorMessage = stateMessage;
    return UNKNOWN;
  }

  private static String getOracleAdvice(String stateMessage)
  {
    if (stateMessage.contains("The Network Adapter could not establish"))
    {
      return WRONG_HOST;
    }
    if (stateMessage.contains("Access denied for user"))
    {
      if (stateMessage.contains("using password: NO"))
      {
        return WRONG_PASSWORD;
      }
      else
      {
        return WRONG_LOGIN;
      }
    }
    if (stateMessage.contains("Unknown database"))
    {
      return CREATE_DB;
    }
    errorMessage = stateMessage;
    return UNKNOWN;
  }

  private static String getMysqlAdvice(String stateMessage)
  {
    if (stateMessage.contains("The driver has not received any packets from the server"))
    {
      return WRONG_HOST;
    }
    if (stateMessage.contains("Access denied for user"))
    {
      if (stateMessage.contains("using password: NO"))
      {
        return WRONG_PASSWORD;
      }
      else
      {
        return WRONG_LOGIN;
      }
    }
    if (stateMessage.contains("Unknown database"))
    {
      return CREATE_DB;
    }
    errorMessage = stateMessage;
    return UNKNOWN;
  }

  private static String getMssqlAdvice(String stateMessage)
  {
    if (stateMessage.contains("Unknown server host name"))
    {
      return WRONG_HOST;
    }
    if (stateMessage.contains("SSO Failed: Native SSPI library not loaded"))
    {
      return WRONG_LOGIN;
    }
    if (stateMessage.contains("Login failed for user"))
    {
      return WRONG_LOGIN;
    }
    if (stateMessage.contains("Cannot open database"))
    {
      return CREATE_DB;
    }
    errorMessage = stateMessage;
    return UNKNOWN;
  }

  private static String getAs400Advice(String stateMessage)
  {
    if (stateMessage.contains("The application requester cannot establish"))
    {
      return WRONG_HOST;
    }
    if (stateMessage.contains("The application server rejected"))
    {
      if (stateMessage.contains("Password is incorrect"))
      {
        return WRONG_PASSWORD;
      }
      return WRONG_LOGIN;
    }
    if (stateMessage.contains("Database/Schema is missing"))
    {
      return CREATE_DB;
    }
    errorMessage = stateMessage;
    return UNKNOWN;
  }
}
