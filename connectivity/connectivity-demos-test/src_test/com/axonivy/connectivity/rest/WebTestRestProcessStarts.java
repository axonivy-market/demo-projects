package com.axonivy.connectivity.rest;

import static com.axonivy.ivy.webtest.engine.EngineUrl.createProcessUrl;
import static com.codeborne.selenide.Condition.and;
import static com.codeborne.selenide.Condition.text;
import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.open;

import org.junit.jupiter.api.Test;

import com.axonivy.ivy.webtest.IvyWebTest;
import com.axonivy.ivy.webtest.engine.EngineUrl;

@IvyWebTest
public class WebTestRestProcessStarts
{

  @Test
  void checkAllSimpleRestCalls()
  {
    checkProcess("154616078A1D629D/listPersons.ivp");
    checkProcess("154616078A1D629D/listServiceOptions.ivp");
    checkProcess("16764B07C0329FC8/callBatchAsync.ivp");
    checkProcess("169B3B7F5EF38D8F/callFileUpload.ivp");
    checkProcess("15DEF1BE5B9E5A42/readCollection.ivp");
    checkProcess("15DEF1BE5B9E5A42/readById.ivp");
  }

  @Test
  void checkAllSimpleSoapCalls()
  {
    checkProcess("1605A38503199ADB/resolveToCache.ivp");
    checkProcess("1605A38503199ADB/mapComplexData.ivp");
    checkProcess("16150E26E34D4339/read.ivp");
    checkProcess("16150E26E34D4339/add.ivp");
    checkProcess("16150E26E34D4339/delete.ivp");
  }

  private void checkProcess(String process)
  {
    String path = "connectivity-demos/" + process;
    open(createProcessUrl(path));
    if (EngineUrl.isDesigner())
    {
      $("h2").shouldHave(and("Process url '" + path + "' should run to an end without problems.", text("Personal Task List")));
    }
    else
    {
      $("h3").shouldHave(and("Process url '" + path + "' should run to an end without problems.",text("Task End")));
    }
  }
}
