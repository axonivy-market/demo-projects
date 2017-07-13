package com.axonivy.engine.config.ui.web.test;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;

public class WebTestWebServer extends BaseWebTest
{
  @Test
  public void testConfigStays() throws Exception
  {
    setMySqlConfig();
    createMySqlSysDb();
    testConnection();

    openTab("Web Server");
    await(ExpectedConditions.visibilityOfAllElementsLocatedBy(By
            .id("accordionPanel:webServerComponent:webServerForm:HTTPEnabledCheckbox")));
    assertThat(prime.selectBooleanCheckbox(By.id(
            "accordionPanel:webServerComponent:webServerForm:HTTPEnabledCheckbox")).isChecked())
            .isTrue();
    By portInputLocator = By.id("accordionPanel:webServerComponent:webServerForm:HTTPPortInput");
    await(ExpectedConditions.textToBePresentInElementValue(
            portInputLocator, "8080"));

    clearAndSend(portInputLocator, "1234");
    driver.findElement(By.id("saveAll")).click();
    await(ExpectedConditions.textToBePresentInElementLocated(By.id("growl_container"),
            " were saved to the database"));
    openConfigUi();
    openTab("System Database");
    testConnection();
    openTab("Web Server");
    await(ExpectedConditions.textToBePresentInElementValue(portInputLocator, "1234"));
  }
}
