package com.axonivy.connectivity.soap.client;

import java.net.MalformedURLException;
import java.net.URL;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.request.IHttpProcessModelVersionRequest;

/**
 * Helper class to dynamically determine the current url of the ivy engine.
 *
 * This will be used to dynamically set the url of the web service
 * (personService) from the web service client.
 */
public class ServerUriHelper
{

  public static final String getCurrentServer()
  {
    try
    {
      URL fullRequestUrl = getFullRequestUrl();
      return extractServerUrl(fullRequestUrl);
    }
    catch (Exception ex)
    {
      throw new RuntimeException("Failed to resolve server uri", ex);
    }
  }

  private static String extractServerUrl(URL url)
  {
    String protocol = url.getProtocol();
    String host = url.getHost();
    int port = url.getPort();
    if (port == -1)
    {
      return String.format("%s://%s", protocol, host);
    }
    else
    {
      return String.format("%s://%s:%d", protocol, host, port);
    }
  }

  private static URL getFullRequestUrl() throws MalformedURLException
  {
    IHttpProcessModelVersionRequest request = (IHttpProcessModelVersionRequest) Ivy.request();
    String fullRequestURL = request.getHttpServletRequest().getRequestURL().toString();
    return new URL(fullRequestURL);
  }

}
