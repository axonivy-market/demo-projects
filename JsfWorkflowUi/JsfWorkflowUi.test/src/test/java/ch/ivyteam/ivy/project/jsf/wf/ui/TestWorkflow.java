package ch.ivyteam.ivy.project.jsf.wf.ui;

import static org.fest.assertions.api.Assertions.assertThat;

import org.junit.Test;
import org.openqa.selenium.By;

import com.axonivy.ivy.supplements.primeui.tester.PrimeUi.SelectOneMenu;
import com.axonivy.ivy.supplements.primeui.tester.PrimeUi.Table;

public class TestWorkflow extends BaseJsfWorkflowUiTest
{

  private static final String TEST_USER_1 = "Test User 1 (user1)";
  private static final String TEST_USER_2 = "Test User 2 (user2)";

  @Test
  public void testHome() throws Exception
  {
    navigate().home();
    assertThat(awaitToBeClickableAndClick("mainArea").getText()).contains("Home");
    
    awaitToBeClickableAndClick("ProcessListLink").click();
    driverHelper.assertAjaxElementContains(By.id("mainArea"), "Process List");
    
    navigate().home();
    awaitToBeClickableAndClick("TaskListLink").click();
    driverHelper.assertAjaxElementContains(By.id("mainArea"), "Task List");
  }
  
  @Test
  public void testProcesslist() throws Exception
  {
    navigate().processList();
    //Start home process
    awaitToBeClickableAndClick(WF_JSF_LINK_ID).click();
    awaitTextToBePresentIn(By.id("mainLayoutUnit"), "Request event");
    
    // Test processlist searchbar with process name
    navigate().processList();
    
    Table dataTable = prime().table(By.id("processlistform:datatable"));
    dataTable.contains("TestCaseMap");
    
    searchDataTable("processlistform:SearchTxt", "test workflow js");
    dataTable = prime().table(By.id("processlistform:datatable"));
    dataTable.firstRowContains("Test Workflow Jsf");
    
    // Test processlist searchbar with process description
    navigate().processList();
    searchDataTable("processlistform:SearchTxt", "Web pages");
    dataTable.firstRowContains("Test Workflow Html");
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
    awaitToBeClickableAndClick("buttonTaskDetail").click();
    awaitToBeClickableAndClick("formTaskDetails:openDelegateTask").click();
    prime().dialog(By.id("modalDialogDelegateTask")).waitForVisibility(true);
    SelectOneMenu menu = prime().selectOne(By.id("formDelegateTask:selectionOfUser"));
    menu.selectItemByLabel(user);
    awaitToBeClickableAndClick("formDelegateTask:saveDelegateTask").click();
    prime().dialog(By.id("modalDialogDelegateTask")).waitToBeClosedOrError();
  }
  
  private void delegateTaskToRole(String taskName, String role)
  {
    navigate().taskList();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains(taskName);
    awaitToBeClickableAndClick("buttonTaskDetail").click();
    awaitToBeClickableAndClick("formTaskDetails:openDelegateTask").click();
    prime().dialog(By.id("modalDialogDelegateTask")).waitForVisibility(true);
    prime().selectOneRadio(By.id("formDelegateTask")).selectItemById("formDelegateTask:delegateOptions:1_clone");
    SelectOneMenu menu = prime().selectOne(By.id("formDelegateTask:selectionOfRole"));
    menu.selectItemByLabel(role);
    awaitToBeClickableAndClick("formDelegateTask:saveDelegateTask").click();
    prime().dialog(By.id("modalDialogDelegateTask")).waitToBeClosedOrError();
  }

  private void addSubstitutionForUserPersonalTasks(String user)
  {
    navigate().substitution();
    SelectOneMenu menu = prime().selectOne(By.id("formSubstitute:userSelection"));
    menu.selectItemByLabel(user);
    awaitToBeClickableAndClick("formSubstitute:addSubstitute").click();
    prime().dialog(By.id("dialogAddSubstitute")).waitForVisibility(true);
    menu = prime().selectOne(By.id("formAddSubstitute:substituteUser"));
    menu.selectItemByLabel(TEST_USER_1);
    awaitToBeClickableAndClick("formAddSubstitute:substituteDescription").click();
    awaitToBeClickableAndClick("formAddSubstitute:substituteDescription").clear();
    awaitToBeClickableAndClick("formAddSubstitute:substituteDescription").sendKeys("Add substitution test");
    awaitToBeClickableAndClick("formAddSubstitute:saveSubstitution").click();
    prime().dialog(By.id("dialogAddSubstitute")).waitToBeClosedOrError();
  }

  private void addSubstitutionForAllRolesOfUser(String user)
  {
    navigate().substitution();
    SelectOneMenu menu = prime().selectOne(By.id("formSubstitute:userSelection"));
    menu.selectItemByLabel(user);
    awaitToBePresent("formSubstitute:addSubstitute");
    awaitToBeClickableAndClick("formSubstitute:addSubstitute").click();
    prime().dialog(By.id("dialogAddSubstitute")).waitForVisibility(true);
    menu = prime().selectOne(By.id("formAddSubstitute:substituteUser"));
    menu.selectItemByLabel(TEST_USER_1);
    prime().selectOneRadio(By.id("formAddSubstitute")).selectItemById("formAddSubstitute:options:1_clone");
    
    prime().selectCheckboxMenu(By.id("formAddSubstitute:roleSelection")).selectAllItems();
    awaitToBeClickableAndClick("formAddSubstitute:substituteDescription").click();
    awaitToBeClickableAndClick("formAddSubstitute:substituteDescription").clear();
    awaitToBeClickableAndClick("formAddSubstitute:substituteDescription").sendKeys("Add substitution test");
    awaitToBeClickableAndClick("formAddSubstitute:saveSubstitution").click();
    prime().dialog(By.id("dialogAddSubstitute")).waitToBeClosedOrError();
  }
}
