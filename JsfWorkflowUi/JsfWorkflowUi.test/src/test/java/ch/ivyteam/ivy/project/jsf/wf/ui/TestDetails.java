package ch.ivyteam.ivy.project.jsf.wf.ui;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;

import com.axonivy.ivy.supplements.primeui.tester.PrimeUi.SelectOneMenu;

import ch.ivyteam.ivy.server.test.IvyWebDriverHelper;
import ch.ivyteam.ivy.server.test.WfNavigator;

public class TestDetails extends BaseJsfWorkflowUiTest
{
  @Test
  public void testTaskDetails() throws Exception
  {
    createTask("task", "Test if shows details", 2);
    WfNavigator.taskList(driver);
    awaitToBeClickable("buttonTaskDetail").click();
    assertThat(driver.getPageSource()).contains("task");
    assertThat(driver.getPageSource()).contains("Test if shows details");
    assertThat(driver.getPageSource()).contains("NORMAL");
    assertThat(driver.getPageSource()).contains("SUSPENDED");
    closeTask();
  }

  @Test
  public void testCaseDetails() throws Exception
  {
    createTask("case", "Test if shows details", 2);
    WfNavigator.caseList(driver);
    awaitToBeClickable("buttonCaseDetail").click();
    assertThat(driver.getPageSource()).contains("Test Workflow Jsf");
    assertThat(driver.getPageSource()).contains("Sample WF using Html Dialogs");
    assertThat(driver.getPageSource()).contains("JSF case");
    closeTask();
  }

  @Test
  public void testAddNoteToTask() throws Exception
  {
    createTask("taskForAddNote", "Test add note", 2);
    WfNavigator.taskList(driver);
    awaitToBeClickable("buttonTaskDetail").click();
    IvyWebDriverHelper.assertAjaxModifiedPageSourceContains(driver, "taskForAddNote");
    awaitToBeClickable("formTaskDetails:openAddNote").click();
    addNote();

    login("user1", "user1");
    WfNavigator.taskList(driver);
    awaitToBeClickable("buttonTaskDetail").click();
    awaitTextToBePresentIn(By.className("messageNotes"), "This is the description of the new note");
    await(ExpectedConditions.not(ExpectedConditions.presenceOfAllElementsLocatedBy(By
            .xpath("//*[@id='formTaskDetails:j_id_q_2_3_2a:0:openDeleteCaseNote']"))));
    closeTask();
  }

  @Test
  public void testAddNoteToCase() throws Exception
  {
    createTask("taskForAddNoteToCase", "Test add note", 2);
    WfNavigator.caseList(driver);
    awaitToBeClickable("buttonCaseDetail").click();
    IvyWebDriverHelper.assertAjaxModifiedPageSourceContains(driver, "taskForAddNoteToCase");
    awaitToBeClickable("formCaseDetails:openAddNoteCase").click();
    addNote();

    login("user1", "user1");
    WfNavigator.caseList(driver);
    awaitToBePresent(By
            .xpath("//div[@id='caseListComponent:caseListForm:caseOption']/div[2]/span"));
    awaitToBeClickable(By.xpath("//div[@id='caseListComponent:caseListForm:caseOption']/div[2]/span"))
            .click();
    awaitToBeClickable("buttonCaseDetail").click();
    awaitTextToBePresentIn(By.className("messageNotes"), "This is the description of the new note");
    await(ExpectedConditions.not(ExpectedConditions.presenceOfAllElementsLocatedBy(By
            .xpath("//*[@id='formTaskDetails:j_id_q_2_3_2a:0:openDeleteCaseNote']"))));
    closeTask();
  }

  private void addNote()
  {
    awaitToBeClickable("formAddNote:note").sendKeys("This is the description of the new note");
    awaitToBeClickable("formAddNote:saveNote").click();
    awaitTextToBePresentIn(By.className("messageNotes"), "This is the description of the new note");
  }

  @Test
  public void testChangeExpiryToFuture() throws Exception
  {
    createTask("taskForChangeExpiry", "Test change expiry", 2, "30.4.2030");
    WfNavigator.taskList(driver);
    awaitToBeClickable("buttonTaskDetail").click();
    assertThat(driver.getPageSource()).contains("taskForChangeExpiry");
    awaitToBeClickable("formTaskDetails:openChangeExpiry").click();
    awaitToBeClickable("formDetailsChangeExpiry:expiryDate_input").click();
    awaitToBeClickable("formDetailsChangeExpiry:expiryDate_input").clear();
    awaitToBeClickable("formDetailsChangeExpiry:expiryDate_input").sendKeys("30.04.2030");
    awaitToBeClickable("formDetailsChangeExpiry:expiryTime_input").click();
    awaitToBeClickable("formDetailsChangeExpiry:expiryTime_input").clear();
    awaitToBeClickable("formDetailsChangeExpiry:expiryTime_input").sendKeys("10:10");
    awaitToBeClickable("formDetailsChangeExpiry:saveChangeExpiry").click();
    WfNavigator.taskList(driver);
    awaitToBeClickable("buttonTaskDetail").click();
    assertThat(driver.getPageSource()).contains("4/30/30, 10:10 AM");
    closeTask();
  }

  @Test
  public void testChangeExpiryToPast() throws Exception
  {
    createTask("taskForChangeExpiryOlderDate", "Test change expiry", 2, "30.4.2030");
    WfNavigator.taskList(driver);
    awaitToBeClickable("buttonTaskDetail").click();
    assertThat(driver.getPageSource()).contains("taskForChangeExpiry");
    awaitToBeClickable("formTaskDetails:openChangeExpiry").click();
    awaitToBeClickable("formDetailsChangeExpiry:expiryDate_input").click();
    awaitToBeClickable("formDetailsChangeExpiry:expiryDate_input").clear();
    awaitToBeClickable("formDetailsChangeExpiry:expiryDate_input").sendKeys("15.07.2013");
    awaitToBeClickable("formDetailsChangeExpiry:expiryTime_input").click();
    awaitToBeClickable("formDetailsChangeExpiry:expiryTime_input").clear();
    awaitToBeClickable("formDetailsChangeExpiry:expiryTime_input").sendKeys("11:11");
    awaitToBeClickable("formDetailsChangeExpiry:saveChangeExpiry").click();
    WfNavigator.taskList(driver);
    // assertThat(driver.getPageSource()).doesNotContain("JSF
    // taskForChangeExpiryOlderDate");
    awaitToBeClickable("buttonTaskDetail").click();
    assertThat(driver.getPageSource()).contains("7/15/13, 11:11 AM");
    assertThat(driver.getPageSource()).contains("Responsible after expiry");
  }

  @Test
  public void testDelegateTask() throws Exception
  {
    createTask("taskDelegateTask", "Test change expiry", 2);

    WfNavigator.taskList(driver);
    assertThat(driver.getPageSource()).contains("taskDelegateTask");
    awaitToBeClickable("buttonTaskDetail").click();
    assertThat(driver.getPageSource()).contains("taskDelegateTask");
    awaitToBeClickable("formTaskDetails:openDelegateTask").click();
    SelectOneMenu menu = prime().selectOne(By.id("formDelegateTask:selectionOfUser"));
    menu.selectItemByLabel("Test User 1 (user1)");
    awaitToBeClickable("formDelegateTask:saveDelegateTask").click();

    WfNavigator.taskList(driver);
    assertThat(driver.getPageSource()).doesNotContain("taskDelegateTask");
    createTask("taskDelegateTaskToRole", "Test delegate to role", 2);

    WfNavigator.taskList(driver);
    assertThat(driver.getPageSource()).contains("taskDelegateTaskToRole");
    awaitToBeClickable("buttonTaskDetail").click();
    awaitToBeClickable("formTaskDetails:openDelegateTask").click();
    awaitToBePresent(By.id("formDelegateTask:delegateOptions:1_clone"));
    prime().selectOneRadio(By.id("formDelegateTask"))
            .selectItemById("formDelegateTask:delegateOptions:1_clone");
    awaitToBeClickable("formDelegateTask:saveDelegateTask").click();

    WfNavigator.taskList(driver);
    awaitToBeClickable("buttonTaskDetail").click();
    assertThat(driver.getPageSource()).contains("Everybody");
    closeTask();
  }

  @Test
  public void testDestroyWorkflow() throws Exception
  {
    createTask("caseDestroyWorkflow", "Test destroy workflow", 2);
    WfNavigator.caseList(driver);
    awaitToBeClickable("buttonCaseDetail").click();
    assertThat(driver.getPageSource()).contains("caseDestroyWorkflow");
    awaitToBeClickable("formCaseDetails:openDeleteCase").click();
    awaitToBeClickable("formConfirmDeleteReset:confirmAction").click();
    WfNavigator.taskList(driver);
    assertThat(driver.getPageSource()).doesNotContain("JSF caseDestroyWorkflow");
  }

  @Test
  public void testCancelDestroyWorkflow() throws Exception
  {
    createTask("caseCancelDestroyWorkflow", "Test destroy workflow", 2);
    WfNavigator.caseList(driver);
    awaitToBeClickable("buttonCaseDetail").click();
    assertThat(driver.getPageSource()).contains("caseCancelDestroyWorkflow");
    awaitToBeClickable("formCaseDetails:openDeleteCase").click();
    awaitToBeClickable("formConfirmDeleteReset:notConfirmAction").click();
    assertThat(driver.getPageSource()).contains("SUSPENDED");
    WfNavigator.taskList(driver);
    assertThat(driver.getPageSource()).contains("JSF caseCancelDestroyWorkflow");
    closeTask();
  }

  @Test
  public void testResetTask() throws Exception
  {
    createTask("resetTask", "Test reset task", 2);
    WfNavigator.taskList(driver);
    awaitToBeClickable("taskLinkRow_0").click();
    WfNavigator.taskList(driver);
    awaitToBeClickable("buttonTaskDetail").click();
    assertThat(driver.getPageSource()).contains("resetTask");
    assertThat(driver.getPageSource()).contains("RESUMED");
    awaitToBeClickable("formTaskDetails:openResetTask").click();
    awaitToBeClickable("formConfirmDeleteReset:confirmAction").click();
    WfNavigator.taskList(driver);
    awaitToBeClickable("buttonTaskDetail").click();
    assertThat(driver.getPageSource()).contains("SUSPENDED");
    closeTask();
  }

  @Test
  public void testParkTask() throws Exception
  {
    createTask("parkTask", "Test park task", 2);
    WfNavigator.taskList(driver);
    awaitToBeClickable("taskLinkRow_0").click();
    WfNavigator.taskList(driver);
    awaitToBeClickable("buttonTaskDetail").click();
    assertThat(driver.getPageSource()).contains("parkTask");
    assertThat(driver.getPageSource()).contains("RESUMED");
    awaitToBeClickable("formTaskDetails:openParkTask").click();
    WfNavigator.taskList(driver);
    awaitToBeClickable("buttonTaskDetail").click();
    assertThat(driver.getPageSource()).contains("PARKED");
    closeTask();
  }

  @Test
  public void testPageArchive() throws Exception
  {
    createHtmlTask("pageArchive", "Test page archive");
    WfNavigator.caseList(driver);
    awaitToBeClickable("buttonCaseDetail").click();
    assertThat(driver.getPageSource()).contains("A Html Case");
    awaitToBeClickable("formCaseDetails:openPageArchive").click();
    WfNavigator.taskList(driver);
    awaitToBeClickable("taskLinkRow_0").click();
    switchToIFrame();
    awaitToBeClickable("submit").click();
    switchToDefaultContent();
    WfNavigator.taskHistory(driver);
    awaitToBeClickable("buttonTaskHistoryDetail_0").click();
    awaitToBeClickable("formTaskDetails:openPageArchive").click();
  }

  @Test
  public void testChangePriority() throws Exception
  {
    createTask("changePriorityTask", "Test change priority", 2);
    WfNavigator.taskList(driver);
    awaitToBeClickable("buttonTaskDetail").click();
    assertThat(driver.getPageSource()).contains("changePriorityTask");
    assertThat(driver.getPageSource()).contains("NORMAL");
    awaitToBeClickable("formTaskDetails:openChangePriority").click();
    prime().selectOneRadio(By.id("formDetailsChangePriority"))
            .selectItemById("formDetailsChangePriority:priorityOptions:2_clone");
    awaitToBeClickable("formDetailsChangePriority:saveChangePriority").click();
    WfNavigator.taskList(driver);
    awaitToBeClickable("buttonTaskDetail").click();
    assertThat(driver.getPageSource()).contains("HIGH");
    closeTask();
  }
}
