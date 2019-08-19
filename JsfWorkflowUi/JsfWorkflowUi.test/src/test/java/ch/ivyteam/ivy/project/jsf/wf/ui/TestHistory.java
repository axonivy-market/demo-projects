package ch.ivyteam.ivy.project.jsf.wf.ui;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;

import com.axonivy.ivy.supplements.primeui.tester.PrimeUi.Table;

import ch.ivyteam.ivy.server.test.WfNavigator;

public class TestHistory extends BaseJsfWorkflowUiTest
{
  @Test
  public void testCaseList() throws Exception
  {
    createTask("case", "history", 1);
    // Workflow my cases (has the same view as admin cases)
    WfNavigator.caseList(driver);
    
    Table dataTable = prime().table(By.id("caseListComponent:caseListForm:caseTable"));
    dataTable.contains("Test Workflow Jsf");
    dataTable.containsNot("Workflow administrator");
    // Workflow admin cases (has the same view as my cases)
    WfNavigator.caseAdmin(driver);
    dataTable.contains("Test Workflow Jsf");
    closeTask();
  }

  @Test
  public void testTaskHistory() throws Exception
  {
    createTask("task", "history", 3);
    closeTask();
    WfNavigator.taskHistory(driver);
    
    Table dataTable = prime().table(By.id("taskHistoryForm:taskHistoryTable"));
    dataTable.contains("JSF task");
    assertThat(driver.getPageSource()).contains("Priority LOW");

    createTask("something4", "a description", 3);
    closeTask();
    WfNavigator.taskHistory(driver);
    searchDataTable("taskHistoryForm:SearchTxt", "some th in 4");
    dataTable.firstRowContains("JSF something4");
  }
}
