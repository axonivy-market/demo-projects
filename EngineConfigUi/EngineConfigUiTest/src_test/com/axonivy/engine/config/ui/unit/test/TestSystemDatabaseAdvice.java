package com.axonivy.engine.config.ui.unit.test;

import org.assertj.core.api.Assertions;
import org.junit.Test;

import ch.ivyteam.ivy.server.configuration.system.db.ConnectionState;

import com.axon.ivy.engine.config.ConnectionInfo;
import com.axon.ivy.engine.config.FailedConnectionState;

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
    assertStateMessage(ConnectionState.CONNECTED_NO_DATABASE_OR_SCHEMA, "Database/Schema is missing. Please create a Database/Schema.");
    assertStateMessage(ConnectionState.CONNECTED_NO_TABLES, "No ivy tables found (e.g. IWA_Version). Please create the tables with the \"Create Database\" button.");
    assertStateMessage(ConnectionState.CONNECTED_WRONG_NEWER_VERSION, "Your Database has an newer version. Please use a newer Engine.");
    assertStateMessage(ConnectionState.CONNECTED_WRONG_OLDER_VERSION, "Your Database has an older version. Please convert it.");
    assertStateMessage(ConnectionState.CONNECTING, "Trying to connect with Database...");
    assertStateMessage(ConnectionState.CONNECTION_FAILED, "Error occured: ");
    assertStateMessage(ConnectionState.NOT_CONNECTED, "Please check the connection to the Database.");
  }
  
  @Test
  public void testFailedConnectionState() throws Exception
  {
    assertFailedConnectionState(ConnectionState.CONNECTED, FailedConnectionState.UNKNOWN);
    assertFailedConnectionState(ConnectionState.CONNECTED_NO_DATABASE_OR_SCHEMA, FailedConnectionState.UNKNOWN);
    assertFailedConnectionState(ConnectionState.CONNECTED_NO_TABLES, FailedConnectionState.UNKNOWN);
    assertFailedConnectionState(ConnectionState.CONNECTED_WRONG_NEWER_VERSION, FailedConnectionState.UNKNOWN);
    assertFailedConnectionState(ConnectionState.CONNECTED_WRONG_OLDER_VERSION, FailedConnectionState.UNKNOWN);
    assertFailedConnectionState(ConnectionState.CONNECTING, FailedConnectionState.UNKNOWN);
    assertFailedConnectionState(ConnectionState.CONNECTION_FAILED, FailedConnectionState.UNKNOWN);
    assertFailedConnectionState(ConnectionState.NOT_CONNECTED, FailedConnectionState.UNKNOWN);
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

  private void assertFailedConnectionState(ConnectionState cs, FailedConnectionState expectedFailedConnectionState)
  {
    ConnectionInfo connectionInfo = ConnectionInfo.create();
    connectionInfo.setConnectionState(cs);
    Assertions.assertThat(connectionInfo.getFailedState()).isEqualTo(expectedFailedConnectionState);
  }
}
