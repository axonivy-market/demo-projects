package ch.ivyteam.ivy.server.test;


public class WfNavigator
{
  private IvyWebDriverHelper driverHelper;

  public WfNavigator(IvyWebDriverHelper driverHelper)
  {
    this.driverHelper = driverHelper;
  }

  public void home()
  {
    driverHelper.openProcessLink("JsfWorkflowUi/13EACA2A989BCC3D/DefaultApplicationHomePage.ivp");
  }
  
  public void processList()
  {
    driverHelper.openProcessLink("JsfWorkflowUi/13ED18655F6A1538/DefaultProcessStartListPage.ivp");
  }
  
  public void taskList()
  {
    driverHelper.openProcessLink("JsfWorkflowUi/13EE5C9EAAA819C8/DefaultTaskListPage.ivp");
  }
  
  public void caseList()
  {
    driverHelper.openProcessLink("JsfWorkflowUi/13F1D890C62823FF/CaseList.ivp");
  }
  
  public void taskHistory()
  {
    driverHelper.openProcessLink("JsfWorkflowUi/13F2E007FE178DD4/TaskHistory.ivp");
  }
  
  public void absence()
  {
    driverHelper.openProcessLink("JsfWorkflowUi/13F3C911395912D4/Absence.ivp");
  }
  
  public void substitution()
  {
    driverHelper.openProcessLink("JsfWorkflowUi/13F5720218D18BA2/Substitution.ivp");
  }
  
  public void mailNotificationSettings()
  {
    driverHelper.openProcessLink("JsfWorkflowUi/13F51835BF0FECEF/MailNotificationSettings.ivp");
  }
  
  public void caseAdmin()
  {
    driverHelper.openProcessLink("JsfWorkflowUi/13F1D890C62823FF/CaseListAdmin.ivp");
  }
  
  public void taskAdmin()
  {
    driverHelper.openProcessLink("JsfWorkflowUi/13EE5C9EAAA819C8/TaskListAdmin.ivp");
  }
  
  public void logout()
  {
    driverHelper.openProcessLink("JsfWorkflowUi/13EACA2A989BCC3D/Logout.ivp");
  }
  
  public void loggedInUser()
  {
    driverHelper.openProcessLink("JsfWorkflowUi/1477BA1CD7421F55/LoggedInUser.ivp");
  }
  
  public void grantAdminRights()
  {
    driverHelper.openProcessLink("testWfUi/143F856F4E029A48/SetAdminUser.ivp");
  }
}