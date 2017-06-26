package com.axonivy.engine.config.ui.web.test;

import org.junit.Assert;
import org.junit.Ignore;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;

public class WebTestDetails extends BaseWebTest
{
  private final By summaryForm = By.id("accordionPanel:summaryComponent:summaryForm");

  @Test
  public void testSummary() throws Exception
  {
    setMySqlConfig();
    createMySqlSysDb();

    Thread.sleep(1000);
    openTab(" Summary");
    summaryContains("MySQL");
    summaryContains("zugtstdbsmys");
    summaryContains("tmp_engineConfigUi_testing");
    summaryContains("admin");
    summaryContains("No Administrators found");

    openTab("Administrators");
    addAdmin("AXON");
    openDialogAndAddAdmin("Teamivy");
    openDialogAndAddAdmin("IVYAXON");
    saveAll();

    openTab(" Summary");
    await(ExpectedConditions.textToBePresentInElementLocated(summaryForm, "AXON"));
    summaryContains("Teamivy");
    summaryContains("IVYAXON");
  }

  private void openDialogAndAddAdmin(String name) throws Exception
  {
    driver.findElement(By.id("accordionPanel:administratorsComponent:adminManagerForm:addAdminButton"))
            .click();
    addAdmin(name);
  }

  private void summaryContains(String value)
  {
    Assert.assertTrue(driver.findElement(summaryForm).getText().contains(value));
  }

  @Ignore
  @Test
  public void testLoginLogout() throws Exception
  {
    System.out.println(driver.findElement(By.xpath("//*[@id='headerdiv']/div[2]/p[1]")).getText());
    Assert.assertTrue(driver.findElement(By.xpath("//*[@id='headerdiv']/div[2]/p[1]")).getText()
            .contains("Developer"));

    logout();
    login("Developer", "Developer");
  }

  private void logout()
  {
    driver.findElement(By.id("logoutButton")).click();
  }

  private void login(String username, String password)
  {
    await(ExpectedConditions.visibilityOfElementLocated(By.id("loginPageComponent:loginForm:username")));
    driver.findElement(By.id("loginPageComponent:loginForm:username")).sendKeys(username);
    driver.findElement(By.id("loginPageComponent:loginForm:password")).sendKeys(password);
    driver.findElement(By.id("loginPageComponent:loginForm:loginButton")).click();
    await(ExpectedConditions.visibilityOfElementLocated(By.id("accordionPanel")));
  }
}
