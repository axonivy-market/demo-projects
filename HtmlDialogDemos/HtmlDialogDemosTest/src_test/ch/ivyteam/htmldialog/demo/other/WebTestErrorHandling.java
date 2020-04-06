package ch.ivyteam.htmldialog.demo.other;

import static ch.ivyteam.htmldialog.server.test.ProcessUtil.startProcess;
import static com.codeborne.selenide.Condition.text;
import static com.codeborne.selenide.Condition.visible;
import static com.codeborne.selenide.Selenide.$;
import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;

import com.axonivy.ivy.webtest.IvyWebTest;
import com.axonivy.ivy.webtest.engine.EngineUrl;

@IvyWebTest
public class WebTestErrorHandling
{
  @Test
  public void ajax_error_dialog()
  {
    startProcess("145D1862CF17F2C9/ErrorHandlingDemo.ivp");
    $(By.id("form:ajax")).shouldBe(visible).click();

    $(By.id("ajaxExceptionDialog_title")).shouldHave(text("Error"));
    String text = $(By.id("ajaxExceptionDialog_content")).getText();
    assertThat(text)
        .contains("ivy:error:script") 
        .contains("Error id") 
        .contains("Process")
        .contains("ErrorHandlingProcess")
        .contains("Element")
        .contains("throw exception <15E519280889B152-f9>")
        .contains("Technical cause")
        .contains("IvyScriptRuntimeException: IvyScript Runtime Exception in")
        .contains("Instruction:")
        .contains("(0 / 0)")
        .contains("Request Uri")
        .contains("/"+EngineUrl.applicationName()+"/faces/instances/HtmlDialogDemos$1/").contains("/ch.ivyteam.htmldialog.demo.other.ErrorHandling/ErrorHandling.xhtml")
        .contains("Servlet")
        .contains("Faces Servlet")
        .contains("Application")
        .contains(EngineUrl.applicationName())
        .contains("Thread local values")
        .contains("application")
        .contains("session")
        .contains("requestId")
        .contains("executionContext")
        .contains("SYSTEM")
        .contains("pmv")
        .contains("client")
        .contains("hd")
        .contains("ch.ivyteam.htmldialog.demo.other.ErrorHandling")
        .contains("processElement")
        .contains("15E519280889B152-f9")
        .contains("Stack-Trace")
        .doesNotContain("?");
  }
  
  @Test
  public void non_ajax_error_dialog()
  {
    startProcess("145D1862CF17F2C9/ErrorHandlingDemo.ivp");
    $(By.id("form:nonAjax")).shouldBe(visible).click();

    $("h1").shouldHave(text("ivy:error:script"));
    String text = $(By.id("content")).getText();
    assertThat(text)
        .contains("ivy:error:script") 
        .contains("Error id") 
        .contains("Process")
        .contains("ErrorHandlingProcess")
        .contains("Element")
        .contains("throw exception <15E519280889B152-f9>")
        .contains("Technical cause")
        .contains("IvyScriptRuntimeException: IvyScript Runtime Exception in")
        .contains("Instruction:")
        .contains("(0 / 0)")
        .contains("Request Uri")
        .contains("/"+EngineUrl.applicationName()+"/faces/instances/HtmlDialogDemos$1/").contains("/ch.ivyteam.htmldialog.demo.other.ErrorHandling/ErrorHandling.xhtml")
        .contains("Servlet")
        .contains("Faces Servlet")
        .contains("Application")
        .contains(EngineUrl.applicationName())
        .contains("Thread local values")
        .contains("application")
        .contains("session")
        .contains("requestId")
        .contains("executionContext")
        .contains("SYSTEM")
        .contains("pmv")
        .contains("client")
        .contains("hd")
        .contains("ch.ivyteam.htmldialog.demo.other.ErrorHandling")
        .contains("processElement")
        .contains("15E519280889B152-f9")
        .contains("Stack-Trace")
        .doesNotContain("?");
  }

  @Test
  public void session_expired()
  {
    startProcess("145D1862CF17F2C9/ErrorHandlingDemo.ivp");
    $(By.id("form:expireSession")).shouldBe(visible).click();
    $(By.id("form:ajaxWithExpiredSession")).shouldBe(visible).click();
    
    $(By.id("viewExpiredExceptionDialog_title")).shouldHave(text("View or Session Expired"));
    String text = $(By.id("viewExpiredExceptionDialog_content")).getText();
    assertThat(text)
        .contains("Custom Exception Handling for ViewExpiredException")
        .contains("The view or session has expired")
        .contains("Please login again");
  }

}
