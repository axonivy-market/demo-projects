package com.axonivy.engine.config.ui.web.test;

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;

import com.axonivy.ivy.supplements.primeui.tester.PrimeUi.Table;

public class WebTestAdministratorManager extends BaseWebTest
{
  private final String newName = "AXON";

  @Test
  public void testAddAdmin() throws Exception
  {
    setMySqlConfig();
    createMySqlSysDb();
    testConnection();
    openTab("Administrators");

    Table table = prime
            .table(By.id("accordionPanel:administratorsComponent:adminManagerForm:adminDataTable"));
    table.contains("No Administrators found");
    addAdmin(newName);
    table.contains(newName);
  }

  @Test
  public void testRemoveAdmin() throws Exception
  {
    testAddAdmin();
    removeAdmin();
  }

  private void removeAdmin() throws Exception
  {
    await(ExpectedConditions.not(ExpectedConditions.visibilityOfAllElementsLocatedBy(By
            .xpath("//*[@id='growl_container']/div[1]/div/div[2]"))));
    Table table = prime
            .table(By.id("accordionPanel:administratorsComponent:adminManagerForm:adminDataTable"));
    table.contains(newName);
    driver.findElement(
            By.id("accordionPanel:administratorsComponent:adminManagerForm:adminDataTable:0:removeAdminButton"))
            .click();
    table.containsNot(newName);
    saveAdmins();
  }

  private void saveAdmins()
  {
    driver.findElement(By.id("saveAll")).click();
    await(ExpectedConditions.textToBePresentInElementLocated(By.id("growl_container"),
            "Administrators config were saved"));
  }
}