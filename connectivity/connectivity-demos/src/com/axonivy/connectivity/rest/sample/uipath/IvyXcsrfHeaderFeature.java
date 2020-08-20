package com.axonivy.connectivity.rest.sample.uipath;

import java.io.IOException;

import javax.ws.rs.Priorities;
import javax.ws.rs.client.ClientRequestContext;
import javax.ws.rs.client.ClientRequestFilter;
import javax.ws.rs.core.Feature;
import javax.ws.rs.core.FeatureContext;

public class IvyXcsrfHeaderFeature implements Feature
{
  @Override
  public boolean configure(FeatureContext context)
  {
    context.register(new IvyCsrfHeader(), Priorities.HEADER_DECORATOR);
    return true;
  }

  private static class IvyCsrfHeader implements ClientRequestFilter
  {
    @Override
    public void filter(ClientRequestContext context) throws IOException 
    {
      context.getHeaders().add("X-Requested-By", "ivy");
    }
  }
}
