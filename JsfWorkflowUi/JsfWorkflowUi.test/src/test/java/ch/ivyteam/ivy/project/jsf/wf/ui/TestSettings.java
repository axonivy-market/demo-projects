package ch.ivyteam.ivy.project.jsf.wf.ui;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;

import com.axonivy.ivy.supplements.primeui.tester.PrimeUi.Dialog;
import com.axonivy.ivy.supplements.primeui.tester.PrimeUi.SelectOneMenu;

import ch.ivyteam.ivy.server.test.IvyWebDriverHelper;
import ch.ivyteam.ivy.server.test.WfNavigator;

public class TestSettings extends BaseJsfWorkflowUiTest
{

  @Test
  public void testAddAbsence() throws Exception
  {
    addAbsenceForMe("31.31.2030", "32:32", "31.31.2031", "40:40", "Add absence test");
    IvyWebDriverHelper.waitUntilEnabled(driver, By.id("formAddAbsence:saveNewAbsence"));
    IvyWebDriverHelper.assertAjaxElementContains(driver, By.id("formAddAbsence:absenceMessage"),
            "could not be understood as a date");
    checkIfAbsenceContains("No absences");
    addAbsenceForMe("30.04.2030", "09:10", "30.04.2031", "10:10", "Add absence test");
    checkIfAbsenceContains("Add absence test");
    deleteAbsence();
    checkIfAbsenceContains("No absences");
  }

  @Test
  public void testAddAbsenceForOther() throws Exception
  {
    addAbsenceForUser("30.04.2030", "09:10", "30.04.2031", "10:10", "Add absence for other test",
            "Test User 2 (user2)");
    login("user2", "user2");
    checkIfAbsenceContains("Add absence for other test");
    deleteAbsence();
  }

  @Test
  public void testEditAbsence() throws Exception
  {
    addAbsenceForMe("30.04.2030", "09:10", "30.04.2031", "10:10", "Add absence test");
    checkIfAbsenceContains("Add absence test");
    editAbsence("31.31.2030", "32:32", "31.31.2031", "40:40", "Edit absence test", "me");
    IvyWebDriverHelper.waitUntilEnabled(driver, By.id("formEditAbsence:saveEditAbsence"));
    IvyWebDriverHelper.assertAjaxElementContains(driver, By.id("formEditAbsence:absenceMessage"),
            "could not be understood as a date");
    checkIfAbsenceContains("Add absence test");
    editAbsence("15.04.2030", "11:11", "16.04.2031", "09:09", "Edit absence test", "me");
    checkIfAbsenceContains("Edit absence test");
    deleteAbsence();
    checkIfAbsenceContains("No absences");
  }

  @Test
  public void testEditAbsenceForOther() throws Exception
  {
    addAbsenceForUser("30.04.2030", "09:10", "30.04.2031", "10:10", "Add absence for other test",
            "Test User 2 (user2)");
    editAbsence("15.04.2030", "11:11", "16.04.2031", "09:09", "Edit absence for other test", "other");
    login("user2", "user2");
    checkIfAbsenceContains("Edit absence for other test");
    deleteAbsence();
  }

  @Test
  public void testShowAbsentUsers() throws Exception
  {
    addAbsenceForUser("30.07.2012", "09:10", "30.08.2031", "10:10", "Add absence for other test",
            "Test User 2 (user2)");
    awaitToBeClickable("showAbsentUsers").click();
    assertThat(driver.findElement(By.id("formAbsentUsers")).getText()).contains("Test User 2 (user2)");

    // Trick to close the popup window with the absent users table.
    driver.findElement(By.id("formAbsentUsers")).submit();
    await(ExpectedConditions.invisibilityOf(driver.findElement(By.id("formAbsentUsers"))));

    deleteAbsence();
    checkIfAbsenceContains("No absences");
  }

  private void editAbsence(String startDate, String startTime, String endDate, String endTime,
          String description, String absenceFor)
  {
    WfNavigator.absence(driver);
    if (absenceFor == "other")
    {
      prime().selectOne(By.id("formAbsence:userSelection")).selectItemByLabel("Test User 2 (user2)");
    }    
    awaitToBeClickable("formAbsence:tableAbsence:0:editButton").click();

    awaitToBeClickable("formEditAbsence:absenceStartDate_input").click();
    awaitToBeClickable("formEditAbsence:absenceStartDate_input").clear();
    awaitToBeClickable("formEditAbsence:absenceStartDate_input").sendKeys(startDate);
    
    awaitToBeClickable("formEditAbsence:absenceStartTime_input").click();
    awaitToBeClickable("formEditAbsence:absenceStartTime_input").clear();
    awaitToBeClickable("formEditAbsence:absenceStartTime_input").sendKeys(startTime);
    
    awaitToBeClickable("formEditAbsence:absenceEndDate_input").click();
    awaitToBeClickable("formEditAbsence:absenceEndDate_input").clear();
    awaitToBeClickable("formEditAbsence:absenceEndDate_input").sendKeys(endDate);
    
    awaitToBeClickable("formEditAbsence:absenceDescription").click();
    awaitToBeClickable("formEditAbsence:absenceEndTime_input").click();
    awaitToBeClickable("formEditAbsence:absenceEndTime_input").clear();
    awaitToBeClickable("formEditAbsence:absenceEndTime_input").sendKeys(endTime);
    
    awaitToBeClickable("formEditAbsence:absenceDescription").click();
    awaitToBeClickable("formEditAbsence:absenceDescription").clear();
    awaitToBeClickable("formEditAbsence:absenceDescription").sendKeys(description);
    awaitToBeClickable("formEditAbsence:saveEditAbsence").click();
  }

  private void checkIfAbsenceContains(String description)
  {
    WfNavigator.absence(driver);
    assertThat(driver.getPageSource()).contains(description);
  }

  private void deleteAbsence()
  {
    awaitToBeClickable("formAbsence:tableAbsence:0:removeButton").click();
    IvyWebDriverHelper.waitForAjax(driver);
  }

  @Test
  public void testSubstitution() throws Exception
  {
    addSubstituteForTasks("me");
    checkIsSubstituteForTasksAdded();
    login("user2", "user2");
    checkIsMySubstitutionAdded();
    addSubstitutesForRoles("me");
    checkIsSubstituteForRolesAdded();
    login(WEB_TEST_SERVER_ADMIN_USER, WEB_TEST_SERVER_ADMIN_PASSWORD);
    deleteSubstitute();
  }

  @Test
  public void testSubstitutionOther() throws Exception
  {
    addSubstituteForTasks("other");
    SelectOneMenu selectOneMenu = prime().selectOne(By.id("formSubstitute:userSelection"));
    selectOneMenu.selectItemByLabel("Test User 2 (user2)");
    assertThat(driver.getPageSource()).contains("user1");
    addSubstitutesForRoles("other");
    checkIsSubstituteForRolesAdded();
    WfNavigator.substitution(driver);
    selectOneMenu.selectItemByLabel("Test User 1 (user1)");
    awaitToBeClickable("formSubstitute:tableSubstitute:0:removeButton").click();
  }

  private void addSubstituteForTasks(String substituteFor)
  {
    WfNavigator.substitution(driver);
    if (substituteFor == "other")
    {
      SelectOneMenu selectOneMenu = prime().selectOne(By.id("formSubstitute:userSelection"));
      selectOneMenu.selectItemByLabel("Test User 1 (user1)");
    }
    Dialog dialogSubstitute = prime().dialog(By.id("dialogAddSubstitute"));
    dialogSubstitute.waitForVisibility(false);
    awaitToBePresent("formSubstitute:addSubstitute").click();
    dialogSubstitute.waitForVisibility(true);
    SelectOneMenu selectOneMenu = prime().selectOne(By.id("formAddSubstitute:substituteUser"));
    selectOneMenu.selectItemByLabel("Test User 2 (user2)");
    awaitToBeClickable("formAddSubstitute:substituteDescription").click();
    awaitToBeClickable("formAddSubstitute:substituteDescription").sendKeys("Add substitution test");
    awaitToBeClickable("formAddSubstitute:saveSubstitution").click();
    dialogSubstitute.waitToBeClosedOrError();
  }

  private void checkIsSubstituteForTasksAdded()
  {
    assertThat(driver.getPageSource()).contains("user2");
  }

  private void checkIsMySubstitutionAdded()
  {
    WfNavigator.substitution(driver);
    assertThat(driver.getPageSource()).contains(WEB_TEST_SERVER_ADMIN_USER);
  }

  private void addSubstitutesForRoles(String substituteFor)
  {
    if (substituteFor.equals("other"))
    {
      SelectOneMenu menu = prime().selectOne(By.id("formSubstitute:userSelection"));
      menu.selectItemByLabel("Test User 2 (user2)");
    }
    awaitToBeClickable("formSubstitute:addSubstitute").click();
    prime().selectOneRadio(By.id("formAddSubstitute")).selectItemById("formAddSubstitute:options:1_clone");

    prime().selectCheckboxMenu(By.id("formAddSubstitute:roleSelection")).selectAllItems();
    awaitToBeClickable("formAddSubstitute:substituteDescription").click();
    awaitToBeClickable("formAddSubstitute:substituteDescription").clear();
    awaitToBeClickable("formAddSubstitute:substituteDescription").sendKeys("Add substitution test");
    awaitToBeClickable("formAddSubstitute:saveSubstitution").click();
  }

  private void checkIsSubstituteForRolesAdded()
  {
    assertThat(driver.getPageSource()).contains("Role 1");
    assertThat(driver.getPageSource()).contains("Role 2");
    awaitToBeClickable("formSubstitute:tableSubstitute:0:removeButton").click();
    awaitToBeClickable("formSubstitute:tableSubstitute:0:removeButton").click();
  }

  private void deleteSubstitute()
  {
    WfNavigator.substitution(driver);
    awaitToBeClickable("formSubstitute:tableSubstitute:0:removeButton").click();
  }

  @Test
  public void testMailNotification() throws Exception
  {
    WfNavigator.mailNotificationSettings(driver);
    // set User specific
    By oneRadioBy = By.id("formMailNotification:appDefault");
    prime().selectOneRadio(oneRadioBy).selectItemById("formMailNotification:appDefault:1");
    setMailNotification();
    WfNavigator.mailNotificationSettings(driver);
    checkSetMailNotification();
    // set default
    awaitToBeClickable(By.cssSelector("span.ui-button-text.ui-c")).click();
    awaitToBeClickable("formMailNotification:saveMailNotification").click();
  }

  private void setMailNotification()
  {
    checkBooleanBox("formMailNotification:onTask");
    checkBooleanBox("formMailNotification:checkMonday");
    checkBooleanBox("formMailNotification:checkTuesday");
    checkBooleanBox("formMailNotification:checkWednesday");
    checkBooleanBox("formMailNotification:checkThursday");
    checkBooleanBox("formMailNotification:checkFriday");
    checkBooleanBox("formMailNotification:checkSaturday");
    checkBooleanBox("formMailNotification:checkSunday");
    awaitToBeClickable("formMailNotification:saveMailNotification").click();
  }

  private void checkBooleanBox(String id)
  {
    prime().selectBooleanCheckbox(By.id(id)).setChecked();
  }

  private void checkSetMailNotification()
  {
    assertThat(driver.findElement(By.id("formMailNotification:onTask_input")).isSelected()).isTrue();
    assertThat(driver.findElement(By.id("formMailNotification:checkMonday_input")).isSelected())
            .isTrue();
    assertThat(driver.findElement(By.id("formMailNotification:checkTuesday_input")).isSelected())
            .isTrue();
    assertThat(driver.findElement(By.id("formMailNotification:checkWednesday_input")).isSelected())
            .isTrue();
    assertThat(driver.findElement(By.id("formMailNotification:checkThursday_input")).isSelected())
            .isTrue();
    assertThat(driver.findElement(By.id("formMailNotification:checkFriday_input")).isSelected())
            .isTrue();
    assertThat(driver.findElement(By.id("formMailNotification:checkSaturday_input")).isSelected())
            .isTrue();
    assertThat(driver.findElement(By.id("formMailNotification:checkSunday_input")).isSelected())
            .isTrue();
  }

  @Test
  public void testDefaultHome() throws Exception
  {
    setDefaultPageProcess();
    WfNavigator.openProcessLink(driver, "testWfUi/13FCD703133237C4/testDefaultHome.ivp");
    awaitTextToBePresentIn(By.id("mainArea"), "Home");
  }

  @Test
  public void testDefaultProcessList() throws Exception
  {
    setDefaultPageProcess();
    WfNavigator.openProcessLink(driver, "testWfUi/13FCD703133237C4/testDefaultProcesslist.ivp");
    awaitTextToBePresentIn(By.id("mainArea"), "Process List");
  }

  @Test
  public void testDefaultTaskList() throws Exception
  {
    setDefaultPageProcess();
    WfNavigator.openProcessLink(driver, "testWfUi/13FCD703133237C4/testDefaultTaskList.ivp");
    awaitTextToBePresentIn(By.id("mainArea"), "Task List");
  }

  @Test
  public void testDefaultLogin() throws Exception
  {
    setDefaultPageProcess();
    createTask("titel", "beschreibung", 0);
    WfNavigator.processList(driver);
    awaitTextToBePresentIn(By.id("mainArea"), "Process List");
    callDefaultLogin();
  }

  private void setDefaultPageProcess()
  {
    WfNavigator.openProcessLink(driver,
            "testWfUi/13FCD703133237C4/SetDefaultProcess.ivp?processName=ch.ivyteam.ivy.project.wf:JsfWorkflowUi");
    IvyWebDriverHelper.waitForAjax(driver);
    awaitTextToBePresentIn(By.id("mainArea"), "Home");
  }

  private void callDefaultLogin()
  {
    WfNavigator.taskList(driver);
    // get task id
    String taskIdPart = "detailTaskId=";
    String taskId = driver.findElement(By.id("taskLinkRow_0"))
            .getAttribute("href")
            .substring(
                    awaitToBeClickable("taskLinkRow_0").getAttribute("href").indexOf(taskIdPart)
                            + taskIdPart.length());
    WfNavigator.logout(driver);
    System.out.println("taskId: " + taskId);
    WfNavigator.openProcessLink(driver, "testWfUi/13F3D94E5C99F06F/13F3D94E5C99F06F-f1/TaskA.ivp?taskId=" + taskId);
    System.out.println("link: " + driver.getCurrentUrl());
    awaitTextToBePresentIn(By.id("loginForm"), "Sign-in to JSFWorkflowUI");
    // Login
    By usernameLocator = By.id("loginPageComponent:loginForm:username");
    driver.findElement(usernameLocator).clear();
    driver.findElement(usernameLocator).sendKeys(WEB_TEST_SERVER_ADMIN_USER);
    By passwordLocator = By.id("loginPageComponent:loginForm:password");
    driver.findElement(passwordLocator).clear();
    driver.findElement(passwordLocator).sendKeys(WEB_TEST_SERVER_ADMIN_PASSWORD);
    awaitToBeClickable("loginPageComponent:loginForm:loginButton").click();
    awaitTextToBePresentIn(By.id("mainArea"), "Welcome");
    closeTask();
    WfNavigator.taskList(driver);
    awaitTextToBePresentIn(By.id("mainArea"), "Task List");
  }
}
