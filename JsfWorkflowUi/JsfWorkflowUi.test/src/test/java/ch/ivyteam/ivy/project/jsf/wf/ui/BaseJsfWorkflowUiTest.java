package ch.ivyteam.ivy.project.jsf.wf.ui;

import static org.assertj.core.api.Assertions.assertThat;

import java.util.concurrent.TimeUnit;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.extension.ExtendWith;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxBinary;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.firefox.FirefoxOptions;
import org.openqa.selenium.firefox.FirefoxProfile;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;

import com.axonivy.ivy.supplements.primeui.tester.AjaxHelper;
import com.axonivy.ivy.supplements.primeui.tester.PrimeUi;
import com.axonivy.ivy.supplements.primeui.tester.PrimeUi.Dialog;

import ch.ivyteam.ivy.server.test.ApplicationLogin;
import ch.ivyteam.ivy.server.test.ServerControl;
import ch.ivyteam.ivy.server.test.WfNavigator;
import io.github.bonigarcia.seljup.Options;
import io.github.bonigarcia.seljup.SeleniumExtension;

@ExtendWith(SeleniumExtension.class)
public class BaseJsfWorkflowUiTest
{
  @Options
  FirefoxOptions firefoxOptions = new FirefoxOptions();
  {
    FirefoxBinary binary = new FirefoxBinary();
    binary.addCommandLineOptions("--headless");
    firefoxOptions.setBinary(binary);
    FirefoxProfile profile = new FirefoxProfile();
    profile.setPreference("intl.accept_languages", "en");
    firefoxOptions.setProfile(profile);
  }
  
  public static final String APP = ServerControl.isDesigner() ? "designer" : "Portal";
  public static final String WEB_TEST_SERVER_ADMIN_USER;
  public static final String WEB_TEST_SERVER_ADMIN_PASSWORD;
  public static final String WF_JSF_LINK_ID = "/ivy/pro/" + APP + "/testWfUi/13F3D94E5C99F06F/WfJsf.ivp";
  public static final String WF_HTML_LINK_ID = "/ivy/pro/" + APP + "/testWfUi/13F3D94AF2F236BF/WfHtml.ivp";
  private static final String[] PRIORITIES = {"EXCEPTION", "HIGH", "NORMAL", "LOW"};

  static
  {
    WEB_TEST_SERVER_ADMIN_USER = "Administrator";
    WEB_TEST_SERVER_ADMIN_PASSWORD = "administrator";
  }
  protected WebDriver driver;

  @BeforeEach
  public void setUp(FirefoxDriver driver) throws Exception
  {
    driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
    this.driver = driver;
    
    WfNavigator.grantAdminRights(driver);
    login(WEB_TEST_SERVER_ADMIN_USER, WEB_TEST_SERVER_ADMIN_PASSWORD);
  }

  protected void login(String username, String password)
  {
    new ApplicationLogin(driver).login(username, password);
  }

  protected void createTask(String title, String description, int priority)
  {
    createTask(title, description, priority, null);
  }

  protected void createTask(String title, String description, int priority, String expiryDate)
  {
    WfNavigator.processList(driver);
    awaitToBeClickable(WF_JSF_LINK_ID).click();
    switchToIFrame();
    await(ExpectedConditions.visibilityOfElementLocated(By.id("formRequest:caption")));
    awaitToBeClickable("formRequest:caption").sendKeys(title);
    prime().selectOne(By.id("formRequest:taskPriority"))
            .selectItemByLabel(PRIORITIES[priority]);
    awaitToBeClickable("formRequest:description").sendKeys(description);
    if (expiryDate != null)
    {
      awaitToBeClickable("formRequest:expiryDate_input").click();
      awaitToBeClickable("formRequest:expiryDate_input").sendKeys(expiryDate);
    }
    awaitToBeClickable("formRequest:submitJsf").click();
    switchToDefaultContent();
  }

  protected void createHtmlTask(String title, String description)
  {
    WfNavigator.processList(driver);
    awaitToBeClickable(WF_HTML_LINK_ID).click();
    switchToIFrame();
    awaitToBeClickable("caption").sendKeys(title);
    awaitToBeClickable("description").sendKeys(description);
    awaitToBeClickable("submit").click();
    switchToDefaultContent();
  }

  protected void createTaskWithCategory(String title, String description, int priority, String category)
  {
    WfNavigator.processList(driver);
    awaitToBeClickable(WF_JSF_LINK_ID).click();
    switchToIFrame();
    awaitToBePresent("formRequest:caption");
    awaitToBeClickable("formRequest:caption").sendKeys(title);
    prime().selectOne(By.id("formRequest:taskPriority")).selectItemByLabel(PRIORITIES[priority]);
    awaitToBeClickable("formRequest:description").sendKeys(description);
    awaitToBeClickable("formRequest:category").sendKeys(category);
    awaitToBeClickable("formRequest:submitJsf").click();
    switchToDefaultContent();
  }
  
  protected void closeTask()
  {
    WfNavigator.taskList(driver);
    awaitToBeClickable("taskLinkRow_0").click();
    switchToIFrame();
    awaitToBeClickable("formConfirmation:save").click();
    switchToDefaultContent();
  }

  protected void closeHtmlTask()
  {
    WfNavigator.taskList(driver);
    awaitToBeClickable("taskLinkRow_0").click();
    switchToIFrame();
    awaitToBeClickable(By.name("ok")).click();
    awaitToBeClickable("submit").click();
    switchToDefaultContent();
  }

  protected final void clickAdminElement(WebElement button, String failMessage)
  {
    assertThat(button.isEnabled())
            .as("Missing administration rights! " + failMessage)
            .isTrue();
    button.click();
  }

  public void switchToDefaultContent()
  {
    driver.switchTo().defaultContent();
  }

  public void switchToIFrame()
  {
    driver.switchTo().frame(((FirefoxDriver) driver).findElement(By.id("iFrame")));
  }

  public PrimeUi prime()
  {
    return new PrimeUi(driver);
  }

  public AjaxHelper ajax()
  {
    return new AjaxHelper(driver);
  }

  public void addAbsenceForMe(String startDate, String startTime, String endDate, String endTime,
          String description)
  {
    WfNavigator.absence(driver);
    addAbsence(startDate, startTime, endDate, endTime, description);
  }

  public void addAbsenceForUser(String startDate, String startTime, String endDate, String endTime,
          String description, String absenceForUser)
  {
    WfNavigator.absence(driver);
    prime().selectOne(By.id("formAbsence:userSelection"))
            .selectItemByLabel(absenceForUser);

    addAbsence(startDate, startTime, endDate, endTime, description);
  }

  public void addAbsence(String startDate, String startTime, String endDate, String endTime,
          String description)
  {
    awaitToBeClickable("formAbsence:addAbsence").click();
    Dialog absenceDialog = prime().dialog(By.id("dialogAddAbsence"));
    absenceDialog.waitForVisibility(true);
    clickAndSendKeys("absenceStartTime_input", startTime);
    clickAndSendKeys("absenceStartDate_input", startDate);
    clickAndSendKeys("absenceEndTime_input", endTime);
    clickAndSendKeys("absenceEndDate_input", endDate);
    clickAndSendKeys("absenceDescription", description);
    awaitToBeClickable("formAddAbsence:saveNewAbsence").click();
    absenceDialog.waitToBeClosedOrError();
  }

  private void clickAndSendKeys(String inputId, String inputValue)
  {
    awaitToBeClickable("formAddAbsence:absenceDescription").click();
    awaitToBeClickable("formAddAbsence:" + inputId).click();
    awaitToBeClickable("formAddAbsence:" + inputId).sendKeys(inputValue);
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

  protected WebElement awaitToBeClickable(String id)
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
    driver.findElement(By.id(searchId)).sendKeys(filterText);
  }
}