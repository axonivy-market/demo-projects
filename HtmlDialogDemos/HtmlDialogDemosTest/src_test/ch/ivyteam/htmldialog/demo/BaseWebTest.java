package ch.ivyteam.htmldialog.demo;

import static org.openqa.selenium.support.ui.ExpectedConditions.textToBePresentInElementLocated;
import static org.openqa.selenium.support.ui.ExpectedConditions.visibilityOfElementLocated;

import java.util.concurrent.TimeUnit;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.extension.ExtendWith;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxBinary;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.firefox.FirefoxOptions;
import org.openqa.selenium.firefox.FirefoxProfile;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;

import com.axonivy.ivy.supplements.primeui.tester.AjaxHelper;
import com.axonivy.ivy.supplements.primeui.tester.PrimeUi;

import ch.ivyteam.htmldialog.server.test.EngineUrl;
import io.github.bonigarcia.seljup.Options;
import io.github.bonigarcia.seljup.SeleniumExtension;

@ExtendWith(SeleniumExtension.class)
public abstract class BaseWebTest
{ 
  @Options
  FirefoxOptions firefoxOptions = new FirefoxOptions();
  {
    FirefoxBinary binary = new FirefoxBinary();
    binary.addCommandLineOptions("--headless");
    firefoxOptions.setBinary(binary);
    firefoxOptions.setProfile(configureBrowserProfile());
  }
  
  protected WebDriver driver;

  @BeforeEach
  public void setUp(FirefoxDriver driver) throws Exception
  {
    driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
    this.driver = driver;
  }

  protected FirefoxProfile configureBrowserProfile() 
  {
    FirefoxProfile profile = new FirefoxProfile();
    profile.setPreference("intl.accept_languages", "en"); 
    return profile;
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