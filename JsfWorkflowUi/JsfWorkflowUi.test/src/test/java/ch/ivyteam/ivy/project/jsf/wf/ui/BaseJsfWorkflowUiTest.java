package ch.ivyteam.ivy.project.jsf.wf.ui;

import org.junit.After;
import org.junit.Before;
import org.junit.Rule;
import org.junit.rules.TestRule;
import org.junit.rules.Timeout;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.htmlunit.HtmlUnitDriver;

import ch.ivyteam.ivy.project.HtmlUnitWebElementWithPasswordSendKeySupport;
import ch.ivyteam.ivy.server.test.IvyWebDriverHelper;
import ch.ivyteam.ivy.server.test.ServerControl;

import com.gargoylesoftware.htmlunit.html.HtmlElement;

public class BaseJsfWorkflowUiTest
{
  public static final String WEB_TEST_SERVER_ADMIN_USER;
  public static final String WEB_TEST_SERVER_ADMIN_PASSWORD;
  private static final String[] PRIORITIES = {"EXCEPTION", "HIGH", "NORMAL", "LOW"};
  
  @Rule
  public TestRule globalMethodTimeout = new Timeout(10 * 60 * 1000);
  
  static
  {
    if (ServerControl.isDesigner())
    {
      WEB_TEST_SERVER_ADMIN_USER = "Developer";
      WEB_TEST_SERVER_ADMIN_PASSWORD = "Developer";
    }
    else
    {
      WEB_TEST_SERVER_ADMIN_USER = "Administrator";
      WEB_TEST_SERVER_ADMIN_PASSWORD = "administrator";
    }
  }
  protected IvyWebDriverHelper driverHelper;

  @Before
  public void setUp() throws Exception
  {
    driverHelper = new IvyWebDriverHelper()
      {
        @Override
        protected WebDriver newHtmlUnitDriver()
        {
          return new HtmlUnitDriver(true)
            {
              @Override
              protected WebElement newHtmlUnitWebElement(HtmlElement element)
              {
                return new HtmlUnitWebElementWithPasswordSendKeySupport(this, element);
              }
            };
        }
      };
    driverHelper.openProcessLink("testWfUi/143F856F4E029A48/SetAdminUser.ivp");
    login(WEB_TEST_SERVER_ADMIN_USER, WEB_TEST_SERVER_ADMIN_PASSWORD);
  }

  @After
  public void tearDown() throws Exception
  {
    driverHelper.quit();
  }

  protected void login(String username, String password)
  {
    driverHelper.openProcessLink("JsfWorkflowUi/13EACA2A989BCC3D/Logout.ivp");
    WebElement usernameElement = driverHelper.findElementById("loginPageComponent:loginForm:username");
    usernameElement.clear();
    usernameElement.sendKeys(username);
    WebElement passwordElement = driverHelper.findElementById("loginPageComponent:loginForm:password");
    passwordElement.clear();
    passwordElement.sendKeys(password);
    driverHelper.clickAndWaitForAjax(By.id("loginPageComponent:loginForm:loginButton"));
    driverHelper.assertAjaxElementContains(By.id("mainLayoutUnit"), "Home");
  }
  
  protected void createTask(String title, String description, int priority)
  {
    driverHelper.openProcessLink("JsfWorkflowUi/13ED18655F6A1538/DefaultProcessStartListPage.ivp");
    driverHelper.findElementById("13F3D94E5C99F06F/WfJsf.ivp").click();
    driverHelper.findElementById("formRequest:caption").sendKeys(title);
    driverHelper.findElement(By.cssSelector("span.ui-icon.ui-icon-triangle-1-s")).click();
    driverHelper.findElement(By.xpath("//div[@id='formRequest:taskPriority_panel']/div/ul/li[@data-label='" + PRIORITIES[priority] + "']")).click();
    driverHelper.findElementById("formRequest:description").sendKeys(description);
    driverHelper.clickAndWaitForAjax(By.id("formRequest:submitJsf"));
  }
  
  protected void createHtmlTask(String title, String description)
  {
    driverHelper.openProcessLink("JsfWorkflowUi/13ED18655F6A1538/DefaultProcessStartListPage.ivp");
    driverHelper.findElementById("13F3D94AF2F236BF/WfHtml.ivp").click();
    driverHelper.findElementById("caption").sendKeys(title);
    driverHelper.findElementById("description").sendKeys(description);
    driverHelper.clickAndWaitForAjax(By.id("submit"));
  }
  
  protected void createTaskWithCategory(String title, String description, int priority, String category, String process)
  {
    driverHelper.openProcessLink("JsfWorkflowUi/13ED18655F6A1538/DefaultProcessStartListPage.ivp");
    driverHelper.findElementById("13F3D94E5C99F06F/WfJsf.ivp").click();
    driverHelper.findElementById("formRequest:caption").sendKeys(title);
    driverHelper.findElement(By.cssSelector("span.ui-icon.ui-icon-triangle-1-s")).click();
    driverHelper.findElement(By.xpath("//div[@id='formRequest:taskPriority_panel']/div/ul/li[@data-label='" + PRIORITIES[priority] + "']")).click();
    driverHelper.findElementById("formRequest:description").sendKeys(description);
    driverHelper.findElementById("formRequest:category").sendKeys(category);
    driverHelper.findElementById("formRequest:process").sendKeys(process);
    driverHelper.clickAndWaitForAjax(By.id("formRequest:submitJsf"));
  }

  protected void closeTask()
  {
    driverHelper.openProcessLink("JsfWorkflowUi/13EE5C9EAAA819C8/DefaultTaskListPage.ivp");
    driverHelper.findElementById("taskLinkRow_0").click();
    driverHelper.clickAndWaitForAjax(By.id("formConfirmation:save"));
  }
}