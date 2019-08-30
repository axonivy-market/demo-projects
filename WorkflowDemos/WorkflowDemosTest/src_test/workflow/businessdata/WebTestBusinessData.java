package workflow.businessdata;

import java.util.concurrent.Callable;

import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;

import com.axonivy.ivy.supplements.primeui.tester.PrimeUi.Table;

import test.web.BaseWebTest;
import test.web.EngineUrl;

public class WebTestBusinessData extends BaseWebTest
{
  private static final String BROWSE_DOSSIERS_LINK = "155BB4328F79B2D5/browse.ivp";

  @Test
  public void testBrowseBusinessData() throws Exception
  {
    driver.get(EngineUrl.process() + "/WorkflowDemosTest/1537FF3C3382D47F/clearDemoDossiers.ivp");
    wait(() -> {
      startProcess(BROWSE_DOSSIERS_LINK);
      dossierTable().contains("Euler");
      return Boolean.TRUE;
    });
  }

  @Test
  public void createBusinessData() throws Exception
  {
    driver.get(EngineUrl.process() + "/WorkflowDemosTest/1537FF3C3382D47F/clearDemoDossiers.ivp");
    wait(() -> {
      startProcess(BROWSE_DOSSIERS_LINK);
      dossierTable().containsNot("Bernoulli");
      return Boolean.TRUE;
    });

    wait(() -> {
      startProcess("155BB4328F79B2D5/create.ivp");
      createPersonDossier("Bernoulli");
      return Boolean.TRUE;
    });
  }

  private void wait(Callable<?> condition)
  {
    ajax().await(theDriver -> {
      try
      {
        return condition.call();
      }
      catch (Exception ex)
      {
        return null; // retry: index of Elasticsearch has to be updated
      }
    });
  }

  private Table dossierTable()
  {
    return prime().table(By.id("dossierTable"));
  }

  private void createPersonDossier(String name)
  {
    driver.findElement(By.id("form:dossierName")).sendKeys(name.toUpperCase());
    driver.findElement(By.id("form:dossierPersonLastName")).sendKeys(name);
    driver.findElement(By.id("form:save")).click();
  }

}
