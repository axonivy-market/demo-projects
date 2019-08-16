package ch.ivyteam.ivy.project.jsf.wf.ui;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;

import com.axonivy.ivy.supplements.primeui.tester.PrimeUi.SelectOneMenu;
import com.axonivy.ivy.supplements.primeui.tester.PrimeUi.Table;

import ch.ivyteam.ivy.server.test.IvyWebDriverHelper;
import ch.ivyteam.ivy.server.test.WfNavigator;

public class TestWorkflow extends BaseJsfWorkflowUiTest
{

  private static final String TEST_USER_1 = "Test User 1 (user1)";
  private static final String TEST_USER_2 = "Test User 2 (user2)";

  @Test
  public void testHome() throws Exception
  {
    WfNavigator.home(driver);
    assertThat(awaitToBeClickable("mainArea").getText()).contains("Home");
    
    awaitToBeClickable("ProcessListLink").click();
    IvyWebDriverHelper.assertAjaxElementContains(driver, By.id("mainArea"), "Process List");
    
    WfNavigator.home(driver);
    awaitToBeClickable("TaskListLink").click();
    IvyWebDriverHelper.assertAjaxElementContains(driver, By.id("mainArea"), "Task List");
  }
  
  @Test
  public void testProcesslist() throws Exception
  {
    WfNavigator.processList(driver);
    //Start home process
    awaitToBeClickable(WF_JSF_LINK_ID).click();
    switchToIFrame();
    awaitTextToBePresentIn(By.id("mainLayoutUnit"), "Request event");
    switchToDefaultContent();
    
    // Test processlist searchbar with process name
    WfNavigator.processList(driver);
    
    Table dataTable = prime().table(By.id("processlistform:datatable"));
    dataTable.contains("TestCaseMap");
    
    searchDataTable("processlistform:SearchTxt", "test workflow js");
    dataTable = prime().table(By.id("processlistform:datatable"));
    dataTable.firstRowContains("Test Workflow Jsf");
    
    // Test processlist searchbar with process description
    WfNavigator.processList(driver);
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
    WfNavigator.taskList(driver);
    assertThat(driver.getPageSource()).contains("JSF taskForUser2");
  }

  @Test
  public void testSubstituteTasksForRole() throws Exception
  {
    createTask("taskForRole3","descriptionForRole3", 0);
    delegateTaskToRole("taskForRole3", "User Role 3 (role3)");
    
    addAbsenceForUser("30.04.2012", "09:10", "30.04.2031", "10:10", "Add absence for other test", TEST_USER_2);
    addSubstitutionForAllRolesOfUser(TEST_USER_2);
    
    login("user1", "user1");
    WfNavigator.taskList(driver);
    assertThat(driver.getPageSource()).contains("JSF taskForRole3");
  }

  private void checkIsTaskCreated()
  {
    WfNavigator.taskList(driver);
    assertThat(driver.getPageSource()).contains("JSF titel");
    assertThat(driver.getPageSource()).contains("Priority EXCEPTION");
  }

  private void checkIsTaskClosed()
  {
    WfNavigator.taskList(driver);
    assertThat(driver.getPageSource()).doesNotContain("JSF titel");
  }

  private void delegateTaskToUser(String taskName, String user)
  {
    WfNavigator.taskList(driver);
    assertThat(driver.getPageSource()).contains(taskName);
    awaitToBeClickable("buttonTaskDetail").click();
    awaitToBeClickable("formTaskDetails:openDelegateTask").click();
    prime().dialog(By.id("modalDialogDelegateTask")).waitForVisibility(true);
    SelectOneMenu menu = prime().selectOne(By.id("formDelegateTask:selectionOfUser"));
    menu.selectItemByLabel(user);
    awaitToBeClickable("formDelegateTask:saveDelegateTask").click();
    prime().dialog(By.id("modalDialogDelegateTask")).waitToBeClosedOrError();
  }
  
  private void delegateTaskToRole(String taskName, String role)
  {
    WfNavigator.taskList(driver);
    assertThat(driver.getPageSource()).contains(taskName);
    awaitToBeClickable("buttonTaskDetail").click();
    awaitToBeClickable("formTaskDetails:openDelegateTask").click();
    prime().dialog(By.id("modalDialogDelegateTask")).waitForVisibility(true);
    prime().selectOneRadio(By.id("formDelegateTask")).selectItemById("formDelegateTask:delegateOptions:1_clone");
    SelectOneMenu menu = prime().selectOne(By.id("formDelegateTask:selectionOfRole"));
    menu.selectItemByLabel(role);
    awaitToBeClickable("formDelegateTask:saveDelegateTask").click();
    prime().dialog(By.id("modalDialogDelegateTask")).waitToBeClosedOrError();
  }

  private void addSubstitutionForUserPersonalTasks(String user)
  {
    WfNavigator.substitution(driver);
    SelectOneMenu menu = prime().selectOne(By.id("formSubstitute:userSelection"));
    menu.selectItemByLabel(user);
    awaitToBeClickable("formSubstitute:addSubstitute").click();
    prime().dialog(By.id("dialogAddSubstitute")).waitForVisibility(true);
    menu = prime().selectOne(By.id("formAddSubstitute:substituteUser"));
    menu.selectItemByLabel(TEST_USER_1);
    awaitToBeClickable("formAddSubstitute:substituteDescription").click();
    awaitToBeClickable("formAddSubstitute:substituteDescription").clear();
    awaitToBeClickable("formAddSubstitute:substituteDescription").sendKeys("Add substitution test");
    awaitToBeClickable("formAddSubstitute:saveSubstitution").click();
    prime().dialog(By.id("dialogAddSubstitute")).waitToBeClosedOrError();
  }

  private void addSubstitutionForAllRolesOfUser(String user)
  {
    WfNavigator.substitution(driver);
    SelectOneMenu menu = prime().selectOne(By.id("formSubstitute:userSelection"));
    menu.selectItemByLabel(user);
    awaitToBePresent("formSubstitute:addSubstitute");
    awaitToBeClickable("formSubstitute:addSubstitute").click();
    prime().dialog(By.id("dialogAddSubstitute")).waitForVisibility(true);
    menu = prime().selectOne(By.id("formAddSubstitute:substituteUser"));
    menu.selectItemByLabel(TEST_USER_1);
    prime().selectOneRadio(By.id("formAddSubstitute")).selectItemById("formAddSubstitute:options:1_clone");
    
    prime().selectCheckboxMenu(By.id("formAddSubstitute:roleSelection")).selectAllItems();
    awaitToBeClickable("formAddSubstitute:substituteDescription").click();
    awaitToBeClickable("formAddSubstitute:substituteDescription").clear();
    awaitToBeClickable("formAddSubstitute:substituteDescription").sendKeys("Add substitution test");
    awaitToBeClickable("formAddSubstitute:saveSubstitution").click();
    prime().dialog(By.id("dialogAddSubstitute")).waitToBeClosedOrError();
  }
}
