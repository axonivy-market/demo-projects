package rest.bpm;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;

import ch.ivyteam.ivy.bpm.engine.client.BpmClient;
import ch.ivyteam.ivy.bpm.engine.client.ExecutionResult;
import ch.ivyteam.ivy.bpm.exec.client.IvyProcessTest;
import ch.ivyteam.ivy.environment.AppFixture;


@IvyProcessTest
@Disabled("blocked by XIVY-4592 : can't yet test local file backend services.")
public class TestFileUpload
{
  @BeforeAll
  static void setUp(AppFixture fixture)
  {
    fixture.environment(System.getProperty("test.environment", "Default"));
  }
  
  @Test
  public void fileUpload_octetStream(BpmClient bpmClient)
  {
    ExecutionResult result = bpmClient.start().process("rest/fileUpload/uploadStream.ivp").execute();
    assertThat(result).isNotNull();
    
    String uploaded = (String) result.workflow().session().getAttribute("lastUpload");
    assertThat(uploaded).endsWith(".png");
  }
}
