package test.bpm;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatThrownBy;

import java.time.Instant;
import java.time.temporal.ChronoUnit;
import java.util.Date;

import org.junit.jupiter.api.Test;

import ch.ivyteam.ivy.bpm.engine.client.BpmClient;
import ch.ivyteam.ivy.bpm.engine.client.ExecutionResult;
import ch.ivyteam.ivy.bpm.engine.client.element.BpmElement;
import ch.ivyteam.ivy.bpm.engine.client.element.BpmProcess;
import ch.ivyteam.ivy.bpm.exec.client.IvyProcessTest;
import ch.ivyteam.ivy.workflow.CaseState;
import ch.ivyteam.ivy.workflow.ITask;
import ch.ivyteam.ivy.workflow.TaskState;
import ch.ivyteam.ivy.workflow.WorkflowPriority;

@IvyProcessTest
public class TestExpriy
{
  private static final BpmProcess PROCUREMENT_PROCESS = BpmProcess.name("Expiry");
  
  private static final BpmElement EXPIRY_HIGHER_PRIO = PROCUREMENT_PROCESS.elementName("createExpriyTaskHigherPrio.ivp");
  private static final BpmElement EXPIRY_OTHER_ROLE = PROCUREMENT_PROCESS.elementName("createExpiryTaskOtherRole.ivp");
  private static final BpmElement EXPIRY_ERROR_TASK = PROCUREMENT_PROCESS.elementName("createExpriyErrorTask.ivp");
  
  @Test
  void runProcessWithoutExpire(BpmClient bpmClient)
  {
    ExecutionResult result = startProcess(bpmClient, EXPIRY_HIGHER_PRIO);
    
    startNextTask(bpmClient, getNextTask(result));
  }
  
  @Test
  void expriyWithHigherPrio(BpmClient bpmClient)
  {
    ExecutionResult result = startProcess(bpmClient, EXPIRY_HIGHER_PRIO);
    
    ITask nextTask = getNextTask(result);
    nextTask.setExpiryTimestamp(Date.from(Instant.now().minus(1, ChronoUnit.DAYS)));
    assertThat(nextTask.getPriority()).isEqualTo(WorkflowPriority.HIGH);
    
    startNextTask(bpmClient, nextTask);
  }
  
  @Test
  void expriyWithOtherRole(BpmClient bpmClient)
  {
    ExecutionResult result = startProcess(bpmClient, EXPIRY_OTHER_ROLE);
    
    ITask nextTask = getNextTask(result);
    nextTask.setExpiryTimestamp(Date.from(Instant.now().minus(1, ChronoUnit.DAYS)));
    assertThat(nextTask.getPriority()).isEqualTo(WorkflowPriority.HIGH);
    
    assertThatThrownBy(() -> startNextTask(bpmClient, nextTask)).isInstanceOf(IllegalArgumentException.class)
            .hasMessageContaining("is not permitted");
    
    bpmClient.start().task(nextTask).as().role("Manager").execute();
    assertCaseIsDone(result);
  }
  
  @Test
  void expriyWithNewErrorTask(BpmClient bpmClient)
  {
    ExecutionResult result = startProcess(bpmClient, EXPIRY_ERROR_TASK);
    
    ITask nextTask = getNextTask(result);
    nextTask.setExpiryTimestamp(Date.from(Instant.now().minus(1, ChronoUnit.DAYS)));
    assertThat(nextTask.getState()).isEqualTo(TaskState.DESTROYED);
    
    ITask errorTask = getNextTask(result);
    assertThatThrownBy(() -> startNextTask(bpmClient, errorTask)).isInstanceOf(IllegalArgumentException.class)
            .hasMessageContaining("is not permitted");
    
    bpmClient.start().task(errorTask).as().systemUser().execute();
    assertCaseIsDone(result);
  }
  
  private void startNextTask(BpmClient bpmClient, ITask nextTask)
  {
    ExecutionResult result = bpmClient.start().task(nextTask).as().everybody().execute();
    assertCaseIsDone(result);
  }

  private void assertCaseIsDone(ExecutionResult result)
  {
    assertThat(result.workflow().technicalCase().getState()).isEqualTo(CaseState.DONE);
  }
  
  private ExecutionResult startProcess(BpmClient bpmClient, BpmElement startElement)
  {
    return bpmClient.start().process(startElement)
            .as().everybody().execute();
  }

  private ITask getNextTask(ExecutionResult result)
  {
    ITask nextTask = result.workflow().anyNextTask().get();
    assertThat(nextTask.getPriority()).isEqualTo(WorkflowPriority.NORMAL);
    return nextTask;
  }
}
