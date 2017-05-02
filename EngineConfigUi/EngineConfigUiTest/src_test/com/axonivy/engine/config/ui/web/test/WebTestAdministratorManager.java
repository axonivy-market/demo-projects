package com.axonivy.engine.config.ui.web.test;

import org.junit.After;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;

import com.axonivy.ivy.supplements.primeui.tester.PrimeUi.Dialog;
import com.axonivy.ivy.supplements.primeui.tester.PrimeUi.Table;

public class WebTestAdministratorManager extends BaseWebTest
{
  private final String newName = "AXON";

  @After
  @Override
  public void tearDown() throws Exception
  {
    dropMySqlDatabase();
    driver.quit();
  }

  @Test
  public void testAddAdmin() throws Exception
  {
    setMySqlConfig();
    createMySqlSysDb();
    testConnection();
    openAdminTab();

    Table table = prime
            .table(By.id("accordionPanel:administratorsComponent:adminManagerForm:adminDataTable"));
    table.contains("No Administrators found!");
    addAdmin();
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
    saveAdmins();
  }

  private void addAdmin()
  {
    Dialog dialog = prime.dialog(By.id("accordionPanel:administratorsComponent:addAdminDialog"));
    driver.findElement(By.id("accordionPanel:administratorsComponent:adminManagerForm:addAdminButton"))
            .click();
    dialog.waitForVisibility(true);

    driver.findElement(By.id("accordionPanel:administratorsComponent:addAdminForm:newName"))
            .sendKeys(newName);

    driver.findElement(By.id("accordionPanel:administratorsComponent:addAdminForm:newFullname"))
            .sendKeys("AXONIVY");

    driver.findElement(By.id("accordionPanel:administratorsComponent:addAdminForm:newEmail"))
            .sendKeys("support@ivyteam.ch");

    driver.findElement(By.id("accordionPanel:administratorsComponent:addAdminForm:newPassword"))
            .sendKeys("password");

    driver.findElement(By.id("accordionPanel:administratorsComponent:addAdminForm:addAdminDialogButton"))
            .click();
    dialog.waitToBeClosedOrError();
    saveAdmins();
  }

  private void saveAdmins()
  {
    driver.findElement(By.id("accordionPanel:administratorsComponent:adminManagerForm:saveAdminsButton"))
            .click();
    await(ExpectedConditions.textToBePresentInElementLocated(By.id("growl_container"),
            "Administrators config were saved"));
  }

  private void openAdminTab()
  {
    toggleTab("Administrators");
  }
}