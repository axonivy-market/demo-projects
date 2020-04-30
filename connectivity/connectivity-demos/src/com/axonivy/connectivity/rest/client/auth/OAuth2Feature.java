package com.axonivy.connectivity.rest.client.auth;

import java.io.IOException;

import javax.ws.rs.Priorities;
import javax.ws.rs.client.ClientRequestContext;
import javax.ws.rs.core.Feature;
import javax.ws.rs.core.FeatureContext;
import javax.ws.rs.ext.Provider;

import org.apache.commons.lang3.StringUtils;

import com.fasterxml.jackson.databind.JsonNode;

import ch.ivyteam.ivy.bpm.error.BpmError;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.security.ISession;

public class OAuth2Feature implements Feature
{
  public static final String TOKEN_MISSING = "rest:client:token:missing";

  @Override
  public boolean configure(FeatureContext context)
  {
    context.register(new AuthorizationFilter(Ivy.session(), Ivy.log()), Priorities.AUTHORIZATION);
    return true;
  }
  
  @Provider
  private static class AuthorizationFilter implements javax.ws.rs.client.ClientRequestFilter
  {
    private TokenStore store;

    public AuthorizationFilter(ISession session, ch.ivyteam.log.Logger logger)
    {
      store = new TokenStore(session, "platform.uipath.com", logger);
    }

    @Override
    public void filter(ClientRequestContext context) throws IOException {
      JsonNode token = store.getToken();
      if (token == null)
      {
        throw BpmError.create(TOKEN_MISSING).build();
      }
      String accessToken = token.get("access_token").asText();
      if (StringUtils.isEmpty(accessToken))
      {
        throw new IllegalStateException("Failed to read 'access_token' from "+token);
      }
      context.getHeaders().add("Authorization", "Bearer "+accessToken);
    }
  }

}
