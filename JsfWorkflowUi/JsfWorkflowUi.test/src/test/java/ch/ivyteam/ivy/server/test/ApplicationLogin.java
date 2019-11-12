package ch.ivyteam.ivy.server.test;

import org.apache.commons.lang3.time.StopWatch;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;

import com.axonivy.ivy.supplements.primeui.tester.AjaxHelper;

public class ApplicationLogin
{
  private final WebDriver driver;
  private final AjaxHelper ajax;

  public ApplicationLogin(WebDriver driver)
  {
    this.driver = driver;
    this.ajax = new AjaxHelper(driver);
  }

  public void login(final String username, final String password)
  {
    WfNavigator.logout(driver);
    ajax.await(ExpectedConditions.visibilityOfElementLocated(By
            .id("loginForm:userName")));

    setLoginFieldValue("userName", username);
    setLoginFieldValue("password", password);

    loginField("login").click();
    ajax.await(ExpectedConditions.textToBePresentInElementLocated(By
            .id("mainArea"), "Home"));
  }

  private void setLoginFieldValue(String fieldName, final String value)
  {
    StopWatch stopwatch = new StopWatch();
    stopwatch.start();
    try
    {
      setLoginFieldInternal(fieldName, value);
    }
    finally
    {
      stopwatch.stop();
      System.out.println("Time to set '" + fieldName + "' field: " + stopwatch.getTime() + " Milliseconds. "
              + "Value is now: " + getFieldValue(byLogin(fieldName), driver));
    }
  }

  private void setLoginFieldInternal(String fieldName, final String value)
  {
    if (!getFieldValue(byLogin(fieldName), driver).isEmpty())
    {
      loginField(fieldName).clear();
      ajax.await(loginFieldContains(fieldName, ""));
    }
    ajax.await(ExpectedConditions.presenceOfElementLocated(byLogin(fieldName)));
    loginField(fieldName).click();
    loginField(fieldName).sendKeys(value);
    ajax.await(loginFieldContains(fieldName, value));
  }

  private static ExpectedCondition<Boolean> loginFieldContains(final String fieldName,
          final String expectedValue)
  {
    return formValueContains(byLogin(fieldName), expectedValue);
  }

  private static By byLogin(final String fieldName)
  {
    return By.id("loginForm:" + fieldName);
  }

  private static ExpectedCondition<Boolean> formValueContains(final By locator, final String expectedValue)
  {
    return new ExpectedCondition<Boolean>()
      {

        @Override
        public Boolean apply(WebDriver driver)
        {
          return getFieldValue(locator, driver).equals(expectedValue);
        }

        @Override
        public String toString()
        {
          return String.format("value ('%s') to be present in element found by %s",
                  expectedValue, locator);
        }
      };
  }

  private static String getFieldValue(final By locator, WebDriver driver)
  {
    return driver.findElement(locator).getAttribute("value");
  }

  private WebElement loginField(String name)
  {
    return driver.findElement(byLogin(name));
  }
}