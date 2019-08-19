package ch.ivyteam.ivy.server.test;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.StaleElementReferenceException;
import org.openqa.selenium.TimeoutException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

/**
 * This class Wraps a {@link WebDriver} and provides ivy specific helper
 * methods.
 */
public class IvyWebDriverHelper
{
 
  /**
   * Example:
   * <code>webDriverHelper.waitAtLast(10).until(ExpectedConditions.presenceOfElementLocated(By.id("person:msgs")));</code>
   * @param timeoutInSeconds
   * @return -
   */
  private static WebDriverWait waitAtLast(WebDriver driver, int timeoutInSeconds)
  {
    return new WebDriverWait(driver, timeoutInSeconds);
  }

  public static void assertAjaxElementContains(WebDriver driver, final By elementCondition, final String expectedTextContent)
  {
    waitAtLast(driver, 30).until(new ExpectedCondition<Boolean>() 
    {
      private String elementText;

      @Override
      public Boolean apply(WebDriver currentDriver) 
      {
        try 
        {
          elementText = currentDriver.findElement(elementCondition).getText();
          return elementText.contains(expectedTextContent);
        } 
        catch (StaleElementReferenceException e) 
        {
          return Boolean.FALSE;
        }
      }

      @Override
      public String toString() 
      {
        return String.format("text ('%s') to be present in element ('%s') found by %s",
                expectedTextContent, elementText, elementCondition);
      }
    });
  }
  
  public static void assertAjaxModifiedPageSourceContains(WebDriver driver, final String expectedTextContent)
  {
    waitAtLast(driver, 10).until(new ExpectedCondition<Boolean>() 
    {
      private String pageSourceText;

      @Override
      public Boolean apply(WebDriver currentDriver) {
        pageSourceText = currentDriver.getPageSource();
        return pageSourceText.contains(expectedTextContent);
      }

      @Override
      public String toString() {
        return String.format("text ('%s') to be present in page source ('%s')",
                expectedTextContent, pageSourceText);
      }
    });
  }

  public void setSessionLocale(WebDriver driver, String locale)
  {
    driver.get(ServerControl
            .getProcessStartLink("testIndependentHtmlDialog/13C3D778613250F9/start.ivp?locale=" + locale));
  }

  public static void waitUntilEnabled(WebDriver driver, By by)
  {
    waitAtLast(driver, 10).until(ExpectedConditions.elementToBeClickable(by));
  }

  public static void waitForAjax(WebDriver driver)
  {
    try
    {
      waitAtLast(driver, 15).until(new ExpectedCondition<Boolean>()
      {
        @Override
        public Boolean apply(WebDriver d)
        {
          return (Boolean) ((JavascriptExecutor) d)
                  .executeScript(
                          "return (window.PrimeFaces == null) || (window.PrimeFaces.ajax.Queue.isEmpty());");
        }
      });
    }
    catch (TimeoutException ex)
    {
      throw new IllegalStateException(
              "Timout while waiting for window.PrimeFaces.ajax.Queue.isEmpty(), see page source: "
                      + driver.getPageSource(), ex);
    }
  }

  
}
