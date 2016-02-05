package ch.ivyteam.ivy.server.test.prime;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import ch.ivyteam.ivy.server.test.AjaxHelper;
import ch.ivyteam.ivy.server.test.IvyWebDriverHelper;

public class PrimeFacesWidgetHelper
{
  private IvyWebDriverHelper driverHelper;
  private AjaxHelper ajax;

  public PrimeFacesWidgetHelper(IvyWebDriverHelper driverHelper)
  {
    this.driverHelper = driverHelper;
    this.ajax = new AjaxHelper(driverHelper.getWebDriver());
  }

  public SelectOneMenu selectOne(By locator)
  {
    return new SelectOneMenu(locator);
  }

  public SelectCheckboxMenu selectCheckboxMenu(WebElement checkboxMenu)
  {
    return new SelectCheckboxMenu(checkboxMenu);
  }

  public Menu menu(WebElement menu)
  {
    return new Menu(menu);
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
    private String oneMenuId;

    public SelectOneMenu(By locator)
    {
      oneMenuId = driverHelper.findElement(locator).getAttribute("id");
    }
    
    public void selectItemByLabel(String label)
    {
      expandSelectableItems();
      selectInternal(label);
      awaitItemsCollapsed(true);
    }

    private void selectInternal(String label)
    {
      WebElement item = await(ExpectedConditions.elementToBeClickable(driverHelper.findElement(
              By.xpath("//div[@id='" + oneMenuId + "_panel']/div/ul/li[@data-label='" + label + "']"))));
      item.click();
    }

    private void awaitItemsCollapsed(boolean collapsed)
    {
      await(ExpectedConditions.presenceOfElementLocated(By.xpath("//*[@id='" + oneMenuId
              + "_focus'][contains(@aria-expanded, '"+!collapsed+"')]")));
    }

    private void expandSelectableItems()
    {
      driverHelper.findElementById(oneMenuId)
              .findElement(By.cssSelector("span.ui-icon.ui-icon-triangle-1-s"))
              .click();
      awaitItemsCollapsed(false);
    }

    public void waitForLabel(String selectLabel)
    {
      await(ExpectedConditions.textToBePresentInElementLocated(By.id(oneMenuId + "_label"), selectLabel));
    }
  }

  public class SelectCheckboxMenu
  {
    private WebElement checkboxMenu;

    public SelectCheckboxMenu(WebElement checkboxMenu)
    {
      this.checkboxMenu = checkboxMenu;
    }

    public void selectAllItems()
    {
      openCheckboxPanel();
      driverHelper.clickAndWaitForAjax(By
              .cssSelector("div.ui-chkbox-box.ui-widget.ui-corner-all.ui-state-default"));
      closeCheckboxPanel();
    }

    private void openCheckboxPanel()
    {
      checkboxMenu.findElement(By.className("ui-icon-triangle-1-s")).click();
    }

    private void closeCheckboxPanel()
    {
      String fqElementId = checkboxMenu.getAttribute("id");
      String panelId = fqElementId + "_panel";
      WebElement panel = new WebDriverWait(driverHelper.getWebDriver(), 10).until(
              ExpectedConditions.visibilityOfElementLocated(By.id(panelId))
              );
      panel.findElement(By.className("ui-selectcheckboxmenu-close")).click();
    }
  }

  public class Menu
  {
    private WebElement menu;

    public Menu(WebElement menu)
    {
      this.menu = menu;
    }

    public void selectItemByIndex(int index)
    {
      driverHelper.clickAndWaitForAjax(By.xpath("//div[@id='" + menu.getAttribute("id") + "']/ul/li[" + index
              + "]/a/span"));
    }

    public void selectItemByPrefix(String prefix)
    {
      driverHelper.clickAndWaitForAjax(By.xpath("//div[@id='" + menu.getAttribute("id")
              + "']/ul/li[starts-with(., '" + prefix + "')]/a/span"));
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
    private WebElement oneRadio;

    public SelectOneRadio(WebElement oneRadio)
    {
      this.oneRadio = oneRadio;
    }

    public void selectItemById(String id)
    {
      oneRadio.findElement(By.xpath("//div[@id='" + id + "']/div[2]")).click();
      driverHelper.waitForAjax();
    }
  }

  public class Table
  {
    private String tableId;

    public Table(By dataTable)
    {
      tableId = driverHelper.findElement(dataTable).getAttribute("id");
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
          return driver.findElement(dialogLocator).getAttribute("id");
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

  public void clickPaginationNextPage()
  {
    driverHelper.clickAndWaitForAjax(By.cssSelector("span.ui-icon.ui-icon-seek-next"));
  }

  protected <T> T await(ExpectedCondition<T> condition)
  {
    return ajax.await(condition);
  }
}