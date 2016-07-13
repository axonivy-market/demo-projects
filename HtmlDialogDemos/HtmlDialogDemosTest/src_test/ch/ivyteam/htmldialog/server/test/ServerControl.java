package ch.ivyteam.htmldialog.server.test;

public class ServerControl
{

  private static final String IS_ENGINE_PROPERTY = "server.test.isEngine";
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

  public static boolean isEngine()
  {
    return Boolean.valueOf(System.getProperty(IS_ENGINE_PROPERTY, Boolean.toString(false)));
  }

  public static String getProcessStartLink(String relativeIvpPath)
  {
    return getBaseUrl() + "pro/" + getTestApplication() + "/" + relativeIvpPath;
  }
}
