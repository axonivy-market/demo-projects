package ch.ivyteam.ivy.server.test;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import com.axonivy.ivy.supplements.primeui.tester.PrimeUi;

public class WfNavigator
{

  public static void openProcessLink(WebDriver driver, String processLink)
  {
    driver.get(ServerControl.getProcessStartLink(processLink));
  }

  public static void home(WebDriver driver)
  {
    openProcessLink(driver, "JsfWorkflowUi/13EACA2A989BCC3D/DefaultApplicationHomePage.ivp");
  }

  public static void processList(WebDriver driver)
  {
    openProcessLink(driver, "JsfWorkflowUi/13EACA2A989BCC3D/DefaultProcessStartListPage.ivp");
  }

  public static void taskList(WebDriver driver)
  {
    openProcessLink(driver, "JsfWorkflowUi/13EACA2A989BCC3D/DefaultTaskListPage.ivp");
  }

  public static void caseList(WebDriver driver)
  {
    openProcessLink(driver, "JsfWorkflowUi/13F1D890C62823FF/CaseListUser.ivp");
  }

  public static void taskHistory(WebDriver driver)
  {
    openProcessLink(driver, "JsfWorkflowUi/13F2E007FE178DD4/TaskHistory.ivp");
  }

  public static void absence(WebDriver driver)
  {
    openProcessLink(driver, "JsfWorkflowUi/13F3C911395912D4/Absence.ivp");
  }

  public static void substitution(WebDriver driver)
  {
    openProcessLink(driver, "JsfWorkflowUi/13F5720218D18BA2/Substitution.ivp");
  }

  public static void mailNotificationSettings(WebDriver driver)
  {
    openProcessLink(driver, "JsfWorkflowUi/13F51835BF0FECEF/MailNotificationSettings.ivp");
  }

  public static void caseAdmin(WebDriver driver)
  {
    openProcessLink(driver, "JsfWorkflowUi/1518C1BDAE6D978C/CaseListAdmin.ivp");
  }

  public static void taskAdmin(WebDriver driver)
  {
    openProcessLink(driver, "JsfWorkflowUi/1518C6953618322C/TaskListAdmin.ivp");

    PrimeUi prime = new PrimeUi(driver);
    prime.selectOne(By.id("taskListComponent:taskListForm:responsibleFilter")).waitForLabel("All");
    prime.selectOne(By.id("taskListComponent:taskListForm:stateFilter")).waitForLabel("All");
  }

  public static void logout(WebDriver driver)
  {
    openProcessLink(driver, "JsfWorkflowUi/13EACA2A989BCC3D/Logout.ivp");
  }

  public static void loggedInUser(WebDriver driver)
  {
    openProcessLink(driver, "JsfWorkflowUi/1477BA1CD7421F55/LoggedInUser.ivp");
  }

  public static void grantAdminRights(WebDriver driver)
  {
    openProcessLink(driver, "testWfUi/143F856F4E029A48/SetAdminUser.ivp");
  }
}