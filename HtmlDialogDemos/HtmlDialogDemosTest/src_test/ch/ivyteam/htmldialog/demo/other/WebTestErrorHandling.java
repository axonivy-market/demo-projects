package ch.ivyteam.htmldialog.demo.other;

import static org.assertj.core.api.Assertions.assertThat;
import static org.openqa.selenium.support.ui.ExpectedConditions.textToBePresentInElementLocated;

import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;

import ch.ivyteam.htmldialog.demo.BaseWebTest;
import ch.ivyteam.htmldialog.server.test.EngineUrl;

public class WebTestErrorHandling extends BaseWebTest
{
  @Test
  public void ajax_error_dialog()
  {
    startProcess("145D1862CF17F2C9/ErrorHandlingDemo.ivp");
    driver.findElement(By.id("form:ajax")).click();

    await(textToBePresentInElementLocated(By.id("ajaxExceptionDialog_title"), "Error"));
    String text = driver.findElement(By.id("ajaxExceptionDialog_content")).getText();
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
        .contains("/ivy/faces/instances/"+EngineUrl.applicationName()+"/HtmlDialogDemos$1/").contains("/ch.ivyteam.htmldialog.demo.other.ErrorHandling/ErrorHandling.xhtml")
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
    driver.findElement(By.id("form:nonAjax")).click();

    await(textToBePresentInElementLocated(By.cssSelector("h1"), "ivy:error:script"));
    String text = driver.findElement(By.id("content")).getText();
    assertThat(text)
        .contains("ivy:error:script") 
//        .contains("Error id") 
        .contains("Process")
        .contains("ErrorHandlingProcess")
        .contains("Element")
        .contains("throw exception <15E519280889B152-f9>")
        .contains("Technical cause")
        .contains("IvyScriptRuntimeException: IvyScript Runtime Exception in")
        .contains("Instruction:")
        .contains("(0 / 0)")
        .contains("Request Uri")
        .contains("/ivy/faces/instances/"+EngineUrl.applicationName()+"/HtmlDialogDemos$1/").contains("/ch.ivyteam.htmldialog.demo.other.ErrorHandling/ErrorHandling.xhtml")
        .contains("Servlet")
        .contains("Faces Servlet")
        .contains("Application")
        .contains(EngineUrl.applicationName())
//        .contains("Thread local values")
//        .contains("application")
//        .contains("session")
//        .contains("requestId")
//        .contains("executionContext")
//        .contains("SYSTEM")
//        .contains("pmv")
//        .contains("client")
//        .contains("hd")
//        .contains("ch.ivyteam.htmldialog.demo.other.ErrorHandling")
//        .contains("processElement")
//        .contains("15E519280889B152-f9")
        .contains("Stack-Trace")
        .doesNotContain("?");
  }

  @Test
  public void session_expired()
  {
    startProcess("145D1862CF17F2C9/ErrorHandlingDemo.ivp");
    driver.findElement(By.id("form:expireSession")).click();
    driver.findElement(By.id("form:ajaxWithExpiredSession")).click();
    
    await(textToBePresentInElementLocated(By.id("viewExpiredExceptionDialog_title"), "View or Session Expired"));
    String text = driver.findElement(By.id("viewExpiredExceptionDialog_content")).getText();
    assertThat(text)
        .contains("Custom Exception Handling for ViewExpiredException")
        .contains("The view or session has expired")
        .contains("Please login again");
  }

}
