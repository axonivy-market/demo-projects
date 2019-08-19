package com.axonivy.engine.config.ui.web.test;

import static org.openqa.selenium.support.ui.ExpectedConditions.textToBePresentInElementLocated;

import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;

public class WebTestLicence extends BaseWebTest
{
  @Disabled
  @Test
  public void testLicenceDetails() throws Exception
  {
    await(textToBePresentInElementLocated(
            By.id("accordionPanel:licenceComponent:licenceInfosComponent:licenceInfoForm:Individual"),
            "Demo"));
    await(textToBePresentInElementLocated(
            By.id("accordionPanel:licenceComponent:licenceInfosComponent:licenceInfoForm:ExpiryDate"),
            "Never"));

    driver.findElement(By.id("accordionPanel:licenceComponent:details")).click();

    valueInList("Axon.ivy Engine");
    valueInList("Demo");
  }

  private void valueInList(String value)
  {
    await(textToBePresentInElementLocated(
            By.id("accordionPanel:licenceComponent:licenceDetailComponent:licenceInfoForm:detailsList"),
            value));
  }
}
