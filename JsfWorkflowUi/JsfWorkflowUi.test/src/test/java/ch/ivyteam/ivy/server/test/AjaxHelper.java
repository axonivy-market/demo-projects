package ch.ivyteam.ivy.server.test;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.TimeoutException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.google.common.base.Predicate;

/**
 * Simple API to work with elements that can not instantly be visible as they
 * are loaded/manipulated trough AJAX requests.
 * @author Lord eAgle
 */
public class AjaxHelper
{
  private static final int TIMEOUT = 30;
  private WebDriver driver;

  public AjaxHelper(WebDriver driver)
  {
    this.driver = driver;
  }

  public void assertElementContains(final String elementId, final String expectedContent)
  {
    new WebDriverWait(driver, TIMEOUT).until(
            ExpectedConditions.textToBePresentInElementLocated(By.id(elementId), expectedContent)
            );
  }

  public void assertElementContainsNot(final String elementId, final String notExpectedContent)
  {
    new WebDriverWait(driver, TIMEOUT).until(new Predicate<WebDriver>()
      {
        @Override
        public boolean apply(WebDriver theDriver)
        {
          return !theDriver.findElement(By.id(elementId)).getText().contains(notExpectedContent);
        }
      });
  }

  public void assertElementValue(final String elementId, final String expectedContent)
  {
    new WebDriverWait(driver, TIMEOUT).until(
            ExpectedConditions.textToBePresentInElementValue(By.id(elementId), expectedContent)
            );
  }

  public WebElement findUntilVisible(final String elementId)
  {
    return findUntilVisible(By.id(elementId));
  }

  public WebElement findUntilVisible(final By by)
  {
    return new WebDriverWait(driver, TIMEOUT).until(
            ExpectedConditions.visibilityOfElementLocated(by)
            );
  }

  public void await(ExpectedCondition<?> condition)
  {
    driver.manage().timeouts().implicitlyWait(1, TimeUnit.SECONDS);
    try
    {
      new WebDriverWait(driver, 10).until(condition);
    }
    catch (TimeoutException ex)
    {
      System.out.println(driver.getPageSource());
      throw ex;
    }
    finally
    {
      driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
    }
  }
}