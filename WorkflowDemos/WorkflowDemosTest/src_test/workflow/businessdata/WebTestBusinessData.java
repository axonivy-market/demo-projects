package workflow.businessdata;

import static com.codeborne.selenide.Condition.enabled;
import static com.codeborne.selenide.Condition.text;
import static com.codeborne.selenide.Condition.visible;
import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.$$;

import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;

import com.axonivy.ivy.supplements.primeui.tester.PrimeUi.Table;
import com.codeborne.selenide.Selenide;

import test.web.BaseWebTest;
import test.web.EngineUrl;

public class WebTestBusinessData extends BaseWebTest
{
  private static final String BROWSE_DOSSIERS_LINK = "155BB4328F79B2D5/browse.ivp";

  @Test
  public void testBrowseBusinessData() throws Exception
  {
    cleanAndOpenBrowseDossier();
    dossierTable().contains("Euler");
  }

  @Test
  public void createBusibenessData() throws Exception
  {
    cleanAndOpenBrowseDossier();
    dossierTable().containsNot("Bernoulli");
    
    startProcess("155BB4328F79B2D5/create.ivp");
    createPersonDossier("Bernoulli");
    
    $("#infoGrowl_container").shouldBe(visible, text("Search index might not be immediately up-to-date"));
    Selenide.sleep(1000); //wait for elasic search
    $$("button").find(text("Search")).shouldBe(visible, enabled).click();
    dossierTable().contains("Bernoulli");
  }

  private void cleanAndOpenBrowseDossier()
  {
    Selenide.open(EngineUrl.process() + "/WorkflowDemosTest/1537FF3C3382D47F/clearDemoDossiers.ivp");
    checkEndPage();
    Selenide.sleep(1000); //wait for elasic search
    startProcess(BROWSE_DOSSIERS_LINK);
  }

  private Table dossierTable()
  {
    return prime().table(By.id("dossierTable"));
  }

  private void createPersonDossier(String name)
  {
    $("#form\\:dossierName").shouldBe(visible).sendKeys(name.toUpperCase());
    $("#form\\:dossierPersonLastName").sendKeys(name);
    $("#form\\:save").click();
  }

}
