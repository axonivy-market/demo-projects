package ch.ivyteam.htmldialog.demo;

import java.util.concurrent.TimeUnit;

import org.junit.After;
import org.junit.Before;
import org.openqa.selenium.By;
import org.openqa.selenium.Point;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxProfile;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;

import ch.ivyteam.htmldialog.server.test.EngineUrl;
import ch.ivyteam.htmldialog.server.test.FixVersionFirefox;

import com.axonivy.ivy.supplements.primeui.tester.AjaxHelper;
import com.axonivy.ivy.supplements.primeui.tester.PrimeUi;

public abstract class BaseWebTest
{
  protected WebDriver driver;

  @Before
  public void setUp() throws Exception
  {
    driver = createDriver();
  }

  protected final WebDriver createDriver()
  {
    FirefoxProfile profile = FixVersionFirefox.loadFirefoxProfile();
    configureBrowserProfile(profile);
    WebDriver localDriver = FixVersionFirefox.createWebDriver(profile);

    localDriver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);

    if (!EngineUrl.isDesigner())
    {
      localDriver.manage().window().setPosition(new Point(-2000, 0));
    }
    return localDriver;
  }

  protected void configureBrowserProfile(FirefoxProfile profile)
  {
    profile.setPreference("intl.accept_languages", "en");
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
    driver.get(EngineUrl.process() + "/HtmlDialogDemos/" + pathToIvp);
  }

  protected void clearInput(By inputLocator)
  {
    await(ExpectedConditions.visibilityOfElementLocated(inputLocator));
    driver.findElement(inputLocator).clear();
  }
}