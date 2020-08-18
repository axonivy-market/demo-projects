package rest.bpm;

import static org.assertj.core.api.Assertions.assertThat;

import java.util.ArrayList;

import org.junit.jupiter.api.Test;

import ch.ivyteam.ivy.bpm.engine.client.BpmClient;
import ch.ivyteam.ivy.bpm.engine.client.ExecutionResult;
import ch.ivyteam.ivy.bpm.exec.client.IvyProcessTest;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.workflow.query.SignalEventQuery;

@IvyProcessTest
public class TestAsyncInvocation
{

  @Test
  void callBatchAsync(BpmClient bpmClient) throws InterruptedException
  {
    ExecutionResult result = bpmClient.start().process("rest/asyncInvocation/callBatchAsync.ivp").execute();
    assertThat(result).isNotNull();
    
    Thread.sleep(4000);
    SignalEventQuery query = Ivy.wf().signals().history()
            .createSignalEventQuery();
    var fired = new ArrayList<>(query.executor().results());
    assertThat(fired).isNotEmpty();
    assertThat(fired.get(0).getSignalCode().toString()).isEqualTo("rest:batch:result:ok");
  }
  
}
