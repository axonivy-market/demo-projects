package com.axonivy.connectivity.soap.client;

import ch.ivyteam.ivy.application.IApplication;
import ch.ivyteam.ivy.environment.Ivy;

public class ServiceContext
{

  public static ServiceContext create()
  {
    @SuppressWarnings("removal")
    IApplication app = Ivy.wf().getApplication(); // Deprecated since 8.0.26  
    // For 8.0.26 and newer use the following code:  
    // IApplication app = IApplication.current();

    return new ServiceContext(ServerUriHelper.getCurrentServer(), app.getName());
  }

  public final String uri;
  public final String app;

  private ServiceContext(String uri, String app)
  {
    this.uri = uri;
    this.app = app;
  }

}
