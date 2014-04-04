package ch.ivyteam.ivy.project.jsf.wf.ui;

import static org.fest.assertions.api.Assertions.assertThat;

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;


public class TestFilter extends BaseJsfWorkflowUiTest
{
  @Test
  public void testCaseFilter() throws Exception
  {
    createTaskWithCategory("caseForFilter1", "case list1", 1, "category1", "process1");
    checkIsCaseCreated("category1", "process1");
    createTaskWithCategory("caseForFilter2", "case list2", 2, "category2", "process2");
    checkIsCaseCreated("category2", "process2");
    createTaskWithCategory("caseForFilter3", "case list3", 3, "category3", "process3");
    checkIsCaseCreated("category3", "process3");
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

  private void checkIfFilterIsApplied(String filterForCategory, String filterForProcess)
  {
    navigate().caseList();
    WebElement selectMenu = driverHelper.findElementById("caseListForm:categoryFilter");
    prime().selectOne(selectMenu).selectItemByLabel(filterForCategory);
    assertThat(driverHelper.getWebDriver().getPageSource()).contains(filterForCategory);
    selectMenu = driverHelper.findElementById("caseListForm:processFilter");
    prime().selectOne(selectMenu).selectItemByLabel(filterForProcess);
    assertThat(driverHelper.getWebDriver().getPageSource()).contains(filterForProcess);
  }

  private void doesNotContain(String category, String process)
  {
    assertThat(driverHelper.getWebDriver().findElement(By.id("caseListForm:caseTable_data")).getText())
            .doesNotContain(category);
    assertThat(driverHelper.getWebDriver().findElement(By.id("caseListForm:caseTable_data")).getText())
            .doesNotContain(process);
  }

  private void checkIsCaseCreated(String category, String process)
  {
    navigate().caseList();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("Test Workflow Jsf");
    assertThat(driverHelper.getWebDriver().getPageSource()).contains(category);
    assertThat(driverHelper.getWebDriver().getPageSource()).contains(process);
  }

  @Test
  public void testTaskFilter() throws Exception
  {
    createTask("taskForFilterPrioHigh", "task list", 1);
    openTaskList();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("taskForFilterPrioHigh");
    createTask("taskForFilterLow", "task list", 3);
    
    openTaskList();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("taskForFilterLow");
    // test prio
    openTaskList();
    WebElement selectMenu = driverHelper.findElementById("taskListForm:priorityFilter");
    prime().selectOne(selectMenu).selectItemByLabel("LOW");
    selectMenu = driverHelper.findElementById("taskListForm:responsibleFilter");
    prime().selectOne(selectMenu).selectItemByLabel("Top level role (Everybody)");
    driverHelper.getWebDriver().navigate().refresh();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("taskForFilterLow");
    assertThat(driverHelper.getWebDriver().getPageSource()).doesNotContain("taskForFilterPrioHigh");
    
    openTaskList();
    selectMenu = driverHelper.findElementById("taskListForm:priorityFilter");
    prime().selectOne(selectMenu).selectItemByLabel("HIGH");
    selectMenu = driverHelper.findElementById("taskListForm:responsibleFilter");
    prime().selectOne(selectMenu).selectItemByLabel("Top level role (Everybody)");
    driverHelper.getWebDriver().navigate().refresh();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("taskForFilterPrioHigh");
    assertThat(driverHelper.getWebDriver().getPageSource()).doesNotContain("taskForFilterLow");
    
    // delegate Task
    openTaskList();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("taskForFilterLow");
    openTaskDetails();
    driverHelper.clickAndWaitForAjax(By.id("formTaskDetails:openDelegateTask"));
    selectMenu = driverHelper.findElementById("formDelegateTask:selectionOfUser");
    prime().selectOne(selectMenu).selectItemByLabel("Test User 1 (user1)");
    driverHelper.clickAndWaitForAjax(By.id("formDelegateTask:saveDelegateTask"));
    
    // test responsible
    openTaskList();
    selectMenu = driverHelper.findElementById("taskListForm:responsibleFilter");
    prime().selectOne(selectMenu).selectItemByLabel("Top level role (Everybody)");
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("taskForFilterPrioHigh");
    closeTask();
  }
  
  private void openTaskList()
  {
    navigate().taskList();
    assertMainLayoutUnitContains("Task List");
  }

  private void openTaskDetails()
  {
    driverHelper.findElementById("buttonTaskDetail").click();
    assertMainLayoutUnitContains("Task Details");
  }

  private void assertMainLayoutUnitContains(String title)
  {
    driverHelper.assertAjaxElementContains(By.id("mainLayoutUnit"), title);
  }
}
