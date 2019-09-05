package ch.ivyteam.htmldialog.demo;

import static org.openqa.selenium.support.ui.ExpectedConditions.textToBePresentInElementLocated;

import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;

public class WebTestOffline extends BaseWebTest
{
  @Test
  public void testClientSideValidationExists()
  {
    startProcess("150425B095B4FB54/ClientSideValidationDemo.ivp");
    driver.findElement(By.id("form:firstName")).sendKeys("Someone");
    driver.findElement(By.id("form:personName")).sendKeys("Else");
    driver.findElement(By.id("form:personDateOfBirth")).sendKeys("1990-01-01");
    driver.findElement(By.id("form:addressZip")).sendKeys("8000");
    driver.findElement(By.id("form:addressCity")).sendKeys("Zürich");
    driver.findElement(By.id("form:addressCountry")).sendKeys("CH");
    driver.findElement(By.id("form:email")).sendKeys("someone.else@admin.ch");
    driver.findElement(By.id("form:timeOfArrival")).sendKeys("13:15");
    driver.findElement(By.id("form:proceed")).click();
    await(textToBePresentInElementLocated(By.id("welcomeText"),
            "Welcome to Axon.ivy Html Dialog Demos"));
  }

  @Test
  public void testClientSideValidationWorks()
  {
    startProcess("150425B095B4FB54/ClientSideValidationDemo.ivp");
    driver.findElement(By.id("form:firstName")).sendKeys("Someone");
    driver.findElement(By.id("form:personName")).sendKeys("El");
    driver.findElement(By.id("form:personDateOfBirth")).sendKeys("1990-01-01");
    driver.findElement(By.id("form:addressZip")).sendKeys("999");
    driver.findElement(By.id("form:addressCity")).sendKeys("Zürich");
    driver.findElement(By.id("form:addressCountry")).sendKeys("CH");
    driver.findElement(By.id("form:email")).sendKeys("someone.else@admin.ch");
    driver.findElement(By.id("form:timeOfArrival")).sendKeys("13:15");
    await(textToBePresentInElementLocated(By.xpath("//*[@data-target='form:personName']"),
            "Length is less than allowable minimum of '3'"));
    await(textToBePresentInElementLocated(By.xpath("//*[@data-target='form:addressZip']"),
            "Specified attribute is not between the expected values of 1000 and 9999."));
  }
}
