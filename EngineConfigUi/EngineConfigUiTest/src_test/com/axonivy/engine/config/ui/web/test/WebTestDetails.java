package com.axonivy.engine.config.ui.web.test;

import org.junit.Assert;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;

public class WebTestDetails extends BaseWebTest
{
  private final By summaryForm = By.id("accordionPanel:summaryComponent:summaryForm");

  @Override
  public void setUp()
  {
    super.setUp();
    setMySqlConfig();
    createMySqlSysDb();
  }

  @Test
  public void testSummary() throws Exception
  {
    Thread.sleep(1000);
    openTab(" Summary");
    summaryContains("MySQL");
    summaryContains("zugtstdbsmys");
    summaryContains("tmp_engineConfigUi_testing");
    summaryContains("admin");
    summaryContains("No Administrators found");

    openTab("Administrators");
    addAdmin("AXON");
    openDialogAndAddAdmin("Teamivy");
    openDialogAndAddAdmin("IVYAXON");
    saveAll();

    openTab(" Summary");
    await(ExpectedConditions.textToBePresentInElementLocated(summaryForm, "AXON"));
//    summaryContains("AXON");
    summaryContains("Teamivy");
    summaryContains("IVYAXON");
  }


  private void openDialogAndAddAdmin(String name)
  {
    driver.findElement(By.id("accordionPanel:administratorsComponent:adminManagerForm:addAdminButton"))
            .click();
    addAdmin(name);
  }

  private void summaryContains(String value)
  {
    Assert.assertTrue(driver.findElement(summaryForm).getText().contains(value));
  }

}
