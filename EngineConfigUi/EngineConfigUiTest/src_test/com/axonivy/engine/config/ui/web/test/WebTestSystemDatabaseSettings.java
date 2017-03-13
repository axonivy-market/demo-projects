package com.axonivy.engine.config.ui.web.test;

import org.apache.commons.lang3.time.StopWatch;
import org.junit.Test;
import org.openqa.selenium.By;

public class WebTestSystemDatabaseSettings extends BaseWebTest
{
  @Test
  public void testSystemDbCreation() throws Exception
  {
    setConfig();
    createSysDb();
    dropDatabase();
  }

  @Test
  public void testSystemDbConnection() throws Exception
  {
    setConfig();
    createSysDb();

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
      dropDatabase();
    }
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