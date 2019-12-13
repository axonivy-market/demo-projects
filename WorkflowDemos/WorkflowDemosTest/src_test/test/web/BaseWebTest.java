package test.web;

import static com.codeborne.selenide.Condition.exactText;
import static com.codeborne.selenide.Selenide.$;

import org.junit.jupiter.api.BeforeEach;
import org.openqa.selenium.remote.RemoteWebDriver;

import com.axonivy.ivy.supplements.primeui.tester.PrimeUi;
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
    Configuration.timeout = 10000;
    Selenide.open();
    this.driver = (RemoteWebDriver) WebDriverRunner.getWebDriver();
  }

  public PrimeUi prime()
  {
    return new PrimeUi(driver);
  }

  protected void startProcess(String pathToIvp)
  {
    Selenide.open(EngineUrl.process() + "/WorkflowDemos/" + pathToIvp);
  }
  
  public void checkEndPage()
  {
    if (EngineUrl.applicationName().equals("designer"))
    {
      $("h2").shouldBe(exactText("Personal Task List"));
    }
    else
    {
      $("h3").shouldBe(exactText("Task End"));
    }
  }
  
  public void checkTaskList()
  {
    if (EngineUrl.applicationName().equals("designer"))
    {
      $("h2").shouldBe(exactText("Personal Task List"));
    }
    else
    {
      $("h3").shouldBe(exactText("Task List"));
    }
  }

}