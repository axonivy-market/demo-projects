package rest.bpm;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

import com.axonivy.connectivity.rest.DataMappingData;
import com.axonivy.connectivity.rest.OpenApiData;
import com.axonivy.connectivity.rest.Post;
import com.axonivy.connectivity.rest.odata.OData;
import com.typicode.jsonplaceholder.Address;

import ch.ivyteam.ivy.bpm.engine.client.BpmClient;
import ch.ivyteam.ivy.bpm.engine.client.ExecutionResult;
import ch.ivyteam.ivy.bpm.exec.client.IvyProcessTest;
import ch.ivyteam.ivy.environment.AppFixture;


@IvyProcessTest
public class TestDataMapping
{
  @BeforeAll
  static void setUp(AppFixture fixture)
  {
    fixture.environment(System.getProperty("test.environment", "Default"));
  }
  
  @Test
  public void odataJsonMapping_single(BpmClient bpmClient)
  {
    ExecutionResult result = bpmClient.start().process("rest/openapi_odata/readById.ivp").execute();
    assertThat(result).isNotNull();

    OData data = result.data().last();
    assertThat(data.getUsers()).isNotEmpty();

    var first = data.getUsers().get(0);
    Assertions.assertEquals("Russell", first.getFirstName());
    Assertions.assertEquals("Whyte", first.getLastName());
    Assertions.assertEquals("Male", first.getGender());
  }

  @Test
  public void odataJsonMapping_collection(BpmClient bpmClient)
  {
    ExecutionResult result = bpmClient.start().process("rest/openapi_odata/readCollection.ivp").execute();
    assertThat(result).isNotNull();

    OData data = result.data().last();
    assertThat(data.getUsers()).hasSize(20);
  }

  @Test
  public void openApiPetListing(BpmClient bpmClient)
  {
    ExecutionResult result = bpmClient.start().process("rest/openapi/listPets.ivp").execute();
    assertThat(result).isNotNull();

    OpenApiData data = result.data().last();
    assertThat(data.getPets()).isNotEmpty();
    assertThat(data.getPets().get(0).getName()).isNotEmpty();
  }
  
  @Test
  public void dataMapping_rawJSON(BpmClient bpmClient)
  {
    ExecutionResult result = bpmClient.start().process("rest/dataMapping/rawJSON.ivp").execute();
    assertThat(result).isNotNull();
    
    DataMappingData data = result.data().last();
    Post post = data.getMyPost();
    assertThat(post.getName()).isEqualTo("The sailor");
    assertThat(post.getBody()).isEqualTo("Freedom of speech");
    assertThat(post.getEmail()).contains("@ivy-community.com");
  }
  
  @Test
  public void dataMapping_formData(BpmClient bpmClient)
  {
    ExecutionResult result = bpmClient.start().process("rest/dataMapping/formData.ivp").execute();
    assertThat(result).isNotNull();
    
    DataMappingData data = result.data().last();
    Post post = data.getMyPost();
    assertThat(post.getName()).isEqualTo("Mr. Smith");
    assertThat(post.getBody()).isEqualTo("I have something to say");
    assertThat(post.getEmail()).contains("@ivy-community.com");
  }
  
  @Test
  public void dataMapping_complexObject(BpmClient bpmClient)
  {
    ExecutionResult result = bpmClient.start().process("rest/dataMapping/complexObject.ivp").execute();
    assertThat(result).isNotNull();
    
    DataMappingData data = result.data().last();
    Post post = data.getMyPost();
    assertThat(post.getName()).isEqualTo("Mr. Smith");
    assertThat(post.getBody()).isEqualTo("I have something to say");
    assertThat(post.getEmail()).contains("@ivy-community.com");
  }
  
  @Test
  public void dataMapping_readPartialObject(BpmClient bpmClient)
  {
    ExecutionResult result = bpmClient.start().process("rest/dataMapping/readPartialObject.ivp").execute();
    assertThat(result).isNotNull();
    
    DataMappingData data = result.data().last();
    com.axonivy.connectivity.rest.User user = data.getUser();
    assertThat(user.getName()).isEqualTo("Leanne Graham");
    assertThat(user.getEmail()).isEqualTo("Sincere@april.biz");
    assertThat(user.getPhone()).isEqualTo("1-770-736-8031 x56442");
  }
  
  @Test
  public void dataMapping_readGenerated(BpmClient bpmClient)
  {
    ExecutionResult result = bpmClient.start().process("rest/dataMapping/readGenerated.ivp").execute();
    assertThat(result).isNotNull();
    
    DataMappingData data = result.data().last();
    com.typicode.jsonplaceholder.User generatedUser = data.getUserGenerated();
    assertThat(generatedUser.getName()).isEqualTo("Leanne Graham");
    assertThat(generatedUser.getUsername()).isEqualTo("Bret");
    
    Address address = generatedUser.getAddress();
    assertThat(address.getCity()).isEqualTo("Gwenborough");
  }
  
  @Test
  public void dataMapping_readJsonNode(BpmClient bpmClient)
  {
    ExecutionResult result = bpmClient.start().process("rest/dataMapping/readJsonNode.ivp").execute();
    assertThat(result).isNotNull();
    
    DataMappingData data = result.data().last();
    com.axonivy.connectivity.rest.User user = data.getUser();
    assertThat(user.getName()).isEqualTo("Leanne Graham");
    assertThat(user.getEmail()).isEqualTo("Sincere@april.biz");
    assertThat(user.getPhone()).isEqualTo("1-770-736-8031 x56442");
  }
  
  @Test
  public void dataMapping_queryParameters(BpmClient bpmClient)
  {
    ExecutionResult result = bpmClient.start().process("rest/dataMapping/queryParameters.ivp").execute();
    assertThat(result).isNotNull();
    
    DataMappingData data = result.data().last();
    assertThat(data.getPosts()).hasSize(10);
  }
  
  @Test
  public void dataMapping_pathParameters(BpmClient bpmClient)
  {
    ExecutionResult result = bpmClient.start().process("rest/dataMapping/pathParameters.ivp").execute();
    assertThat(result).isNotNull();
    
    DataMappingData data = result.data().last();
    assertThat(data.getUserId()).isNotNull();
  }
  
  @Test
  public void dataMapping_acceptType(BpmClient bpmClient)
  {
    ExecutionResult result = bpmClient.start().process("rest/dataMapping/acceptType.ivp").execute();
    assertThat(result).isNotNull();
    
    DataMappingData data = result.data().last();
    assertThat(data.getUserId()).isEqualTo(1);
  }
}
