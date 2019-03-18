package ch.ivyteam.ivy.project.jsf.wf.ui;

import static org.fest.assertions.api.Assertions.assertThat;

import org.junit.Test;
import org.openqa.selenium.By;

import com.axonivy.ivy.supplements.primeui.tester.PrimeUi.SelectOneMenu;


public class TestWorkflowAdmin extends BaseJsfWorkflowUiTest
{
  @Test
  public void testWorkflowStatistic() throws Exception
  {
    createTaskWithCategory("caseForFilter1", "case list1", 1, "category1", "process1");
    navigate().caseList();
    checkIfCaseIsInList("category1");
    createTaskWithCategory("caseForFilter2", "case list2", 2, "category2", "process2");
    navigate().caseList();
    checkIfCaseIsInList("category2");
    closeTask();
    closeTask();
    openStatistics();
    awaitTextToBePresentIn(By.id("caseStatisticForm:caseStatisticTable"), "category1");
    awaitTextToBePresentIn(By.id("caseStatisticForm:caseStatisticTable"), "category2");
  }
  
  @Test
  public void testStatisticDetails() throws Exception
  {
    createTaskWithCategory("caseStatisticDetails", "Test if shows details", 2, "category1", "process1");
    closeTask();
    openStatistics();
    awaitTextToBePresentIn(By.id("caseStatisticForm:caseStatisticTable"), "category1");
    awaitToBeClickable("linkStatisticDetailMin_0").click();
    awaitTextToBePresentIn(By.xpath("//*[@id='mainArea']/h2"), "Detailed Statistic");
    awaitTextToBePresentIn(By.id("formChartTasks:chartForTasks"), "Processing time of the tasks");
    openStatistics();
    awaitToBeClickable("linkStatisticDetailMax_0").click();
    awaitTextToBePresentIn(By.xpath("//*[@id='mainArea']/h2"), "Detailed Statistic");
    awaitTextToBePresentIn(By.id("formChartTasks:chartForTasks"), "Processing time of the tasks");
  }
  
  @Test
  public void testAverageDetails() throws Exception
  {
    createTaskWithCategory("caseAverageDetails", "Test if shows details", 2, "category1", "process1");
    closeTask();
    openStatistics();
    awaitToBeClickable("linkStatisticAverage_0").click();
    awaitTextToBePresentIn(By.xpath("//*[@id='mainArea']/h2"), "Average statistic");
  }
	
  @Test
  public void testStatisticFilter() throws Exception
  {
    createTaskWithCategory("caseForFilter1", "case list1", 1, "category1", "process1");
    navigate().caseList();
    checkIfCaseIsInList("category1");
    
    createTaskWithCategory("caseForFilter2", "case list2", 2, "category2", "process2");
    navigate().caseList();
    checkIfCaseIsInList("category2");
    
    createTaskWithCategory("caseForFilter3", "case list3", 3, "category3", "process3");
    navigate().caseList();
    checkIfCaseIsInList("category3");
    closeTask();
    closeTask();
    closeTask();
    checkIfCategoryFilterIsApplied("category1");
    doesNotContain("category3", "process3");
    checkIfCategoryFilterIsApplied("category2");
    doesNotContain("category1", "process1");
    checkIfCategoryFilterIsApplied("category3");
    doesNotContain("category2", "process2");
    checkIfDateFilterIsApplied();
    doesNotContain("category1", "process1");
  }
  
  @Test
  public void testloggedInUser() throws Exception
  {
    navigate().loggedInUser();
    assertThat(driverHelper.getWebDriver().findElement(By.id("LoggedInUserForm:userTable")).getText().contains("Administrator"));
  }

  @Test
  public void testCaseAdmin() throws Exception
  {
    login("user1", "user1");
    createTaskWithCategory("caseForFilter4", "case list4", 1, "category4", "process4");
   
    login(WEB_TEST_SERVER_ADMIN_USER, WEB_TEST_SERVER_ADMIN_PASSWORD);
    navigate().caseAdmin();
    checkIfCaseIsInList("category4");
    
    login("user1", "user1");
    closeTask();
  }
  
  @Test
  public void testTaskAdmin() throws Exception
  {
    login("user1", "user1");
    createTaskWithCategory("taskAdmin", "task list5", 1, "category5", "process5");
   
    login(WEB_TEST_SERVER_ADMIN_USER, WEB_TEST_SERVER_ADMIN_PASSWORD);
    navigate().taskAdmin();
    checkIfTaskIsInList("taskAdmin");
    
    login("user1", "user1");
    closeTask();
    
    login(WEB_TEST_SERVER_ADMIN_USER, WEB_TEST_SERVER_ADMIN_PASSWORD);
    navigate().taskAdmin();
    checkIfTaskIsInList("taskAdmin");
  }
  
  private void openStatistics()
  {
    navigate().home();
    awaitToBeClickable("menuform:workflowAdminDropDown").click();
    awaitToBeClickable("menuform:workflowStatistic").click();
  }

  private void checkIfCategoryFilterIsApplied(String filterForCategory)
  {
    openStatistics();
    SelectOneMenu menu = prime().selectOne(By.id("caseStatisticForm:categoryFilter"));
    menu.selectItemByLabel(filterForCategory);
    assertThat(driverHelper.getWebDriver().getPageSource()).contains(filterForCategory);
  }
  
  private void checkIfDateFilterIsApplied()
  {
    openStatistics();
    awaitToBeClickable("caseStatisticForm:dateToFilter_input").click();
    awaitToBeClickable("caseStatisticForm:dateToFilter_input").clear();
    awaitToBeClickable("caseStatisticForm:dateToFilter_input").sendKeys("15.04.2000");
    awaitToBeClickable(By.linkText("1")).click();
    driverHelper.waitForAjax();
  }

  private void doesNotContain(String category, String process)
  {
    assertThat(driverHelper.getWebDriver().findElement(By.id("caseStatisticForm:caseStatisticTable_data")).getText())
            .doesNotContain(category);
    assertThat(driverHelper.getWebDriver().findElement(By.id("caseStatisticForm:caseStatisticTable_data")).getText())
            .doesNotContain(process);
  }

  private void checkIfCaseIsInList(String category)
  {
    String tableId = "caseListComponent:caseListForm:caseTable";
    
    awaitTextToBePresentIn(By.id(tableId), "Test Workflow Jsf");
    awaitTextToBePresentIn(By.id(tableId), category);
  }

  private void checkIfTaskIsInList(String name)
  {
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("JSF " + name);
  }
}
