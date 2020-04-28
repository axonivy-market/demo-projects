package rest.bpm;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import com.axonivy.connectivity.rest.OpenApiData;
import com.axonivy.connectivity.rest.odata.OData;
import com.axonivy.connectivity.rest.odata.User;

import ch.ivyteam.ivy.bpm.engine.client.BpmClient;
import ch.ivyteam.ivy.bpm.engine.client.IExecutionResult;
import ch.ivyteam.ivy.bpm.exec.client.IvyProcessTest;


@IvyProcessTest
public class TestDataMapping
{
  @Test
  public void odataJsonMapping_single(BpmClient bpmClient)
  {
    IExecutionResult result = bpmClient.start().process("rest/odata/readById.ivp").execute();
    assertThat(result).isNotNull();

    OData data = result.data().last();
    assertThat(data.getUsers()).isNotEmpty();

    User first = data.getUsers().get(0);
    Assertions.assertEquals("Russell", first.getFirstName());
    Assertions.assertEquals("Whyte", first.getLastName());
    Assertions.assertEquals("Male", first.getGender());
  }

  @Test
  public void odataJsonMapping_collection(BpmClient bpmClient)
  {
    IExecutionResult result = bpmClient.start().process("rest/odata/readCollection.ivp").execute();
    assertThat(result).isNotNull();

    OData data = result.data().last();
    assertThat(data.getUsers()).hasSize(20);
  }

  @Test
  public void openApiPetListing(BpmClient bpmClient)
  {
    IExecutionResult result = bpmClient.start().process("rest/openapi/listPets.ivp").execute();
    assertThat(result).isNotNull();

    OpenApiData data = result.data().last();
    assertThat(data.getPets()).isNotEmpty();
    assertThat(data.getPets().get(0).getName()).isNotEmpty();
  }
}
