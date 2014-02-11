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
    driverHelper.openProcessLink("JsfWorkflowUi/13F1D890C62823FF/CaseList.ivp");
    driverHelper.findElementById("caseList").click();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("Test Workflow Jsf");
    assertThat(driverHelper.getWebDriver().getPageSource()).doesNotContain("Workflow administrator");
    // Workflow admin cases (has the same view as my cases)
    driverHelper.openProcessLink("JsfWorkflowUi/13F1D890C62823FF/CaseListAdmin.ivp");
    driverHelper.findElementById("caseListAdmin").click();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("Test Workflow Jsf");
    closeTask();
  }
  
  @Test
  public void testTaskHistory() throws Exception
  {
    createTask("task","history", 3);
    closeTask();
    driverHelper.openProcessLink("JsfWorkflowUi/13F2E007FE178DD4/TaskHistory.ivp");
    driverHelper.findElementById("taskHistory").click();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("JSF task");
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("Prio LOW");
  }
}
