package com.axonivy.engine.config.ui.web.test;

public class ServerControl
{

  private static final String IS_DESIGNER_PROPERTY = "server.test.isDesigner";
  private static final String TEST_APPLICATION_PROPERTY = "server.test.testApplication";
  private static final String BASE_URL_PROPERTY = "server.test.baseUrl";

  public static String getBaseUrl()
  {
    return System.getProperty(BASE_URL_PROPERTY, "http://localhost:8081/ivy/");
  }

  public static String getTestApplication()
  {
    return System.getProperty(TEST_APPLICATION_PROPERTY, "designer");
  }

  public static boolean isDesigner()
  {
    return Boolean.valueOf(System.getProperty(IS_DESIGNER_PROPERTY, Boolean.toString(true)));
  }

  public static String getProcessStartLink(String relativeIvpPath)
  {
    return getBaseUrl() + "pro/" + getTestApplication() + "/" + relativeIvpPath;
  }

  public static String getEndPageUrl()
  {
    if (isDesigner())
    {
      return getBaseUrl() + "wf/index.jsp";
    }
    else
    {
      return getBaseUrl() + "wf/" + getTestApplication() + "/end";
    }
  }

}
