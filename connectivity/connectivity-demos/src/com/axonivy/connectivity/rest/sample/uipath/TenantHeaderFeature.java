package com.axonivy.connectivity.rest.sample.uipath;

import java.io.IOException;

import javax.ws.rs.Priorities;
import javax.ws.rs.client.ClientRequestContext;
import javax.ws.rs.client.ClientRequestFilter;
import javax.ws.rs.core.Configuration;
import javax.ws.rs.core.Feature;
import javax.ws.rs.core.FeatureContext;

public class TenantHeaderFeature implements Feature
{
  public static final String TOKEN_MISSING = "rest:client:token:missing";

  @Override
  public boolean configure(FeatureContext context)
  {
    Configuration config = context.getConfiguration();
    String tenant = (String) config.getProperties().getOrDefault("tenant", "AXONPRESALES");
    context.register(new OrechstratorTenantFilter(tenant), Priorities.HEADER_DECORATOR);
    return true;
  }

  private static class OrechstratorTenantFilter implements ClientRequestFilter
  {
    private final String tenant;

    private OrechstratorTenantFilter(String tenant)
    {
      this.tenant = tenant;
    }

    @Override
    public void filter(ClientRequestContext context) throws IOException 
    {
      context.getHeaders().add("X-UIPATH-TenantName", tenant);
    }
  }

}
