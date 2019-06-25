package ch.ivyteam.htmldialog.demo;

import static org.openqa.selenium.support.ui.ExpectedConditions.elementToBeClickable;
import static org.openqa.selenium.support.ui.ExpectedConditions.not;
import static org.openqa.selenium.support.ui.ExpectedConditions.textToBePresentInElementLocated;
import static org.openqa.selenium.support.ui.ExpectedConditions.visibilityOfElementLocated;

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.htmlunit.HtmlUnitDriver;
import org.openqa.selenium.interactions.Action;
import org.openqa.selenium.interactions.Actions;

public class WebTestHtmlDriver extends BaseWebTest
{  
  @Test
  public void testHtmlJsfDemo()
  {
    startProcess("145D1862CF17F2C9/Html5Demo.ivp");
    await(visibilityOfElementLocated(By
            .xpath("//input[@id='passthrough:email'][contains(@placeholder,'Enter your email')]")));
    await(visibilityOfElementLocated(By
            .xpath("//input[@id='passthrough:name'][contains(@placeholder,'Enter your name')]")));

    await(visibilityOfElementLocated(By.id("paintHtml:name"))).sendKeys("paintHtml");
    await(elementToBeClickable(By.id("paintHtml:buttonShow"))).click();
    await(textToBePresentInElementLocated(By.id("paintHtml:growl_container"), "Hello paintHtml"));
  }
  
  @Test
  public void testPickList() throws Exception
  {
    startProcess("145D180807C60B4B/PickListDemo.ivp");

    Action dragAndDropRenato = new Actions(driver)
            .clickAndHold(driver.findElement(By.xpath("//*[@id='personListForm:pickList']/div[2]/ul/li[1]")))
            .moveToElement(driver.findElement(By.xpath("//*[@id='personListForm:pickList']/div[4]/ul")))
            .release(driver.findElement(By.xpath("//*[@id='personListForm:pickList']/div[2]/ul/li[1]")))
            .build();
    dragAndDropRenato.perform();

    await(textToBePresentInElementLocated(
            By.xpath("//*[@id='personListForm:pickList']/div[4]/ul"), "Renato"));
    await(not(textToBePresentInElementLocated(
            By.xpath("//*[@id='personListForm:pickList']/div[2]/ul"), "Renato")));

    driver.findElement(By.id("personListForm:sendButton")).click();
    await(textToBePresentInElementLocated(
            By.xpath("//*[@id='personListForm:resultPanel']/tbody/tr[2]/td[2]"),
            "name=Stalder, firstname=Renato"));
  }
  
  @Test
  public void testOrderList() throws Exception
  {
    startProcess("145D180807C60B4B/OrderListDemo.ivp");

    editList(1, 3, "Bruno", "Renato");
    editList(6, 2, "Michael", "Bruno");
  }

  private void editList(int elementPosition, int buttonPosition, String expectedName, String notExpectedName) throws Exception
  {
    await(elementToBeClickable(By
            .xpath("//*[@id='personListForm:personsList']/div/div[1]/ul/li["
                    + elementPosition + "]"))).click();

    await(elementToBeClickable(
            By.xpath("//*[@id='personListForm:personsList']/div/div[2]/button[" + buttonPosition + "]")))
            .click();
    await(textToBePresentInElementLocated(
            By.xpath("//*[@id='personListForm:personsList']/div/div[1]/ul/li[1]"), expectedName));
    await(not(textToBePresentInElementLocated(
            By.xpath("//*[@id='personListForm:personsList']/div/div[1]/ul/li[1]"), notExpectedName)));
  }
}