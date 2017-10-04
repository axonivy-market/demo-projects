package com.axonivy.engine.config.ui.documentation;

import java.io.IOException;

import org.apache.commons.lang3.RandomUtils;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runners.MethodSorters;
import org.openqa.selenium.By;
import org.openqa.selenium.Dimension;
import org.openqa.selenium.Keys;
import org.openqa.selenium.support.ui.ExpectedConditions;

import com.axonivy.ivy.supplements.primeui.tester.PrimeUi.Dialog;

@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class EngineGuideGettingsStarted extends BaseScreenshots
{
  private static final String GETTING_STARTED_LOCATION = "GettingStarted/images";

  @Test
  public void a_licenceTab() throws Exception
  {
    openTab("Licence");
    await(ExpectedConditions.visibilityOfElementLocated(By
            .id("accordionPanel:licenceComponent:systemDatabaseTabNextButton")));
    takeScreenshot("license.png", new Dimension(780, 670), GETTING_STARTED_LOCATION);
  }

  @Test
  public void b_systemDatabaseTab() throws Exception
  {
    openTab("System");
    setConfiguration();

    Thread.sleep(1000);
    By passwordInputLocator = By
            .id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:passwordInput");
    await(ExpectedConditions.elementToBeClickable(passwordInputLocator)).sendKeys(Keys.ENTER);
    driver.findElement(
            By.id("accordionPanel:systemDatabaseComponent:createDatabaseForm:uiRepeat:0:creationParam"))
            .sendKeys(Keys.ESCAPE);
    setFakeConfiguration();
    await(ExpectedConditions.elementToBeClickable(passwordInputLocator)).sendKeys(Keys.ENTER);
    await(ExpectedConditions.visibilityOfElementLocated(passwordInputLocator));
    await(ExpectedConditions.not(ExpectedConditions.visibilityOfElementLocated(By.id("loadingDialog"))));
    takeSpecialScreenshot("systemdatabase.png", 0, 123, new Dimension(780, 647));
  }

  @Test
  public void c_createSystemDb() throws Exception
  {
    openTab("System");
    By systemDatabaseNextButton = By
            .id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:systemDatabaseTabNextButton");
    await(ExpectedConditions.visibilityOfElementLocated(systemDatabaseNextButton));
    setConfiguration();

    resizeBrowser(new Dimension(350, 340));
    driver.findElement(systemDatabaseNextButton).click();
    await(ExpectedConditions.visibilityOfElementLocated(By
            .id("accordionPanel:systemDatabaseComponent:createDatabaseForm:dialogCreateDbButton")));
    By creationParamLocator = By
            .id("accordionPanel:systemDatabaseComponent:createDatabaseForm:uiRepeat:0:creationParam");
    clearAndSend(creationParamLocator,
            "AxonIvySystemDatabase");
    takeScreenshotOnly("createdatabase.png");
    
    clearAndSend(creationParamLocator, DBNAME);
    resizeBrowser(new Dimension(800, 800));
    createDb(creationParamLocator);
    By saveAndConnectButtonLocator = By
            .id("accordionPanel:systemDatabaseComponent:creatingDatabaseForm:saveAndConnectButton");
    await(ExpectedConditions.visibilityOfElementLocated(saveAndConnectButtonLocator));
    takeScreenshotOnly("createdatabase_success.png");
  }

  private void createDb(By creationParamLocator)
  {
    driver.findElement(creationParamLocator).sendKeys(Keys.ENTER);
    await(40, ExpectedConditions.textToBePresentInElementLocated(
            By.id("accordionPanel:systemDatabaseComponent:creatingDatabaseForm:finishMessage"),
            "Successfully Finished!"));
    dbCreated = true;
  }

  private void setFakeConfiguration()
  {
    prime.selectOne(By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:databaseTypeDropdown"))
            .selectItemByLabel("PostgreSQL");
    clearAndSend(By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:hostInput"), "localhost");
    prime.selectBooleanCheckbox(
            By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:defaultPortCheckbox"))
            .setChecked();

    clearAndSend(By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:databaseNameInput"),
            "AxonIvySystemDatabase");
    clearAndSend(By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:usernameInput"), USERNAME);
    clearAndSend(By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:passwordInput"), PASSWORD);
  }

  @Test
  public void d_administratorsTab() throws Exception
  {
    setupBaseConfiguration();
    resizeBrowser(new Dimension(325, 467));
    await(ExpectedConditions.elementToBeClickable(By
            .id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:systemDatabaseTabNextButton")))
            .click();

    addAdministrator();
    takeScreenshotOnly("administrator.png");
  }

  private void takeScreenshotOnly(String fileName) throws IOException
  {
    byte[] pngImageBytes = takeScreenshotPngBytes();
    saveScreenshot(fileName, GETTING_STARTED_LOCATION, pngImageBytes);
  }

  @Test
  public void e_webServerTab() throws Exception
  {
    setupBaseConfiguration();

    openTab("Web Server");
    takeSpecialScreenshot("webserver.png", 0, 212, new Dimension(780, 335));
  }

  @Test
  public void f_summaryTab() throws Exception
  {
    openTab("System");
    setFakeConfiguration();
    clearAndSend(By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:hostInput"), "zugtstdbspos");
    testConnection();

    openTab("Summary");
    takeSpecialScreenshot("summary.png", 0, 256, new Dimension(780, 570));
  }

  private void addAdministrator()
  {
    Dialog dialog = prime.dialog(By.id("accordionPanel:administratorsComponent:addAdminDialog"));
    dialog.waitForVisibility(true);

    clearAndSend(By.id("accordionPanel:administratorsComponent:addAdminForm:newName"), "Admin");
    clearAndSend(By.id("accordionPanel:administratorsComponent:addAdminForm:newFullname"), "Administrator");
    clearAndSend(By.id("accordionPanel:administratorsComponent:addAdminForm:newEmail"), "ivy@axonivy.com");
    clearAndSend(By.id("accordionPanel:administratorsComponent:addAdminForm:newPassword"), "password");
    clearAndSend(By.id("accordionPanel:administratorsComponent:addAdminForm:confirmNewPassword"), "password");
  }

  private void setupBaseConfiguration() throws Exception
  {
    openTab("System");
    By systemDatabaseNextButton = By
            .id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:systemDatabaseTabNextButton");
    await(ExpectedConditions.visibilityOfElementLocated(systemDatabaseNextButton));
    setConfiguration();
    await(ExpectedConditions.elementToBeClickable(systemDatabaseNextButton)).click();
    createAndValidateDb();
    testConnection();
  }

  private void takeSpecialScreenshot(String fileName, int scrollPositionX, int scrollPositionY,
          Dimension dimension) throws IOException
  {
    resizeBrowser(dimension);
    scrollToPosition(scrollPositionX, scrollPositionY);

    byte[] pngImageBytes = takeScreenshotPngBytes();
    saveScreenshot(fileName, GETTING_STARTED_LOCATION, pngImageBytes);
  }

  private void setConfiguration()
  {
    prime.selectOne(By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:databaseTypeDropdown"))
            .selectItemByLabel("PostgreSQL");
    clearAndSend(By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:hostInput"), "zugtstdbspos");
    prime.selectBooleanCheckbox(
            By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:defaultPortCheckbox"))
            .setChecked();

    DBNAME = "tmp_engineConfigUi_screenshots_" + RandomUtils.nextInt(11, Integer.MAX_VALUE);
    clearAndSend(By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:databaseNameInput"), DBNAME);
    clearAndSend(By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:usernameInput"), USERNAME);
    clearAndSend(By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:passwordInput"), PASSWORD);
  }
}
