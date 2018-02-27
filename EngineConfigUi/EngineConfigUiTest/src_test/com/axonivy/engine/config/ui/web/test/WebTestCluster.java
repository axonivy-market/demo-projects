package com.axonivy.engine.config.ui.web.test;

import static org.openqa.selenium.support.ui.ExpectedConditions.elementToBeClickable;

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;

import com.axonivy.ivy.supplements.primeui.tester.PrimeUi.Table;

public class WebTestCluster extends BaseWebTest
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
  public void testAddLocalNode()
  {
    addLocalNode();
  }

  @Test
  public void testRemoveLocalNode()
  {
    testAddLocalNode();
    driver.findElement(By.id("saveAll")).click();
    removeLocalNode();
  }

  private void addLocalNode()
  {
    openTab(" Cluster Nodes");
    By addNodeButtonLocator = By.id("accordionPanel:clusterComponent:clusterNodeForm:addLocalNodeButton");

    await(elementToBeClickable(By
            .id("accordionPanel:clusterComponent:addLocalNodeForm:addLocalNodeDialogButton")));
    String ipAddress = driver.findElement(
            By.id("accordionPanel:clusterComponent:addLocalNodeForm:newIPAddress")).getText();
    driver.findElement(By.id("accordionPanel:clusterComponent:addLocalNodeForm:addLocalNodeDialogButton"))
            .click();

    Table table = prime.table(By.id("accordionPanel:clusterComponent:clusterNodeForm:clusterNodesDataTable"));
    table.contains("0");
    table.contains(ipAddress);

    await(ExpectedConditions.not(elementToBeClickable(addNodeButtonLocator)));
  }

  private void removeLocalNode()
  {
    Table table = prime.table(By.id("accordionPanel:clusterComponent:clusterNodeForm:clusterNodesDataTable"));
    table.contains("0");

    removeNode(0);
    table.containsNot("0");
    table.contains("No Cluster Node found");
  }

  private void removeNode(int localIdentifier)
  {
    driver.findElement(
            By.id("accordionPanel:clusterComponent:clusterNodeForm:clusterNodesDataTable:" + localIdentifier
                    + ":removeNodeButton"))
            .click();
  }
}
