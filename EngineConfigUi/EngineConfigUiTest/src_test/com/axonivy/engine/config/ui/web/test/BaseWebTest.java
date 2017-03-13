package com.axonivy.engine.config.ui.web.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import org.apache.commons.lang3.RandomUtils;
import org.junit.After;
import org.junit.Before;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.htmlunit.HtmlUnitDriver;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;

import com.axonivy.ivy.supplements.primeui.tester.AjaxHelper;
import com.axonivy.ivy.supplements.primeui.tester.PrimeUi;
import com.axonivy.ivy.supplements.primeui.tester.PrimeUi.Accordion;

public class BaseWebTest
{
  private static final String USERNAME = "admin";
  private static final String PASSWORD = "nimda";
  private static final String connectionUrl = "jdbc:mysql://zugtstdbsmys:3306/";

  private String DBNAME;
  protected WebDriver driver;
  protected PrimeUi prime;
  private AjaxHelper ajax;
  private boolean dbCreated = false;

  @Before
  public void setUp()
  {
    driver = new HtmlUnitDriver(true);
    prime = new PrimeUi(driver);
    ajax = new AjaxHelper(driver);
    openConfigUi();
  }

  protected void openConfigUi()
  {
    String processStartLink = EngineUrl.process() + "/EngineConfigUi/157E64657EEBDD9C/start.ivp";
    System.out.println("ProcessStartlink: " + processStartLink);
    driver.get(processStartLink);
  }

  @After
  public void tearDown() throws Exception
  {
    driver.quit();
  }

  protected void setConfig()
  {
    prime.selectOne(By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:databaseTypeDropdown"))
            .selectItemByLabel("MySQL");

    clearAndSend(By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:hostInput"), "zugtstdbsmys");

    prime.selectBooleanCheckbox(
            By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:defaultPortCheckbox"))
            .setChecked();

    DBNAME = "tmp_engineConfigUi_testing_" + RandomUtils.nextInt(11, Integer.MAX_VALUE);
    clearAndSend(By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:databaseNameInput"), DBNAME);
    driver.findElement(By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:saveConfigButton"))
            .click();

    clearAndSend(By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:usernameInput"), USERNAME);
    driver.findElement(By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:saveConfigButton"))
            .click();
    clearAndSend(By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:passwordInput"), PASSWORD);

    driver.findElement(By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:saveConfigButton"))
            .click();
  }

  private void clearAndSend(By by, String string)
  {
    boolean notCorrect = true;
    while (notCorrect)
    {
      await(ExpectedConditions.not(ExpectedConditions.stalenessOf(driver.findElement(by))));
      driver.findElement(by).clear();
      driver.findElement(by).sendKeys(string);
      System.out.println(driver.findElement(by).getAttribute("value"));

      if (driver.findElement(by).getAttribute("value").equals(string))
        notCorrect = false;
    }
  }

  protected void dropDatabase() throws Exception
  {
    if (!dbCreated)
    {
      System.out.println("DB wasn't created and therefore also not dropped.");
      return;
    }

    String command = "DROP DATABASE " + DBNAME;
    Connection con = DriverManager.getConnection(connectionUrl, USERNAME, PASSWORD);
    Statement stmt = con.createStatement();
    stmt.executeUpdate(command);
    con.close();
  }

  protected void createSysDb()
  {
    driver.findElement(
            By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:checkConnectionButton")).click();
    await(ExpectedConditions.elementToBeClickable(By
            .id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:createDatabaseButton")));
    driver.findElement(
            By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:createDatabaseButton")).click();

    await(ExpectedConditions.elementToBeClickable(By
            .id("accordionPanel:systemDatabaseComponent:createDatabaseForm:dialogCreateDbButton")));
    driver.findElement(
            By.id("accordionPanel:systemDatabaseComponent:createDatabaseForm:dialogCreateDbButton")).click();

    await(ExpectedConditions.textToBePresentInElementLocated(
            By.id("accordionPanel:systemDatabaseComponent:creatingDatabaseForm:finishMessage"),
            "Successfully Finished!"));
    dbCreated = true;

    driver.findElement(
            By.xpath("//*[@id='accordionPanel:systemDatabaseComponent:creatingDatabaseDialog']/div[1]/a"))
            .click();
  }

  protected void testConnection()
  {
    driver.findElement(
            By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:checkConnectionButton")).click();
    await(ExpectedConditions
            .textToBePresentInElementLocated(
                    By.xpath("//*[@id='accordionPanel:systemDatabaseComponent:growl_container']/div/div/div[2]/p"),
                    "established"));
  }

  protected <T> T await(ExpectedCondition<T> condition)
  {
    return ajax.await(condition);
  }

  protected void toggleTab(String tabName)
  {
    Accordion accordion = prime.accordion(By.id("accordionPanel"));
    accordion.toggleTab(tabName);
  }
}