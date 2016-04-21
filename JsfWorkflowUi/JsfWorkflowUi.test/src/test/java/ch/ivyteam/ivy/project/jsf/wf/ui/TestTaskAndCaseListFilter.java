package ch.ivyteam.ivy.project.jsf.wf.ui;

import static org.fest.assertions.api.Assertions.assertThat;

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.StaleElementReferenceException;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;

import com.axonivy.ivy.supplements.primeui.tester.PrimeUi.SelectOneMenu;
import com.axonivy.ivy.supplements.primeui.tester.PrimeUi.Table;

public class TestTaskAndCaseListFilter extends BaseJsfWorkflowUiTest
{
  @Test
  public void testCaseFilter() throws Exception
  {
    createTaskWithCategory("something4", "this tests the search", 1, "category5", "random Process 8");
    createHtmlTask("new Case with Html","random description");
	  
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
    
    navigate().caseList();
    searchDataTable("caseListComponent:caseListForm:SearchTxt", "Ht ml Ca se A");
    Table dataTable = prime().table(By.id("caseListComponent:caseListForm:caseTable"));
    dataTable.firstRowContains("A Html Case");
    closeHtmlTask();
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
    
    switchInvolvedWorkflowList();
    checkIfCaseIsInList("category4", "process4");
    
    login("user1", "user1");
    closeTask();
  }

  private void checkIfCaseIsInList(final String category, String process)
  {
    checkIfCaseIsInListInteral(category);
    checkIfCaseIsInListInteral(process);
  }

  private void checkIfCaseIsInListInteral(final String checkAttribute)
  {
    await(new ExpectedCondition<Boolean>()
      {
        @Override
        public Boolean apply(WebDriver driver)
        {
          try
          {
            return driverHelper.getWebDriver().getPageSource().contains(checkAttribute);
          }
          catch (StaleElementReferenceException ex)
          {
            return null;
          }
        }
      });
  }

  private void switchInvolvedWorkflowList()
  {
    WebElement selectOneRadio = driverHelper.findElementById("caseListComponent:caseListForm");
    prime().selectOneRadio(selectOneRadio).selectItemByValue("involvedCases");
  }

  private void checkIfFilterIsApplied(String filterForCategory, String filterForProcess)
  {
    navigate().caseList();
    SelectOneMenu menu = prime().selectOne(By.id("caseListComponent:caseListForm:categoryFilter"));
    menu.selectItemByLabel(filterForCategory);
    assertThat(driverHelper.getWebDriver().getPageSource()).contains(filterForCategory);
    menu = prime().selectOne(By.id("caseListComponent:caseListForm:processFilter"));
    menu.selectItemByLabel(filterForProcess);
    assertThat(driverHelper.getWebDriver().getPageSource()).contains(filterForProcess);
  }

  private void doesNotContain(String category, String process)
  {
    await(ExpectedConditions.not(ExpectedConditions.textToBePresentInElementLocated(
            By.id("caseListComponent:caseListForm:caseTable_data"), category)));
    await(ExpectedConditions.not(ExpectedConditions.textToBePresentInElementLocated(
            By.id("caseListComponent:caseListForm:caseTable_data"), process)));
  }

  @Test
  public void testTaskFilter() throws Exception
  {
    createTask("taskForFilterPrioHigh", "task list", 1);
    navigate().taskList();
    await(ExpectedConditions.textToBePresentInElementLocated(
            By.id("taskListComponent:taskListForm:taskTable_data"), "taskForFilterPrioHigh"));

    createTask("taskForFilterLow", "task list", 3);
    navigate().taskList();
    await(ExpectedConditions.textToBePresentInElementLocated(
            By.id("taskListComponent:taskListForm:taskTable_data"), "taskForFilterLow"));

    // test prio
    navigate().taskList();
    SelectOneMenu menu = prime().selectOne(By.id("taskListComponent:taskListForm:priorityFilter"));
    menu.selectItemByLabel("LOW");
    menu = prime().selectOne(By.id("taskListComponent:taskListForm:responsibleFilter"));
    menu.selectItemByLabel("Top level role");
    driverHelper.getWebDriver().navigate().refresh();
    await(ExpectedConditions.textToBePresentInElementLocated(
            By.id("taskListComponent:taskListForm:taskTable_data"), "taskForFilterLow"));
    await(ExpectedConditions.not(ExpectedConditions.textToBePresentInElementLocated(
            By.id("taskListComponent:taskListForm:taskTable_data"), "taskForFilterPrioHigh")));
    
    navigate().taskList();
    menu = prime().selectOne(By.id("taskListComponent:taskListForm:priorityFilter"));
    menu.selectItemByLabel("HIGH");
    menu = prime().selectOne(By.id("taskListComponent:taskListForm:responsibleFilter"));
    menu.selectItemByLabel("Top level role");
    driverHelper.getWebDriver().navigate().refresh();
    await(ExpectedConditions.textToBePresentInElementLocated(
            By.id("taskListComponent:taskListForm:taskTable_data"), "taskForFilterPrioHigh"));
    await(ExpectedConditions.not(ExpectedConditions.textToBePresentInElementLocated(
            By.id("taskListComponent:taskListForm:taskTable_data"), "taskForFilterLow")));
    
    delegateTaskToUser1("taskForFilterLow");
    
    // test responsible
    navigate().taskList();
    menu = prime().selectOne(By.id("taskListComponent:taskListForm:responsibleFilter"));
    menu.selectItemByLabel("Top level role");
    await(ExpectedConditions.textToBePresentInElementLocated(
            By.id("taskListComponent:taskListForm:taskTable_data"), "taskForFilterPrioHigh"));
    closeTask();

    createTaskWithCategory("new Task", "this is a new Task", 2, "random category", "whatever process");
    navigate().taskList();
    await(ExpectedConditions.textToBePresentInElementLocated(By.id("taskListComponent:taskListForm:taskTable_data"), "new Task"));
    
    // test searchbar
    navigate().taskList();
    searchDataTable("taskListComponent:taskListForm:SearchTxt", "ne w T a sk");
    Table dataTable = prime().table(By.id("taskListComponent:taskListForm:taskTable"));
    dataTable.firstRowContains("JSF new Task");
    closeTask();
  }

  @Test
  public void testFilterWithPagination() throws Exception
  {
    for (int tasksCount = 0; tasksCount < 50; tasksCount++)
    {
      driverHelper.openProcessLink("testWfUi/145A7190339D94FD/start.ivp");
    }
    createTask("taskHighForFilterPagination", "task pagination", 1);

    navigate().taskList();
    driverHelper.clickAndWaitForAjax(By.cssSelector("span.ui-icon.ui-icon-seek-next"));
    SelectOneMenu menu = prime().selectOne(By.id("taskListComponent:taskListForm:priorityFilter"));
    menu.selectItemByLabel("HIGH");
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("test");

    driverHelper.openProcessLink("testWfUi/1466BC6311E70117/DestroyTasks.ivp");
  }

  @Test
  public void testTaskAdminResponsibleFilter() throws Exception
  {
    String taskHighResponsibleFilter = "taskAdminForResponsibleFilterHigh";
    String taskLowResponsibleFilter = "taskAdminForResponsibleFilterLow";
    String tableBodyId = "taskListComponent:taskListForm:taskTable_data";
    String filterId = "taskListComponent:taskListForm:responsibleFilter";

    createTask(taskHighResponsibleFilter, "task list", 1);
    navigate().taskAdmin();
    Table dataTable = prime().table(By.id(tableBodyId));
    dataTable.contains(taskHighResponsibleFilter);

    createTask(taskLowResponsibleFilter, "task list", 3);
    navigate().taskAdmin();
    dataTable.contains(taskLowResponsibleFilter);

    delegateTaskToUser1(taskLowResponsibleFilter);

    filterCheckDataTable(taskLowResponsibleFilter, taskHighResponsibleFilter, filterId, dataTable, "Top level role");

    filterCheckDataTable(taskHighResponsibleFilter, taskLowResponsibleFilter, filterId, dataTable, "Test User 1 (user1)");
  }

  private void delegateTaskToUser1(String taskName)
  {
    navigate().taskList();
    Table dataTable = prime().table(By.id("taskListComponent:taskListForm:taskTable_data"));
    dataTable.contains(taskName);
    
    driverHelper.findElementById("buttonTaskDetail").click();
    driverHelper.clickAndWaitForAjax(By
            .id("formTaskDetails:openDelegateTask"));
    SelectOneMenu menu = prime().selectOne(By.id("formDelegateTask:selectionOfUser"));
    menu.selectItemByLabel(
            "Test User 1 (user1)");
    driverHelper.clickAndWaitForAjax(By
            .id("formDelegateTask:saveDelegateTask"));
  }

  @Test
  public void testTaskAdminStatusFilter() throws Exception
  {
    String taskHighPrio = "taskAdminStatusFilterPrioHigh";
    String taskLowPrio = "taskAdminStatusFilterPrioLow";
    String tableBodyId = "taskListComponent:taskListForm:taskTable_data";
    String filterId = "taskListComponent:taskListForm:stateFilter";
    
    createTask(taskHighPrio, "task list", 1);
    navigate().taskAdmin();
    Table dataTable = prime().table(By.id(tableBodyId));
    dataTable.contains(taskHighPrio);

    createTask(taskLowPrio, "task list", 3);
    navigate().taskAdmin();
    dataTable.contains(taskLowPrio);

    navigate().taskList();
    driverHelper.findElementById("taskLinkRow_0").click();

    filterCheckDataTable(taskLowPrio, taskHighPrio, filterId, dataTable, "SUSPENDED");
    
    filterCheckDataTable(taskHighPrio, taskLowPrio, filterId, dataTable, "RESUMED");
  }
  
  private void filterCheckDataTable(String containsNot, String contains,
          String filterId, Table dataTable, String filterText)
  {
    navigate().taskAdmin();
    try
    {
      filterCheckDataTableInteral(containsNot, contains, filterId, dataTable, filterText);
    }
    catch (Exception ex)
    {
     ((TakesScreenshot) driverHelper.getWebDriver()).getScreenshotAs(OutputType.FILE);
    }
  }

  private void filterCheckDataTableInteral(String containsNot, String contains, String filterId,
          Table dataTable, String filterText)
  {
    filterDataTable(filterId, filterText);
    dataTable.contains(contains);
    dataTable.containsNot(containsNot);
  }

  private void filterDataTable(String filterId, String selectLabel)
  {
      filterDataTableInternal(filterId, selectLabel);
  }

  private void filterDataTableInternal(String filterId, String selectLabel)
  {
    SelectOneMenu menu = prime().selectOne(By.id(filterId));
    menu.selectItemByLabel(selectLabel);
    menu.waitForLabel(selectLabel);
  }
}
