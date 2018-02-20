package test.web;

import org.junit.After;
import org.junit.Before;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.htmlunit.HtmlUnitDriver;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;

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
    return new HtmlUnitDriver(true);
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
    driver.get(EngineUrl.process() + "/WorkflowDemos/" + pathToIvp);

  }

  protected void clearInput(By inputLocator)
  {
    await(ExpectedConditions.visibilityOfElementLocated(inputLocator));
    driver.findElement(inputLocator).sendKeys(Keys.chord(Keys.CONTROL, "a") + Keys.DELETE);
  }
}