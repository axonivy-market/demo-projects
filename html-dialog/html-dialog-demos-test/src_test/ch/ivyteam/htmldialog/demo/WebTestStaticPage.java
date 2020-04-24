package ch.ivyteam.htmldialog.demo;

import static ch.ivyteam.htmldialog.server.test.ProcessUtil.startProcess;
import static com.codeborne.selenide.Condition.text;
import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.$$;

import org.junit.jupiter.api.Test;

import com.axonivy.ivy.webtest.IvyWebTest;

@IvyWebTest
public class WebTestStaticPage {

  @Test
  void testStaticPage()
  {
    startProcess("1698080EFEC9C585/StaticEndPage.ivp");
    $$("button").find(text("Bean Magic")).click();
    $("#mainArea").shouldHave(text("clicked the button"));
  }
}
