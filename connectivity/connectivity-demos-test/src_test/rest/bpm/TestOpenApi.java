package rest.bpm;

import static org.assertj.core.api.Assertions.assertThat;

import java.util.List;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

import com.axonivy.connectivity.rest.OpenApiData;

import ch.ivyteam.ivy.bpm.engine.client.BpmClient;
import ch.ivyteam.ivy.bpm.engine.client.ExecutionResult;
import ch.ivyteam.ivy.bpm.exec.client.IvyProcessTest;
import ch.ivyteam.ivy.environment.AppFixture;


@IvyProcessTest
public class TestOpenApi
{
  @BeforeAll
  static void setUp(AppFixture fixture)
  {
    fixture.environment(System.getProperty("test.environment", "Default"));
  }

  @Test
  public void openApi_petListing(BpmClient bpmClient)
  {
    ExecutionResult result = bpmClient.start().process("rest/openapi/listPets.ivp").execute();
    assertThat(result).isNotNull();

    OpenApiData data = result.data().last();
    assertThat(data.getPets()).isNotEmpty();
    assertThat(data.getPets().get(0).getName()).isNotEmpty();
  }
  
  @Test
  public void openApi_petQuery(BpmClient bpmClient)
  {
    ExecutionResult result = bpmClient.start().process("rest/openapi/login.ivp").execute();
    assertThat(result).isNotNull();

    long sessionId = Long.parseLong((String)result.workflow().session().getAttribute("pet.session.id"));
    assertThat(sessionId).as("got session ID from pet store api login").isGreaterThan(1);
  }
  
  @Test
  public void openApi_fileUpload(BpmClient bpmClient)
  {
    ExecutionResult result = bpmClient.start().process("rest/openapi/upload.ivp").execute();
    assertThat(result).isNotNull();
    
    OpenApiData data = result.data().last();
    List<String> photos = data.getPets().get(0).getPhotoUrls();
    assertThat(photos.stream().filter(p -> !p.startsWith("url"))).isNotEmpty();
  }
}
