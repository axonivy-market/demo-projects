package com.axonivy.engine.config.ui.web.test;

import org.apache.commons.lang3.time.StopWatch;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;

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
      testConnection(sw);
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
            ("//*[@id='form:accordionPanel:systemDatabaseComponent:growl_container']/div/div/div[2]/p"))
            .getText();
    throw new Exception("Expected connection to be established but was: '" + messageBoxMessage + "'");
  }

  private void testConnection(StopWatch sw)
  {
    driver.findElement(
            By.xpath("//*[@id='form:accordionPanel:systemDatabaseComponent:creatingDatabaseDialog']/div[1]/a"))
            .click();
    driver.findElement(By.id("form:accordionPanel:systemDatabaseComponent:checkConnectionButton")).click();
    await(ExpectedConditions
            .textToBePresentInElementLocated(
                    By.xpath("//*[@id='form:accordionPanel:systemDatabaseComponent:growl_container']/div/div/div[2]/p"),
                    "established"));
    System.out.println("Connected after " + sw.getNanoTime() + " nanoseconds");
  }
}