package ch.ivyteam.ivy.project.jsf.wf.ui;

import static org.fest.assertions.api.Assertions.assertThat;

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;

import com.axonivy.ivy.supplements.primeui.tester.PrimeUi.SelectOneMenu;


public class TestDetails extends BaseJsfWorkflowUiTest
{
  @Test
  public void testTaskDetails() throws Exception
  {
    createTask("task","Test if shows details", 2);
    navigate().taskList();
    awaitToBeClickableAndClick("buttonTaskDetail").click();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("task");
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("Test if shows details");
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("NORMAL");
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("SUSPENDED");
    closeTask();
  }

  @Test
  public void testCaseDetails() throws Exception
  {
    createTask("case","Test if shows details", 2);
    navigate().caseList();
    awaitToBeClickableAndClick("buttonCaseDetail").click();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("Test Workflow Jsf");
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("Sample WF using Html Dialogs");
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("JSF case");
    closeTask();
  }
  
  @Test
  public void testAddNoteToTask() throws Exception
  {
    createTask("taskForAddNote","Test add note", 2);
    navigate().taskList();
    awaitToBeClickableAndClick("buttonTaskDetail").click();
    driverHelper.assertAjaxModifiedPageSourceContains("taskForAddNote");
    awaitToBeClickableAndClick("formTaskDetails:openAddNote").click();
    addNote();
    
    login("user1","user1");
    navigate().taskList();
    awaitToBeClickableAndClick("buttonTaskDetail").click();
    awaitTextToBePresentIn(By.className("messageNotes"), "This is the description of the new note");
    await(ExpectedConditions.not(ExpectedConditions.presenceOfAllElementsLocatedBy(By
            .xpath("//*[@id='formTaskDetails:j_id_q_2_3_2a:0:openDeleteCaseNote']"))));
    closeTask();
  }
  
  @Test
  public void testAddNoteToCase() throws Exception
  {
    createTask("taskForAddNoteToCase","Test add note", 2);
    navigate().caseList();
    awaitToBeClickableAndClick("buttonCaseDetail").click();
    driverHelper.assertAjaxModifiedPageSourceContains("taskForAddNoteToCase");
    awaitToBeClickableAndClick("formCaseDetails:openAddNoteCase").click();
    addNote();    
    
    login("user1","user1");
    navigate().caseList();
    awaitToBePresent(By
            .xpath("//div[@id='caseListComponent:caseListForm:caseOption']/div[2]/span"));
    awaitToBeClickable(By.xpath("//div[@id='caseListComponent:caseListForm:caseOption']/div[2]/span")).click();
    awaitToBeClickableAndClick("buttonCaseDetail").click();
    awaitTextToBePresentIn(By.className("messageNotes"), "This is the description of the new note");
    await(ExpectedConditions.not(ExpectedConditions.presenceOfAllElementsLocatedBy(By
            .xpath("//*[@id='formTaskDetails:j_id_q_2_3_2a:0:openDeleteCaseNote']"))));
    closeTask();
  }

  private void addNote()
  {
    awaitToBeClickableAndClick("formAddNote:note").sendKeys("This is the description of the new note");
    awaitToBeClickableAndClick("formAddNote:saveNote").click();
    awaitTextToBePresentIn(By.className("messageNotes"), "This is the description of the new note");
  }

  @Test
  public void testChangeExpiryToFuture() throws Exception
  {
    createTask("taskForChangeExpiry","Test change expiry", 2, "30.4.2030");
    navigate().taskList();
    awaitToBeClickableAndClick("buttonTaskDetail").click();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("taskForChangeExpiry");
    awaitToBeClickableAndClick("formTaskDetails:openChangeExpiry").click();
    awaitToBeClickableAndClick("formDetailsChangeExpiry:expiryDate_input").click();
    awaitToBeClickableAndClick("formDetailsChangeExpiry:expiryDate_input").clear();
    awaitToBeClickableAndClick("formDetailsChangeExpiry:expiryDate_input").sendKeys("30.04.2030");
    awaitToBeClickableAndClick("formDetailsChangeExpiry:expiryTime_input").click();
    awaitToBeClickableAndClick("formDetailsChangeExpiry:expiryTime_input").clear();
    awaitToBeClickableAndClick("formDetailsChangeExpiry:expiryTime_input").sendKeys("10:10");
    awaitToBeClickableAndClick("formDetailsChangeExpiry:saveChangeExpiry").click();
    navigate().taskList();
    awaitToBeClickableAndClick("buttonTaskDetail").click();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("4/30/30 10:10 AM");
    closeTask();
  }
  
  @Test
  public void testChangeExpiryToPast() throws Exception
  {
    createTask("taskForChangeExpiryOlderDate","Test change expiry", 2, "30.4.2030");
    navigate().taskList();
    awaitToBeClickableAndClick("buttonTaskDetail").click();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("taskForChangeExpiry");
    awaitToBeClickableAndClick("formTaskDetails:openChangeExpiry").click();
    awaitToBeClickableAndClick("formDetailsChangeExpiry:expiryDate_input").click();
    awaitToBeClickableAndClick("formDetailsChangeExpiry:expiryDate_input").clear();
    awaitToBeClickableAndClick("formDetailsChangeExpiry:expiryDate_input").sendKeys("15.07.2013");
    awaitToBeClickableAndClick("formDetailsChangeExpiry:expiryTime_input").click();
    awaitToBeClickableAndClick("formDetailsChangeExpiry:expiryTime_input").clear();
    awaitToBeClickableAndClick("formDetailsChangeExpiry:expiryTime_input").sendKeys("11:11");
    awaitToBeClickableAndClick("formDetailsChangeExpiry:saveChangeExpiry").click();
    navigate().taskList();
    //assertThat(driverHelper.getWebDriver().getPageSource()).doesNotContain("JSF taskForChangeExpiryOlderDate");
    awaitToBeClickableAndClick("buttonTaskDetail").click();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("7/15/13 11:11 AM");
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("Responsible after expiry");   
  }
  
  @Test
  public void testDelegateTask() throws Exception
  {
    createTask("taskDelegateTask","Test change expiry", 2);
    
    navigate().taskList();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("taskDelegateTask");
    awaitToBeClickableAndClick("buttonTaskDetail").click();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("taskDelegateTask");
    awaitToBeClickableAndClick("formTaskDetails:openDelegateTask").click();
    SelectOneMenu menu = prime().selectOne(By.id("formDelegateTask:selectionOfUser"));
    menu.selectItemByLabel("Test User 1 (user1)");
    awaitToBeClickableAndClick("formDelegateTask:saveDelegateTask").click();
    
    navigate().taskList();
    assertThat(driverHelper.getWebDriver().getPageSource()).doesNotContain("taskDelegateTask");
    createTask("taskDelegateTaskToRole","Test delegate to role", 2);
    
    navigate().taskList();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("taskDelegateTaskToRole");
    awaitToBeClickableAndClick("buttonTaskDetail").click();
    awaitToBeClickableAndClick("formTaskDetails:openDelegateTask").click();
    prime().selectOneRadio(By.id("formDelegateTask")).selectItemById("formDelegateTask:delegateOptions:1_clone");
    awaitToBeClickableAndClick("formDelegateTask:saveDelegateTask").click();
    
    navigate().taskList();
    awaitToBeClickableAndClick("buttonTaskDetail").click();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("Everybody");
    closeTask();
  }
  
  @Test
  public void testDestroyWorkflow() throws Exception
  {
    createTask("caseDestroyWorkflow","Test destroy workflow", 2);
    navigate().caseList();
    awaitToBeClickableAndClick("buttonCaseDetail").click();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("caseDestroyWorkflow");
    awaitToBeClickableAndClick("formCaseDetails:openDeleteCase").click();
    awaitToBeClickableAndClick("formConfirmDeleteReset:confirmAction").click();
    navigate().taskList();
    assertThat(driverHelper.getWebDriver().getPageSource()).doesNotContain("JSF caseDestroyWorkflow");
  }
  
  @Test
  public void testCancelDestroyWorkflow() throws Exception
  {
    createTask("caseCancelDestroyWorkflow","Test destroy workflow", 2);
    navigate().caseList();
    awaitToBeClickableAndClick("buttonCaseDetail").click();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("caseCancelDestroyWorkflow");
    awaitToBeClickableAndClick("formCaseDetails:openDeleteCase").click();
    awaitToBeClickableAndClick("formConfirmDeleteReset:notConfirmAction").click();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("SUSPENDED");
    navigate().taskList();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("JSF caseCancelDestroyWorkflow");
    closeTask();
  }
  
  @Test
  public void testResetTask() throws Exception
  {
    createTask("resetTask","Test reset task", 2);
    navigate().taskList();
    awaitToBeClickableAndClick("taskLinkRow_0").click();
    navigate().taskList();
    awaitToBeClickableAndClick("buttonTaskDetail").click();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("resetTask");
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("RESUMED");
    awaitToBeClickableAndClick("formTaskDetails:openResetTask").click();
    awaitToBeClickableAndClick("formConfirmDeleteReset:confirmAction").click();
    navigate().taskList();
    awaitToBeClickableAndClick("buttonTaskDetail").click();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("SUSPENDED");
    closeTask();
  }
  
  @Test
  public void testParkTask() throws Exception
  {
    createTask("parkTask","Test park task", 2);
    navigate().taskList();
    awaitToBeClickableAndClick("taskLinkRow_0").click();
    navigate().taskList();
    awaitToBeClickableAndClick("buttonTaskDetail").click();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("parkTask");
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("RESUMED");
    awaitToBeClickableAndClick("formTaskDetails:openParkTask").click();
    navigate().taskList();
    awaitToBeClickableAndClick("buttonTaskDetail").click();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("PARKED");
    closeTask();
  }
  
  @Test
  public void testPageArchive() throws Exception
  {
    createHtmlTask("pageArchive", "Test page archive");
    navigate().caseList();
    awaitToBeClickableAndClick("buttonCaseDetail").click();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("A Html Case");
    awaitToBeClickableAndClick("formCaseDetails:openPageArchive").click();
    navigate().taskList();
    awaitToBeClickableAndClick("taskLinkRow_0").click();
    awaitToBeClickableAndClick("submit").click();
    navigate().taskHistory();
    awaitToBeClickableAndClick("buttonTaskHistoryDetail_0").click();
    awaitToBeClickableAndClick("formTaskDetails:openPageArchive").click();
  }
  
  @Test
  public void testChangePriority() throws Exception
  {
    createTask("changePriorityTask","Test change priority", 2);
    navigate().taskList();
    awaitToBeClickableAndClick("buttonTaskDetail").click();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("changePriorityTask");
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("NORMAL");
    awaitToBeClickableAndClick("formTaskDetails:openChangePriority").click();
    prime().selectOneRadio(By.id("formDetailsChangePriority")).selectItemById("formDetailsChangePriority:priorityOptions:2_clone");
    awaitToBeClickableAndClick("formDetailsChangePriority:saveChangePriority").click();
    navigate().taskList();
    awaitToBeClickableAndClick("buttonTaskDetail").click();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("HIGH");
    closeTask();
  }
}
