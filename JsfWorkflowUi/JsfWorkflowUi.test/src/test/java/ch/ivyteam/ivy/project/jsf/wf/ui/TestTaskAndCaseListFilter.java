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
    WebElement selectOneRadio = driverHelper.findElementById("caseListForm");
    prime().selectOneRadio(selectOneRadio).selectItemById("caseListForm:caseOption");
  }

  private void checkIfFilterIsApplied(String filterForCategory, String filterForProcess)
  {
    navigate().caseList();
    WebElement selectOneMenu = driverHelper.findElementById("caseListForm:categoryFilter");
    prime().selectOneMenu(selectOneMenu).selectItemByLabel(filterForCategory);
    assertThat(driverHelper.getWebDriver().getPageSource()).contains(filterForCategory);
    selectOneMenu = driverHelper.findElementById("caseListForm:processFilter");
    prime().selectOneMenu(selectOneMenu).selectItemByLabel(filterForProcess);
    assertThat(driverHelper.getWebDriver().getPageSource()).contains(filterForProcess);
  }

  private void doesNotContain(String category, String process)
  {
    assertThat(driverHelper.getWebDriver().findElement(By.id("caseListForm:caseTable_data")).getText())
            .doesNotContain(category);
    assertThat(driverHelper.getWebDriver().findElement(By.id("caseListForm:caseTable_data")).getText())
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
    WebElement selectOneMenu = driverHelper.findElementById("taskListForm:priorityFilter");
    prime().selectOneMenu(selectOneMenu).selectItemByLabel("LOW");
    selectOneMenu = driverHelper.findElementById("taskListForm:responsibleFilter");
    prime().selectOneMenu(selectOneMenu).selectItemByLabel("Top level role (Everybody)");
    driverHelper.getWebDriver().navigate().refresh();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("taskForFilterLow");
    assertThat(driverHelper.getWebDriver().getPageSource()).doesNotContain("taskForFilterPrioHigh");
    
    navigate().taskList();
    selectOneMenu = driverHelper.findElementById("taskListForm:priorityFilter");
    prime().selectOneMenu(selectOneMenu).selectItemByLabel("HIGH");
    selectOneMenu = driverHelper.findElementById("taskListForm:responsibleFilter");
    prime().selectOneMenu(selectOneMenu).selectItemByLabel("Top level role (Everybody)");
    driverHelper.getWebDriver().navigate().refresh();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("taskForFilterPrioHigh");
    assertThat(driverHelper.getWebDriver().getPageSource()).doesNotContain("taskForFilterLow");
    
    // delegate Task
    navigate().taskList();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("taskForFilterLow");
    driverHelper.findElementById("buttonTaskDetail").click();
    driverHelper.clickAndWaitForAjax(By.id("formTaskDetails:openDelegateTask"));
    selectOneMenu = driverHelper.findElementById("formDelegateTask:selectionOfUser");
    prime().selectOneMenu(selectOneMenu).selectItemByLabel("Test User 1 (user1)");
    driverHelper.clickAndWaitForAjax(By.id("formDelegateTask:saveDelegateTask"));
    
    // test responsible
    navigate().taskList();
    selectOneMenu = driverHelper.findElementById("taskListForm:responsibleFilter");
    prime().selectOneMenu(selectOneMenu).selectItemByLabel("Top level role (Everybody)");
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
    WebElement selectOneMenu = driverHelper.findElementById("taskListForm:priorityFilter");
    prime().selectOneMenu(selectOneMenu).selectItemByLabel("HIGH");
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("test");

    driverHelper.openProcessLink("testWfUi/1466BC6311E70117/DestroyTasks.ivp");
  }
}
