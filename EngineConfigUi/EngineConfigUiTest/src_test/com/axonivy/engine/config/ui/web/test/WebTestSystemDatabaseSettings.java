package com.axonivy.engine.config.ui.web.test;

import static com.axonivy.engine.config.ui.web.test.ServerControl.getProcessStartLink;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import org.apache.commons.lang.math.RandomUtils;
import org.junit.After;
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
  private static String DBNAME;
  private WebDriver driver;
  private PrimeUi prime;
  private AjaxHelper ajax;
  private String USERNAME = "admin";
  private String PASSWORD = "nimda";
  private String connectionUrl = "jdbc:mysql://zugtstdbsmys:3306/";

  @Before
  public void setUp()
  {
    driver = new HtmlUnitDriver(true);
    prime = new PrimeUi(driver);
    ajax = new AjaxHelper(driver);
    String processStartLink = getProcessStartLink("EngineConfigUi/157E64657EEBDD9C/start.ivp");
    System.out.println("ProcessStartlink: " + processStartLink);
    driver.get(processStartLink);
  }

  @After
  public void tearDown() throws Exception
  {
    driver.quit();
  }

  @Test
  public void testSystemDbCreation() throws Exception
  {
    setConfig();
    createSysDb();

    await(ExpectedConditions.textToBePresentInElementLocated(
            By.id("form:accordionPanel:systemDatabaseComponent:finishMessage"), "Succesfully Finished!"));
    
    dropDatabase();
  }

  @Test
  public void testSystemDbConnection() throws Exception
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
    
    dropDatabase();
  }

  private void setConfig()
  {
    System.out.println(driver.getPageSource());
    prime.selectOne(By.id("form:accordionPanel:systemDatabaseComponent:databaseTypeDropdown"))
            .selectItemByLabel("MySQL");
    prime.selectOne(By.id("form:accordionPanel:systemDatabaseComponent:databaseDriverDropdown"))
            .selectItemByLabel("mySQL");

    clearAndSend(By.id("form:accordionPanel:systemDatabaseComponent:hostInput"), "zugtstdbsmys");

    driver.findElement(By.id("form:accordionPanel:systemDatabaseComponent:portInput")).clear();
    prime.selectBooleanCheckbox(
            By.id("form:accordionPanel:systemDatabaseComponent:defaultPortCheckbox_input"))
            .setChecked();

    DBNAME = "tmp_engineConfigUi_testing_" + ((Integer) RandomUtils.nextInt()).toString();
    clearAndSend(By.id("form:accordionPanel:systemDatabaseComponent:databaseNameInput"),
            DBNAME);

    clearAndSend(By.id("form:accordionPanel:systemDatabaseComponent:usernameInput"), USERNAME);
    clearAndSend(By.id("form:accordionPanel:systemDatabaseComponent:passwordInput"), PASSWORD);
  }

  private void clearAndSend(By by, String string)
  {
    driver.findElement(by).clear();
    driver.findElement(by).sendKeys(string);
  }

  private void dropDatabase() throws SQLException
  {
    String command = "DROP DATABASE " + DBNAME;
    Connection con = DriverManager.getConnection(connectionUrl, USERNAME, PASSWORD);
    Statement stmt = con.createStatement();
    stmt.executeUpdate(command);
    con.close();
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
