package com.axon.ivy.engine.config;

import ch.ivyteam.ivy.server.ServerOsgiApplication;

public class SystemUtil
{
  public static boolean restart;

  public static void restartOrShutdown() throws Exception
  {
    if (restart)
    {
      restart();
    }
    else
    {
      shutdown();
    }
  }

  private static void restart() throws Exception
  {
    ServerOsgiApplication.restart();
  }

  private static void shutdown()
  {
    System.exit(-1);
  }
}
