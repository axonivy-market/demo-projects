package com.axonivy.engine.config.ui.web.test;

import static org.openqa.selenium.support.ui.ExpectedConditions.elementToBeClickable;
import static org.openqa.selenium.support.ui.ExpectedConditions.textToBePresentInElementLocated;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.time.StopWatch;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;

import com.axonivy.engine.config.ui.settings.ConfigData;
import com.axonivy.engine.config.ui.unit.test.TestSystemDatabaseSettings;

import ch.ivyteam.db.jdbc.DatabaseConnectionConfiguration;
import ch.ivyteam.db.jdbc.DatabaseServer;
import ch.ivyteam.db.jdbc.DatabaseUtil;
import ch.ivyteam.ivy.Advisor;

@SuppressWarnings("restriction")
public class WebTestSystemDatabaseSettings extends BaseWebTest
{
  private static final String OLD_DB_NAME = "tmp_engineConfigUi_testing_oldDb_version44";

  @Test
  public void testSystemDbCreation() throws Exception
  {
    setMySqlConfig();
    createMySqlSysDb();
  }

  @Test
  public void testSystemDbConvertion() throws Exception
  {
    ConfigData configData = TestSystemDatabaseSettings.getLocalMySqlSettings();
    configData.setDatabaseName(OLD_DB_NAME);
    createOldDatabase(configData);

    setOldDbConfigUi();
    testConnectionOldDb();
    convertDb();
    testConnection();
  }

  private void convertDb()
  {
    await(elementToBeClickable(By
            .id("accordionPanel:systemDatabaseComponent:convertDatabaseForm:confirmConvertButton")));
    driver.findElement(
            By.id("accordionPanel:systemDatabaseComponent:convertDatabaseForm:confirmConvertButton")).click();
    await(60, textToBePresentInElementLocated(
            By.id("accordionPanel:systemDatabaseComponent:convertingDatabaseForm:finishMessageConvertion"),
            "Successfully Finished"));
    By saveAndConnectBtn = By.id("accordionPanel:systemDatabaseComponent:convertingDatabaseForm:saveAndConnectConvertionButton");
    await(elementToBeClickable(saveAndConnectBtn));
    driver.findElement(saveAndConnectBtn).click();
    await(ExpectedConditions.invisibilityOfElementLocated(saveAndConnectBtn));
    openTab("Summary");
  }

  private void testConnectionOldDb()
  {
    await(elementToBeClickable(By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:checkConnectionButton")))
                    .click();
    await(ExpectedConditions.invisibilityOfElementLocated(By.id("loadingDialog")));
    await(120, textToBePresentInElementLocated(
            By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:connectionState"),
            "Database too old"));
  }

  private void setOldDbConfigUi()
  {
    setMySqlConfig();
    super.DBNAME = OLD_DB_NAME;
    clearAndSend(By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:databaseNameInput"), DBNAME);
    driver.findElement(By.id("saveAll")).click();
  }

  private void createOldDatabase(ConfigData configData) throws Exception
  {
    Advisor.getAdvisor().setServer(true);
    Properties properties = new Properties();
    properties.put("databaseName", OLD_DB_NAME);
    configData.setCreationParameters(properties);
  
    DatabaseConnectionConfiguration dbConnectionConfig = new DatabaseConnectionConfiguration(
            "jdbc:mysql://zugtstdbsmys:3306/tmp_engineConfigUi_testing_oldDb_version44",
            "com.mysql.jdbc.Driver", "admin", "nimda");
  
    createSystemDb(dbConnectionConfig);
    fillSystemDb(dbConnectionConfig);
    super.dbCreated = true;
  }

  private void createSystemDb(DatabaseConnectionConfiguration dbConnectionConfig)
          throws SQLException
  {
    try (Connection connection = DatabaseUtil.openConnection(dbConnectionConfig))
    {
      Statement stmt = connection.createStatement();
      stmt.execute("DROP DATABASE " + OLD_DB_NAME);
    }
    catch (SQLException ex)
    {
    }
    DatabaseServer.createInstance(dbConnectionConfig).createDatabase(OLD_DB_NAME);
  }

  private void fillSystemDb(DatabaseConnectionConfiguration dbConnectionConfig)
          throws FileNotFoundException, IOException, SQLException
  {
    try (Connection connection = DatabaseUtil.openConnection(dbConnectionConfig))
    {
      try (Statement stmt = connection.createStatement())
      {
        executeScript("CreateBaseDatabaseVersion39.sql", ";", stmt);
        executeScript("CreateDatabaseVersion39.sql", ";", stmt);
        executeScript("CreateTriggerDatabaseVersion39.sql", "END;", stmt);
        executeScript("CreateSystemApplication.sql", ";", stmt);
      }
    }
  }

  private void executeScript(String scriptName, String splitter, Statement stmt)
          throws FileNotFoundException, IOException, SQLException
  {
    String sql = IOUtils.toString(WebTestSystemDatabaseSettings.class.getResource(scriptName), "utf-8");
    String[] sqlStatements = sql.split(splitter);
    for (String statement : sqlStatements)
    {
      if (StringUtils.isWhitespace(statement))
      {
        break;
      }
      statement = statement.concat(splitter);
      System.out.println(statement);
      stmt.execute(statement);
    }
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

  private void configAndCreateMSSQL() throws Exception
  {
    setConfigMSSQL();
    createAndValidateDb();
  }

  private void setConfigMSSQL() throws Exception
  {
    setConfigInternal();
    prime.selectOne(By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:databaseTypeDropdown"))
            .selectItemByLabel("Microsoft SQL Server");
    clearAndSend(By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:hostInput"), "ZugTstDbsMss");
    checkConnection();
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
  @Disabled
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

  private void configAndCreateOracle() throws Exception
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

  private void createSysDbOracle() throws Exception
  {
    openDbCreationDialog();

    clearAndSend(By.id("accordionPanel:systemDatabaseComponent:createDatabaseForm:uiRepeat:0:creationParam"),
            "INTGRTST");
    clearAndSend(By.id("accordionPanel:systemDatabaseComponent:createDatabaseForm:uiRepeat:1:creationParam"),
            "newUser");
    clearAndSend(By.id("accordionPanel:systemDatabaseComponent:createDatabaseForm:uiRepeat:2:creationParam"),
            "newPassword");

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