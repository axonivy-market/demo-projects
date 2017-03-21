package com.axonivy.engine.config.ui.web.test;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.Ignore;
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

  @Test @Ignore
  public void testAddLocalNode()
  {
    await(ExpectedConditions.textToBePresentInElementLocated(
            By.id("accordionPanel:clusterComponent:clusterNodeForm:clusterNodesDataTable_data"),
            "No Cluster Node found!"));

    addLocalNode();
  }

  @Test @Ignore
  public void testRemoveLocalNode()
  {
    testAddLocalNode();

    removeLocalNode();
  }

  private void addLocalNode()
  {
    By addNodeButtonLocator = By.id("accordionPanel:clusterComponent:clusterNodeForm:addLocalNodeButton");
    driver.findElement(addNodeButtonLocator).click();

    await(ExpectedConditions.elementToBeClickable(By
            .id("accordionPanel:clusterComponent:addLocalNodeForm:addLocalNodeDialogButton")));
    driver.findElement(By.id("accordionPanel:clusterComponent:addLocalNodeForm:addLocalNodeDialogButton"))
            .click();
    assertThat(
            driver.findElement(By.id("accordionPanel:clusterComponent:addLocalNodeForm:newLocalIdentifier"))
                    .getText()).isEqualTo("0");
    String ipAddress = driver.findElement(
            By.id("accordionPanel:clusterComponent:addLocalNodeForm:newIPAddress")).getText();

    await(ExpectedConditions.textToBePresentInElementLocated(
            By.id("accordionPanel:clusterComponent:clusterNodeForm:clusterNodesDataTable_data"), ipAddress));
    await(ExpectedConditions.not(ExpectedConditions.elementToBeSelected(addNodeButtonLocator)));
  }

  private void removeLocalNode()
  {
    Table table = prime.table(By.id("accordionPanel:clusterComponent:clusterNodeForm:clusterNodesDataTable"));
    table.select("0");

    driver.findElement(By.id("accordionPanel:clusterComponent:clusterNodeForm:removeLocalNodeButton"))
            .click();
    table.containsNot("0");
    table.contains("No Cluster Node found!");
  }
}
