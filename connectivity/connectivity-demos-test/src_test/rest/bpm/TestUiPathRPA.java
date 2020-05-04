package rest.bpm;

import static org.assertj.core.api.Assertions.assertThat;

import java.io.IOException;

import org.apache.log4j.Logger;
import org.junit.jupiter.api.Test;

import com.axonivy.connectivity.rest.UiPathData;
import com.axonivy.connectivity.rest.UiPathMock;
import com.axonivy.connectivity.rest.client.auth.TokenStore;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import ch.ivyteam.ivy.bpm.engine.client.BpmClient;
import ch.ivyteam.ivy.bpm.engine.client.ExecutionResult;
import ch.ivyteam.ivy.bpm.exec.client.IvyProcessTest;
import ch.ivyteam.ivy.security.ISession;

/**
 * Service functionality is mocked out here: {@link UiPathMock}
 */
@IvyProcessTest
public class TestUiPathRPA
{
  private static final Logger LOGGER = Logger.getLogger(TestUiPathRPA.class);
  
  @Test
  public void rpaDemo(BpmClient bpmClient, ISession session) throws IOException
  {
    TokenStore store = new TokenStore(session, "localhost", LOGGER);
    JsonNode oauthToken = new ObjectMapper().readTree("{\"access_token\": \"notmytoken\"}");
    store.setToken(oauthToken);
    session.setActiveEnvironment("dev-axonivy");
    
    ExecutionResult result = bpmClient.start()
      .process("rest/uiPath/startRPA.ivp")
      .as().session(session)
      .execute();
    
    UiPathData data = result.data().last();
    assertThat(data.getLicense()).isNotNull();
    assertThat(data.getJobs()).isNotEmpty();
    assertThat(data.getRobots()).isNotEmpty();
  }
}
