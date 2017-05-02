package com.axonivy.engine.config.ui.web.test;

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;

import com.axonivy.ivy.supplements.primeui.tester.PrimeUi.Table;

public class WebTestCluster extends BaseWebTest
{
  @Override
  public void tearDown() throws Exception
  {
    super.tearDown();
    dropMySqlDatabase();
  }

  @Override
  public void setUp()
  {
    super.setUp();
    setMySqlConfig();
    createMySqlSysDb();
    testConnection();
    toggleTab("Cluster");
  }

  @Test
  public void testAddLocalNode()
  {
    await(ExpectedConditions.textToBePresentInElementLocated(
            By.id("accordionPanel:clusterComponent:clusterNodeForm:clusterNodesDataTable_data"),
            "No Cluster Node found!"));

    addLocalNode();
  }

  @Test
  public void testRemoveLocalNode()
  {
    testAddLocalNode();
    driver.findElement(By.id("accordionPanel:clusterComponent:clusterNodeForm:saveClusterButton")).click();
    removeLocalNode();
  }

  private void addLocalNode()
  {
    By addNodeButtonLocator = By.id("accordionPanel:clusterComponent:clusterNodeForm:addLocalNodeButton");
    driver.findElement(addNodeButtonLocator).click();

    await(ExpectedConditions.elementToBeClickable(By
            .id("accordionPanel:clusterComponent:addLocalNodeForm:addLocalNodeDialogButton")));
    String ipAddress = driver.findElement(
            By.id("accordionPanel:clusterComponent:addLocalNodeForm:newIPAddress")).getText();
    driver.findElement(By.id("accordionPanel:clusterComponent:addLocalNodeForm:addLocalNodeDialogButton"))
            .click();

    Table table = prime.table(By.id("accordionPanel:clusterComponent:clusterNodeForm:clusterNodesDataTable"));
    table.contains("0");
    table.contains(ipAddress);
    
    await(ExpectedConditions.not(ExpectedConditions.elementToBeClickable(addNodeButtonLocator)));
  }

  private void removeLocalNode()
  {
    Table table = prime.table(By.id("accordionPanel:clusterComponent:clusterNodeForm:clusterNodesDataTable"));
    table.contains("0");

    removeNode(0);
    table.containsNot("0");
    table.contains("No Cluster Node found!");
  }

  private void removeNode(int localIdentifier)
  {
    driver.findElement(
            By.id("accordionPanel:clusterComponent:clusterNodeForm:clusterNodesDataTable:" + localIdentifier
                    + ":removeNodeButton"))
            .click();
  }
}
