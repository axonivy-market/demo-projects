package com.axonivy.engine.config.ui.web.test;

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.support.ui.ExpectedConditions;

public class WebTestWizard extends BaseWebTest
{
  @Override
  public void tearDown() throws Exception
  {
    super.tearDown();
    dropMySqlDatabase();
  }

  @Test
  public void testingAll() throws Exception
  {
    checkLicenceTab();
    openTab("System Database");
    checkSysDbTab();
    checkAdminsTab();
    checkWebServerTab();
  }

  private void checkWebServerTab()
  {
    awaitTabIsOpen(By.xpath("//*[@id='accordionPanel']/h3[4]"));
    driver.findElement(By.id("accordionPanel:webServerComponent:webServerForm:webServerTabNextButton"))
            .click();
    awaitTabIsOpen(By.xpath("//*[@id='accordionPanel']/h3[5]"));
  }

  private void awaitTabIsOpen(By locator)
  {
    await(ExpectedConditions.attributeToBe(locator, "aria-selected",
            "true"));
  }

  private void checkAdminsTab() throws Exception
  {
    await(ExpectedConditions.visibilityOfElementLocated(By
            .id("accordionPanel:administratorsComponent:addAdminForm:addAdminDialogButton")));
    driver.findElement(By.id("accordionPanel:administratorsComponent:addAdminForm:newName")).sendKeys(
            Keys.ESCAPE);
    driver.findElement(By.id("accordionPanel:administratorsComponent:adminManagerForm:adminsTabNextButton"))
            .click();
    await(ExpectedConditions.textToBePresentInElementLocated(By
            .id("accordionPanel:administratorsComponent:addAdminDialog"), "at least one"));
    addAdmin("AXON");
    Thread.sleep(500);
    await(ExpectedConditions.visibilityOfElementLocated(By
            .id("accordionPanel:administratorsComponent:adminManagerForm:adminsTabNextButton")))
            .click();
  }

  private void checkLicenceTab()
  {
    driver.findElement(By.id("accordionPanel:licenceComponent:systemDatabaseTabNextButton")).click();
    await(ExpectedConditions.visibilityOfElementLocated(By
            .id("accordionPanel:licenceComponent:nextStepLicenceDialogForm:cancelLicenceButton"))).click();
  }

  private void checkSysDbTab() throws Exception
  {
    setMySqlConfig();
    driver.findElement(
            By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:systemDatabaseTabNextButton"))
            .click();
    await(ExpectedConditions.visibilityOfElementLocated(By
            .id("accordionPanel:systemDatabaseComponent:nextButtonCreate"))).click();
    await(ExpectedConditions.visibilityOfElementLocated(By
            .id("accordionPanel:systemDatabaseComponent:createDatabaseForm:dialogCreateDbButton"))).click();
    await(ExpectedConditions.elementToBeClickable(By
            .id("accordionPanel:systemDatabaseComponent:creatingDatabaseForm:saveAndConnectButton"))).click();
    Thread.sleep(500);
    driver.findElement(
            By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:systemDatabaseTabNextButton"))
            .click();
  }
}
