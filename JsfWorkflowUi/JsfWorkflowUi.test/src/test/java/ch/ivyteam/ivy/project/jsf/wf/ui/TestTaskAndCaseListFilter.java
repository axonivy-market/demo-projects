package ch.ivyteam.ivy.project.jsf.wf.ui;

import static org.fest.assertions.api.Assertions.assertThat;

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;


public class TestTaskAndCaseListFilter extends BaseJsfWorkflowUiTest
{
  @Test
  public void testCaseFilter() throws Exception
  {
    createTaskWithCategory("caseForFilter1", "case list1", 1, "category1", "process1");
    navigate().caseList();
    checkIfCaseIsInList("category1", "process1");
    
    createTaskWithCategory("caseForFilter2", "case list2", 2, "category2", "process2");
    navigate().caseList();
    checkIfCaseIsInList("category2", "process2");
    
    createTaskWithCategory("caseForFilter3", "case list3", 3, "category3", "process3");
    navigate().caseList();
    checkIfCaseIsInList("category3", "process3");
    
    checkIfFilterIsApplied("category1", "process1");
    doesNotContain("category2", "process2");
    checkIfFilterIsApplied("category2", "process2");
    doesNotContain("category3", "process3");
    checkIfFilterIsApplied("category3", "process3");
    doesNotContain("category1", "process1");
    closeTask();
    closeTask();
    closeTask();
  }

  @Test
  public void testStartedAndInvolvedCases() throws Exception
  {
    login("user1", "user1");
    createTaskWithCategory("caseForFilter4", "case list4", 1, "category4", "process4");
    
    navigate().caseList();
    checkIfCaseIsInList("category4", "process4");
    
    login(WEB_TEST_SERVER_ADMIN_USER, WEB_TEST_SERVER_ADMIN_PASSWORD);
    navigate().caseList();
    doesNotContain("category4", "process4");
    
    switchInvolvedWorklfowList();
    checkIfCaseIsInList("category4", "process4");
    
    login("user1", "user1");
    closeTask();
  }

  private void checkIfCaseIsInList(String category, String process)
  {
    assertThat(driverHelper.getWebDriver().getPageSource()).contains(category);
    assertThat(driverHelper.getWebDriver().getPageSource()).contains(process);
  }

  private void switchInvolvedWorklfowList()
  {
    WebElement selectOneRadio = driverHelper.findElementById("caseListComponent:caseListForm");
    prime().selectOneRadio(selectOneRadio).selectItemById("caseListComponent:caseListForm:caseOption");
  }

  private void checkIfFilterIsApplied(String filterForCategory, String filterForProcess)
  {
    navigate().caseList();
    WebElement selectOneMenu = driverHelper.findElementById("caseListComponent:caseListForm:categoryFilter");
    prime().selectOneMenu(selectOneMenu).selectItemByLabel(filterForCategory);
    assertThat(driverHelper.getWebDriver().getPageSource()).contains(filterForCategory);
    selectOneMenu = driverHelper.findElementById("caseListComponent:caseListForm:processFilter");
    prime().selectOneMenu(selectOneMenu).selectItemByLabel(filterForProcess);
    assertThat(driverHelper.getWebDriver().getPageSource()).contains(filterForProcess);
  }

  private void doesNotContain(String category, String process)
  {
    assertThat(driverHelper.getWebDriver().findElement(By.id("caseListComponent:caseListForm:caseTable_data")).getText())
            .doesNotContain(category);
    assertThat(driverHelper.getWebDriver().findElement(By.id("caseListComponent:caseListForm:caseTable_data")).getText())
            .doesNotContain(process);
  }

  @Test
  public void testTaskFilter() throws Exception
  {
    createTask("taskForFilterPrioHigh", "task list", 1);
    navigate().taskList();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("taskForFilterPrioHigh");
    createTask("taskForFilterLow", "task list", 3);
    
    navigate().taskList();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("taskForFilterLow");
    // test prio
    navigate().taskList();
    WebElement selectOneMenu = driverHelper.findElementById("taskListComponent:taskListForm:priorityFilter");
    prime().selectOneMenu(selectOneMenu).selectItemByLabel("LOW");
    selectOneMenu = driverHelper.findElementById("taskListComponent:taskListForm:responsibleFilter");
    prime().selectOneMenu(selectOneMenu).selectItemByLabel("Top level role");
    driverHelper.getWebDriver().navigate().refresh();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("taskForFilterLow");
    assertThat(driverHelper.getWebDriver().getPageSource()).doesNotContain("taskForFilterPrioHigh");
    
    navigate().taskList();
    selectOneMenu = driverHelper.findElementById("taskListComponent:taskListForm:priorityFilter");
    prime().selectOneMenu(selectOneMenu).selectItemByLabel("HIGH");
    selectOneMenu = driverHelper.findElementById("taskListComponent:taskListForm:responsibleFilter");
    prime().selectOneMenu(selectOneMenu).selectItemByLabel("Top level role");
    driverHelper.getWebDriver().navigate().refresh();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("taskForFilterPrioHigh");
    assertThat(driverHelper.getWebDriver().getPageSource()).doesNotContain("taskForFilterLow");
    
    delegateTaskToUser1("taskForFilterLow");
    
    // test responsible
    navigate().taskList();
    selectOneMenu = driverHelper.findElementById("taskListComponent:taskListForm:responsibleFilter");
    prime().selectOneMenu(selectOneMenu).selectItemByLabel("Top level role");
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("taskForFilterPrioHigh");
    closeTask();
  }
  
  @Test
  public void testFilterWithPagination() throws Exception
  {
    for(int tasksCount = 0; tasksCount < 50; tasksCount++)
    {
      driverHelper.openProcessLink("testWfUi/145A7190339D94FD/start.ivp");
    }
    createTask("taskHighForFilterPagination", "task pagination", 1);
    
    navigate().taskList();
    prime().clickPaginationNextPage();
    WebElement selectOneMenu = driverHelper.findElementById("taskListComponent:taskListForm:priorityFilter");
    prime().selectOneMenu(selectOneMenu).selectItemByLabel("HIGH");
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("test");

    driverHelper.openProcessLink("testWfUi/1466BC6311E70117/DestroyTasks.ivp");
  }

  @Test
  public void testTaskAdminResponsibleFilter() throws Exception
  {
    createTask("taskAdminForFilterPrioHigh", "task list", 1);
    navigate().taskAdmin();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("taskAdminForFilterPrioHigh");
    
    createTask("taskAdminForFilterLow", "task list", 3);
    navigate().taskAdmin();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("taskAdminForFilterLow");

    delegateTaskToUser1("taskAdminForFilterLow");
    
    navigate().taskAdmin();
    WebElement selectOneMenu = driverHelper.findElementById("taskListComponent:taskListForm:responsibleFilter");
    prime().selectOneMenu(selectOneMenu).selectItemByLabel("Top level role");
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("taskAdminForFilterPrioHigh");
    assertThat(driverHelper.getWebDriver().getPageSource()).doesNotContain("taskAdminForFilterLow");
    
    navigate().taskAdmin();
    selectOneMenu = driverHelper.findElementById("taskListComponent:taskListForm:responsibleFilter");
    prime().selectOneMenu(selectOneMenu).selectItemByLabel("Test User 1 (user1)");
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("taskAdminForFilterLow");
    assertThat(driverHelper.getWebDriver().getPageSource()).doesNotContain("taskAdminForFilterPrioHigh");
  }
  
  @Test
  public void testTaskAdminStatusFilter() throws Exception
  {
    createTask("taskAdminForStatusFilterPrioHigh", "task list", 1);
    navigate().taskAdmin();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("taskAdminForStatusFilterPrioHigh");
    
    createTask("taskAdminForStatusFilterLow", "task list", 3);
    navigate().taskAdmin();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("taskAdminForStatusFilterLow");

    navigate().taskList();
    driverHelper.findElementById("taskLinkRow_0").click();
    
    navigate().taskAdmin();
    WebElement selectOneMenu = driverHelper.findElementById("taskListComponent:taskListForm:stateFilter");
    prime().selectOneMenu(selectOneMenu).selectItemByLabel("SUSPENDED");
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("taskAdminForStatusFilterPrioHigh");
    assertThat(driverHelper.getWebDriver().getPageSource()).doesNotContain("taskAdminForStatusFilterLow");
    
    navigate().taskAdmin();
    selectOneMenu = driverHelper.findElementById("taskListComponent:taskListForm:stateFilter");
    prime().selectOneMenu(selectOneMenu).selectItemByLabel("RESUMED");
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("taskAdminForStatusFilterLow");
    assertThat(driverHelper.getWebDriver().getPageSource()).doesNotContain("taskAdminForStatusFilterPrioHigh");
  }

  private void delegateTaskToUser1(String taskName)
  {
    navigate().taskList();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains(taskName);
    driverHelper.findElementById("buttonTaskDetail").click();
    driverHelper.clickAndWaitForAjax(By.id("formTaskDetails:openDelegateTask"));
    WebElement selectOneMenu = driverHelper.findElementById("formDelegateTask:selectionOfUser");
    prime().selectOneMenu(selectOneMenu).selectItemByLabel("Test User 1 (user1)");
    driverHelper.clickAndWaitForAjax(By.id("formDelegateTask:saveDelegateTask"));
  }
}
