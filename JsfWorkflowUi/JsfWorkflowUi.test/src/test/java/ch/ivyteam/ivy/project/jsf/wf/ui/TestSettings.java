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
    checkIfAbsenceContains("no items");
    addAbsence("30.04.2030", "09:10", "30.04.2031", "10:10", "Add absence test");
    checkIfAbsenceContains("Add absence test");
    deleteAbsence();
    checkIfAbsenceContains("no items");
  }
  
  @Test
  public void testEditAbsence() throws Exception
  {
    addAbsence("30.04.2030", "09:10", "30.04.2031", "10:10", "Add absence test");
    checkIfAbsenceContains("Add absence test");
    editAbsence("31.31.2030", "32:32", "31.31.2031", "40:40", "Edit absence test");
    driverHelper.waitUntilEnabled(By.id("formEditAbsence:saveEditAbsence"));
    driverHelper.assertAjaxElementContains(By.id("formEditAbsence:absenceMessage"), "could not be understood as a date");
    checkIfAbsenceContains("Add absence test");
    editAbsence("15.04.2030", "11:11", "16.04.2031", "09:09", "Edit absence test");
    checkIfAbsenceContains("Edit absence test");
    deleteAbsence();
    checkIfAbsenceContains("no items");
  }

  private void addAbsence(String startDate, String startTime, String endDate, String endTime, String description)
  {
    navigate().absence();
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
    navigate().absence();
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
  
  private void checkIfAbsenceContains(String description)
  {
    navigate().absence();
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
    navigate().substitution();
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
    navigate().substitution();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("user2");
  }

  private void checkIsMySubstitutionAdded()
  {
    navigate().substitution();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains(WEB_TEST_SERVER_ADMIN_USER);
  }

  private void addSubstitutesForMyRoles()
  {
    driverHelper.clickAndWaitForAjax(By.id("formAddButton:addSubstitute"));
    driverHelper.clickAndWaitForAjax(By.xpath("//div[@id='formAddSubstitute:optRole']/div[2]"));
    driverHelper.findElement(By.xpath("//div[@id='formAddSubstitute:roleSelection']/a/label")).click();
    driverHelper.findElement(By.xpath("//div[@id='formAddSubstitute:roleSelection_panel']/div/div/div")).click();
    driverHelper.findElementById("formAddSubstitute:substituteDescription").click();
    driverHelper.findElementById("formAddSubstitute:substituteDescription").clear();
    driverHelper.findElementById("formAddSubstitute:substituteDescription").sendKeys("Add substitution test");
    driverHelper.clickAndWaitForAjax(By.id("formAddSubstitute:saveSubstitution"));
  }
  
  private void checkIsSubstituteForMyRolesAdded()
  {
    navigate().substitution();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("role1");
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("role2");
  }

  private void deleteSubstitute()
  {
    navigate().substitution();
    driverHelper.clickAndWaitForAjax(By.id("formSubstitute:tableSubstitute:0:removeButton"));
  }
  
  @Test
  public void testMailNotification() throws Exception
  {
    navigate().mailNotificationSettings();
    // set User specific
    driverHelper.clickAndWaitForAjax(By.xpath("//div[@id='formMailNotification:appDefault']/div[2]/span"));
    setMailNotification();
    navigate().mailNotificationSettings();
    checkSetMailNotification();
  }

  private void setMailNotification()
  {
    driverHelper.findElement(By.xpath("//div[@id='formMailNotification:onTask']/div[2]")).click();
    driverHelper.findElement(By.xpath("//div[@id='formMailNotification:checkMonday']/div[2]")).click();
    driverHelper.findElement(By.xpath("//div[@id='formMailNotification:checkTuesday']/div[2]")).click();
    driverHelper.findElement(By.xpath("//div[@id='formMailNotification:checkWednesday']/div[2]")).click();
    driverHelper.findElement(By.xpath("//div[@id='formMailNotification:checkThursday']/div[2]")).click();
    driverHelper.findElement(By.xpath("//div[@id='formMailNotification:checkFriday']/div[2]")).click();
    driverHelper.findElement(By.xpath("//div[@id='formMailNotification:checkSaturday']/div[2]")).click();
    driverHelper.findElement(By.xpath("//div[@id='formMailNotification:checkSunday']/div[2]")).click();
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
    navigate().taskList();
    // get task id
    String taskIdPart = "taskId=";
    String taskId = driverHelper.findElementById("taskLinkRow_0").getAttribute("href").substring(driverHelper.findElementById("taskLinkRow_0").getAttribute("href").indexOf(taskIdPart) + taskIdPart.length());
    navigate().logout();
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
    closeTask();
    driverHelper.assertAjaxElementContains(By.id("mainLayoutUnit"), "Home");
  }
}
