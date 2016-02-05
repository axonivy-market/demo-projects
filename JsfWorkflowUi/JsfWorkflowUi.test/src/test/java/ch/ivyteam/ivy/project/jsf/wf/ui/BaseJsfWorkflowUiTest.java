package ch.ivyteam.ivy.project.jsf.wf.ui;

import static org.fest.assertions.api.Assertions.assertThat;

import org.junit.After;
import org.junit.Before;
import org.junit.Rule;
import org.junit.rules.TestRule;
import org.junit.rules.Timeout;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;

import ch.ivyteam.ivy.server.test.AjaxHelper;
import ch.ivyteam.ivy.server.test.ApplicationLogin;
import ch.ivyteam.ivy.server.test.IvyWebDriverHelper;
import ch.ivyteam.ivy.server.test.WfNavigator;
import ch.ivyteam.ivy.server.test.prime.PrimeFacesWidgetHelper;
import ch.ivyteam.ivy.server.test.prime.PrimeFacesWidgetHelper.Dialog;

public class BaseJsfWorkflowUiTest
{
  public static final String WEB_TEST_SERVER_ADMIN_USER;
  public static final String WEB_TEST_SERVER_ADMIN_PASSWORD;
  private static final String[] PRIORITIES = {"EXCEPTION", "HIGH", "NORMAL", "LOW"};

  @Rule
  public TestRule globalMethodTimeout = new Timeout(5 * 30 * 1000);

  static
  {
    WEB_TEST_SERVER_ADMIN_USER = "Administrator";
    WEB_TEST_SERVER_ADMIN_PASSWORD = "administrator";
  }
  protected IvyWebDriverHelper driverHelper;

  @Before
  public void setUp() throws Exception
  {
    driverHelper = new IvyWebDriverHelper();
    navigate().grantAdminRights();
    login(WEB_TEST_SERVER_ADMIN_USER, WEB_TEST_SERVER_ADMIN_PASSWORD);
  }

  @After
  public void tearDown() throws Exception
  {
    driverHelper.quit();
  }

  protected void login(String username, String password)
  {
    try
    {
      new ApplicationLogin(driverHelper.getWebDriver()).login(username, password);
    }
    catch (Throwable ex)
    {
      if (ex instanceof org.openqa.selenium.TimeoutException)
      {
        System.err.println("RETRY FAILED LOGIN");
        new ApplicationLogin(driverHelper.getWebDriver()).login(username, password);
      }
      else
      {
        throw ex;
      }
    }
  }

  protected void createTask(String title, String description, int priority)
  {
    createTask(title, description, priority, null);
  }

  protected void createTask(String title, String description, int priority, String expiryDate)
  {
    navigate().processList();
    driverHelper.findElementById("13F3D94E5C99F06F/WfJsf.ivp").click();
    driverHelper.findElementById("formRequest:caption").sendKeys(title);
    prime().selectOne(By.id("formRequest:taskPriority"))
      .selectItemByLabel(PRIORITIES[priority]);
    driverHelper.findElementById("formRequest:description").sendKeys(description);
    if (expiryDate != null)
    {
      driverHelper.findElementById("formRequest:expiryDate_input").click();
      driverHelper.findElementById("formRequest:expiryDate_input").sendKeys(expiryDate);
    }
    driverHelper.clickAndWaitForAjax(By.id("formRequest:submitJsf"));
  }

  protected void createHtmlTask(String title, String description)
  {
    navigate().processList();
    driverHelper.findElementById("13F3D94AF2F236BF/WfHtml.ivp").click();
    driverHelper.findElementById("caption").sendKeys(title);
    driverHelper.findElementById("description").sendKeys(description);
    driverHelper.clickAndWaitForAjax(By.id("submit"));
  }

  protected void createTaskWithCategory(String title, String description, int priority, String category,
          String process)
  {
    navigate().processList();
    driverHelper.findElementById("13F3D94E5C99F06F/WfJsf.ivp").click();
    driverHelper.findElementById("formRequest:caption").sendKeys(title);
    prime().selectOne(By.id("formRequest:taskPriority"))
    .selectItemByLabel(PRIORITIES[priority]);
    driverHelper.findElementById("formRequest:description").sendKeys(description);
    driverHelper.findElementById("formRequest:category").sendKeys(category);
    driverHelper.findElementById("formRequest:process").sendKeys(process);
    driverHelper.clickAndWaitForAjax(By.id("formRequest:submitJsf"));
  }

  protected void closeTask()
  {
    navigate().taskList();
    driverHelper.findElementById("taskLinkRow_0").click();
    driverHelper.clickAndWaitForAjax(By.id("formConfirmation:save"));
  }

  protected void closeHtmlTask()
  {
    navigate().taskList();
    driverHelper.findElementById("taskLinkRow_0").click();
    driverHelper.findElement(By.name("ok")).click();
    driverHelper.findElement(By.id("submit")).click();
  }

  protected final void clickAdminElement(WebElement button, String failMessage)
  {
    assertThat(button.isEnabled())
            .as("Missing administration rights! " + failMessage)
            .isTrue();
    button.click();
  }

  public WfNavigator navigate()
  {
    return new WfNavigator(driverHelper.getWebDriver());
  }

  public PrimeFacesWidgetHelper prime()
  {
    return new PrimeFacesWidgetHelper(driverHelper);
  }

  public AjaxHelper ajax()
  {
    return new AjaxHelper(driverHelper.getWebDriver());
  }

  public void addAbsenceForMe(String startDate, String startTime, String endDate, String endTime,
          String description)
  {
    navigate().absence();
    addAbsence(startDate, startTime, endDate, endTime, description);
  }

  public void addAbsenceForUser(String startDate, String startTime, String endDate, String endTime,
          String description, String absenceForUser)
  {
    navigate().absence();
    prime().selectOne(By.id("formAbsence:userSelection"))
            .selectItemByLabel(absenceForUser);

    addAbsence(startDate, startTime, endDate, endTime, description);
  }

  public void addAbsence(String startDate, String startTime, String endDate, String endTime,
          String description)
  {
    await(ExpectedConditions.elementToBeClickable(By.id("formAbsence:addAbsence"))).click();
    Dialog absenceDialog = prime().dialog(By.id("dialogAddAbsence"));
    absenceDialog.visible(true);
    clickAndSendKeys("absenceStartTime_input", startTime);
    clickAndSendKeys("absenceStartDate_input", startDate);
    clickAndSendKeys("absenceEndTime_input", endTime);
    clickAndSendKeys("absenceEndDate_input", endDate);
    clickAndSendKeys("absenceDescription", description);
    driverHelper.findElement(By.id("formAddAbsence:saveNewAbsence")).click();
    absenceDialog.isClosedOrHasError();
  }

  private void clickAndSendKeys(String inputId, String inputValue)
  {
    driverHelper.findElement(By.id("formAddAbsence:" + inputId)).click();
    driverHelper.findElement(By.id("formAddAbsence:" + inputId)).sendKeys(inputValue);
  }

  protected <T> T await(ExpectedCondition<T> condition)
  {
    return ajax().await(condition);
  }

  protected void searchDataTable(String searchId, String filterText)
  {
    driverHelper.findElement(By.id(searchId)).sendKeys(filterText);
  }
}