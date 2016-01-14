package ch.ivyteam.ivy.project.jsf.wf.ui;

import org.junit.Test;
import org.openqa.selenium.By;

import ch.ivyteam.ivy.server.test.prime.PrimeFacesWidgetHelper.Table;

public class TestHistory extends BaseJsfWorkflowUiTest
{
  @Test
  public void testCaseList() throws Exception
  {
    createTask("case", "history", 1);
    // Workflow my cases (has the same view as admin cases)
    navigate().caseList();
    
    Table dataTable = prime().table(By.id("caseListComponent:caseListForm:caseTable"));
    dataTable.contains("Test Workflow Jsf");
    dataTable.containsNot("Workflow administrator");
    // Workflow admin cases (has the same view as my cases)
    navigate().caseAdmin();
    dataTable.contains("Test Workflow Jsf");
    closeTask();
  }

  @Test
  public void testTaskHistory() throws Exception
  {
    createTask("task", "history", 3);
    closeTask();
    navigate().taskHistory();
    
    Table dataTable = prime().table(By.id("taskHistoryForm:taskHistoryTable"));
    dataTable.contains("JSF task");
    dataTable.contains("Priority LOW");

    createTask("something4", "a description", 3);
    closeTask();
    navigate().taskHistory();
    searchDataTable("taskHistoryForm:SearchTxt", "some th in 4");
    dataTable.firstRowContains("JSF something4");
  }
}
