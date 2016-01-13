package ch.ivyteam.ivy.project.jsf.wf.ui;

import static org.fest.assertions.api.Assertions.assertThat;

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;


public class TestWorkflow extends BaseJsfWorkflowUiTest
{

  private static final String TEST_USER_1 = "Test User 1 (user1)";
  private static final String TEST_USER_2 = "Test User 2 (user2)";

  @Test
  public void testHome() throws Exception
  {
    navigate().home();
    assertThat(driverHelper.findElementById("mainArea").getText()).contains("Home");
    
    driverHelper.findElementById("ProcessListLink").click();
    driverHelper.assertAjaxElementContains(By.id("mainArea"), "Process List");
    
    navigate().home();
    driverHelper.findElementById("TaskListLink").click();
    driverHelper.assertAjaxElementContains(By.id("mainArea"), "Task List");
  }
  
  @Test
  public void testProcesslist() throws Exception
  {
    navigate().processList();
    //Start home process
    driverHelper.findElementById("13F3D94E5C99F06F/WfJsf.ivp").click();
    assertThat(driverHelper.findElementById("mainLayoutUnit").getText()).contains("Request event");
    
    // Test processlist searchbar with process name
    navigate().processList();
    searchDataTable("processlistform:SearchTxt", "test workflow js");
    firstRowContains("processlistform:datatable", "Test Workflow Jsf");
    
    // Test processlist searchbar with process description
    navigate().processList();
    searchDataTable("processlistform:SearchTxt", "Web pages");
    firstRowContains("processlistform:datatable", "Test Workflow Html");
  }
  
  @Test
  public void testTasklist() throws Exception
  {
    createTask("titel","beschreibung", 0);
    checkIsTaskCreated();
    closeTask();
    checkIsTaskClosed();
  }
  
  @Test
  public void testSubstituteTasksForUser() throws Exception
  {
    createTask("taskForUser1","descriptionForUser1", 0);
    delegateTaskToUser("taskForUser1", TEST_USER_1);
    createTask("taskForUser2","descriptionForUser2", 0);
    delegateTaskToUser("taskForUser2", TEST_USER_2);
    
    addAbsenceForUser("30.04.2012", "09:10", "30.04.2031", "10:10", "Add absence for other test", TEST_USER_2);
    addSubstitutionForUserPersonalTasks(TEST_USER_2);
    
    login("user1", "user1");
    navigate().taskList();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("JSF taskForUser2");
  }

  @Test
  public void testSubstituteTasksForRole() throws Exception
  {
    createTask("taskForRole3","descriptionForRole3", 0);
    delegateTaskToRole("taskForRole3", "User Role 3 (role3)");
    
    addAbsenceForUser("30.04.2012", "09:10", "30.04.2031", "10:10", "Add absence for other test", TEST_USER_2);
    addSubstitutionForAllRolesOfUser(TEST_USER_2);
    
    login("user1", "user1");
    navigate().taskList();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("JSF taskForRole3");
  }

  private void checkIsTaskCreated()
  {
    navigate().taskList();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("JSF titel");
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("Priority EXCEPTION");
  }

  private void checkIsTaskClosed()
  {
    navigate().taskList();
    assertThat(driverHelper.getWebDriver().getPageSource()).doesNotContain("JSF titel");
  }

  private void delegateTaskToUser(String taskName, String user)
  {
    navigate().taskList();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains(taskName);
    driverHelper.findElementById("buttonTaskDetail").click();
    driverHelper.clickAndWaitForAjax(By.id("formTaskDetails:openDelegateTask"));
    WebElement selectOneMenu = driverHelper.findElementById("formDelegateTask:selectionOfUser");
    prime().selectOneMenu(selectOneMenu).selectItemByLabel(user);
    driverHelper.clickAndWaitForAjax(By.id("formDelegateTask:saveDelegateTask"));
  }
  
  private void delegateTaskToRole(String taskName, String role)
  {
    navigate().taskList();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains(taskName);
    driverHelper.findElementById("buttonTaskDetail").click();
    driverHelper.clickAndWaitForAjax(By.id("formTaskDetails:openDelegateTask"));
    WebElement selectOneRadio = driverHelper.findElementById("formDelegateTask");
    prime().selectOneRadio(selectOneRadio).selectItemById("formDelegateTask:delegateToRole");
    WebElement selectOneMenu = driverHelper.findElementById("formDelegateTask:selectionOfRole");
    prime().selectOneMenu(selectOneMenu).selectItemByLabel(role);
    driverHelper.clickAndWaitForAjax(By.id("formDelegateTask:saveDelegateTask"));
  }

  private void addSubstitutionForUserPersonalTasks(String user)
  {
    navigate().substitution();
    WebElement selectOneMenu = driverHelper.findElementById("formSubstitute:userSelection");
    prime().selectOneMenu(selectOneMenu).selectItemByLabel(user);
    driverHelper.clickAndWaitForAjax(By.id("formSubstitute:addSubstitute"));
    selectOneMenu = driverHelper.findElementById("formAddSubstitute:substituteUser");
    prime().selectOneMenu(selectOneMenu).selectItemByLabel(TEST_USER_1);
    driverHelper.findElementById("formAddSubstitute:substituteDescription").click();
    driverHelper.findElementById("formAddSubstitute:substituteDescription").clear();
    driverHelper.findElementById("formAddSubstitute:substituteDescription").sendKeys("Add substitution test");
    driverHelper.clickAndWaitForAjax(By.id("formAddSubstitute:saveSubstitution"));
  }

  private void addSubstitutionForAllRolesOfUser(String user)
  {
    navigate().substitution();
    WebElement selectOneMenu = driverHelper.findElementById("formSubstitute:userSelection");
    prime().selectOneMenu(selectOneMenu).selectItemByLabel(user);
    driverHelper.clickAndWaitForAjax(By.id("formSubstitute:addSubstitute"));
    selectOneMenu = driverHelper.findElementById("formAddSubstitute:substituteUser");
    prime().selectOneMenu(selectOneMenu).selectItemByLabel(TEST_USER_1);
    WebElement selectOneRadio = driverHelper.findElementById("formAddSubstitute");
    prime().selectOneRadio(selectOneRadio).selectItemById("formAddSubstitute:optRole");
    
    WebElement selectCheckboxMenu = driverHelper.findElementById("formAddSubstitute:roleSelection");
    prime().selectCheckboxMenu(selectCheckboxMenu).selectAllItems();
    driverHelper.findElementById("formAddSubstitute:substituteDescription").click();
    driverHelper.findElementById("formAddSubstitute:substituteDescription").clear();
    driverHelper.findElementById("formAddSubstitute:substituteDescription").sendKeys("Add substitution test");
    driverHelper.clickAndWaitForAjax(By.id("formAddSubstitute:saveSubstitution"));
  }
}
