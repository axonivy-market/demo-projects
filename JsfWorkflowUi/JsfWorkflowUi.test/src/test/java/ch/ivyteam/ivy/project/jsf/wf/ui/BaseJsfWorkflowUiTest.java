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

import com.axonivy.ivy.supplements.primeui.tester.AjaxHelper;
import com.axonivy.ivy.supplements.primeui.tester.PrimeUi;
import com.axonivy.ivy.supplements.primeui.tester.PrimeUi.Dialog;

import ch.ivyteam.ivy.server.test.ApplicationLogin;
import ch.ivyteam.ivy.server.test.IvyWebDriverHelper;
import ch.ivyteam.ivy.server.test.WfNavigator;

public class BaseJsfWorkflowUiTest
{
  public static final String WEB_TEST_SERVER_ADMIN_USER;
  public static final String WEB_TEST_SERVER_ADMIN_PASSWORD;
  public static final String WF_JSF_LINK_ID = "/ivy/pro/Portal/testWfUi/13F3D94E5C99F06F/WfJsf.ivp";
  public static final String WF_HTML_LINK_ID = "/ivy/pro/Portal/testWfUi/13F3D94AF2F236BF/WfHtml.ivp";
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
    new ApplicationLogin(driverHelper.getWebDriver()).login(username, password);
  }

  protected void createTask(String title, String description, int priority)
  {
    createTask(title, description, priority, null);
  }

  protected void createTask(String title, String description, int priority, String expiryDate)
  {
    navigate().processList();
    awaitToBeClickableAndClick(WF_JSF_LINK_ID).click();
    await(ExpectedConditions.visibilityOfElementLocated(By.id("formRequest:caption")));
    awaitToBeClickableAndClick("formRequest:caption").sendKeys(title);
    prime().selectOne(By.id("formRequest:taskPriority"))
      .selectItemByLabel(PRIORITIES[priority]);
    awaitToBeClickableAndClick("formRequest:description").sendKeys(description);
    if (expiryDate != null)
    {
      awaitToBeClickableAndClick("formRequest:expiryDate_input").click();
      awaitToBeClickableAndClick("formRequest:expiryDate_input").sendKeys(expiryDate);
    }
    awaitToBeClickableAndClick("formRequest:submitJsf").click();
  }

  protected void createHtmlTask(String title, String description)
  {
    navigate().processList();
    awaitToBeClickableAndClick(WF_HTML_LINK_ID).click();
    awaitToBeClickableAndClick("caption").sendKeys(title);
    awaitToBeClickableAndClick("description").sendKeys(description);
    awaitToBeClickableAndClick("submit").click();
  }

  protected void createTaskWithCategory(String title, String description, int priority, String category,
          String process)
  {
    navigate().processList();
    awaitToBeClickableAndClick(WF_JSF_LINK_ID).click();
    awaitToBePresent("formRequest:caption");
    awaitToBeClickableAndClick("formRequest:caption").sendKeys(title);
    prime().selectOne(By.id("formRequest:taskPriority")).selectItemByLabel(PRIORITIES[priority]);
    awaitToBeClickableAndClick("formRequest:description").sendKeys(description);
    awaitToBeClickableAndClick("formRequest:category").sendKeys(category);
    awaitToBeClickableAndClick("formRequest:process").sendKeys(process);
    awaitToBeClickableAndClick("formRequest:submitJsf").click();
  }

  protected void closeTask()
  {
    navigate().taskList();
    awaitToBeClickableAndClick("taskLinkRow_0").click();
    awaitToBeClickableAndClick("formConfirmation:save");
    awaitToBeClickableAndClick("formConfirmation:save").click();
  }

  protected void closeHtmlTask()
  {
    navigate().taskList();
    awaitToBeClickableAndClick("taskLinkRow_0").click();
    awaitToBeClickableAndClick("ok").click();
    awaitToBeClickableAndClick("submit").click();
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

  public PrimeUi prime()
  {
    return new PrimeUi(driverHelper.getWebDriver());
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
    awaitToBeClickableAndClick("formAbsence:addAbsence").click();
    Dialog absenceDialog = prime().dialog(By.id("dialogAddAbsence"));
    absenceDialog.waitForVisibility(true);
    clickAndSendKeys("absenceStartTime_input", startTime);
    clickAndSendKeys("absenceStartDate_input", startDate);
    clickAndSendKeys("absenceEndTime_input", endTime);
    clickAndSendKeys("absenceEndDate_input", endDate);
    clickAndSendKeys("absenceDescription", description);
    awaitToBeClickableAndClick("formAddAbsence:saveNewAbsence").click();
    absenceDialog.waitToBeClosedOrError();
  }

  private void clickAndSendKeys(String inputId, String inputValue)
  {
    awaitToBeClickableAndClick("formAddAbsence:absenceStartTime_input").click();
    awaitToBeClickableAndClick("formAddAbsence:" + inputId).click();
    awaitToBeClickableAndClick("formAddAbsence:" + inputId).sendKeys(inputValue);
  }

  protected Boolean awaitTextToBePresentIn(By locator, String text)
  {
    return ajax().await(ExpectedConditions.textToBePresentInElementLocated(locator, text));
  }
  
  protected WebElement awaitToBePresent(String id)
  {
    return awaitToBePresent(By.id(id));
  }

  protected WebElement awaitToBePresent(By locator)
  {
    return ajax().await(ExpectedConditions.presenceOfElementLocated(locator));
  }

  protected WebElement awaitToBeClickableAndClick(String id)
  {
    return awaitToBeClickable(By.id(id));
  }
  
  protected WebElement awaitToBeClickable(By locator)
  {
    return ajax().await(ExpectedConditions.elementToBeClickable(locator));
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