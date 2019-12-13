package workflow.businessdata;

import static com.codeborne.selenide.Condition.enabled;
import static com.codeborne.selenide.Condition.exactText;
import static com.codeborne.selenide.Condition.exactValue;
import static com.codeborne.selenide.Condition.text;
import static com.codeborne.selenide.Condition.visible;
import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.$$;

import org.junit.jupiter.api.Test;

import com.codeborne.selenide.Selenide;

import test.web.BaseWebTest;
import test.web.EngineUrl;

public class WebTestBusinessCaseDataWorkflow extends BaseWebTest
{

  @Test
  void testInterview()
  {
    login();
    
    startProcess("16EF567002B146F2/create.ivp");
    $("#form\\:interviewFirstName").shouldBe(visible).sendKeys("Hans");
    $("#form\\:interviewLastName").sendKeys("Muster");

    $("#form\\:saveAndPark").click();
    checkTaskList();
    
    $$("table tr a").find(text("6.1: Save Business Data When Park Task")).click();
    $("#form\\:interviewFirstName").shouldBe(visible, exactValue("Hans"));
    $("#form\\:interviewLastName").shouldBe(exactValue("Muster")).sendKeys("mann");
    $("#form\\:interviewConversation").sendKeys("This is an interview");
    $("#form\\:interviewDate_input").sendKeys("13.12.2025");
    
    $("#form\\:proceed").click();
    
    startProcess("16EF567002B146F2/browse.ivp");
    Selenide.sleep(1000); //wait for elasic search
    $$("button").find(text("Search")).shouldBe(visible, enabled).click();
    $$("#interviewTable tbody tr").first().shouldHave(text("Hans"), 
            text("Mustermann"), 
            text("This is an interview"),
            text("13.12.2025"));
  }

  private void login()
  {
    if (!EngineUrl.applicationName().equals("designer"))
    {
      Selenide.open(EngineUrl.base() + "wf/" + EngineUrl.applicationName() + "/login");
      $("#loginForm\\:userName").shouldBe(visible).sendKeys("hb");
      $("#loginForm\\:password").sendKeys("hb");
      $("#loginForm\\:login").click();
      $("h3").shouldBe(exactText("Home"));
    }
  }
  
  
}
