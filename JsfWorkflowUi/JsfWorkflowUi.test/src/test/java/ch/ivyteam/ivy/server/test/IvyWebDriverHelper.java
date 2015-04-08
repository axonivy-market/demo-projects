package ch.ivyteam.ivy.server.test;

import java.text.MessageFormat;
import java.util.concurrent.TimeUnit;

import org.apache.commons.lang3.StringUtils;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.Point;
import org.openqa.selenium.StaleElementReferenceException;
import org.openqa.selenium.TimeoutException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxProfile;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.google.common.base.Predicate;

/**
 * This class Wraps a {@link WebDriver} and provides ivy specific helper
 * methods.
 */
public class IvyWebDriverHelper
{
  private WebDriver driver;

  public IvyWebDriverHelper()
  {
    FirefoxProfile profile = FixVersionFirefox.loadFirefoxProfile();
    profile.setPreference("intl.accept_languages", "en");
    driver = FixVersionFirefox.createWebDriver(profile);
    
    driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
    hideBrowserFromDesktop();
  }
  
  private void hideBrowserFromDesktop()
  {
    if (!ServerControl.isDesigner())
    {
      driver.manage().window().setPosition(new Point(-2000, 0));
    }
  }
  
  public void quit()
  {
    driver.quit();
  }

  public void openProcessLink(String processLink)
  {
    driver.get(ServerControl.getProcessStartLink(processLink));
  }

  public WebDriver getWebDriver()
  {
    return driver;
  }

  public WebElement findElementById(String id)
  {
    return findElement(By.id(id));
  }

  public WebElement findElement(By by)
  {
    try
    {
      return driver.findElement(by);
    }
    catch (NoSuchElementException ex)
    { // let's give a hint why we could not find the element:
      String message = MessageFormat.format(
              "The element with condition ''{0}'' could not be found in html source: ''{1}''",
              by, driver.getPageSource());
      throw new RuntimeException(message, ex);
    }
  }

  /**
   * Example:
   * <code>webDriverHelper.waitAtLast(10).until(ExpectedConditions.presenceOfElementLocated(By.id("person:msgs")));</code>
   * @param timeoutInSeconds
   * @return -
   */
  public WebDriverWait waitAtLast(int timeoutInSeconds)
  {
    return new WebDriverWait(driver, timeoutInSeconds);
  }

  public void assertAjaxElementContains(final By elementCondition, final String expectedTextContent)
  {
    waitAtLast(30).until(new ExpectedCondition<Boolean>() {
      private String elementText;

      @Override
      public Boolean apply(WebDriver currentDriver) {
        try {
          elementText = findElement(elementCondition).getText();
          return elementText.contains(expectedTextContent);
        } catch (StaleElementReferenceException e) {
          return Boolean.FALSE;
        }
      }

      @Override
      public String toString() {
        return String.format("text ('%s') to be present in element ('%s') found by %s",
                expectedTextContent, elementText, elementCondition);
      }
    });
  }
  
  public void assertAjaxModifiedPageSourceContains(final String expectedTextContent)
  {
    waitAtLast(10).until(new ExpectedCondition<Boolean>() {
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

  public void waitForEndPage(int timeoutInSeconds)
  {
    waitAtLast(timeoutInSeconds).withMessage("Waiting for end page").until(new Predicate<WebDriver>()
      {
        @Override
        public boolean apply(WebDriver drv)
        {
          return StringUtils.startsWith(drv.getCurrentUrl(), ServerControl.getEndPageUrl());
        }
      });
  }

  public void setSessionLocale(String locale)
  {
    driver.get(ServerControl
            .getProcessStartLink("testIndependentHtmlDialog/13C3D778613250F9/start.ivp?locale=" + locale));
  }

  public void waitUntilEnabled(By by)
  {
    waitAtLast(10).until(ExpectedConditions.elementToBeClickable(by));
  }

  public void clickAndWaitForAjax(By by)
  {
    WebElement element = findElement(by);
    element.click();
    waitForAjax();
  }

  public void waitForAjax()
  {
    try
    {
      waitAtLast(15).until(new ExpectedCondition<Boolean>()
        {
          @Override
          public Boolean apply(WebDriver d)
          {
            return (Boolean) ((JavascriptExecutor) d)
                    .executeScript("return (window.PrimeFaces == null) || (window.PrimeFaces.ajax.Queue.isEmpty());");
          }
        });
    }
    catch(TimeoutException ex)
    {
      throw new IllegalStateException("Timout while waiting for window.PrimeFaces.ajax.Queue.isEmpty(), see page source: " + getWebDriver().getPageSource(), ex);
    }
  }
}
