package ch.ivyteam.ivy.project.jsf.wf.ui;

import org.junit.Test;
import org.openqa.selenium.By;


public class TestTemplate extends BaseJsfWorkflowUiTest
{
  @Test
  public void testLogoutLogin() throws Exception
  {
    navigate().home();
    awaitToBeClickable("logoutButton").click();
    driverHelper.assertAjaxElementContains(By.id("mainArea"), "Workflow login");
    login("user1", "user1");
    driverHelper.assertAjaxElementContains(By.id("message"), "Welcome");
    driverHelper.assertAjaxElementContains(By.id("message"), "user1");
  }
}
