package ch.ivyteam.ivy.server.test;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedCondition;

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
    new WfNavigator(driver).logout();
    ajax.findUntilVisible(By.id("loginPageComponent:loginForm"));

    setLoginFieldValue("username", username);
    setLoginFieldValue("password", password);

    loginField("loginButton").click();
    ajax.assertElementContains("mainArea", "Home");
  }

  private void setLoginFieldValue(String fieldName, final String value)
  {
    if (!getFieldValue(byLogin(fieldName), driver).isEmpty())
    {
      loginField(fieldName).clear();
      ajax.waitAtMost(30, TimeUnit.SECONDS, loginFieldContains(fieldName, ""));
    }
    loginField(fieldName).sendKeys(value);
    ajax.waitAtMost(30, TimeUnit.SECONDS, loginFieldContains(fieldName, value));
  }

  private static ExpectedCondition<Boolean> loginFieldContains(final String fieldName,
          final String expectedValue)
  {
    return formValueContains(byLogin(fieldName), expectedValue);
  }

  private static By byLogin(final String fieldName)
  {
    return By.id("loginPageComponent:loginForm:" + fieldName);
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