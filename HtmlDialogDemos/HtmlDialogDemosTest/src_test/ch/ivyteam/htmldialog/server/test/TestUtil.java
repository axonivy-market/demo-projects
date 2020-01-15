package ch.ivyteam.htmldialog.demo;

import static com.codeborne.selenide.Condition.visible;
import static com.codeborne.selenide.Selenide.$;

import org.apache.commons.lang3.StringUtils;
import org.junit.jupiter.api.BeforeAll;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;

import com.axonivy.ivy.supplements.IvySelenide;
import com.codeborne.selenide.Configuration;
import com.codeborne.selenide.FileDownloadMode;
import com.codeborne.selenide.Selenide;

import ch.ivyteam.htmldialog.server.test.EngineUrl;

@IvySelenide(headless = false)
public abstract class BaseWebTest
{ 

  @BeforeAll
  public static void setUp()
  {
    Configuration.proxyEnabled = true;
    Configuration.fileDownload = FileDownloadMode.PROXY;
  }
  
  protected void startProcess(String pathToIvp)
  {
    Selenide.open(EngineUrl.process() + "/HtmlDialogDemos/" + pathToIvp);
    if (StringUtils.containsNone(pathToIvp, "ClientSideValidationDemo"))
    {
      $(By.id("menuform")).shouldBe(visible);
    }
  }

  protected void clearInput(By inputLocator)
  {
    $(inputLocator).shouldBe(visible).clear();
    $(inputLocator).sendKeys(Keys.TAB);
  }

}