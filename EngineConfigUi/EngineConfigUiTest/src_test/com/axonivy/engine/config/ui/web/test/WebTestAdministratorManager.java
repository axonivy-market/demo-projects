package com.axonivy.engine.config.ui.web.test;

import org.junit.After;
import org.junit.Test;
import org.openqa.selenium.By;

import com.axonivy.ivy.supplements.primeui.tester.PrimeUi.Dialog;
import com.axonivy.ivy.supplements.primeui.tester.PrimeUi.Table;

public class WebTestAdministratorManager extends BaseWebTest
{
  private final String newName = "AXON";

  @After
  @Override
  public void tearDown() throws Exception
  {
    dropDatabase();
    driver.quit();
  }

  @Test
  public void testAddAdmin() throws Exception
  {
    setConfig();
    createSysDb();
    testConnection();
    openAdminTab();

    Table table = prime.table(By.id("form:accordionPanel:administratorsComponent:adminDataTable"));
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
    Table table = prime.table(By.id("form:accordionPanel:administratorsComponent:adminDataTable"));
    table.contains(newName);
    table.select(newName);

    driver.findElement(By.id("form:accordionPanel:administratorsComponent:removeAdminButton")).click();
    table.containsNot(newName);
  }

  private void addAdmin()
  {
    driver.findElement(By.id("form:accordionPanel:administratorsComponent:addAdminButton")).click();

    Dialog dialog = prime.dialog(By.id("form:accordionPanel:administratorsComponent:addAdminDialog"));
    dialog.waitForVisibility(true);

    driver.findElement(By.id("form:accordionPanel:administratorsComponent:newName"))
            .sendKeys(newName);

    driver.findElement(By.id("form:accordionPanel:administratorsComponent:newFullname"))
            .sendKeys("AXONIVY");

    driver.findElement(By.id("form:accordionPanel:administratorsComponent:newEmail"))
            .sendKeys("support@ivyteam.ch");

    driver.findElement(By.id("form:accordionPanel:administratorsComponent:newPassword"))
            .sendKeys("password");

    driver.findElement(By.id("form:accordionPanel:administratorsComponent:addAdminDialogButton")).click();
    dialog.waitToBeClosedOrError();
  }

  private void openAdminTab()
  {
    driver.findElement(By.xpath("//div[@id='form:accordionPanel']/h3[2]")).click();
  }
}