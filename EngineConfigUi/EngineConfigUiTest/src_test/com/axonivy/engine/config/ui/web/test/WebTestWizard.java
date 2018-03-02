package com.axonivy.engine.config.ui.web.test;

import static org.openqa.selenium.support.ui.ExpectedConditions.attributeToBe;
import static org.openqa.selenium.support.ui.ExpectedConditions.elementToBeClickable;
import static org.openqa.selenium.support.ui.ExpectedConditions.invisibilityOfElementLocated;
import static org.openqa.selenium.support.ui.ExpectedConditions.textToBePresentInElementLocated;
import static org.openqa.selenium.support.ui.ExpectedConditions.visibilityOfElementLocated;

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.StaleElementReferenceException;

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
    await(elementToBeClickable(nextButtonLocator));
    retryingFindClick(nextButtonLocator);

    await(elementToBeClickable(By
            .id("accordionPanel:systemDatabaseComponent:createDatabaseForm:dialogCreateDbButton")));
    retryingFindClick(By
            .id("accordionPanel:systemDatabaseComponent:createDatabaseForm:dialogCreateDbButton"));
    By saveAndConnectButton = By
            .id("accordionPanel:systemDatabaseComponent:creatingDatabaseForm:saveAndConnectButton");
	await(40, elementToBeClickable(saveAndConnectButton));
	driver.findElement(saveAndConnectButton).click();
	await(invisibilityOfElementLocated(saveAndConnectButton));
	
    super.dbCreated = true;
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
  
  private void retryingFindClick(By locator) throws StaleElementReferenceException
  {
    int attempts = 0;
    while (attempts < 5)
    {
      try
      {
        driver.findElement(locator).click();
        break;
      }
      catch (StaleElementReferenceException e)
      {
      }
      attempts++;
    }
    return;
  }
}
