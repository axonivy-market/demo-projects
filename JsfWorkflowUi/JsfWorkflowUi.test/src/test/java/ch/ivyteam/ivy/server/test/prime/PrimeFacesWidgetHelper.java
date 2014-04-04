package ch.ivyteam.ivy.server.test.prime;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import ch.ivyteam.ivy.server.test.IvyWebDriverHelper;


public class PrimeFacesWidgetHelper
{
  private IvyWebDriverHelper driverHelper;

  public PrimeFacesWidgetHelper(IvyWebDriverHelper driverHelper)
  {
    this.driverHelper = driverHelper;
  }

  public SelectOneWidget selectOne(WebElement oneMenu)
  {
    return new SelectOneWidget(oneMenu);
  }

  public SelectCheckboxMenu selectCheckboxMenu(WebElement checkboxMenu)
  {
    return new SelectCheckboxMenu(checkboxMenu);
  }

  public SelectMenu selectMenu(WebElement menu)
  {
    return new SelectMenu(menu);
  }

  public SelectCheckWidget selectCheck(WebElement checks)
  {
    return new SelectCheckWidget(checks);
  }
  
  public class SelectOneWidget
  {
    private WebElement oneMenu;

    public SelectOneWidget(WebElement oneMenu)
    {
      this.oneMenu = oneMenu;
    }

    public void selectItemByLabel(String label)
    {
      expandSelectableItems();
      driverHelper.findElement(By.xpath("//div[@id='" + oneMenu.getAttribute("id") + "_panel']/div/ul/li[@data-label='" + label + "']")).click();
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
      expandSelectableItems();
      driverHelper.findElement(By.xpath("//div[@id='" + checkboxMenu.getAttribute("id") + "_panel']/div/div/div")).click();
    }
    
    private void expandSelectableItems()
    {
      checkboxMenu.findElement(By.cssSelector("span.ui-icon.ui-icon-triangle-1-s")).click();
    }
  }
  
  public class SelectMenu
  {
    private WebElement menu;

    public SelectMenu(WebElement menu)
    {
      this.menu = menu;
    }

    public void selectItemByIndex(int index)
    {
      driverHelper.findElement(By.xpath("//div[@id='" + menu.getAttribute("id") + "']/ul/li[" + index + "]/a/span")).click();
    }
  }
  
  public class SelectCheckWidget
  {
    private WebElement checks;

    public SelectCheckWidget(WebElement checks)
    {
      this.checks = checks;
    }

    public void selectItemById(String id)
    {
      checks.findElement(By.xpath("//div[@id='" + id + "']/div[2]")).click();
    }
  }
  
}