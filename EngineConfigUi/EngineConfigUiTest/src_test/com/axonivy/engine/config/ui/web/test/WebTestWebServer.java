package com.axonivy.engine.config.ui.web.test;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;

public class WebTestWebServer extends BaseWebTest
{
  @Override
  public void tearDown() throws Exception
  {
    super.tearDown();
    dropDatabase();
  }

  @Test
  public void testConfigStays() throws Exception
  {
    setConfig();
    createSysDb();
    testConnection();

    toggleTab("WebServer");
    assertThat(prime.selectBooleanCheckbox(By.id(
            "form:accordionPanel:webServerComponent:HTTPEnabledCheckbox")).isChecked())
            .isTrue();
    By portInputLocator = By.id("form:accordionPanel:webServerComponent:HTTPPortInput");
    await(ExpectedConditions.textToBePresentInElementValue(
            portInputLocator, "8080"));

    driver.findElement(portInputLocator).sendKeys("1234");
    driver.findElement(By.id("form:accordionPanel:webServerComponent:savePortsButton")).click();
    openConfigUi();
    toggleTab("WebServer");
    await(ExpectedConditions.textToBePresentInElementValue(portInputLocator, "1234"));
  }
}
