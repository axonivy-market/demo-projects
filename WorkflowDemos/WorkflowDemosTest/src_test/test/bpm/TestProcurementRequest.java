package test.bpm;

import static org.assertj.core.api.Assertions.assertThat;

import java.util.List;
import java.util.Locale;

import org.awaitility.Awaitility;
import org.junit.jupiter.api.Test;

import ch.ivyteam.ivy.bpm.engine.client.BpmClient;
import ch.ivyteam.ivy.bpm.engine.client.ExecutionResult;
import ch.ivyteam.ivy.bpm.engine.client.UiMocker;
import ch.ivyteam.ivy.bpm.exec.client.IvyProcessTest;
import ch.ivyteam.ivy.process.model.value.PID;
import ch.ivyteam.ivy.security.exec.Sudo;
import ch.ivyteam.ivy.workflow.CaseState;
import ch.ivyteam.ivy.workflow.ICase;
import ch.ivyteam.ivy.workflow.ITask;
import ch.ivyteam.ivy.workflow.TaskState;
import workflow.humantask.ProcurementRequest;

/**
 * Early preview of {@link BpmClient} testing API usage. 
 * 
 * Here to expose difficulties when working with workflow centered processes.
 * In order to improve until the release 9.1
 *
 * Tests the ProcurementRequest:
 * <code>WorkflowDemos/processes/Humantask/ProcurementRequestParallel.mod</code>
 * 
 * @author rew
 * @author rwei
 * @since Mar 3, 2020
 */
@IvyProcessTest
class TestProcurementRequest
{
  
  /**
   * Manager and Team Leader do not verify
   */
  @Test
  void approvalTask_notVerified_byBoth(BpmClient bpmClient, UiMocker ui) throws Exception
  {
    List<ITask> verifyTasks = createProcurrementRequest(bpmClient, ui);
    
    ui.mock(HtmlDialog.VERIFY_REQUEST_TEAM_LEADER, ProcurementRequest.class, (in, out) -> out.setDataOkTeamLeader(false));
    verifyRequest(bpmClient, verifyTasks.get(0), "Teamleader");

    ui.mock(HtmlDialog.VERIFY_REQUEST_MANAGER, ProcurementRequest.class, (in, out) -> out.setDataOkManager(false));
    verifyRequest(bpmClient, verifyTasks.get(1), "Manager");
    
    ICase caze = verifyTasks.get(0).getCase();
    waitUntilSystemTaskHasBeenExecuted(caze); 
    
    assertThat(caze.getState()).isEqualTo(CaseState.DONE);
  }

  /**
   * Manager does not and Team Leader does verify
   */
  @Test
  void approvalTask_notVerified_byManager(BpmClient bpmClient, UiMocker ui) throws Exception
  {
    List<ITask> verifyTasks = createProcurrementRequest(bpmClient, ui);

    ui.mock(HtmlDialog.VERIFY_REQUEST_TEAM_LEADER, ProcurementRequest.class, (in, out) -> out.setDataOkTeamLeader(true));
    verifyRequest(bpmClient, verifyTasks.get(0), "Teamleader");

    ui.mock(HtmlDialog.VERIFY_REQUEST_MANAGER, ProcurementRequest.class, (in, out) -> out.setDataOkManager(false));
    verifyRequest(bpmClient, verifyTasks.get(1), "Manager");
    
    ICase caze = verifyTasks.get(0).getCase();
    waitUntilSystemTaskHasBeenExecuted(caze); 
    
    assertThat(caze.getState()).isEqualTo(CaseState.DONE);
  }

  /**
   * Manager does and Team Leader does not verify
   */
  @Test
  void approvalTask_notVerified_byTeamLeader(BpmClient bpmClient, UiMocker ui) throws Exception
  {
    List<ITask> verifyTasks = createProcurrementRequest(bpmClient, ui);

    ui.mock(HtmlDialog.VERIFY_REQUEST_TEAM_LEADER, ProcurementRequest.class, (in, out) -> out.setDataOkTeamLeader(false));
    verifyRequest(bpmClient, verifyTasks.get(0), "Teamleader");
    
    ui.mock(HtmlDialog.VERIFY_REQUEST_MANAGER, ProcurementRequest.class, (in, out) -> out.setDataOkManager(true));
    verifyRequest(bpmClient, verifyTasks.get(1), "Manager");
    
    ICase caze = verifyTasks.get(0).getCase();
    waitUntilSystemTaskHasBeenExecuted(caze); 
    
    assertThat(caze.getState()).isEqualTo(CaseState.DONE);
  }

 /**
  * Manager and Team Leader do verify but Executive Manager does not accept 
  */
  @Test
  void approvalTask_verified_notAccepted(BpmClient bpmClient, UiMocker ui) throws Exception
  {
    List<ITask> verifyTasks = createProcurrementRequest(bpmClient, ui);

    ui.mock(HtmlDialog.VERIFY_REQUEST_TEAM_LEADER, ProcurementRequest.class, (in, out) -> out.setDataOkTeamLeader(true));
    verifyRequest(bpmClient, verifyTasks.get(0), "Teamleader");

    ui.mock(HtmlDialog.VERIFY_REQUEST_MANAGER, ProcurementRequest.class, (in, out) -> out.setDataOkManager(true));
    verifyRequest(bpmClient, verifyTasks.get(1), "Manager");
    
    ICase caze = verifyTasks.get(0).getCase();
    waitUntilAcceptRequestTaskIsAvailable(caze);
    
    ui.mock(HtmlDialog.ACCEPT_REQUEST);
    ProcurementRequest request = acceptRequest(bpmClient, getAcceptRequestTask(caze));
    
    assertThat(request.getAccepted()).isFalse();
    assertThat(caze.getState()).isEqualTo(CaseState.DONE);
  }
  
  /**
   * Manager and Team Leader do verify and Executive Manager does accept 
   */
   @Test
   void approvalTask_verified_accepted(BpmClient bpmClient, UiMocker ui) throws Exception
   {
     List<ITask> verifyTasks = createProcurrementRequest(bpmClient, ui);

     ui.mock(HtmlDialog.VERIFY_REQUEST_TEAM_LEADER, ProcurementRequest.class, (in, out) -> out.setDataOkTeamLeader(true));
     verifyRequest(bpmClient, verifyTasks.get(0), "Teamleader");

     ui.mock(HtmlDialog.VERIFY_REQUEST_MANAGER, ProcurementRequest.class, (in, out) -> out.setDataOkManager(true));
     verifyRequest(bpmClient, verifyTasks.get(1), "Manager");

     ICase caze = verifyTasks.get(0).getCase();
     waitUntilAcceptRequestTaskIsAvailable(caze);
     
     ui.mock(HtmlDialog.ACCEPT_REQUEST, ProcurementRequest.class, (in, out) -> out.setAccepted(true));
     ProcurementRequest request = acceptRequest(bpmClient, getAcceptRequestTask(caze));
     
     assertThat(request.getAccepted()).isTrue();
     assertThat(caze.getState()).isEqualTo(CaseState.DONE);
   }

  private List<ITask> createProcurrementRequest(BpmClient bpmClient, UiMocker ui) throws Exception
  {
    var testData = new ProcurementRequest();
    testData.setDescription("PC");
    testData.setAmount(3);
    testData.setPricePerUnit(1222.95);
    testData.setTotalPrice(3668.85);

    ui.mock(HtmlDialog.ENTER_REQUEST, in -> testData);

    ExecutionResult result = bpmClient
        .start().process("Humantask/ProcurementRequestParallel")
        .as().user("ldv")
        .execute();
    assertThat(result).isNotNull();
    List<ITask> tasks = result.getRequestedCase().getActiveTasks();
    assertThat(tasks).hasSize(2);
    ITask verifyTask1 = tasks.get(0);
    assertThat(verifyTask1.getName()).startsWith("Verify Request:");
    assertThat(verifyTask1.getActivatorName()).isEqualTo("Teamleader");
    ITask verifyTask2 = tasks.get(1);
    assertThat(verifyTask2.getName()).startsWith("Verify Request:");
    assertThat(verifyTask2.getActivatorName()).isEqualTo("Manager");
    return tasks;
  }

  private void verifyRequest(BpmClient bpmClient, ITask verifyTask, String role) throws Exception
  {     
    ExecutionResult result = bpmClient
        .start().resumableTask(verifyTask)
        .as().role(role)	
        .execute();
    assertThat(result.getRequestedTask().getState()).isIn(TaskState.DONE, TaskState.READY_FOR_JOIN);
  }
  
  private ProcurementRequest acceptRequest(BpmClient bpmClient, ITask acceptRequestTask) throws Exception
  {
    ExecutionResult result = bpmClient.start().resumableTask(acceptRequestTask).as().role("Executive Manager").execute();
    assertThat(result.getRequestedTask().getState()).isIn(TaskState.DONE);
    return result.getData().last();
  }
  
  //TODO API Sugar: set locale to default cms language. Provide api to set other language
  private ITask getAcceptRequestTask(ICase caze)
  {
    // Locale of system user session seems to be the default locale of the os
    String taskName = Locale.ENGLISH.equals(Locale.getDefault()) ? "Accept Request:" : "Antrag annehmen:";
    return caze
        .getActiveTasks()
        .stream()
        .filter(task -> task.getName().contains(taskName))  
        .findAny()
        .orElse(null);
  }
  
  // TODO API Sugar: Provide method to wait until system task has been executed 
  private void waitUntilSystemTaskHasBeenExecuted(ICase caze)
  {
    Awaitility.await().until(()-> Sudo.exec(() -> caze.getState() == CaseState.DONE));
  }

  private void waitUntilAcceptRequestTaskIsAvailable(ICase caze)
  {
    Awaitility.await().until(()-> Sudo.exec(() -> getAcceptRequestTask(caze) != null));
  }
  
  /**
   * Well known IDs of Processes under test
   */
  public static interface Process
  {
    String ProcurementRequest = "15254DC87A1B183B";
  }
  
  /**
   * Well known IDs of UI Process Elements under test
   */
  public static interface HtmlDialog
  {
    PID ENTER_REQUEST = new PID("15254DC87A1B183B-f3");
    PID VERIFY_REQUEST_TEAM_LEADER = new PID("15254DC87A1B183B-f5");
    PID VERIFY_REQUEST_MANAGER = new PID("15254DC87A1B183B-f6");
    PID ACCEPT_REQUEST = new PID("15254DC87A1B183B-f16");
  }

}
