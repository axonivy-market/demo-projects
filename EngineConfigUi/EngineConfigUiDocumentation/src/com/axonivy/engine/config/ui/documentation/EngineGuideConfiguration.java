package com.axonivy.engine.config.ui.documentation;

import java.io.IOException;

import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runners.MethodSorters;
import org.openqa.selenium.By;
import org.openqa.selenium.Dimension;
import org.openqa.selenium.support.ui.ExpectedConditions;

@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class EngineGuideConfiguration extends BaseScreenshots
{
  private static final String CONFIGURATION_LOCATION = "Configuration/images/Configuration";

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
    addAdmin("admin");
    await(ExpectedConditions.visibilityOfElementLocated(By
            .id("accordionPanel:administratorsComponent:adminManagerForm:adminsTabNextButton")));
    takeScreenshot("Administrators.png", new Dimension(780, 670));
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
    takeScreenshot(fileName, size, CONFIGURATION_LOCATION);
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
