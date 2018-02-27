package com.axonivy.engine.config.ui.web.test;

import static org.openqa.selenium.support.ui.ExpectedConditions.elementToBeClickable;
import static org.openqa.selenium.support.ui.ExpectedConditions.not;
import static org.openqa.selenium.support.ui.ExpectedConditions.stalenessOf;
import static org.openqa.selenium.support.ui.ExpectedConditions.textToBePresentInElementLocated;
import static org.openqa.selenium.support.ui.ExpectedConditions.visibilityOfElementLocated;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.concurrent.TimeUnit;

import org.apache.commons.lang3.RandomUtils;
import org.apache.commons.lang3.time.StopWatch;
import org.junit.After;
import org.junit.Before;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.StaleElementReferenceException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.firefox.FirefoxProfile;
import org.openqa.selenium.support.ui.ExpectedCondition;

import com.axonivy.engine.config.ui.web.test.geckodriver.GeckoFirefox;
import com.axonivy.ivy.supplements.primeui.tester.AjaxHelper;
import com.axonivy.ivy.supplements.primeui.tester.PrimeUi;
import com.axonivy.ivy.supplements.primeui.tester.PrimeUi.Accordion;
import com.axonivy.ivy.supplements.primeui.tester.PrimeUi.Dialog;

public class BaseWebTest
{
  protected static final String USERNAME = "admin";
  protected static final String PASSWORD = "nimda";
  protected static final String connectionUrl = "jdbc:mysql://zugtstdbsmys:3306/";

  protected String DBNAME;
  protected WebDriver driver;
  protected PrimeUi prime;
  private AjaxHelper ajax;
  protected boolean dbCreated = false;

  @Before
  public void setUp() throws Exception
  {
    createDriver();
    prime = new PrimeUi(driver);
    ajax = new AjaxHelper(driver);
    driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
    
    openConfigUi();
  }
  
  private void createDriver()
  {
    GeckoFirefox.register();
    FirefoxProfile profile = getFirefoxProfile();
    driver = new FirefoxDriver(profile);
  }

  private FirefoxProfile getFirefoxProfile()
  {
    FirefoxProfile profile = new FirefoxProfile();
    profile.setPreference("security.insecure_password.ui.enabled", false);
    profile.setPreference("security.insecure_field_warning.contextual.enabled", false);
    return profile;
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
    try
    {
      dropMySqlDatabase();
    }
    catch (SQLException ex)
    {
      System.err.println("DB '" + DBNAME + "' could not be dropped!");
    }
    driver.quit();
  }

  protected void setMySqlConfig()
  {
    setConfigInternal();
    prime.selectOne(By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:databaseTypeDropdown"))
            .selectItemByLabel("MySQL");
    clearAndSend(By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:hostInput"), "zugtstdbsmys");
  }

  protected void createMySqlSysDb() throws Exception
  {
        driver.findElement(By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:databaseNameInput")).sendKeys(Keys.ENTER);
    await(textToBePresentInElementLocated(
            By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:connectionState"),
            "doesn't exist"));

    createAndValidateDb();
  }

  protected void dropMySqlDatabase() throws Exception
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

  protected void openDbCreationDialog()
  {
    try
    {
      clickDbCreateButton();
    }
    catch(StaleElementReferenceException ex)
    {
      System.out.println(ex);
      System.out.println("Retry to open DB Creation Dialog");
      clickDbCreateButton();
      System.out.println("Sucessfully opened DB Creation Dialog");
    }
  }

  private void clickDbCreateButton()
  {
    await(elementToBeClickable(By
            .id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:createDatabaseButton")))
            .click();
  }

  protected void createAndValidateDb()
  {
    await(visibilityOfElementLocated(By
            .id("accordionPanel:systemDatabaseComponent:createDatabaseForm:dialogCreateDbButton")));
    driver.findElement(By.id("accordionPanel:systemDatabaseComponent:createDatabaseForm:uiRepeat:0:creationParam")).sendKeys(Keys.ENTER);

    StopWatch sw = new StopWatch();
    sw.start();
    try
    {
      await(40, textToBePresentInElementLocated(
              By.id("accordionPanel:systemDatabaseComponent:creatingDatabaseForm:finishMessage"),
              "Successfully Finished!"));
      System.out.println("Created db after " + sw.getNanoTime() + " nanoseconds");
    }
    catch (Exception ex)
    {
      System.out.println("Could not create after " + sw.getNanoTime() + " nanoseconds");
      throw ex;
    }
    
    dbCreated = true;

    driver.findElement(
            By.id("accordionPanel:systemDatabaseComponent:creatingDatabaseForm:saveAndConnectButton"))
            .click();
  }

  protected void setConfigInternal()
  {
    openTab("System Database");
    prime.selectBooleanCheckbox(
            By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:defaultPortCheckbox"))
            .setChecked();

    DBNAME = "tmp_engineConfigUi_testing_" + RandomUtils.nextInt(11, Integer.MAX_VALUE);
    clearAndSend(By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:databaseNameInput"), DBNAME);

    clearAndSend(By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:usernameInput"), USERNAME);
    clearAndSend(By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:passwordInput"), PASSWORD);
  }

  protected void clearAndSend(By by, String string)
  {
    boolean notCorrect = true;
    while (notCorrect)
    {
      await(not(stalenessOf(driver.findElement(by))));
      driver.findElement(by).clear();
      driver.findElement(by).sendKeys(string);
      System.out.println(driver.findElement(by).getAttribute("value"));

      if (driver.findElement(by).getAttribute("value").equals(string))
        notCorrect = false;
    }
  }

  protected void testConnection() throws Exception
  {
    openTab("System Database");
    checkConnection();
    await(textToBePresentInElementLocated(
            By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:connectionState"),
            "Connected"));
  }

  protected void checkConnection() throws Exception
  {
    await(elementToBeClickable(
            By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:checkConnectionButton"))).click();
  }

  protected void addAdmin(String name) throws Exception
  {
    Dialog dialog = prime.dialog(By.id("accordionPanel:administratorsComponent:addAdminDialog"));
    dialog.waitForVisibility(true);

    clearAndSend(By.id("accordionPanel:administratorsComponent:addAdminForm:newName"), name);
    clearAndSend(By.id("accordionPanel:administratorsComponent:addAdminForm:newFullname"), "AXONIVY");
    clearAndSend(By.id("accordionPanel:administratorsComponent:addAdminForm:newEmail"), "support@axonivy.com");
    clearAndSend(By.id("accordionPanel:administratorsComponent:addAdminForm:newPassword"), "password");
    clearAndSend(By.id("accordionPanel:administratorsComponent:addAdminForm:confirmNewPassword"), "password");

    Thread.sleep(1000);
    await(elementToBeClickable(By
            .id("accordionPanel:administratorsComponent:addAdminForm:addAdminDialogButton")))
            .click();
    dialog.waitToBeClosedOrError();
  }

  protected void openTab(String tabName)
  {
    Accordion accordion = prime.accordion(By.id("accordionPanel"));
    accordion.openTab(tabName);
  }

  protected <T> T await(int seconds, ExpectedCondition<T> condition)
  {
    return ajax.waitAtMost(seconds, TimeUnit.SECONDS, condition);
  }

  protected <T> T await(ExpectedCondition<T> condition)
  {
    return ajax.await(condition);
  }

  public void saveAll()
  {
    driver.findElement(By.id("saveAll")).click();
  }
}