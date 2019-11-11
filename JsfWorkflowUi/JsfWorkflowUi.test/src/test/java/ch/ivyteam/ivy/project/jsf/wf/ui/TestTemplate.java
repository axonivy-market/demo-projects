package ch.ivyteam.ivy.project.jsf.wf.ui;

import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;

import ch.ivyteam.ivy.server.test.IvyWebDriverHelper;
import ch.ivyteam.ivy.server.test.WfNavigator;


public class TestTemplate extends BaseJsfWorkflowUiTest
{
  @Test
  public void testLogoutLogin() throws Exception
  {
    WfNavigator.home(driver);
    awaitToBeClickable(By.xpath("/html/body/div[1]/div[2]/div[1]/div/ul/li[1]/a")).click();
    awaitToBeClickable(By.xpath("/html/body/div[1]/div[2]/div[1]/div/ul/li[1]/ul/li[2]/a")).click();
    IvyWebDriverHelper.assertAjaxElementContains(driver, By.id("loginForm"), "Sign-in to JSFWorkflowUI");
    login("user1", "user1");
    IvyWebDriverHelper.assertAjaxElementContains(driver, By.id("mainArea"), "Logged in as: user1");
  }
}
