package com.axonivy.connectivity.rest;

import static com.axonivy.ivy.webtest.engine.EngineUrl.createProcessUrl;
import static com.codeborne.selenide.Selenide.open;
import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.Test;

import com.axonivy.ivy.webtest.IvyWebTest;
import com.codeborne.selenide.WebDriverRunner;

@IvyWebTest
public class WebTestRestProcessStarts
{

  @Test
  void checkAllSimpleRestCalls()
  {
    checkProcess("16764B07C0329FC8/callBatchAsync.ivp");
    checkProcess("169B3B7F5EF38D8F/upAndDown.ivp");
    checkProcess("169B3B7F5EF38D8F/fileMultipart.ivp");
    checkProcess("169B3B7F5EF38D8F/multipleFiles.ivp");
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
    assertThat(WebDriverRunner.url()).as("Process url '" + path + "' should run to an end without problems.")
          .contains("endedTaskId=");
  }
}
