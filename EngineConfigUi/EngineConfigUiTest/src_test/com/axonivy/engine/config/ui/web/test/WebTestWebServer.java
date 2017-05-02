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
    dropMySqlDatabase();
  }

  @Test
  public void testConfigStays() throws Exception
  {
    setMySqlConfig();
    createMySqlSysDb();
    testConnection();

    toggleTab("WebServer");
    assertThat(prime.selectBooleanCheckbox(By.id(
            "accordionPanel:webServerComponent:webServerForm:HTTPEnabledCheckbox")).isChecked())
            .isTrue();
    By portInputLocator = By.id("accordionPanel:webServerComponent:webServerForm:HTTPPortInput");
    await(ExpectedConditions.textToBePresentInElementValue(
            portInputLocator, "8080"));

    clearAndSend(portInputLocator, "1234");
    driver.findElement(By.id("accordionPanel:webServerComponent:webServerForm:savePortsButton")).click();
    await(ExpectedConditions.textToBePresentInElementLocated(By.id("growl_container"),
            "WebServer config was saved"));
    openConfigUi();
    toggleTab("System Database");
    testConnection();
    toggleTab("WebServer");
    await(ExpectedConditions.textToBePresentInElementValue(portInputLocator, "1234"));
  }
}
