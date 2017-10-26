package com.axonivy.engine.config.ui.documentation;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import org.apache.commons.io.FileUtils;
import org.openqa.selenium.Dimension;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;

import com.axonivy.engine.config.ui.web.test.BaseWebTest;

public class BaseScreenshots extends BaseWebTest
{
  @Override
  public void tearDown() throws Exception
  {
    try
    {
      dropPostgresDatabase();
      System.out.println("Dropped DB '" + DBNAME + "'!");
    }
    catch (SQLException ex)
    {
      System.err.println("DB '" + DBNAME + "' could not be dropped!");
    }
    driver.quit();
    
    String command = "taskkill /im geckodriver.exe";
    Runtime.getRuntime().exec(command);
  }
  
  private void dropPostgresDatabase() throws Exception
  {
    if (!dbCreated)
    {
      System.out.println("DB wasn't created and therefore also not dropped.");
      return;
    }

    String command = "SELECT pg_terminate_backend(pg_stat_activity.procpid) "
            + "FROM pg_stat_activity "
            + "WHERE pg_stat_activity.datname = '" + DBNAME + "'"
            + " AND procpid <> pg_backend_pid();";
    Connection con = DriverManager.getConnection("jdbc:postgresql://zugtstdbspos:5432/" + DBNAME, USERNAME, PASSWORD);
    Statement stmt = con.createStatement();
    stmt.execute(command);
    con.close();
  }

  public void takeScreenshot(String fileName, Dimension size, String location) throws IOException
  {
    resizeBrowser(size);
    scrollToPosition(0, 0);

    byte[] pngImageBytes = takeScreenshotPngBytes();
    saveScreenshot(fileName, location, pngImageBytes);
  }

  protected byte[] takeScreenshotPngBytes()
  {
    byte[] pngImageBytes = ((TakesScreenshot) driver).getScreenshotAs(OutputType.BYTES);
    return pngImageBytes;
  }

  protected void scrollToPosition(int x, int y)
  {
    JavascriptExecutor jse = (JavascriptExecutor) driver;
    jse.executeScript("scroll(" + x + "," + y + ");");
  }

  protected void saveScreenshot(String fileName, String location, byte[] pngImageBytes) throws IOException
  {
    File configDir = new File("target/screenshots/EngineGuide/" + location);
    File licenceScreenshot = new File(configDir, fileName);
    FileUtils.writeByteArrayToFile(licenceScreenshot, pngImageBytes);
  }

  protected void resizeBrowser(Dimension size)
  {
    driver.manage().window().setSize(size);
  }
}
