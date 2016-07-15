package ch.ivyteam.htmldialog.demo;

import java.util.concurrent.TimeUnit;

import org.junit.After;
import org.junit.Before;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.Point;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxProfile;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;

import ch.ivyteam.htmldialog.server.test.FixVersionFirefox;
import ch.ivyteam.htmldialog.server.test.ServerControl;

import com.axonivy.ivy.supplements.primeui.tester.AjaxHelper;
import com.axonivy.ivy.supplements.primeui.tester.PrimeUi;

public abstract class BaseWebTest
{
  protected WebDriver driver;

  @Before
  public void setUp() throws Exception
  {
    FirefoxProfile profile = FixVersionFirefox.loadFirefoxProfile();
    profile.setPreference("intl.accept_languages", "en");
    driver = FixVersionFirefox.createWebDriver(profile);

    driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);

    if (ServerControl.isEngine())
    {
      driver.manage().window().setPosition(new Point(-2000, 0));
    }
  }

  @After
  public void tearDown() throws Exception
  {
    driver.quit();
  }

  public AjaxHelper ajax()
  {
    return new AjaxHelper(driver);
  }

  public PrimeUi prime()
  {
    return new PrimeUi(driver);
  }

  protected <T> T await(ExpectedCondition<T> condition)
  {
    return ajax().await(condition);
  }

  protected void startProcess(String pathToIvp)
  {
    driver.get(ServerControl.getProcessStartLink("HtmlDialogDemos/" + pathToIvp));
  }

  protected void clearInput(By inputLocator)
  {
    await(ExpectedConditions.visibilityOfElementLocated(inputLocator));
    driver.findElement(inputLocator).sendKeys(Keys.chord(Keys.CONTROL, "a") + Keys.DELETE);
  }
}