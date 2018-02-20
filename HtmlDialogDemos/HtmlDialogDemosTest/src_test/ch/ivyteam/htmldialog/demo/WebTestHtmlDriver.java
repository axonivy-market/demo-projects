package ch.ivyteam.htmldialog.demo;

import static org.openqa.selenium.support.ui.ExpectedConditions.not;
import static org.openqa.selenium.support.ui.ExpectedConditions.textToBePresentInElementLocated;

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.htmlunit.HtmlUnitDriver;
import org.openqa.selenium.interactions.Action;
import org.openqa.selenium.interactions.Actions;

public class WebTestHtmlDriver extends BaseWebTest
{
  
  @Override
  protected WebDriver createDriver()
  {
    return new HtmlUnitDriver(true);
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
  
}