package workflow.businessdata;

import java.util.concurrent.Callable;

import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.By;

import test.web.BaseWebTest;
import test.web.EngineUrl;

import com.axonivy.ivy.supplements.primeui.tester.PrimeUi.Table;

public class WebTestBusinessData extends BaseWebTest
{
  private static final String BROWSE_DOSSIERS_LINK = "155BB4328F79B2D5/browse.ivp";

  @Override
  @Before
  public void setUp() throws Exception
  {
    super.setUp();
    driver.get(EngineUrl.process() + "/WorkflowDemosTest/1537FF3C3382D47F/clearDemoDossiers.ivp");
  }

  @Test
  public void testBrowseBusinessData() throws Exception
  {
    wait(() -> {
      startProcess(BROWSE_DOSSIERS_LINK);
      dossierTable().contains("Euler");
      return Boolean.TRUE;
    });
  }

  @Test
  public void createBusinessData() throws Exception
  {
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
