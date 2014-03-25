package ch.ivyteam.ivy.project.jsf.wf.ui;

import static org.fest.assertions.api.Assertions.assertThat;

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;


public class TestWorkflow extends BaseJsfWorkflowUiTest
{

  @Test
  public void testHome() throws Exception
  {
    driverHelper.openProcessLink("JsfWorkflowUi/13EACA2A989BCC3D/DefaultApplicationHomePage.ivp");
    assertThat(driverHelper.findElementById("mainLayoutUnit").getText()).contains("Home");
    //Start processList
    driverHelper.findElement(By.xpath("//div[@id='homeInfoPanel']/ul/li[3]/a/span")).click();
    driverHelper.assertAjaxElementContains(By.id("mainLayoutUnit"), "Process List");
    //Start TaskList
    driverHelper.openProcessLink("JsfWorkflowUi/13EACA2A989BCC3D/DefaultApplicationHomePage.ivp");
    WebElement processListLink = driverHelper.findElement(By.xpath("//div[@id='homeInfoPanel']/ul/li[2]/a/span"));
    processListLink.click();
    driverHelper.assertAjaxElementContains(By.id("mainLayoutUnit"), "Task List");
  }
  
  @Test
  public void testProcesslist() throws Exception
  {
    driverHelper.openProcessLink("JsfWorkflowUi/13ED18655F6A1538/DefaultProcessStartListPage.ivp");
    //Start home process
    driverHelper.findElementById("13F3D94E5C99F06F/WfJsf.ivp").click();
    assertThat(driverHelper.findElementById("mainLayoutUnit").getText()).contains("Request event");
  }
  
  @Test
  public void testTasklist() throws Exception
  {
    createTask("titel","beschreibung", 0);
    checkIsTaskCreated();
    closeTask();
    checkIsTaskClosed();
  }

  private void checkIsTaskCreated()
  {
    driverHelper.openProcessLink("JsfWorkflowUi/13EE5C9EAAA819C8/DefaultTaskListPage.ivp");
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("JSF titel");
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("Prio EXCEPTION");
  }

  private void checkIsTaskClosed()
  {
    driverHelper.openProcessLink("JsfWorkflowUi/13EE5C9EAAA819C8/DefaultTaskListPage.ivp");
    assertThat(driverHelper.getWebDriver().getPageSource()).doesNotContain("JSF titel");
  }
}
