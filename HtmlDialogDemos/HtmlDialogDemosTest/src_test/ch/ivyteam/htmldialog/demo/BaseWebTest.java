package ch.ivyteam.htmldialog.demo;

import java.util.concurrent.TimeUnit;
import java.util.logging.Level;

import org.junit.After;
import org.junit.Before;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.Point;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.firefox.FirefoxOptions;
import org.openqa.selenium.firefox.FirefoxProfile;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;

import ch.ivyteam.htmldialog.server.test.EngineUrl;
import ch.ivyteam.htmldialog.server.test.GeckoFirefox;

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

  protected WebDriver createDriver()
  {
    GeckoFirefox.register();
    FirefoxProfile profile = new FirefoxProfile();
    configureBrowserProfile(profile);
    FirefoxOptions opts = new FirefoxOptions()
      .setLogLevel(Level.SEVERE)
      .setProfile(profile);
    
    WebDriver localDriver = new FirefoxDriver(opts);

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
    driver.findElement(inputLocator).sendKeys(Keys.TAB);
  }
}