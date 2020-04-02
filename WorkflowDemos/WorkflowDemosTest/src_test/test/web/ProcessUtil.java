package test.web;

import static com.codeborne.selenide.Condition.exactText;
import static com.codeborne.selenide.Selenide.$;

import com.axonivy.ivy.webtest.engine.EngineUrl;
import com.codeborne.selenide.Selenide;

public class ProcessUtil
{

  public static void startProcess(String pathToIvp)
  {
    Selenide.open(EngineUrl.process() + "/WorkflowDemos/" + pathToIvp);
  }
  
  public static void startTestProcess(String pathToIvp)
  {
    Selenide.open(EngineUrl.process() + "/WorkflowDemosTest/" + pathToIvp);
  }
  
  public static void checkEndPage()
  {
    if (EngineUrl.applicationName().equals("designer"))
    {
      $("h2").waitUntil(exactText("Personal Task List"), 15000);
    }
    else
    {
      $("h3").waitUntil(exactText("Task End"), 15000);
    }
  }
  
  public static void checkTaskList()
  {
    if (EngineUrl.applicationName().equals("designer"))
    {
      $("h2").waitUntil(exactText("Personal Task List"), 15000);
    }
    else
    {
      $("h3").waitUntil(exactText("Task List"), 15000);
    }
  }

}