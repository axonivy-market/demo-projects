package ch.ivyteam.ivy.project.jsf.wf.ui;

import static org.fest.assertions.api.Assertions.assertThat;

import org.junit.Test;
import org.openqa.selenium.By;


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
    driverHelper.openProcessLink("JsfWorkflowUi/13F1D890C62823FF/CaseList.ivp");
    driverHelper.findElementById("caseListForm:categoryFilter_label").click();
    driverHelper.clickAndWaitForAjax(By
            .xpath("//div[@id='caseListForm:categoryFilter_panel']/div/ul/li[@data-label='"
                    + filterForCategory + "']"));
    assertThat(driverHelper.getWebDriver().getPageSource()).contains(filterForCategory);
    driverHelper.findElementById("caseListForm:processFilter_label").click();
    driverHelper.clickAndWaitForAjax(By
            .xpath("//div[@id='caseListForm:processFilter_panel']/div/ul/li[@data-label='" + filterForProcess
                    + "']"));
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
    driverHelper.openProcessLink("JsfWorkflowUi/13F1D890C62823FF/CaseList.ivp");
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
    driverHelper.findElementById("taskListForm:priorityFilter_label").click();
    driverHelper.clickAndWaitForAjax(By
            .xpath("//div[@id='taskListForm:priorityFilter_panel']/div/ul/li[@data-label='LOW']"));
    driverHelper.findElementById("taskListForm:responsibleFilter_label").click();
    driverHelper.clickAndWaitForAjax(By
                    .xpath("//div[@id='taskListForm:responsibleFilter_panel']/div/ul/li[@data-label='Top level role (Everybody)']"));
    driverHelper.getWebDriver().navigate().refresh();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("taskForFilterLow");
    assertThat(driverHelper.getWebDriver().getPageSource()).doesNotContain("taskForFilterPrioHigh");
    openTaskList();
    driverHelper.findElementById("taskListForm:priorityFilter_label").click();
    driverHelper.clickAndWaitForAjax(By
            .xpath("//div[@id='taskListForm:priorityFilter_panel']/div/ul/li[@data-label='HIGH']"));
    driverHelper.findElementById("taskListForm:responsibleFilter_label").click();
    driverHelper.clickAndWaitForAjax(By
                    .xpath("//div[@id='taskListForm:responsibleFilter_panel']/div/ul/li[@data-label='Top level role (Everybody)']"));
    driverHelper.getWebDriver().navigate().refresh();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("taskForFilterPrioHigh");
    assertThat(driverHelper.getWebDriver().getPageSource()).doesNotContain("taskForFilterLow");
    // delegate Task
    openTaskList();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("taskForFilterLow");
    openTaskDetails();
    driverHelper.clickAndWaitForAjax(By.id("formTaskDetails:openDelegateTask"));
    driverHelper.findElementById("formDelegateTask:selectionOfUser_label").click();
    driverHelper.clickAndWaitForAjax(By
                    .xpath("//div[@id='formDelegateTask:selectionOfUser_panel']/div[2]/ul/li[@data-label='Test User 1 (user1)']"));
    driverHelper.clickAndWaitForAjax(By.id("formDelegateTask:saveDelegateTask"));
    // test responsible
    openTaskList();
    driverHelper.findElementById("taskListForm:responsibleFilter_label").click();
    driverHelper.clickAndWaitForAjax(By
                    .xpath("//div[@id='taskListForm:responsibleFilter_panel']/div/ul/li[@data-label='Top level role (Everybody)']"));
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("taskForFilterPrioHigh");
    closeTask();
  }
  
  private void openTaskList()
  {
    driverHelper.openProcessLink("JsfWorkflowUi/13EE5C9EAAA819C8/DefaultTaskListPage.ivp");
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
