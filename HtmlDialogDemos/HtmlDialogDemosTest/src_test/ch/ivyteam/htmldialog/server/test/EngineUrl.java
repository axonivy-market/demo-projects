package ch.ivyteam.htmldialog.server.test;

import static com.codeborne.selenide.Condition.visible;
import static com.codeborne.selenide.Selenide.$;

import org.openqa.selenium.By;

import com.codeborne.selenide.Selenide;

public class EngineUrl
{

  private static final String DESIGNER = "designer";

  private static String base()
  {
    return System.getProperty("test.engine.url", "http://localhost:8081/ivy/");
  }

  public static String process()
  {
    return getServletUrl("pro");
  }

  private static String getServletUrl(String servletContext)
  {
    return base() + servletContext + "/" + applicationName();
  }

  public static String applicationName()
  {
    return System.getProperty("test.engine.app", DESIGNER);
  }
  
  public static void startProcess(String pathToIvp)
  {
    Selenide.open(EngineUrl.process() + "/HtmlDialogDemos/" + pathToIvp);
    $(By.id("menuform")).shouldBe(visible);
  }
  
}
