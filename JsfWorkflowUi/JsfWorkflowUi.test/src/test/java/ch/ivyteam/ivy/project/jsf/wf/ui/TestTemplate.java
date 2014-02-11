package ch.ivyteam.ivy.project.jsf.wf.ui;

import org.junit.Test;
import org.openqa.selenium.By;


public class TestTemplate extends BaseJsfWorkflowUiTest
{
  @Test
  public void testLogoutLogin() throws Exception
  {
    driverHelper.openProcessLink("JsfWorkflowUi/13EACA2A989BCC3D/DefaultApplicationHomePage.ivp");
    driverHelper.findElement(By.id("logoutButton")).click();
    driverHelper.assertAjaxElementContains(By.id("mainLoginLayoutUnit"), "Workflow login");
    login("user1", "user1");
    driverHelper.assertAjaxElementContains(By.id("layoutHeaderLoggedInAs"), "Logged in as: user1");
  }
}
