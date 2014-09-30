package ch.ivyteam.ivy.server.test.prime;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import ch.ivyteam.ivy.server.test.IvyWebDriverHelper;


public class PrimeFacesWidgetHelper
{
  private IvyWebDriverHelper driverHelper;

  public PrimeFacesWidgetHelper(IvyWebDriverHelper driverHelper)
  {
    this.driverHelper = driverHelper;
  }

  public SelectOneMenu selectOneMenu(WebElement oneMenu)
  {
    return new SelectOneMenu(oneMenu);
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
  
  public class SelectOneMenu
  {
    private WebElement oneMenu;

    public SelectOneMenu(WebElement oneMenu)
    {
      this.oneMenu = oneMenu;
    }

    public void selectItemByLabel(String label)
    {
      expandSelectableItems();
      driverHelper.clickAndWaitForAjax(By.xpath("//div[@id='" + oneMenu.getAttribute("id") + "_panel']/div/ul/li[@data-label='" + label + "']"));
    }
    
    private void expandSelectableItems()
    {
      oneMenu.findElement(By.cssSelector("span.ui-icon.ui-icon-triangle-1-s")).click();
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
      driverHelper.clickAndWaitForAjax(By.cssSelector("div.ui-chkbox-box.ui-widget.ui-corner-all.ui-state-default"));
      closeCheckboxPanel();
    }

	private void openCheckboxPanel()
	{
	  checkboxMenu.findElement(By.className("ui-icon-triangle-1-s")).click();
	}

	private void closeCheckboxPanel() 
	{
	  String fqElementId = checkboxMenu.getAttribute("id");
	  String panelId = fqElementId+"_panel";
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
      driverHelper.clickAndWaitForAjax(By.xpath("//div[@id='" + menu.getAttribute("id") + "']/ul/li[" + index + "]/a/span"));
    }

    public void selectItemByPrefix(String prefix)
    {
      driverHelper.clickAndWaitForAjax(By.xpath("//div[@id='" + menu.getAttribute("id") + "']/ul/li[starts-with(., '" + prefix + "')]/a/span"));
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
  
  public void clickPaginationNextPage()
  {
    driverHelper.clickAndWaitForAjax(By.cssSelector("span.ui-icon.ui-icon-seek-next"));
  }
}