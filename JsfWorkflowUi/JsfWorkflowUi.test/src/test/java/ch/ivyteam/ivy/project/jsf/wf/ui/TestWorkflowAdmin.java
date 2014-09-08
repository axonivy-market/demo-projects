package ch.ivyteam.ivy.project.jsf.wf.ui;

import static org.fest.assertions.api.Assertions.assertThat;

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;


public class TestWorkflowAdmin extends BaseJsfWorkflowUiTest
{
  @Test
  public void testWorkflowStatistic() throws Exception
  {
    createTaskWithCategory("caseForFilter1", "case list1", 1, "category1", "process1");
    navigate().caseList();
    checkIfCaseIsInList("category1", "process1");
    createTaskWithCategory("caseForFilter2", "case list2", 2, "category1", "process2");
    navigate().caseList();
    checkIfCaseIsInList("category2", "process2");
    closeTask();
    closeTask();
    navigate().home();
    driverHelper.findElement(By.linkText("Workflow Admin")).click();
    driverHelper.findElementById("workflowStatistic").click();
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("process1");
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("process2");
  }
  
  @Test
  public void testStatisticDetails() throws Exception
  {
    createTaskWithCategory("caseStatisticDetails", "Test if shows details", 2, "category1", "process1");
    closeTask();
    navigate().home();
    driverHelper.findElement(By.linkText("Workflow Admin")).click();
    driverHelper.clickAndWaitForAjax(By.id("workflowStatistic"));
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("category1");
    driverHelper.clickAndWaitForAjax(By.id("linkStatisticDetailMin_0"));
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("Detailed Statistic");
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("Processing time of the tasks");
    navigate().home();
    driverHelper.findElement(By.linkText("Workflow Admin")).click();
    driverHelper.findElementById("workflowStatistic").click();
    driverHelper.clickAndWaitForAjax(By.id("linkStatisticDetailMax_0"));
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("Detailed Statistic");
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("Processing time of the tasks");
  }
  
  @Test
  public void testAverageDetails() throws Exception
  {
    createTaskWithCategory("caseAverageDetails", "Test if shows details", 2, "category1", "process1");
    closeTask();
    navigate().home();
    driverHelper.findElement(By.linkText("Workflow Admin")).click();
    driverHelper.findElementById("workflowStatistic").click();
    driverHelper.clickAndWaitForAjax(By.id("linkStatisticAverage_0"));
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("Average statistic");
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("Processing time of the cases");
  }
	
  @Test
  public void testStatisticFilter() throws Exception
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
    checkIfCaseIsInList("category4", "process4");
    
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

  private void checkIfCategoryFilterIsApplied(String filterForCategory)
  {
    navigate().home();
    driverHelper.findElement(By.linkText("Workflow Admin")).click();
    driverHelper.findElementById("workflowStatistic").click();
    WebElement selectOneMenu = driverHelper.findElementById("caseStatisticForm:categoryFilter");
    prime().selectOneMenu(selectOneMenu).selectItemByLabel(filterForCategory);
    assertThat(driverHelper.getWebDriver().getPageSource()).contains(filterForCategory);
  }
  
  private void checkIfDateFilterIsApplied()
  {
    navigate().home();
    driverHelper.findElement(By.linkText("Workflow Admin")).click();
    driverHelper.findElementById("workflowStatistic").click();
    driverHelper.findElementById("caseStatisticForm:dateToFilter_input").click();
    driverHelper.findElementById("caseStatisticForm:dateToFilter_input").clear();
    driverHelper.findElementById("caseStatisticForm:dateToFilter_input").sendKeys("15.04.2000");
    driverHelper.findElement(By.linkText("1")).click();
    driverHelper.waitForAjax();
  }

  private void doesNotContain(String category, String process)
  {
    assertThat(driverHelper.getWebDriver().findElement(By.id("caseStatisticForm:caseStatisticTable_data")).getText())
            .doesNotContain(category);
    assertThat(driverHelper.getWebDriver().findElement(By.id("caseStatisticForm:caseStatisticTable_data")).getText())
            .doesNotContain(process);
  }

  private void checkIfCaseIsInList(String category, String process)
  {
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("Test Workflow Jsf");
    assertThat(driverHelper.getWebDriver().getPageSource()).contains(category);
    assertThat(driverHelper.getWebDriver().getPageSource()).contains(process);
  }

  private void checkIfTaskIsInList(String name)
  {
    assertThat(driverHelper.getWebDriver().getPageSource()).contains("JSF " + name);
  }
}
