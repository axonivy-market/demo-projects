package ch.ivyteam.ivy.server.test.prime;

import org.apache.commons.lang3.ObjectUtils;
import org.openqa.selenium.By;
import org.openqa.selenium.StaleElementReferenceException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;

import ch.ivyteam.ivy.server.test.AjaxHelper;

public class PrimeFacesWidgetHelper
{
  private AjaxHelper ajax;
  private WebDriver webDriver;

  public PrimeFacesWidgetHelper(WebDriver driver)
  {
    this.webDriver = driver;
    this.ajax = new AjaxHelper(driver);
  }

  public SelectOneMenu selectOne(By locator)
  {
    return new SelectOneMenu(locator);
  }

  public SelectCheckboxMenu selectCheckboxMenu(By locator)
  {
    return new SelectCheckboxMenu(locator);
  }

  public SelectBooleanCheckbox selectBooleanCheckbox(WebElement checks)
  {
    return new SelectBooleanCheckbox(checks);
  }

  public SelectOneRadio selectOneRadio(WebElement oneRadio)
  {
    return new SelectOneRadio(oneRadio);
  }

  public Table table(By dataTable)
  {
    return new Table(dataTable);
  }
  
  public Dialog dialog(By dialog)
  {
    return new Dialog(dialog);
  }

  public class SelectOneMenu
  {
    private final String oneMenuId;

    public SelectOneMenu(By locator)
    {
      oneMenuId = webDriver.findElement(locator).getAttribute("id");
    }
    
    public void selectItemByLabel(String label)
    {
      if (getFocusSelection().getAttribute("aria-activedescendant").toString().equals(label))
      {
        return;
      }
      
      expandSelectableItems();
      selectInternal(label);
      awaitItemsCollapsed(true);
    }

    private void selectInternal(final String label)
    {
      final String startValue = getFocusSelection().getAttribute("aria-activedescendant").toString();
      
      WebElement item = await(ExpectedConditions.elementToBeClickable(webDriver.findElement(
              By.xpath("//div[@id='" + oneMenuId + "_panel']/div/ul/li[@data-label='" + label + "'][text()='"
                      + label + "']"))));
      item.click();

      await(new ExpectedCondition<Boolean>()
        {
          @Override
          public Boolean apply(WebDriver driver)
          {
            try
            {
              if (ObjectUtils.notEqual(getFocusSelection(), startValue))
              {
                return true;
              }
              return null;
            }
            catch (StaleElementReferenceException ex)
            {
              return null;
            }
          }
        });
    }

    private WebElement getFocusSelection()
    {
      return webDriver.findElement(By.id(oneMenuId+ "_focus"));
    }

    private void awaitItemsCollapsed(boolean collapsed)
    {
      await(ExpectedConditions.presenceOfElementLocated(By.xpath("//*[@id='" + oneMenuId
              + "_focus'][@aria-expanded= '" + !collapsed + "']")));
    }

    private void expandSelectableItems()
    {
      await(new ExpectedCondition<WebElement>()
        {
          @Override
          public WebElement apply(WebDriver driver)
          {
            try
            {
              return webDriver.findElement(By.id(oneMenuId))
                      .findElement(By.cssSelector("span.ui-icon.ui-icon-triangle-1-s"));
            }
            catch (StaleElementReferenceException ex)
            {
              return null;
            }
          }
        }).click();
      awaitItemsCollapsed(false);
    }

    public void waitForLabel(String selectLabel)
    {
      await(ExpectedConditions.textToBePresentInElementLocated(By.id(oneMenuId + "_label"), selectLabel));
    }
  }

  public class SelectCheckboxMenu
  {
    private String checkBoxMenuId;

    public SelectCheckboxMenu(By locator)
    {
      checkBoxMenuId = webDriver.findElement(locator).getAttribute("id");
    }

    public void selectAllItems()
    {
      openCheckboxPanel();
      webDriver.findElement(By.xpath("//*[@id='" + checkBoxMenuId + "_panel']/div[1]/div/div[2]")).click();

      await(new ExpectedCondition<Boolean>()
        {
          @Override
          public Boolean apply(WebDriver driver)
          {
            try
            {
              return driver
                      .findElement(
                              By.xpath("//*[@id='" + checkBoxMenuId + "_panel']/div[2]/ul/li/div/div[2]"))
                      .getAttribute("class")
                      .contains("state-active");
            }
            catch (StaleElementReferenceException ex)
            {
              return null;
            }
          }
        });

      closeCheckboxPanel();
    }

    private void openCheckboxPanel()
    {
      webDriver.findElement(By.id(checkBoxMenuId)).findElement(By.className("ui-icon-triangle-1-s")).click();
    }

    private void closeCheckboxPanel()
    {
      String panelId = checkBoxMenuId + "_panel";
      WebElement panel = ajax.await(ExpectedConditions.visibilityOfElementLocated(By.id(panelId)));
      panel.findElement(By.className("ui-selectcheckboxmenu-close")).click();
    }
  }

  public class SelectBooleanCheckbox
  {
    private WebElement booleanCheckbox;

    public SelectBooleanCheckbox(WebElement booleanCheckbox)
    {
      this.booleanCheckbox = booleanCheckbox;
    }

    public void selectItemById(String id)
    {
      booleanCheckbox.findElement(By.xpath("//div[@id='" + id + "']/div[2]")).click();
    }
  }

  public class SelectOneRadio
  {
    private String oneRadioId;

    public SelectOneRadio(WebElement oneRadio)
    {
      oneRadioId = oneRadio.getAttribute("id");
      
    }

    public void selectItemById(final String id)
    {
      webDriver.findElement(By.id(oneRadioId))
        .findElement(By.xpath("//div[@id='" + id + "']/div[2]"))
        .click();

      await(new ExpectedCondition<Boolean>()
        {
          @Override
          public Boolean apply(WebDriver driver)
          {
            try
            {
              return driver.findElement(By.id(oneRadioId))
                      .findElement(By.xpath("//div[@id='" + id + "']/div[2]")).getAttribute("class")
                      .contains("state-active");
            }
            catch (StaleElementReferenceException ex)
            {
              return null;
            }
          }
        });
    }
  }

  public class Table
  {
    private String tableId;

    public Table(By dataTable)
    {
      tableId = webDriver.findElement(dataTable).getAttribute("id");
    }

    public void firstRowContains(String expectedText)
    {
      await(ExpectedConditions.textToBePresentInElementLocated(
              By.xpath("//*[@id='" + tableId + "_data']/tr[1]"), expectedText));
    }

    public void contains(String checkText)
    {
      await(ExpectedConditions.textToBePresentInElementLocated(
              By.id(tableId), checkText));
    }

    public void containsNot(String checkText)
    {
      await(ExpectedConditions.not(ExpectedConditions.textToBePresentInElementLocated(
              By.id(tableId), checkText)));
    }
  }

  public class Dialog
  {
    private String dialogId;

    public Dialog(final By dialogLocator)
    {
      dialogId = await(new ExpectedCondition<String>()
      {
        @Override
        public String apply(WebDriver driver)
        {
          try
          {
            return driver.findElement(dialogLocator).getAttribute("id");
          }
          catch (StaleElementReferenceException ex)
          {
            return null;
          }
        }
      });
    }

    public void visible(boolean visible)
    {
      await(ExpectedConditions.presenceOfElementLocated(By.xpath("//*[@id='" + dialogId + "'][@aria-hidden='"
              + !visible + "']")));
    }
    
    public void isClosedOrHasError()
    {
      await(new ExpectedCondition<Boolean>()
        {

          @Override
          public Boolean apply(WebDriver driver)
          {
            WebElement dialog = driver.findElement(By.id(dialogId));
            if (hasErrors(dialog) || isClosed(dialog))
            {
              return true;
            }
            return null;
          }

          private boolean isClosed(WebElement dialog)
          {
            try
            {
              return dialog.getAttribute("aria-hidden").equals(Boolean.TRUE.toString());
            }
            catch (Exception ex)
            {
              return false;
            }
          }

          private boolean hasErrors(WebElement dialog)
          {
            try
            {
              return dialog.findElement(By.className("ui-state-error")) != null;
            }
            catch (Exception ex)
            {
              return false;
            }
          }
        });
    }
  }

  protected <T> T await(ExpectedCondition<T> condition)
  {
    return ajax.await(condition);
  }
}