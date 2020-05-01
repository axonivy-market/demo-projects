package com.axonivy.connectivity.rest.sample.uipath;

import java.io.IOException;
import java.util.Map;

import javax.ws.rs.Priorities;
import javax.ws.rs.client.ClientRequestContext;
import javax.ws.rs.client.ClientRequestFilter;
import javax.ws.rs.core.Feature;
import javax.ws.rs.core.FeatureContext;

import org.apache.commons.lang3.StringUtils;

public class TenantHeaderFeature implements Feature
{
  public static final String TOKEN_MISSING = "rest:client:token:missing";

  @Override
  public boolean configure(FeatureContext context)
  {
    Map<String, Object> properties = context.getConfiguration().getProperties();
    String tenant = readMandatory(properties, "tenant");
    context.register(new OrechstratorTenantFilter(tenant), Priorities.HEADER_DECORATOR);
    return true;
  }

  private static String readMandatory(Map<String, Object> properties, String key)
  {
    Object value = properties.get(key);
    if (value instanceof String)
    {
      String tenant = (String) value;
      if (StringUtils.isNotEmpty(tenant))
      {
        return tenant;
      }
    }
    throw new IllegalStateException("Missing property '"+key+"' on for "+TenantHeaderFeature.class.getName()+".");
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
