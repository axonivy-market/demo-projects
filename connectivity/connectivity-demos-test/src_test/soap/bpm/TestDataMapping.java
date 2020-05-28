package soap.bpm;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.Test;

import com.axonivy.connectivity.soap.DataMappingData;

import ch.ivyteam.ivy.bpm.engine.client.BpmClient;
import ch.ivyteam.ivy.bpm.engine.client.ExecutionResult;
import ch.ivyteam.ivy.bpm.exec.client.IvyProcessTest;

@IvyProcessTest
public class TestDataMapping
{

  @Test
  void resolveToCache(BpmClient bpmClient)
  {
    ExecutionResult result = bpmClient.start().process("soap/client/dataMapping/resolveToCache.ivp").execute();
    assertThat(result).isNotNull();
    
    DataMappingData data = result.data().last();
    assertThat(data.getTime().toJavaDate()).isToday();
  }

}
