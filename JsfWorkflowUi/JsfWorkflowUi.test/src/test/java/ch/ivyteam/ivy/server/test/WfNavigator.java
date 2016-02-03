package ch.ivyteam.ivy.server.test;

import org.openqa.selenium.WebDriver;


public class WfNavigator
{
  private WebDriver driver;

  public WfNavigator(WebDriver driver)
  {
    this.driver = driver;
  }

  public void openProcessLink(String processLink)
  {
    driver.get(ServerControl.getProcessStartLink(processLink));
  }

  public void home()
  {
    openProcessLink("JsfWorkflowUi/13EACA2A989BCC3D/DefaultApplicationHomePage.ivp");
  }
  
  public void processList()
  {
    openProcessLink("JsfWorkflowUi/13EACA2A989BCC3D/DefaultProcessStartListPage.ivp");
  }
  
  public void taskList()
  {
    openProcessLink("JsfWorkflowUi/13EACA2A989BCC3D/DefaultTaskListPage.ivp");
  }

  public void caseList()
  {
    openProcessLink("JsfWorkflowUi/13F1D890C62823FF/CaseListUser.ivp");
  }
  
  public void taskHistory()
  {
    openProcessLink("JsfWorkflowUi/13F2E007FE178DD4/TaskHistory.ivp");
  }
  
  public void absence()
  {
    openProcessLink("JsfWorkflowUi/13F3C911395912D4/Absence.ivp");
  }
  
  public void substitution()
  {
    openProcessLink("JsfWorkflowUi/13F5720218D18BA2/Substitution.ivp");
  }
  
  public void mailNotificationSettings()
  {
    openProcessLink("JsfWorkflowUi/13F51835BF0FECEF/MailNotificationSettings.ivp");
  }
  
  public void caseAdmin()
  {
    openProcessLink("JsfWorkflowUi/1518C1BDAE6D978C/CaseListAdmin.ivp");
  }
  
  public void taskAdmin()
  {
    openProcessLink("JsfWorkflowUi/1518C6953618322C/TaskListAdmin.ivp");
  }
  
  public void logout()
  {
    openProcessLink("JsfWorkflowUi/13EACA2A989BCC3D/Logout.ivp");
  }
  
  public void loggedInUser()
  {
    openProcessLink("JsfWorkflowUi/1477BA1CD7421F55/LoggedInUser.ivp");
  }
  
  public void grantAdminRights()
  {
    openProcessLink("testWfUi/143F856F4E029A48/SetAdminUser.ivp");
  }
}