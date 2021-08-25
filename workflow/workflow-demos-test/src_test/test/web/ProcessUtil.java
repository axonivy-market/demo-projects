package test.web;

import static org.assertj.core.api.Assertions.assertThat;

import com.axonivy.ivy.webtest.engine.EngineUrl;
import com.codeborne.selenide.Selenide;
import com.codeborne.selenide.WebDriverRunner;

public class ProcessUtil
{

  public static void startProcess(String pathToIvp)
  {
    Selenide.open(EngineUrl.createProcessUrl("/workflow-demos/" + pathToIvp));
  }

  public static void startTestProcess(String pathToIvp)
  {
    Selenide.open(EngineUrl.createProcessUrl("/workflow-demos-test/" + pathToIvp));
  }

  public static void checkEndPage()
  {
    assertThat(WebDriverRunner.url()).contains("endedTaskId=");
  }

}
