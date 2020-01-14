package test.web;

import static com.codeborne.selenide.Condition.exactText;
import static com.codeborne.selenide.Selenide.$;

import org.junit.jupiter.api.BeforeEach;
import org.openqa.selenium.remote.RemoteWebDriver;

import com.codeborne.selenide.Configuration;
import com.codeborne.selenide.Selenide;
import com.codeborne.selenide.WebDriverRunner;

public abstract class BaseWebTest
{
  protected RemoteWebDriver driver;

  @BeforeEach
  void initDriver()
  {
    Configuration.browser = "firefox";
    Configuration.headless = true;
    Configuration.reportsFolder = "target/senenide/reports";
    Selenide.open();
    this.driver = (RemoteWebDriver) WebDriverRunner.getWebDriver();
  }

  protected void startProcess(String pathToIvp)
  {
    Selenide.open(EngineUrl.process() + "/WorkflowDemos/" + pathToIvp);
  }
  
  public void checkEndPage()
  {
    if (EngineUrl.applicationName().equals("designer"))
    {
      $("h2").waitUntil(exactText("Personal Task List"), 15000);
    }
    else
    {
      $("h3").waitUntil(exactText("Task End"), 15000);
    }
  }
  
  public void checkTaskList()
  {
    if (EngineUrl.applicationName().equals("designer"))
    {
      $("h2").waitUntil(exactText("Personal Task List"), 15000);
    }
    else
    {
      $("h3").waitUntil(exactText("Task List"), 15000);
    }
  }

}