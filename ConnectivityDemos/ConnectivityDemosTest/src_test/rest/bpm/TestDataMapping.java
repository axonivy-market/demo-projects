package rest.bpm;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import com.axonivy.connectivity.rest.OpenApiData;
import com.axonivy.connectivity.rest.odata.OData;
import com.axonivy.connectivity.rest.odata.User;

import ch.ivyteam.ivy.bpm.engine.client.BpmClient;
import ch.ivyteam.ivy.bpm.engine.client.ExecutionResult;
import ch.ivyteam.ivy.bpm.exec.client.IvyProcessTest;


@IvyProcessTest
public class TestDataMapping
{
  // TODO : currently only works with system property (designer.dir) in run config. it should point to the 'webapps' dir.
  // -Ddesigner.dir=/mnt/data/axonIvyProducts/designer_2002071630-XIVY-3450-bpmTest-protoTstServer

  @Test
  public void odataJsonMapping_single(BpmClient bpmClient) throws Exception
  {
    ExecutionResult result = bpmClient.request(Process.REST_ODATA + "/readById.ivp").execute();
    assertThat(result).isNotNull();
    
    OData data = result.getData().last();
    assertThat(data.getUsers()).isNotEmpty();
    
    User first = data.getUsers().get(0);
    Assertions.assertEquals("Russell", first.getFirstName());
    Assertions.assertEquals("Whyte", first.getLastName());
    Assertions.assertEquals("Male", first.getGender());
  }
  
  @Test
  public void odataJsonMapping_collection(BpmClient bpmClient) throws Exception
  {
    ExecutionResult result = bpmClient.request(Process.REST_ODATA + "/readCollection.ivp").execute();
    assertThat(result).isNotNull();
    
    OData data = result.getData().last();
    assertThat(data.getUsers()).hasSize(20);
  }
  
  @Test
  public void openApiPetListing(BpmClient bpmClient) throws Exception
  {
    ExecutionResult result = bpmClient.request(Process.REST_OPENAPI + "/listPets.ivp").execute();
    assertThat(result).isNotNull();
    
    OpenApiData data = result.getData().last();
    assertThat(data.getPets()).isNotEmpty();
    assertThat(data.getPets().get(0).getName()).isNotEmpty();
  }
  
  /**
   * Well known IDs of Processes under test
   */
  private static interface Process
  {
    String REST_ODATA = "15DEF1BE5B9E5A42";
    String REST_OPENAPI = "16F375741231763F";
  }
}
