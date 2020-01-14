package com.axonivy.connectivity.rest.client.filter;

import javax.servlet.http.HttpSession;
import javax.ws.rs.core.Feature;
import javax.ws.rs.core.FeatureContext;

import org.glassfish.jersey.client.oauth1.AccessToken;
import org.glassfish.jersey.client.oauth1.ConsumerCredentials;
import org.glassfish.jersey.client.oauth1.OAuth1AuthorizationFlow;
import org.glassfish.jersey.client.oauth1.OAuth1ClientSupport;

import ch.ivyteam.ivy.bpm.error.BpmError;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.request.IHttpProcessModelVersionRequest;
import ch.ivyteam.ivy.security.IUser;

/**
 * Implements the OAuth Authentication for the twitter API.
 * 
 * Adapted from jersey-example on github:
 * https://github.com/jersey/jersey/blob/master/examples/oauth-client-twitter/src/main/java/org/glassfish/jersey/examples/oauth/twitterclient/App.java
 */
public class TwitterOAuthFilter implements Feature
{
  public static final String AUTHORIZATION_FLOW = "flow";
  public static final String PROPERTY_CONSUMER_KEY = "consumerKey";
  public static final String PROPERTY_CONSUMER_SECRET = "consumerSecret";

  private static final String PROPERTY_TOKEN = "token";
  private static final String PROPERTY_TOKEN_SECRET = "tokenSecret";

  @Override
  public boolean configure(FeatureContext context)
  {
    String consumerKey = (String) context.getConfiguration().getProperty(PROPERTY_CONSUMER_KEY);
    String consumerSecret = (String) context.getConfiguration().getProperty(PROPERTY_CONSUMER_SECRET);
    ConsumerCredentials credentials = new ConsumerCredentials(consumerKey, consumerSecret);

    Feature twitterOauth = createOauthFeature(credentials);
    context.register(twitterOauth);
    return true;
  }

  private static Feature createOauthFeature(ConsumerCredentials consumerCredentials)
  {
    AccessToken accessToken = readToken();
    if (accessToken == null)
    {
      final OAuth1AuthorizationFlow authFlow = creatAuthFlow(consumerCredentials);
      throw BpmError.create("twitter:authorization:required")
              .withAttribute(AUTHORIZATION_FLOW, authFlow)
              .build();
    }
    return OAuth1ClientSupport.builder(consumerCredentials).feature()
            .accessToken(accessToken).build();
  }

  private static OAuth1AuthorizationFlow creatAuthFlow(ConsumerCredentials consumerCredentials)
  {
    return OAuth1ClientSupport.builder(consumerCredentials)
            .authorizationFlow(
                    "https://api.twitter.com/oauth/request_token",
                    "https://api.twitter.com/oauth/access_token",
                    "https://api.twitter.com/oauth/authorize")
            .build();
  }

  private static AccessToken readToken()
  {
    IUser user = Ivy.session().getSessionUser();
    if (user == null)
    {
      HttpSession session = getHttpSession();
      System.out.println("READING TOKEN FROM SESSION");
      return toAccessToken(
              (String) session.getAttribute(PROPERTY_TOKEN),
              (String) session.getAttribute(PROPERTY_TOKEN_SECRET));
    }
    return toAccessToken(
            user.getProperty(PROPERTY_TOKEN),
            user.getProperty(PROPERTY_TOKEN_SECRET));
  }

  private static AccessToken toAccessToken(String token, String secret)
  {
    if (token == null || secret == null)
    {
      return null;
    }
    return new AccessToken(token, secret);
  }

  public static void storeToken(AccessToken accessToken)
  {
    IUser user = Ivy.session().getSessionUser();
    if (user == null)
    {
      HttpSession session = getHttpSession();
      session.setAttribute(PROPERTY_TOKEN, accessToken.getToken());
      session.setAttribute(PROPERTY_TOKEN_SECRET, accessToken.getAccessTokenSecret());
      System.out.println("STORING TOKEN ON SESSION");
      return;
    }
    user.setProperty(PROPERTY_TOKEN, accessToken.getToken());
    user.setProperty(PROPERTY_TOKEN_SECRET, accessToken.getAccessTokenSecret());
  }

  private static HttpSession getHttpSession()
  {
    return ((IHttpProcessModelVersionRequest) Ivy.request()).getHttpSession();
  }

}
