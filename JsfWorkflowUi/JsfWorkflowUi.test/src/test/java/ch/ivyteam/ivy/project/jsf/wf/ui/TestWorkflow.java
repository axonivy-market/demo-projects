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
    navigate().home();
    assertThat(driverHelper.findElementById("mainLayoutUnit").getText()).contains("Home");
    //Start processList
    driverHelper.findElement(By.xpath("//div[@id='homeInfoPanel']/ul/li[3]/a/span")).click();
    driverHelper.assertAjaxElementContains(By.id("mainLayoutUnit"), "Process List");
    //Start TaskList
    navigate().home();
    WebElement processListLink = driverHelper.findElement(By.xpath("//div[@id='homeInfoPanel']/ul/li[2]/a/span"));
    processListLink.click();
    driverHelper.assertAjaxElementContains(By.id("mainLayoutUnit"), "Task List");
  }
  
  @Test
  public void testProcesslist() throws Exception
  {
    navigate().processList();
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
    navigate().taskList();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("JSF titel");
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("Prio EXCEPTION");
  }

  private void checkIsTaskClosed()
  {
    navigate().taskList();
    assertThat(driverHelper.getWebDriver().getPageSource()).doesNotContain("JSF titel");
  }
}
