package com.axonivy.engine.config.ui.web.test;

import org.apache.commons.lang.math.RandomUtils;
import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.htmlunit.HtmlUnitDriver;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;

import com.axonivy.ivy.supplements.primeui.tester.AjaxHelper;
import com.axonivy.ivy.supplements.primeui.tester.PrimeUi;

public class WebTestSystemDatabaseSettings
{
  private WebDriver driver;
  private PrimeUi prime;
  private AjaxHelper ajax;

  @Before
  public void setUp()
  {
    driver = new HtmlUnitDriver(true);
    prime = new PrimeUi(driver);
    ajax = new AjaxHelper(driver);
    driver.get("http://localhost:8081/ivy/pro/designer/EngineConfigUi/157E64657EEBDD9C/start.ivp");
  }

  @Test
  public void testSystemDbCreation()
  {
    setConfig();
    createSysDb();

    await(ExpectedConditions.textToBePresentInElementLocated(
            By.id("form:accordionPanel:systemDatabaseComponent:finishMessage"), "Succesfully Finished!"));
  }

  @Test
  public void testSystemDbConnection()
  {
    setConfig();
    createSysDb();

    driver.findElement(
            By.xpath("//*[@id='form:accordionPanel:systemDatabaseComponent:creatingDatabaseDialog']/div[1]/a"))
            .click();
    driver.findElement(By.id("form:accordionPanel:systemDatabaseComponent:checkConnectionButton")).click();
    await(ExpectedConditions.textToBePresentInElementLocated(
            By.id("form:accordionPanel:systemDatabaseComponent:growl_container"),
            "Connection was established"));
  }

  private void setConfig()
  {
    prime.selectOne(By.id("form:accordionPanel:systemDatabaseComponent:databaseTypeDropdown"))
            .selectItemByLabel("MySQL");
    prime.selectOne(By.id("form:accordionPanel:systemDatabaseComponent:databaseDriverDropdown"))
            .selectItemByLabel("mySQL");

    clearAndSend(By.id("form:accordionPanel:systemDatabaseComponent:hostInput"), "zugtstdbsmys");

    driver.findElement(By.id("form:accordionPanel:systemDatabaseComponent:portInput")).clear();
    prime.selectBooleanCheckbox(
            By.id("form:accordionPanel:systemDatabaseComponent:defaultPortCheckbox_input"))
            .setChecked();

    clearAndSend(By.id("form:accordionPanel:systemDatabaseComponent:databaseNameInput"),
            "tmp_engineConfigUi_testing_" + ((Integer) RandomUtils.nextInt()).toString());

    clearAndSend(By.id("form:accordionPanel:systemDatabaseComponent:usernameInput"), "admin");
    clearAndSend(By.id("form:accordionPanel:systemDatabaseComponent:passwordInput"), "nimda");
  }

  private void clearAndSend(By by, String string)
  {
    driver.findElement(by).clear();
    driver.findElement(by).sendKeys(string);
  }

  private void createSysDb()
  {
    driver.findElement(By.id("form:accordionPanel:systemDatabaseComponent:createDatabaseButton")).click();
    await(ExpectedConditions.elementToBeClickable(By
            .id("form:accordionPanel:systemDatabaseComponent:dialogCreateDbButton")));
    driver.findElement(By.id("form:accordionPanel:systemDatabaseComponent:dialogCreateDbButton")).click();
  }

  private <T> T await(ExpectedCondition<T> condition)
  {
    return ajax.await(condition);
  }
}
