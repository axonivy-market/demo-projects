package workflow.businessdata;

import static com.codeborne.selenide.Condition.enabled;
import static com.codeborne.selenide.Condition.exactText;
import static com.codeborne.selenide.Condition.exactValue;
import static com.codeborne.selenide.Condition.text;
import static com.codeborne.selenide.Condition.visible;
import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.$$;
import static com.codeborne.selenide.Selenide.open;
import static com.codeborne.selenide.Selenide.sleep;
import static test.web.ProcessUtil.checkEndPage;
import static test.web.ProcessUtil.checkTaskList;
import static test.web.ProcessUtil.startProcess;
import static test.web.ProcessUtil.startTestProcess;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.axonivy.ivy.webtest.IvyWebTest;
import com.axonivy.ivy.webtest.engine.EngineUrl;

@IvyWebTest
public class WebTestBusinessCaseDataWorkflow
{

  @BeforeEach
  void cleanElasticSearch()
  {
    startTestProcess("1537FF3C3382D47F/clearDemoDossiers.ivp");
    checkEndPage();
  }

  @Test
  void testInterview()
  {
    login();

    startProcess("16EF567002B146F2/create.ivp");
    $("#form\\:interviewFirstName").shouldBe(visible).sendKeys("Hans");
    $("#form\\:interviewLastName").sendKeys("Muster");

    $("#form\\:saveAndPark").click();
    checkTaskList();

    $$("table tr a").find(text("6.1: Save BusinessCaseData When Park Task")).click();
    $("#form\\:interviewFirstName").shouldBe(visible, exactValue("Hans"));
    $("#form\\:interviewLastName").shouldBe(exactValue("Muster")).sendKeys("mann");
    $("#form\\:interviewConversation").sendKeys("This is an interview");
    $("#form\\:interviewDate_input").sendKeys("13.12.2025");

    $("#form\\:proceed").click();

    startProcess("16EF567002B146F2/browse.ivp");
    sleep(1000); //wait for elasic search
    $$("button").find(text("Search")).shouldBe(visible, enabled).click();
    $$("#interviewTable tbody tr").first().shouldHave(text("Hans"),
            text("Mustermann"),
            text("This is an interview"),
            text("13.12.2025"));
  }

  private void login()
  {
    if (!EngineUrl.isDesigner())
    {
      open(EngineUrl.create().path("wf/login").toUrl());
      $("#loginForm\\:userName").shouldBe(visible).sendKeys("hb");
      $("#loginForm\\:password").sendKeys("hb");
      $("#loginForm\\:login").click();
      $("h3").shouldBe(exactText("Home"));
    }
  }


}
