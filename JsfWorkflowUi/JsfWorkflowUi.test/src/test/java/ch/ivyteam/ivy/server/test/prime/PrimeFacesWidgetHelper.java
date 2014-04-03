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

  public SelectOneWidget selectOne(WebElement selectOneMenu)
  {
    return new SelectOneWidget(selectOneMenu);
  }

  
  public class SelectOneWidget
  {
    private WebElement selectOneMenu;

    public SelectOneWidget(WebElement selectOneMenu)
    {
      this.selectOneMenu = selectOneMenu;
    }

    public void selectItemByLabel(String label)
    {
      expandSelectableItems();
      driverHelper.findElement(By.xpath("//div[@id='" + selectOneMenu.getAttribute("id") + "_panel']/div[2]/ul/li[@data-label='" + label + "']")).click();
    }
    
    private void expandSelectableItems()
    {
      selectOneMenu.findElement(By.cssSelector("span.ui-icon.ui-icon-triangle-1-s")).click();
    }
  }
  
}