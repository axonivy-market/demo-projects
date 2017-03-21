package com.axonivy.engine.config.ui.web.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import org.apache.commons.lang3.time.StopWatch;
import org.junit.Test;
import org.openqa.selenium.By;

public class WebTestSystemDatabaseSettings extends BaseWebTest
{
  @Test
  public void testSystemDbCreation() throws Exception
  {
    setMySqlConfig();
    createMySqlSysDb();
    dropMySqlDatabase();
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
    prime.selectOne(By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:databaseTypeDropdown"))
            .selectItemByLabel("Microsoft SQL Server");

    clearAndSend(By.id("accordionPanel:systemDatabaseComponent:systemDatabaseForm:hostInput"), "ZugTstDbsMss");

    setConfigInternal();
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

  private void throwNotConnected(StopWatch sw) throws Exception
  {
    System.out.println("Could not connect to db after " + sw.getNanoTime() + " nanoseconds");
    String messageBoxMessage = driver.findElement(By.xpath
            ("//*[@id='accordionPanel:systemDatabaseComponent:growl_container']/div/div/div[2]/p"))
            .getText();
    throw new Exception("Expected connection to be established but was: '" + messageBoxMessage + "'");
  }
}