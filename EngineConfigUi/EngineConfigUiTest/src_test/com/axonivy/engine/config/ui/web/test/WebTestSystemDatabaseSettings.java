package com.axonivy.engine.config.ui.web.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;
import java.util.concurrent.TimeUnit;

import org.apache.commons.lang3.time.StopWatch;
import org.junit.Ignore;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;

import ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseCreator;
import ch.ivyteam.util.WaitUtil;

import com.axon.ivy.engine.config.ConfigHelper;
import com.axonivy.engine.config.ui.settings.ConfigData;
import com.axonivy.engine.config.ui.unit.test.TestSystemDatabaseSettings;

public class WebTestSystemDatabaseSettings extends BaseWebTest
{
  private static final String OLD_DB_NAME = "tmp_engineConfigUi_testing_oldDb_version44";

  @Test
  public void testSystemDbCreation() throws Exception
  {
    setMySqlConfig();
    createMySqlSysDb();
    dropMySqlDatabase();
  }

  @Test
  public void testSystemDbConvertion() throws Exception
  {
    try
    {
      ConfigData configData = TestSystemDatabaseSettings.getLocalMySqlSettings();
      configData.setDatabaseName(OLD_DB_NAME);
      tryCreatingOldDb(configData);

      setOldDbConfigUi();
      testConnectionOldDb();
      convertDb();
      testConnection();
    }
    finally
    {
      dropMySqlDatabase();
    }
  }

  private void convertDb()
  {
    driver.findElement(By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:convertDbButton"))
            .click();
    await(ExpectedConditions
            .elementToBeClickable(By
                    .id("accordionPanel:systemDatabaseComponent:convertDatabaseForm:confirmConvertButton")));
    driver.findElement(
            By.id("accordionPanel:systemDatabaseComponent:convertDatabaseForm:confirmConvertButton")).click();
    await(ExpectedConditions
            .textToBePresentInElementLocated(
                    By.id("accordionPanel:systemDatabaseComponent:convertingDatabaseForm:finishMessageConvertion"),
                    "Successfully Finished"));
    driver.findElement(
            By.xpath("//*[@id='accordionPanel:systemDatabaseComponent:convertDatabaseDialog']/div[1]/a"))
            .click();
  }

  private void testConnectionOldDb()
  {
    driver.findElement(
            By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:connectionStateComponent:checkConnectionButton"))
            .click();
    driver.findElement(
            By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:connectionStateComponent:checkConnectionButton"))
            .click();
    await(ExpectedConditions
            .textToBePresentInElementLocated(
                    By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:connectionStateComponent:connectionState"),
                    "Database too old"));
  }

  private void setOldDbConfigUi()
  {
    setMySqlConfig();
    super.DBNAME = OLD_DB_NAME;
    clearAndSend(By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:databaseNameInput"), DBNAME);
    driver.findElement(By.id("saveAll")).click();
  }

  private void tryCreatingOldDb(ConfigData configData) throws Exception
  {
    try
    {
      createOldDatabase(configData);
    }
    catch (Exception ex)
    {
      dropMySqlDatabase();
    }
  }

  private void createOldDatabase(ConfigData configData) throws Exception
  {
    Properties properties = new Properties();
    properties.put("databaseName", OLD_DB_NAME);
    configData.setCreationParameters(properties);

    SystemDatabaseCreator createDatabase = ConfigHelper.createDatabase(configData, 44);
    WaitUtil.await(() -> createDatabase.isRunning() == false, 60, TimeUnit.SECONDS);
    if (createDatabase.getError() != null)
    {
      throw new RuntimeException("Could not create database", createDatabase.getError());
    }
    super.dbCreated = true;
  }

  @Test
  public void testSystemDbConnectionMySQL() throws Exception
  {
    setMySqlConfig();
    createMySqlSysDb();

    StopWatch sw = new StopWatch();
    sw.start();
    try
    {
      testConnection();
      System.out.println("Connected after " + sw.getNanoTime() + " nanoseconds");
    }
    catch (Exception ex)
    {
      throwNotConnected(sw);
    }
    finally
    {
      dropMySqlDatabase();
    }
  }

  @Test
  public void testSystemDbConnectionMSSQL() throws Exception
  {
    configAndCreateMSSQL();

    StopWatch sw = new StopWatch();
    sw.start();
    try
    {
      testConnection();
      System.out.println("Connected after " + sw.getNanoTime() + " nanoseconds");
    }
    catch (Exception ex)
    {
      throwNotConnected(sw);
    }
    finally
    {
      dropMSSQLDatabase();
    }
  }

  private void configAndCreateMSSQL()
  {
    setConfigMSSQL();
    createSysDbMSSQL();
  }

  private void setConfigMSSQL()
  {
    setConfigInternal();

    prime.selectOne(By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:databaseTypeDropdown"))
            .selectItemByLabel("Microsoft SQL Server");

    clearAndSend(By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:hostInput"), "ZugTstDbsMss");

    driver.findElement(
            By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:connectionStateComponent:checkConnectionButton"))
            .click();
  }

  private void createSysDbMSSQL()
  {
    openDbCreationDialog();

    createAndValidateDb();
  }

  private void dropMSSQLDatabase() throws Exception
  {
    if (!dbCreated)
    {
      System.out.println("DB wasn't created and therefore also not dropped.");
      return;
    }

    String command = "DROP DATABASE " + DBNAME;
    Connection con = DriverManager.getConnection("jdbc:sqlserver://ZugTstDbsMss:1433", USERNAME, PASSWORD);
    Statement stmt = con.createStatement();
    stmt.executeUpdate("ALTER DATABASE " + DBNAME + " SET SINGLE_USER WITH ROLLBACK IMMEDIATE;");
    stmt.executeUpdate(command);
    con.close();
  }

  @Test
  @Ignore
  public void testSystemDbConnectionOracle() throws Exception
  {
    configAndCreateOracle();

    StopWatch sw = new StopWatch();
    sw.start();
    try
    {
      testConnection();
      System.out.println("Connected after " + sw.getNanoTime() + " nanoseconds");
    }
    catch (Exception ex)
    {
      throwNotConnected(sw);
    }
    finally
    {
      dropOracleDatabase();
    }
  }

  private void configAndCreateOracle()
  {
    setConfigOracle();

    createSysDbOracle();
  }

  private void setConfigOracle()
  {
    setConfigInternal();
    prime.selectOne(By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:databaseTypeDropdown"))
            .selectItemByLabel("Oracle");

    clearAndSend(By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:hostInput"), "ZugTstDbsOra");

    prime.selectBooleanCheckbox(
            By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:defaultPortCheckbox"))
            .setChecked();
    DBNAME = "zugtstdbsora";
    clearAndSend(By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:databaseNameInput"), DBNAME);
    driver.findElement(By.id("saveAll")).click();
  }

  private void createSysDbOracle()
  {
    openDbCreationDialog();

    driver.findElement(
            By.id("accordionPanel:systemDatabaseComponent:createDatabaseForm:j_id_1l:0:creationParam"))
            .sendKeys("INTGRTST");

    driver.findElement(
            By.id("accordionPanel:systemDatabaseComponent:createDatabaseForm:j_id_1l:1:creationParam"))
            .sendKeys("newUser");
    driver.findElement(
            By.id("accordionPanel:systemDatabaseComponent:createDatabaseForm:j_id_1l:2:creationParam"))
            .sendKeys("newPassword");

    createAndValidateDb();
  }

  private void dropOracleDatabase() throws Exception
  {
    if (!dbCreated)
    {
      System.out.println("DB wasn't created and therefore also not dropped.");
      return;
    }
    String select = "select 'alter system kill session ''' || sid || ',' || serial# || ''';' from v$session where username = 'newUser'";
    String command = "DROP USER newUser CASCADE";
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@zugtstdbsora:1521:zugtstdbsora",
            USERNAME, PASSWORD);
    Statement stmt = con.createStatement();
    ResultSet executeQuery = stmt.executeQuery(select);
    System.out.println(executeQuery);
    stmt.executeUpdate(command);
    con.close();
  }

  private void throwNotConnected(StopWatch sw) throws Exception
  {
    System.out.println("Could not connect to db after " + sw.getNanoTime() + " nanoseconds");
    String messageBoxMessage = driver.findElement(By.xpath
            ("//*[@id='accordionPanel:systemDatabaseComponent:growl_container']/div/div/div[2]/p"))
            .getText();
    throw new Exception("Expected connection to be established but was: '" + messageBoxMessage + "'");
  }
}