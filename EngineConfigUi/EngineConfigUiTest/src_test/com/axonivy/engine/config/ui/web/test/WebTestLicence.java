package com.axonivy.engine.config.ui.web.test;

import org.junit.Ignore;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;

public class WebTestLicence extends BaseWebTest
{
  @Ignore
  @Test
  public void testLicenceDetails() throws Exception
  {
    await(ExpectedConditions.textToBePresentInElementLocated(
            By.id("accordionPanel:licenceComponent:licenceInfosComponent:licenceInfoForm:Individual"),
            "Demo"));
    await(ExpectedConditions.textToBePresentInElementLocated(
            By.id("accordionPanel:licenceComponent:licenceInfosComponent:licenceInfoForm:ExpiryDate"),
            "Never"));

    driver.findElement(By.id("accordionPanel:licenceComponent:details")).click();

    valueInList("Axon.ivy Engine");
    valueInList("Demo");
  }

  private void valueInList(String value)
  {
    await(ExpectedConditions.textToBePresentInElementLocated(
            By.id("accordionPanel:licenceComponent:licenceDetailComponent:licenceInfoForm:detailsList"),
            value));
  }
}
