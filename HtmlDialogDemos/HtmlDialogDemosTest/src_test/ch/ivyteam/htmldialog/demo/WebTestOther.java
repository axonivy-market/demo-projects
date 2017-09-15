package ch.ivyteam.htmldialog.demo;

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.support.ui.ExpectedConditions;

public class WebTestOther extends BaseWebTest
{
  @Test
  public void testHtmlJsfDemo()
  {
    startProcess("145D1862CF17F2C9/Html5Demo.ivp");
    await(ExpectedConditions.visibilityOfElementLocated(By
            .xpath("//input[@id='passthrough:email'][contains(@placeholder,'Enter your email')]")));
    await(ExpectedConditions.visibilityOfElementLocated(By
            .xpath("//input[@id='passthrough:name'][contains(@placeholder,'Enter your name')]")));

    driver.findElement(By.id("paintHtml:name")).sendKeys("paintHtml");
    driver.findElement(By.id("paintHtml:buttonShow")).click();
    await(ExpectedConditions.textToBePresentInElementLocated(By.id("paintHtml:growl_container"),
            "Hello paintHtml"));
  }

  @Test
  public void testHtmlBootstrapDemo() throws Exception
  {
    startProcess("145D1862CF17F2C9/Html5BootstrapDemo.ivp");
    driver.findElement(By.id("Form:Name")).sendKeys("name");
    driver.findElement(By.id("Form:Email")).sendKeys("email@ivyteam.ch");
    JavascriptExecutor js = (JavascriptExecutor) driver;
    js.executeScript("document.getElementById('Form:Birthdate').setAttribute('value', '2016-01-01')");
    driver.findElement(By.id("Form:Captcha")).sendKeys("21");
    driver.findElement(By.id("Submit")).click();
    await(ExpectedConditions.textToBePresentInElementLocated(By.id("captchaError"),
            "Error!"));

    clearInput(By.id("Form:Captcha"));
    driver.findElement(By.id("Form:Captcha")).sendKeys("42");
    driver.findElement(By.id("Submit")).click();
    await(ExpectedConditions.textToBePresentInElementLocated(By.id("messageSent"),
            "Hey name! Your message has been sent."));
  }

  @Test
  public void testAjaxMethodCall()
  {
    startProcess("145D1862CF17F2C9/MethodCallWithAjaxDemo.ivp");
    driver.findElement(By.id("hello")).click();

    await(ExpectedConditions.textToBePresentInElementLocated(By.id("result"), "Welcome World"));

    driver.findElement(By.id("closeDialog")).click();
    await(ExpectedConditions.textToBePresentInElementLocated(By.id("welcomeText"),
            "Welcome to Axon.ivy Html Dialog Demos"));
  }

  @Test
  public void testManagedBean()
  {
    startProcess("145D1862CF17F2C9/ManagedBeanDemo.ivp");
    String managedBeanPoperty = "this is immortal!";
    clearInput(By.id("beanForm:descriptionProperty"));
    driver.findElement(By.id("beanForm:descriptionProperty")).sendKeys(managedBeanPoperty);
    driver.findElement(By.id("beanForm:buttonSend")).click();

    openAndValidate(managedBeanPoperty);
    driver.quit();

    driver = createDriver();
    openAndValidate(managedBeanPoperty);
  }

  private void openAndValidate(String managedBeanPoperty)
  {
    startProcess("145D1862CF17F2C9/ManagedBeanDemo.ivp");
    await(ExpectedConditions.visibilityOfElementLocated(By
            .xpath("//*[@id='beanForm:descriptionProperty'][@value='" + managedBeanPoperty + "']")));
  }

}
