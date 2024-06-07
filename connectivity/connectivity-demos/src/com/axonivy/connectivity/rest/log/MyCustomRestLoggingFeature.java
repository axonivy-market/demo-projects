package com.axonivy.connectivity.rest.log;

import javax.ws.rs.core.Feature;
import javax.ws.rs.core.FeatureContext;

public class MyCustomRestLoggingFeature implements Feature {

  @Override
  public boolean configure(FeatureContext context) {
    context.register(new RequestLoggingFilter());
    return true;
  }
}
