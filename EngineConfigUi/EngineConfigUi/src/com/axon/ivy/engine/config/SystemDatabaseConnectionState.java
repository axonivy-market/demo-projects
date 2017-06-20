package com.axon.ivy.engine.config;

public enum SystemDatabaseConnectionState
{
  WRONG_PASSWORD,
  UNKNOWN,
  CONVERT_DB,
  CREATE_DB,
  WRONG_LOGIN,
  WRONG_HOST,
  WRONG_DB_VERSION,
  CONNECTION_OK;
}