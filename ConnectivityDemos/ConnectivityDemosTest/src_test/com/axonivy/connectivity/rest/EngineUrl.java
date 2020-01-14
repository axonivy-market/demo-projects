package com.axonivy.connectivity.rest;

public class EngineUrl
{

  public static String base()
  {
    return System.getProperty("test.engine.url", "http://localhost:8081/ivy/");
  }

  public static String rest()
  {
    return getServletUrl("api");
  }

  public static String soap()
  {
    return getServletUrl("ws");
  }

  public static String process()
  {
    return getServletUrl("pro");
  }

  public static String getServletUrl(String servletContext)
  {
    return base() + servletContext + "/" + applicationName();
  }

  private static String applicationName()
  {
    return System.getProperty("test.engine.app", "designer");
  }
}
