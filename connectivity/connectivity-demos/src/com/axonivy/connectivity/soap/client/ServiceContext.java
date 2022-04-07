package com.axonivy.connectivity.soap.client;

import ch.ivyteam.ivy.application.IApplication;

public class ServiceContext
{

  public static ServiceContext create()
  {
    return new ServiceContext(ServerUriHelper.getCurrentServer(), IApplication.current().getName());
  }

  public final String uri;
  public final String app;

  private ServiceContext(String uri, String app)
  {
    this.uri = uri;
    this.app = app;
  }

}
