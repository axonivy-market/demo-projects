package com.axonivy.connectivity.soap.client;

import ch.ivyteam.ivy.environment.Ivy;

public class ServiceContext
{

  public static ServiceContext create()
  {
    return new ServiceContext(ServerUriHelper.getCurrentServer(), Ivy.wf().getApplication().getName());
  }

  public final String uri;
  public final String app;

  private ServiceContext(String uri, String app)
  {
    this.uri = uri;
    this.app = app;
  }

}
