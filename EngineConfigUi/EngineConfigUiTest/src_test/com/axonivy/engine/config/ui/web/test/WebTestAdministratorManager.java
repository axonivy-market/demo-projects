package com.axonivy.engine.config.ui.web.test;

import org.junit.Test;
import org.openqa.selenium.By;

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
    Table table = prime
            .table(By.id("accordionPanel:administratorsComponent:adminManagerForm:adminDataTable"));
    table.contains(newName);
    driver.findElement(
            By.id("accordionPanel:administratorsComponent:adminManagerForm:adminDataTable:0:removeAdminButton"))
            .click();
    table.containsNot(newName);
  }
}