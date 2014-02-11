package ch.ivyteam.ivy.project.jsf.wf.ui;

import static org.fest.assertions.api.Assertions.assertThat;

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;


public class TestSettings extends BaseJsfWorkflowUiTest
{
  
  @Test
  public void testAddAbsence() throws Exception
  {
    addAbsence("31.31.2030", "32:32", "31.31.2031", "40:40", "Add absence test");
    driverHelper.waitUntilEnabled(By.id("formAddAbsence:saveNewAbsence"));
    driverHelper.assertAjaxElementContains(By.id("formAddAbsence:absenceMessage"), "could not be understood as a date");
    checkIfContains("no items");
    addAbsence("30.04.2030", "09:10", "30.04.2031", "10:10", "Add absence test");
    checkIfContains("Add absence test");
    deleteAbsence();
    checkIfContains("no items");
  }
  
  @Test
  public void testEditAbsence() throws Exception
  {
    addAbsence("30.04.2030", "09:10", "30.04.2031", "10:10", "Add absence test");
    checkIfContains("Add absence test");
    editAbsence("31.31.2030", "32:32", "31.31.2031", "40:40", "Edit absence test");
    driverHelper.waitUntilEnabled(By.id("formEditAbsence:saveEditAbsence"));
    driverHelper.assertAjaxElementContains(By.id("formEditAbsence:absenceMessage"), "could not be understood as a date");
    checkIfContains("Add absence test");
    editAbsence("15.04.2030", "11:11", "16.04.2031", "09:09", "Edit absence test");
    checkIfContains("Edit absence test");
    deleteAbsence();
    checkIfContains("no items");
  }

  private void addAbsence(String startDate, String startTime, String endDate, String endTime, String description)
  {
    driverHelper.openProcessLink("JsfWorkflowUi/13EACA2A989BCC3D/DefaultApplicationHomePage.ivp");
    driverHelper.findElementById("absence").click();
    driverHelper.clickAndWaitForAjax(By.id("formAddButton:addAbsence"));
    driverHelper.findElementById("formAddAbsence:absenceStartTime_input").click();
    driverHelper.findElementById("formAddAbsence:absenceStartTime_input").sendKeys(startTime);
    driverHelper.findElementById("formAddAbsence:absenceStartDate_input").click();
    driverHelper.findElementById("formAddAbsence:absenceStartDate_input").sendKeys(startDate);
    driverHelper.findElementById("formAddAbsence:absenceEndTime_input").click();
    driverHelper.findElementById("formAddAbsence:absenceEndTime_input").sendKeys(endTime);
    driverHelper.findElementById("formAddAbsence:absenceEndDate_input").click();
    driverHelper.findElementById("formAddAbsence:absenceEndDate_input").sendKeys(endDate);
    driverHelper.findElementById("formAddAbsence:absenceDescription").click();
    driverHelper.findElementById("formAddAbsence:absenceDescription").sendKeys(description);
    driverHelper.clickAndWaitForAjax(By.id("formAddAbsence:saveNewAbsence"));
  }
  
  private void editAbsence(String startDate, String startTime, String endDate, String endTime, String description)
  {
    driverHelper.openProcessLink("JsfWorkflowUi/13EACA2A989BCC3D/DefaultApplicationHomePage.ivp");
    driverHelper.findElementById("absence").click();
    driverHelper.clickAndWaitForAjax(By.id("formAbsence:tableAbsence:0:editButton"));
    driverHelper.findElementById("formEditAbsence:absenceStartTime_input").click();
    driverHelper.findElementById("formEditAbsence:absenceStartTime_input").clear();
    driverHelper.findElementById("formEditAbsence:absenceStartTime_input").sendKeys(startTime);
    driverHelper.findElementById("formEditAbsence:absenceStartDate_input").click();
    driverHelper.findElementById("formEditAbsence:absenceStartDate_input").clear();
    driverHelper.findElementById("formEditAbsence:absenceStartDate_input").sendKeys(startDate);
    driverHelper.findElementById("formEditAbsence:absenceEndTime_input").click();
    driverHelper.findElementById("formEditAbsence:absenceEndTime_input").clear();
    driverHelper.findElementById("formEditAbsence:absenceEndTime_input").sendKeys(endTime);
    driverHelper.findElementById("formEditAbsence:absenceEndDate_input").click();
    driverHelper.findElementById("formEditAbsence:absenceEndDate_input").clear();
    driverHelper.findElementById("formEditAbsence:absenceEndDate_input").sendKeys(endDate);
    driverHelper.findElementById("formEditAbsence:absenceDescription").click();
    driverHelper.findElementById("formEditAbsence:absenceDescription").clear();
    driverHelper.findElementById("formEditAbsence:absenceDescription").sendKeys(description);
    driverHelper.clickAndWaitForAjax(By.id("formEditAbsence:saveEditAbsence"));
  }
  
  private void checkIfContains(String description)
  {
    driverHelper.openProcessLink("JsfWorkflowUi/13EACA2A989BCC3D/DefaultApplicationHomePage.ivp");
    driverHelper.findElementById("absence").click();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains(description);
  }

  private void deleteAbsence()
  {
    driverHelper.clickAndWaitForAjax(By.id("formAbsence:tableAbsence:0:removeButton"));
  }
  
  @Test
  public void testSubstitution() throws Exception
  {
    addSubstituteForMyTasks();
    checkIsSubstituteForMyTasksAdded();
    login("user2","user2");
    checkIsMySubstitutionAdded();
    addSubstitutesForMyRoles();
    checkIsSubstituteForMyRolesAdded();
    login(WEB_TEST_SERVER_ADMIN_USER, WEB_TEST_SERVER_ADMIN_PASSWORD);
    deleteSubstitute();
  }

  private void addSubstituteForMyTasks()
  {
    driverHelper.openProcessLink("JsfWorkflowUi/13EACA2A989BCC3D/DefaultApplicationHomePage.ivp");
    driverHelper.findElementById("substitution").click();
    driverHelper.clickAndWaitForAjax(By.id("formAddButton:addSubstitute"));
    driverHelper.findElementById("formAddSubstitute:substituteUser_label").click();
    driverHelper.findElement(By.xpath("//div[@id='formAddSubstitute:substituteUser_panel']/div[2]/ul/li[@data-label='Test User 2 (user2)']")).click();
    driverHelper.findElementById("formAddSubstitute:substituteDescription").click();
    driverHelper.findElementById("formAddSubstitute:substituteDescription").clear();
    driverHelper.findElementById("formAddSubstitute:substituteDescription").sendKeys("Add substitution test");
    driverHelper.clickAndWaitForAjax(By.id("formAddSubstitute:saveSubstitution"));
  }

  private void checkIsSubstituteForMyTasksAdded()
  {
    driverHelper.openProcessLink("JsfWorkflowUi/13F5720218D18BA2/Substitution.ivp");
    driverHelper.findElementById("substitution").click();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("user2");
  }

  private void checkIsMySubstitutionAdded()
  {
    driverHelper.openProcessLink("JsfWorkflowUi/13EACA2A989BCC3D/DefaultApplicationHomePage.ivp");
    driverHelper.findElementById("substitution").click();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains(WEB_TEST_SERVER_ADMIN_USER);
  }

  private void addSubstitutesForMyRoles()
  {
    driverHelper.clickAndWaitForAjax(By.id("formAddButton:addSubstitute"));
    driverHelper.clickAndWaitForAjax(By.id("formAddSubstitute:options:1"));
    // select role 1
    driverHelper.clickAndWaitForAjax(By.xpath("//div[@id='formAddSubstitute:roleSelection_panel']/div[2]/ul/li/div/div"));
    // select role 2
    driverHelper.clickAndWaitForAjax(By.xpath("//div[@id='formAddSubstitute:roleSelection_panel']/div[2]/ul/li[2]/div/div"));
    driverHelper.findElementById("formAddSubstitute:substituteDescription").click();
    driverHelper.findElementById("formAddSubstitute:substituteDescription").clear();
    driverHelper.findElementById("formAddSubstitute:substituteDescription").sendKeys("Add substitution test");
    driverHelper.clickAndWaitForAjax(By.id("formAddSubstitute:saveSubstitution"));
  }
  
  private void checkIsSubstituteForMyRolesAdded()
  {
    driverHelper.openProcessLink("JsfWorkflowUi/13F5720218D18BA2/Substitution.ivp");
    driverHelper.findElementById("substitution").click();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("role1");
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("role2");
  }

  private void deleteSubstitute()
  {
    driverHelper.openProcessLink("JsfWorkflowUi/13EACA2A989BCC3D/DefaultApplicationHomePage.ivp");
    driverHelper.findElementById("substitution").click();
    driverHelper.clickAndWaitForAjax(By.id("formSubstitute:tableSubstitute:0:removeButton"));
  }
  
  @Test
  public void testMailNotification() throws Exception
  {
    driverHelper.openProcessLink("JsfWorkflowUi/13EACA2A989BCC3D/DefaultApplicationHomePage.ivp");
    driverHelper.findElementById("mailSettings").click();
    // set User specific
    driverHelper.findElement(By.id("formMailNotification:appDefault:1")).click();
    setMailNotification();
    driverHelper.openProcessLink("JsfWorkflowUi/13EACA2A989BCC3D/DefaultApplicationHomePage.ivp");
    driverHelper.findElementById("mailSettings").click();
    checkSetMailNotification();
  }

  private void setMailNotification()
  {
    driverHelper.waitUntilEnabled(By.id("formMailNotification:onTask_input"));
    driverHelper.findElement(By.id("formMailNotification:onTask_input")).click();
    driverHelper.findElement(By.id("formMailNotification:checkMonday_input")).click();
    driverHelper.findElement(By.id("formMailNotification:checkTuesday_input")).click();
    driverHelper.findElement(By.id("formMailNotification:checkWednesday_input")).click();
    driverHelper.findElement(By.id("formMailNotification:checkThursday_input")).click();
    driverHelper.findElement(By.id("formMailNotification:checkFriday_input")).click();
    driverHelper.findElement(By.id("formMailNotification:checkSaturday_input")).click();
    driverHelper.findElement(By.id("formMailNotification:checkSunday_input")).click();
    driverHelper.clickAndWaitForAjax(By.id("formMailNotification:saveMailNotification"));
  }

  private void checkSetMailNotification()
  {
    assertThat(driverHelper.findElementById("formMailNotification:onTask_input").isSelected()).isTrue();
    assertThat(driverHelper.findElementById("formMailNotification:checkMonday_input").isSelected()).isTrue();
    assertThat(driverHelper.findElementById("formMailNotification:checkTuesday_input").isSelected()).isTrue();
    assertThat(driverHelper.findElementById("formMailNotification:checkWednesday_input").isSelected()).isTrue();
    assertThat(driverHelper.findElementById("formMailNotification:checkThursday_input").isSelected()).isTrue();
    assertThat(driverHelper.findElementById("formMailNotification:checkFriday_input").isSelected()).isTrue();
    assertThat(driverHelper.findElementById("formMailNotification:checkSaturday_input").isSelected()).isTrue();
    assertThat(driverHelper.findElementById("formMailNotification:checkSunday_input").isSelected()).isTrue();
  }
  
  @Test
  public void testDefaultHome() throws Exception
  {
    setDefaultPageProcess();
    driverHelper.openProcessLink("testWfUi/13FCD703133237C4/testDefaultHome.ivp");
    driverHelper.waitForAjax();
    driverHelper.assertAjaxElementContains(By.id("mainLayoutUnit"), "Home");
  }
  
  @Test
  public void testDefaultProcessList() throws Exception
  {
    setDefaultPageProcess();
    driverHelper.openProcessLink("testWfUi/13FCD703133237C4/testDefaultProcesslist.ivp");
    driverHelper.waitForAjax();
    driverHelper.assertAjaxElementContains(By.id("mainLayoutUnit"), "Process List");
  }
  
  @Test
  public void testDefaultTaskList() throws Exception
  {
    setDefaultPageProcess();
    driverHelper.openProcessLink("testWfUi/13FCD703133237C4/testDefaultTaskList.ivp");
    driverHelper.waitForAjax();
    driverHelper.assertAjaxElementContains(By.id("mainLayoutUnit"), "Task List");
  }
  
  @Test
  public void testDefaultLogin() throws Exception
  {
    setDefaultPageProcess();
    createTask("titel", "beschreibung", 0);
    driverHelper.assertAjaxElementContains(By.id("mainLayoutUnit"), "Home");
    callDefaultLogin();
  }
  
  private void setDefaultPageProcess()
  {
    driverHelper.openProcessLink("testWfUi/13FCD703133237C4/SetDefaultProcess.ivp?processName=jsfWorkflowUi");
    driverHelper.waitForAjax();
    driverHelper.assertAjaxElementContains(By.id("mainLayoutUnit"), "Home");
  }

  private void callDefaultLogin()
  {
    driverHelper.findElementById("taskList").click();
    // get task id
    String taskIdPart = "taskId=";
    String taskId = driverHelper.findElementById("taskLinkRow_0").getAttribute("href").substring(driverHelper.findElementById("taskLinkRow_0").getAttribute("href").indexOf(taskIdPart) + taskIdPart.length());
    driverHelper.openProcessLink("JsfWorkflowUi/13EACA2A989BCC3D/Logout.ivp");
    driverHelper.openProcessLink("testWfUi/13F3D94E5C99F06F/13F3D94E5C99F06F-f1/TaskA.ivp?taskId=" + taskId);
    driverHelper.assertAjaxElementContains(By.id("mainLoginLayoutUnit"), "Workflow login");
    //Login
    WebElement usernameElement = driverHelper.findElementById("loginPageComponent:loginForm:username");
    usernameElement.clear();
    usernameElement.sendKeys(WEB_TEST_SERVER_ADMIN_USER);
    WebElement passwordElement = driverHelper.findElementById("loginPageComponent:loginForm:password");
    passwordElement.clear();
    passwordElement.sendKeys(WEB_TEST_SERVER_ADMIN_PASSWORD);
    driverHelper.findElementById("loginPageComponent:loginForm:loginButton").click();
    driverHelper.assertAjaxElementContains(By.id("mainLayoutUnit"), "Request event");
    closeTask();
    driverHelper.assertAjaxElementContains(By.id("mainLayoutUnit"), "Home");
  }
}
