package com.axonivy.engine.config.ui.web.test;

import static org.assertj.core.api.Assertions.assertThat;
import static org.openqa.selenium.support.ui.ExpectedConditions.textToBePresentInElementLocated;
import static org.openqa.selenium.support.ui.ExpectedConditions.textToBePresentInElementValue;
import static org.openqa.selenium.support.ui.ExpectedConditions.visibilityOfElementLocated;

import org.junit.Test;
import org.openqa.selenium.By;

public class WebTestWebServer extends BaseWebTest
{
  @Override
  public void setUp() throws Exception
  {
    super.setUp();
    setMySqlConfig();
    createMySqlSysDb();
    testConnection();
  }

  @Test
  public void testConfigStays() throws Exception
  {
    openTab("Web Server");
    await(visibilityOfElementLocated(By
            .id("accordionPanel:webServerComponent:webServerForm:HTTPEnabledCheckbox")));
    assertThat(prime.selectBooleanCheckbox(By.id(
            "accordionPanel:webServerComponent:webServerForm:HTTPEnabledCheckbox")).isChecked())
            .isTrue();
    By portInputLocator = By.id("accordionPanel:webServerComponent:webServerForm:HTTPPortInput");
    await(textToBePresentInElementValue(
            portInputLocator, "8080"));

    clearAndSend(portInputLocator, "1234");
    driver.findElement(By.id("saveAll")).click();
    await(textToBePresentInElementLocated(By.id("growl_container"),
            " were saved to the database"));
    openConfigUi();
    openTab("System Database");
    testConnection();
    openTab("Web Server");
    await(textToBePresentInElementValue(portInputLocator, "1234"));
  }

  @Test
  public void testWebServerSystemProperties() throws Exception
  {
    openSystemPropertiesDialog();

    String newValue = "120000";
    String editedRow = editProperty("4", "number", newValue);
    driver.findElement(
            By.xpath("//*[@id='accordionPanel:webServerComponent:advancedSystemPropertiesDialog']/div[1]/a/span"))
            .click();
    saveAll();

    openConfigUi();
    testConnection();
    openSystemPropertiesDialog();
    await(textToBePresentInElementLocated(By.id(editedRow + ":cellEditor"), newValue));
  }

  private void openSystemPropertiesDialog() throws Exception
  {
    openTab("Web Server");
    By advancedSystemPropsButtonLocator = By
            .id("accordionPanel:webServerComponent:webServerForm:advancedSystemPropertiesButton");
    await(visibilityOfElementLocated(advancedSystemPropsButtonLocator));

    driver.findElement(advancedSystemPropsButtonLocator).click();
    By advancedSystemPropsTable = By
            .id("accordionPanel:webServerComponent:advancedSystemPropertiesForm:propertiesTable_data");
    await(textToBePresentInElementLocated(advancedSystemPropsTable,
            "WebServer.AJP.Enabled"));
  }

  private String editProperty(String row, String type, String newValue) throws Exception
  {
    String rowId = "accordionPanel:webServerComponent:advancedSystemPropertiesForm:propertiesTable:" + row;
    System.out.println(rowId + ":rowEditor");
    driver.findElement(By.xpath("//*[@id='" + rowId + ":rowEditor']/a[1]")).click();
    clearAndSend(
            By.id("accordionPanel:webServerComponent:advancedSystemPropertiesForm:propertiesTable:" + row
                    + ":" + type + "_input"),
            newValue);
    driver.findElement(
            By.xpath("//*[@id='accordionPanel:webServerComponent:advancedSystemPropertiesForm:propertiesTable:"
                    + row + ":rowEditor']/a[2]"))
            .click();
    return rowId;
  }
}
