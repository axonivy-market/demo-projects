package test.web;

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
    return System.getProperty("test.engine.app", "designer");
  }
}
