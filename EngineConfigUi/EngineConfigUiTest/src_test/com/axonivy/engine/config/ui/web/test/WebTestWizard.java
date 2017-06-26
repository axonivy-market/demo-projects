package com.axonivy.engine.config.ui.web.test;

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.support.ui.ExpectedConditions;

public class WebTestWizard extends BaseWebTest
{
  @Test
  public void testingAll() throws Exception
  {
    checkLicenceTab();
    openTab("System Database");
    checkSysDbTab();
    checkAdminsTab();
    checkWebServerTab();
  }

  private void checkLicenceTab()
  {
    await(ExpectedConditions.elementToBeClickable(By
                    .id("accordionPanel:licenceComponent:systemDatabaseTabNextButton"))).click();
    await(ExpectedConditions.visibilityOfElementLocated(By
            .id("accordionPanel:licenceComponent:nextStepLicenceDialogForm:cancelLicenceButton"))).click();
  }

  private void checkSysDbTab() throws Exception
  {
    setMySqlConfig();
    await(ExpectedConditions.elementToBeClickable(
            By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:systemDatabaseTabNextButton")))
            .click();
    await(ExpectedConditions.elementToBeClickable(
                    By.xpath("//*[@id='accordionPanel:systemDatabaseComponent:systemDatabaseForm:createDatabaseButton'][contains(@class, 'ui-state-warn')]")))
            .click();
    await(ExpectedConditions.elementToBeClickable(By
            .id("accordionPanel:systemDatabaseComponent:createDatabaseForm:dialogCreateDbButton"))).click();
    await(ExpectedConditions.elementToBeClickable(By
            .id("accordionPanel:systemDatabaseComponent:creatingDatabaseForm:saveAndConnectButton"))).click();
    super.dbCreated = true;
    Thread.sleep(500);
    driver.findElement(
            By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:systemDatabaseTabNextButton"))
            .click();
  }

  private void checkAdminsTab() throws Exception
  {
    await(ExpectedConditions.elementToBeClickable(By
            .id("accordionPanel:administratorsComponent:addAdminForm:addAdminDialogButton")));
    driver.findElement(By.id("accordionPanel:administratorsComponent:addAdminForm:newName")).sendKeys(
            Keys.ESCAPE);
    driver.findElement(By.id("accordionPanel:administratorsComponent:adminManagerForm:adminsTabNextButton"))
            .click();
    await(ExpectedConditions.textToBePresentInElementLocated(By
            .id("accordionPanel:administratorsComponent:addAdminDialog"), "at least one"));
    addAdmin("AXON");
    await(ExpectedConditions.visibilityOfElementLocated(By
            .id("accordionPanel:administratorsComponent:adminManagerForm:adminsTabNextButton")))
            .click();
  }

  private void checkWebServerTab()
  {
    awaitTabIsOpen(By.xpath("//*[@id='accordionPanel']/div[7]"));
    driver.findElement(By.id("accordionPanel:webServerComponent:webServerForm:webServerTabNextButton"))
            .click();
    awaitTabIsOpen(By.xpath("//*[@id='accordionPanel']/div[9]"));
  }

  private void awaitTabIsOpen(By locator)
  {
    await(ExpectedConditions.attributeToBe(locator, "aria-selected",
            "true"));
  }
}
