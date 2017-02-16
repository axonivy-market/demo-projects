package com.axonivy.engine.config.ui.web.test;

public class EngineUrl
{
  private static final String DESIGNER = "designer";

  public static String base()
  {
    return System.getProperty("test.engine.url", "http://localhost:8081/ivy/");
  }

  public static String rest()
  {
    return getServletUrl("api");
  }

  public static String process()
  {
    return getServletUrl("pro");
  }

  public static String getServletUrl(String servletContext)
  {
    return base() + servletContext + "/" + applicationName();
  }

  public static String applicationName()
  {
    return System.getProperty("test.engine.app", DESIGNER);
  }

  public static Boolean isDesigner()
  {
    return Boolean.valueOf(EngineUrl.applicationName() == DESIGNER);
  }
}
