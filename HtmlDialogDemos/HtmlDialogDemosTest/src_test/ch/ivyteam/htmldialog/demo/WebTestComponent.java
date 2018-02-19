package ch.ivyteam.htmldialog.demo;

import static org.openqa.selenium.support.ui.ExpectedConditions.textToBePresentInElementLocated;

import java.io.File;

import org.apache.commons.io.FileUtils;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.StaleElementReferenceException;
import org.openqa.selenium.TakesScreenshot;

public class WebTestComponent extends BaseWebTest
{
  @Test
  public void testComponentDemo() throws Exception
  {
    startProcess("145D1849FACF0EAA/ComponentDemo.ivp");

    driver.findElement(By.id("demoForm:personComponent:firstname")).sendKeys("testFirstName");
    driver.findElement(By.id("demoForm:personComponent:lastname")).sendKeys("testName" + Keys.ENTER);
    await(textToBePresentInElementLocated(By.xpath("//*[@id='demoForm:panel']/table"), "test"));

    fillAddressComponent("delivery");
    fillAddressComponent("billing");
  }

  private void fillAddressComponent(String prefix)
  {
    driver.findElement(By.id("demoForm:personComponent:" + prefix + "AddressComponent:street")).sendKeys(
            prefix + "Street");
    driver.findElement(By.id("demoForm:personComponent:" + prefix + "AddressComponent:country")).sendKeys(
            prefix + "Country" + Keys.ENTER);
    await(textToBePresentInElementLocated(By.xpath("//*[@id='demoForm:panel']/table"), prefix));
  }

  @Test
  public void testCallbackDemo() throws Exception
  {
    try
    {
      startProcess("145D1849FACF0EAA/ComponentEventListenerDemo.ivp");

      retryingFindClick(By.xpath("//*[@id='componentForm:detailListComponent:personsTable_data']/tr[2]"));
      await(textToBePresentInElementLocated(
              By.id("componentForm:selectionResult_container"), "Person selected"));
      await(textToBePresentInElementLocated(
              By.id("componentForm:selectionResult_container"), "Peter"));

      retryingFindClick(By.xpath("//*[@id='componentForm:detailListComponent:personsTable_data']/tr[4]"));
      retryingFindClick(By.id("componentForm:detailListComponent:fireEventButton"));
      await(textToBePresentInElementLocated(
              By.id("componentForm:selectionResult_container"), "Fire event!"));
    }
    catch (Exception ex)
    {
      File scrFile = ((TakesScreenshot) driver).getScreenshotAs(OutputType.FILE);
      FileUtils.copyFile(scrFile, new File("target/failureScreenshot.png"));
    }
  }

  @Test
  public void testPartialUpdate() throws Exception
  {
    startProcess("145D1849FACF0EAA/PartialUpdateDemo.ivp");

    increaseCounter("A", 2);
    assertPanelValue(2, 0);
    increaseCounter("B", 1);
    assertPanelValue(2, 3);
    driver.findElement(By.id("Form:increaseAllButton")).click();
    assertPanelValue(4, 4);
  }

  private void increaseCounter(String panel, int increaseClicks)
  {
    for (int i = 1; i <= increaseClicks; i++)
    {
      retryingFindClick(By.id("Form:increaseP" + panel + "Button"));
    }
  }

  private void assertPanelValue(Integer expectedValueA, Integer ExpectedValueB)
  {
    await(textToBePresentInElementLocated(By.id("Form:counterPanel_1_content"),
            expectedValueA.toString()));
    await(textToBePresentInElementLocated(By.id("Form:counterPanel_2_content"),
            ExpectedValueB.toString()));
  }

  private void retryingFindClick(By locator) throws StaleElementReferenceException
  {
    int attempts = 0;
    while (attempts < 5)
    {
      try
      {
        driver.findElement(locator).click();
        break;
      }
      catch (StaleElementReferenceException e)
      {
      }
      attempts++;
    }
    return;
  }
}