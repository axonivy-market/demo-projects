package com.axonivy.engine.config.ui.web.test;

import static org.assertj.core.api.Assertions.assertThat;
import static org.openqa.selenium.support.ui.ExpectedConditions.textToBePresentInElementLocated;
import static org.openqa.selenium.support.ui.ExpectedConditions.textToBePresentInElementValue;
import static org.openqa.selenium.support.ui.ExpectedConditions.visibilityOfElementLocated;

import org.junit.Test;
import org.openqa.selenium.By;

public class WebTestWebServer extends BaseWebTest
{
  @Test
  public void testConfigStays() throws Exception
  {
    setupMySql();
    openTab("Web Server");
    await(visibilityOfElementLocated(By
            .id("accordionPanel:webServerComponent:webServerForm:HTTPEnabledCheckbox")));
    assertThat(prime.selectBooleanCheckbox(By.id(
            "accordionPanel:webServerComponent:webServerForm:HTTPEnabledCheckbox")).isChecked())
            .isTrue();
    By portInputLocator = By.id("accordionPanel:webServerComponent:webServerForm:HTTPPortInput_input");
    await(textToBePresentInElementValue(
            portInputLocator, "8080"));

    clearAndSend(portInputLocator, "1234");
    driver.findElement(By.id("saveAll")).click();
    await(textToBePresentInElementLocated(By.id("growl_container"),
            " were saved to the database"));
    openConfigUi();
    openTab("Licence");
    openTab("System Database");
    testConnection();
    openTab("Web Server");
    await(textToBePresentInElementValue(portInputLocator, "1234"));
  }
 
}
