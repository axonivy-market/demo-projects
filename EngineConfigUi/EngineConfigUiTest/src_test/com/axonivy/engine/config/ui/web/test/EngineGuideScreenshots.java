package com.axonivy.engine.config.ui.web.test;

import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FileUtils;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runners.MethodSorters;
import org.openqa.selenium.By;
import org.openqa.selenium.Dimension;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.support.ui.ExpectedConditions;

import com.axonivy.ivy.supplements.primeui.tester.PrimeUi.Dialog;

@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class EngineGuideScreenshots extends BaseWebTest
{
  @Override
  public void tearDown() throws Exception
  {
    dropMySqlDatabase();
    super.tearDown();
  }

  @Test
  public void a_licenceTab() throws Exception
  {
    openTab("Licence");
    await(ExpectedConditions.visibilityOfElementLocated(By
            .id("accordionPanel:licenceComponent:systemDatabaseTabNextButton")));
    takeScreenshot("Licence.png", new Dimension(780, 670));
  }

  @Test
  public void b_systemDbTab() throws Exception
  {
    openTab("System");
    setExampleConfigruration();
    Thread.sleep(9000);
    takeScreenshot("SystemDatabase.png", new Dimension(780, 1030));
  }

  @Test
  public void c_otherTabs() throws Exception
  {
    setMySqlConfig();
    createMySqlSysDb();
    testConnection();

    adminTab();
    webServerTab();
    clusterTab();
  }

  public void adminTab() throws Exception
  {
    openTab("Administrators");
    addAdmin();
    await(ExpectedConditions.visibilityOfElementLocated(By
            .id("accordionPanel:administratorsComponent:adminManagerForm:adminsTabNextButton")));
    takeScreenshot("Administrators.png", new Dimension(780, 670));
  }

  private void addAdmin()
  {
    Dialog dialog = prime.dialog(By.id("accordionPanel:administratorsComponent:addAdminDialog"));
    dialog.waitForVisibility(true);

    driver.findElement(By.id("accordionPanel:administratorsComponent:addAdminForm:newName"))
            .sendKeys("admin");
    driver.findElement(By.id("accordionPanel:administratorsComponent:addAdminForm:newFullname"))
            .sendKeys("admin");
    driver.findElement(By.id("accordionPanel:administratorsComponent:addAdminForm:newEmail"))
            .sendKeys("admin@ivyteam.ch");
    driver.findElement(By.id("accordionPanel:administratorsComponent:addAdminForm:newPassword"))
            .sendKeys("password");
    driver.findElement(By.id("accordionPanel:administratorsComponent:addAdminForm:addAdminDialogButton"))
            .click();
    dialog.waitToBeClosedOrError();
  }

  public void webServerTab() throws Exception
  {
    openTab("Web Server");
    await(ExpectedConditions.visibilityOfElementLocated(By
            .id("accordionPanel:webServerComponent:webServerForm:webServerTabNextButton")));
    takeScreenshot("WebServer.png", new Dimension(780, 710));
  }

  public void clusterTab() throws Exception
  {
    openTab(" Cluster Nodes");
    addLocalNode();
    await(ExpectedConditions.visibilityOfElementLocated(By
            .id("accordionPanel:clusterComponent:clusterNodeForm:clusterTabNextButton")));
    takeScreenshot("Cluster.png", new Dimension(780, 660));
  }

  private void addLocalNode()
  {
    await(ExpectedConditions.elementToBeClickable(By
            .id("accordionPanel:clusterComponent:addLocalNodeForm:addLocalNodeDialogButton")));
    driver.findElement(By.id("accordionPanel:clusterComponent:addLocalNodeForm:addLocalNodeDialogButton"))
            .click();
  }

  private void takeScreenshot(String fileName, Dimension size) throws IOException
  {
    resizeBrowser(size);
    JavascriptExecutor jse = (JavascriptExecutor) driver;
    jse.executeScript("scroll(0,0);");

    byte[] pngImageBytes = ((TakesScreenshot) driver).getScreenshotAs(OutputType.BYTES);

    File configDir = new File("target/screenshots/images/Configuration");
    File licenceScreenshot = new File(configDir, fileName);
    FileUtils.writeByteArrayToFile(licenceScreenshot, pngImageBytes);
  }

  private void resizeBrowser(Dimension size)
  {
    driver.manage().window().setSize(size);
  }

  private void setExampleConfigruration()
  {
    setMySqlConfig();
    clearAndSend(By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:hostInput"), "dbServer");
    DBNAME = "myDatabase";
    clearAndSend(By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:databaseNameInput"), DBNAME);

    clearAndSend(By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:usernameInput"), "user");
    clearAndSend(By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:passwordInput"), "password");
  }
}
