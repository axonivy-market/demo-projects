package com.axonivy.engine.config.ui.web.test;

import static org.openqa.selenium.support.ui.ExpectedConditions.attributeToBe;
import static org.openqa.selenium.support.ui.ExpectedConditions.elementToBeClickable;
import static org.openqa.selenium.support.ui.ExpectedConditions.textToBePresentInElementLocated;
import static org.openqa.selenium.support.ui.ExpectedConditions.visibilityOfElementLocated;

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;

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
    await(elementToBeClickable(By
            .id("accordionPanel:licenceComponent:systemDatabaseTabNextButton"))).click();
    await(visibilityOfElementLocated(By
            .id("accordionPanel:licenceComponent:nextStepLicenceDialogForm:cancelLicenceButton"))).click();
  }

  private void checkSysDbTab() throws Exception
  {
    setMySqlConfig();
    By nextButtonLocator = By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:systemDatabaseTabNextButton");
    await(elementToBeClickable(nextButtonLocator)).click();
    await(elementToBeClickable(
            By.xpath("//*[@id='accordionPanel:systemDatabaseComponent:systemDatabaseForm:createDatabaseButton'][contains(@class, 'ui-state-warn')]")))
            .click();
    await(elementToBeClickable(By
            .id("accordionPanel:systemDatabaseComponent:createDatabaseForm:dialogCreateDbButton"))).click();
    await(40, elementToBeClickable(By
            .id("accordionPanel:systemDatabaseComponent:creatingDatabaseForm:saveAndConnectButton"))).click();
    super.dbCreated = true;
    Thread.sleep(500);
    await(elementToBeClickable(nextButtonLocator));
    driver.findElement(nextButtonLocator).click();
  }

  private void checkAdminsTab() throws Exception
  {
    await(elementToBeClickable(By
            .id("accordionPanel:administratorsComponent:addAdminForm:addAdminDialogButton")));
    driver.findElement(By.id("accordionPanel:administratorsComponent:addAdminForm:newName")).sendKeys(
            Keys.ESCAPE);
    driver.findElement(By.id("accordionPanel:administratorsComponent:adminManagerForm:adminsTabNextButton"))
            .click();
    await(textToBePresentInElementLocated(By
            .id("accordionPanel:administratorsComponent:addAdminDialog"), "at least one"));
    addAdmin("AXON");
    await(visibilityOfElementLocated(By
            .id("accordionPanel:administratorsComponent:adminManagerForm:adminsTabNextButton")))
            .click();
  }

  private void checkWebServerTab()
  {
    awaitTabIsOpen(By.xpath("//*[@id='accordionPanel']/div[7]"));
    await(elementToBeClickable(
            By.id("accordionPanel:webServerComponent:webServerForm:webServerTabNextButton"))).click();
    awaitTabIsOpen(By.xpath("//*[@id='accordionPanel']/div[9]"));
  }

  private void awaitTabIsOpen(By locator)
  {
    await(attributeToBe(locator, "aria-selected",
            "true"));
  }
}
