package com.axonivy.engine.config.ui.unit.test;

import org.assertj.core.api.Assertions;
import org.junit.Test;

import ch.ivyteam.db.jdbc.DatabaseProduct;
import ch.ivyteam.ivy.server.configuration.system.db.ConnectionState;

import com.axon.ivy.engine.config.ConnectionInfo;
import com.axon.ivy.engine.config.FailedConnectionState;

@SuppressWarnings("restriction")
public class TestSystemDatabaseAdvice
{
  @Test
  public void testStateTitle() throws Exception
  {
    assertStateTitle(ConnectionState.CONNECTED, "Connected");
    assertStateTitle(ConnectionState.CONNECTED_NO_DATABASE_OR_SCHEMA, "Missing Database/Schema");
    assertStateTitle(ConnectionState.CONNECTED_NO_TABLES, "No tables found");
    assertStateTitle(ConnectionState.CONNECTED_WRONG_NEWER_VERSION, "Database too new");
    assertStateTitle(ConnectionState.CONNECTED_WRONG_OLDER_VERSION, "Database too old");
    assertStateTitle(ConnectionState.CONNECTING, "Connecting...");
    assertStateTitle(ConnectionState.CONNECTION_FAILED, "Connection failed");
    assertStateTitle(ConnectionState.NOT_CONNECTED, "Connection state unknown");
  }

  @Test
  public void testStateMessage() throws Exception
  {
    assertStateMessage(ConnectionState.CONNECTED, "Your settings are valid. Connection was established.");
    assertStateMessage(ConnectionState.CONNECTED_NO_DATABASE_OR_SCHEMA,
            "Database/Schema is missing. Please create a Database/Schema.");
    assertStateMessage(ConnectionState.CONNECTED_NO_TABLES,
            "No ivy tables found (e.g. IWA_Version). Please create the tables with the \"Create Database\" button.");
    assertStateMessage(ConnectionState.CONNECTED_WRONG_NEWER_VERSION,
            "Your Database has an newer version. Please use a newer Engine.");
    assertStateMessage(ConnectionState.CONNECTED_WRONG_OLDER_VERSION,
            "Your Database has an older version. Please convert it.");
    assertStateMessage(ConnectionState.CONNECTING, "Trying to connect with Database...");
    assertStateMessage(ConnectionState.CONNECTION_FAILED, "Error occured: ");
    assertStateMessage(ConnectionState.NOT_CONNECTED, "Please check the connection to the Database.");
  }

  @Test
  public void testFailedConnectionState() throws Exception
  {
    assertFailedConnectionState(ConnectionState.CONNECTED, FailedConnectionState.UNKNOWN);
    assertFailedConnectionState(ConnectionState.CONNECTED_NO_DATABASE_OR_SCHEMA,
            FailedConnectionState.UNKNOWN);
    assertFailedConnectionState(ConnectionState.CONNECTED_NO_TABLES, FailedConnectionState.UNKNOWN);
    assertFailedConnectionState(ConnectionState.CONNECTED_WRONG_NEWER_VERSION, FailedConnectionState.UNKNOWN);
    assertFailedConnectionState(ConnectionState.CONNECTED_WRONG_OLDER_VERSION, FailedConnectionState.UNKNOWN);
    assertFailedConnectionState(ConnectionState.CONNECTING, FailedConnectionState.UNKNOWN);
    assertFailedConnectionState(ConnectionState.CONNECTION_FAILED, FailedConnectionState.UNKNOWN);
    assertFailedConnectionState(ConnectionState.NOT_CONNECTED, FailedConnectionState.UNKNOWN);
  }

  @Test
  public void testMsSqlFailedStates() throws Exception
  {
    assertGeneralAdviceFailedConnectionState(DatabaseProduct.MICROSOFT_SQL_SERVER);
    assertFailedConnectionState(ConnectionState.CONNECTION_FAILED, DatabaseProduct.MICROSOFT_SQL_SERVER,
            FailedConnectionState.CREATE_DB, new Throwable("Cannot open database"));
    assertFailedConnectionState(ConnectionState.CONNECTION_FAILED, DatabaseProduct.MICROSOFT_SQL_SERVER,
            FailedConnectionState.WRONG_LOGIN, new Throwable("Login failed for user"));
    assertFailedConnectionState(ConnectionState.CONNECTION_FAILED, DatabaseProduct.MICROSOFT_SQL_SERVER,
            FailedConnectionState.WRONG_LOGIN, new Throwable("SSO Failed: Native SSPI library not loaded"));
    assertFailedConnectionState(ConnectionState.CONNECTION_FAILED, DatabaseProduct.MICROSOFT_SQL_SERVER,
            FailedConnectionState.WRONG_HOST, new Throwable("unknown server host name"));
  }

  @Test
  public void testMySqlFailedStates() throws Exception
  {
    assertGeneralAdviceFailedConnectionState(DatabaseProduct.MYSQL);
    assertFailedConnectionState(ConnectionState.CONNECTION_FAILED, DatabaseProduct.MYSQL,
            FailedConnectionState.CREATE_DB, new Throwable("Unknown database"));
    assertFailedConnectionState(ConnectionState.CONNECTION_FAILED, DatabaseProduct.MYSQL,
            FailedConnectionState.WRONG_LOGIN, new Throwable("Access denied for user"));
    assertFailedConnectionState(ConnectionState.CONNECTION_FAILED, DatabaseProduct.MYSQL,
            FailedConnectionState.WRONG_PASSWORD,
            new Throwable("Access denied for user : using password: NO"));
    assertFailedConnectionState(ConnectionState.CONNECTION_FAILED, DatabaseProduct.MYSQL,
            FailedConnectionState.WRONG_HOST, new Throwable(
                    "The driver has not received any packets from the server"));
  }

  @Test
  public void testOracleFailedStates() throws Exception
  {
    assertGeneralAdviceFailedConnectionState(DatabaseProduct.ORACLE);
    assertFailedConnectionState(ConnectionState.CONNECTION_FAILED, DatabaseProduct.ORACLE,
            FailedConnectionState.CREATE_DB, new Throwable("Unknown database"));
    assertFailedConnectionState(ConnectionState.CONNECTION_FAILED, DatabaseProduct.ORACLE,
            FailedConnectionState.WRONG_LOGIN, new Throwable("Access denied for user"));
    assertFailedConnectionState(ConnectionState.CONNECTION_FAILED, DatabaseProduct.ORACLE,
            FailedConnectionState.WRONG_PASSWORD, new Throwable("Access denied for user: using password: NO"));
    assertFailedConnectionState(ConnectionState.CONNECTION_FAILED, DatabaseProduct.ORACLE,
            FailedConnectionState.WRONG_HOST, new Throwable("The Network Adapter could not establish"));
  }

  @Test
  public void testPostgreSqlFailedStates() throws Exception
  {
    assertGeneralAdviceFailedConnectionState(DatabaseProduct.POSTGRE_SQL);
    assertFailedConnectionState(ConnectionState.CONNECTION_FAILED, DatabaseProduct.POSTGRE_SQL,
            FailedConnectionState.CREATE_DB, new Throwable("does not exist"));
    assertFailedConnectionState(ConnectionState.CONNECTION_FAILED, DatabaseProduct.POSTGRE_SQL,
            FailedConnectionState.WRONG_PASSWORD, new Throwable("password authentication failed for user"));
    assertFailedConnectionState(ConnectionState.CONNECTION_FAILED, DatabaseProduct.POSTGRE_SQL,
            FailedConnectionState.WRONG_PASSWORD, new Throwable(
                    "The server requested password-based authentication, but no password was provided"));
    assertFailedConnectionState(ConnectionState.CONNECTION_FAILED, DatabaseProduct.POSTGRE_SQL,
            FailedConnectionState.WRONG_HOST, new Throwable("The connection attempt failed"));
  }

  @Test
  public void testAS400FailedStates() throws Exception
  {
    assertGeneralAdviceFailedConnectionState(DatabaseProduct.AS400);
    assertFailedConnectionState(ConnectionState.CONNECTION_FAILED, DatabaseProduct.AS400,
            FailedConnectionState.WRONG_LOGIN, new Throwable("The application server rejected"));
    assertFailedConnectionState(ConnectionState.CONNECTION_FAILED, DatabaseProduct.AS400,
            FailedConnectionState.WRONG_PASSWORD, new Throwable(
                    "The application server rejected : Password is incorrect"));
    assertFailedConnectionState(ConnectionState.CONNECTION_FAILED, DatabaseProduct.AS400,
            FailedConnectionState.WRONG_HOST, new Throwable("The application requester cannot establish"));
  }

  @Test
  public void testHsqlDbFailedStates() throws Exception
  {
    assertGeneralAdviceFailedConnectionState(DatabaseProduct.HSQLDB);
    assertFailedConnectionState(ConnectionState.CONNECTION_FAILED, DatabaseProduct.HSQLDB,
            FailedConnectionState.CREATE_DB, new Throwable("SOO10 Invalid argument in JDBC call"));
    assertFailedConnectionState(ConnectionState.CONNECTION_FAILED, DatabaseProduct.HSQLDB,
            FailedConnectionState.WRONG_LOGIN, new Throwable("User not found"));
  }

  private void assertStateTitle(ConnectionState cs, String expectedStateTitle)
  {
    ConnectionInfo connectionInfo = ConnectionInfo.create();
    connectionInfo.setConnectionState(cs);
    Assertions.assertThat(connectionInfo.getStateTitle()).isEqualTo(expectedStateTitle);
  }

  private void assertStateMessage(ConnectionState cs, String expectedStateMessage)
  {
    ConnectionInfo connectionInfo = ConnectionInfo.create();
    connectionInfo.setConnectionState(cs);
    Assertions.assertThat(connectionInfo.getStateMessage()).isEqualTo(expectedStateMessage);
  }

  private void assertGeneralAdviceFailedConnectionState(DatabaseProduct product)
  {
    assertFailedConnectionState(ConnectionState.CONNECTED, product,
            FailedConnectionState.UNKNOWN, null);
    assertFailedConnectionState(ConnectionState.CONNECTED_NO_DATABASE_OR_SCHEMA,
            product, FailedConnectionState.CREATE_DB, null);
    assertFailedConnectionState(ConnectionState.CONNECTED_NO_TABLES, product,
            FailedConnectionState.CREATE_DB, null);
    assertFailedConnectionState(ConnectionState.CONNECTED_WRONG_NEWER_VERSION,
            product, FailedConnectionState.UNKNOWN, null);
    assertFailedConnectionState(ConnectionState.CONNECTED_WRONG_OLDER_VERSION,
            product, FailedConnectionState.UNKNOWN, null);
    assertFailedConnectionState(ConnectionState.CONNECTING, product,
            FailedConnectionState.UNKNOWN, null);
    assertFailedConnectionState(ConnectionState.NOT_CONNECTED, product,
            FailedConnectionState.UNKNOWN, new Throwable("Random Error"));
  }

  private void assertFailedConnectionState(ConnectionState cs,
          FailedConnectionState expectedFailedConnectionState)
  {
    ConnectionInfo connectionInfo = ConnectionInfo.create();
    connectionInfo.setConnectionState(cs);
    Assertions.assertThat(connectionInfo.getFailedState()).isEqualTo(expectedFailedConnectionState);
  }

  private void assertFailedConnectionState(ConnectionState cs, DatabaseProduct product,
          FailedConnectionState expectedFailedConnectionState, Throwable error)
  {
    ConnectionInfo connectionInfo = ConnectionInfo.create();
    connectionInfo.updateConnectionStates(cs, error, product);
    Assertions.assertThat(connectionInfo.getFailedState()).isEqualTo(expectedFailedConnectionState);
  }
}
