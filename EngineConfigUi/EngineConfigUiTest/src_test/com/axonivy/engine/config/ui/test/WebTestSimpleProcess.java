package com.axonivy.engine.config.ui.test;

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;

public class WebTestSimpleProcess extends BaseWebTest
{
  @Test
  public void testSimpleProcess()
  {
    String startUrl = EngineUrl.process() + "/EngineConfigUi/157DC47A058F7798/start.ivp";
    System.out.println(startUrl);
    driver.get(startUrl);
    String testString = "this is a test";
    driver.findElement(By.id("form:inputText")).sendKeys(testString);
    driver.findElement(By.id("form:refreshButton")).click();
    await(ExpectedConditions.textToBePresentInElementLocated(By.id("form:outputLabel"), testString));
  }
}
