package ch.ivyteam.ivy.project.jsf.wf.ui;

import static org.fest.assertions.api.Assertions.assertThat;

import org.junit.Test;


public class TestHistory extends BaseJsfWorkflowUiTest
{
  @Test
  public void testCaseList() throws Exception
  {
    createTask("case","history", 1);
    // Workflow my cases (has the same view as admin cases)
    navigate().caseList();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("Test Workflow Jsf");
    assertThat(driverHelper.getWebDriver().getPageSource()).doesNotContain("Workflow administrator");
    // Workflow admin cases (has the same view as my cases)
    navigate().caseAdmin();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("Test Workflow Jsf");
    closeTask();
  }
  
  @Test
  public void testTaskHistory() throws Exception
  {
    createTask("task","history", 3);
    closeTask();
    navigate().taskHistory();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("JSF task");
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("Priority LOW");
    
    createTask("something4", "a description", 3);
    closeTask();
    navigate().taskHistory();
    searchDataTable("taskHistoryForm:SearchTxt", "some th in 4");
    firstRowContains("taskHistoryForm:taskHistoryTable", "JSF something4");
  }
}
