package ch.ivyteam.ivy.project.jsf.wf.ui;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;

import ch.ivyteam.ivy.server.test.WfNavigator;

public class TestWorkflowFrame extends BaseJsfWorkflowUiTest
{

  @Test
  public void testLinkOpenEmbedInFrame() throws Exception
  {
    WfNavigator.openProcessLink(driver, "testWfUi/13F3D94E5C99F06F/WfJsf.ivp");
    awaitToBePresent(By.id("formRequest:caption"));
    assertThat(driver.getCurrentUrl()).endsWith("RequestDialog.xhtml");
    
    WfNavigator.openProcessLink(driver, "testWfUi/13F3D94E5C99F06F/WfJsf.ivp?embedInFrame");
    awaitToBePresent(By.id("iFrame"));
    assertThat(driver.getCurrentUrl()).endsWith("IFrame.xhtml");
  }
}
