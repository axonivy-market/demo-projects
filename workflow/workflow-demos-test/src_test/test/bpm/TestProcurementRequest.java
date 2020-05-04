package test.bpm;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.Test;

import ch.ivyteam.ivy.bpm.engine.client.BpmClient;
import ch.ivyteam.ivy.bpm.engine.client.ExecutionResult;
import ch.ivyteam.ivy.bpm.engine.client.TaskSelector;
import ch.ivyteam.ivy.bpm.engine.client.Workflow;
import ch.ivyteam.ivy.bpm.engine.client.element.BpmElement;
import ch.ivyteam.ivy.bpm.engine.client.element.BpmProcess;
import ch.ivyteam.ivy.bpm.exec.client.IvyProcessTest;
import ch.ivyteam.ivy.workflow.CaseState;
import ch.ivyteam.ivy.workflow.TaskState;
import workflow.humantask.ProcurementRequest;

/**
 * Early preview of {@link BpmClient} testing API usage.
 *
 * Here to expose difficulties when working with workflow centered processes.
 * In order to improve until the release 9.1
 *
 * Tests the ProcurementRequest:
 * <code>workflow-demos/processes/Humantask/ProcurementRequestParallel.mod</code>
 *
 * @author rew
 * @author rwei
 * @since Mar 3, 2020
 */
@IvyProcessTest
class TestProcurementRequest
{
  /** Processes under test */
  private static final BpmProcess PROCUREMENT_PROCESS = BpmProcess.name("ProcurementRequestParallel");
  
  /** HTML Dialogs under test */
  public static interface HtmlDialog
  {
    BpmElement ENTER_REQUEST = PROCUREMENT_PROCESS.elementName("Enter Request");
    BpmElement VERIFY_REQUEST_TEAM_LEADER = PROCUREMENT_PROCESS.element().name().contains("by Team Leader");
    BpmElement VERIFY_REQUEST_MANAGER = PROCUREMENT_PROCESS.element().name().contains("by Manager");
    BpmElement ACCEPT_REQUEST = PROCUREMENT_PROCESS.elementName("Accept Request");
  }
  
  private static final String MANAGER = "Manager";
  private static final String TEAMLEADER = "Teamleader";
  private static final String EXECUTIVE_MANAGER = "Executive Manager";

  /**
   * Manager and Team Leader do not verify
   */
  @Test
  void approvalTask_notVerified_byBoth(BpmClient bpmClient)
  {
    TaskSelector verifyTasks = createProcurrementRequest(bpmClient);

    bpmClient.mock().element(HtmlDialog.VERIFY_REQUEST_TEAM_LEADER).with(ProcurementRequest.class, (in, out) -> out.setDataOkTeamLeader(false));
    verifyRequest(bpmClient, verifyTasks, TEAMLEADER);

    bpmClient.mock().element(HtmlDialog.VERIFY_REQUEST_MANAGER).with(ProcurementRequest.class, (in, out) -> out.setDataOkManager(false));
    Workflow workflow = verifyRequest(bpmClient, verifyTasks, MANAGER).workflow();

    executeSystemTask(bpmClient, workflow);
    assertThat(workflow.technicalCase().getState()).isEqualTo(CaseState.DONE);
  }

  /**
   * Manager does not and Team Leader does verify
   */
  @Test
  void approvalTask_notVerified_byManager(BpmClient bpmClient)
  {
    TaskSelector verifyTasks = createProcurrementRequest(bpmClient);

    bpmClient.mock().element(HtmlDialog.VERIFY_REQUEST_TEAM_LEADER).with(ProcurementRequest.class, (in, out) -> out.setDataOkTeamLeader(true));
    verifyRequest(bpmClient, verifyTasks, TEAMLEADER);

    bpmClient.mock().element(HtmlDialog.VERIFY_REQUEST_MANAGER).with(ProcurementRequest.class, (in, out) -> out.setDataOkManager(false));
    Workflow workflow = verifyRequest(bpmClient, verifyTasks, MANAGER).workflow();

    executeSystemTask(bpmClient, workflow);
    assertThat(workflow.technicalCase().getState()).isEqualTo(CaseState.DONE);
  }

  /**
   * Manager does and Team Leader does not verify
   */
  @Test
  void approvalTask_notVerified_byTeamLeader(BpmClient bpmClient)
  {
    TaskSelector verifyTasks = createProcurrementRequest(bpmClient);

    bpmClient.mock().element(HtmlDialog.VERIFY_REQUEST_TEAM_LEADER).with(ProcurementRequest.class, (in, out) -> out.setDataOkTeamLeader(false));
    verifyRequest(bpmClient, verifyTasks, TEAMLEADER);

    bpmClient.mock().element(HtmlDialog.VERIFY_REQUEST_MANAGER).with(ProcurementRequest.class, (in, out) -> out.setDataOkManager(true));
    Workflow workflow = verifyRequest(bpmClient, verifyTasks, MANAGER).workflow();

    executeSystemTask(bpmClient, workflow);
    assertThat(workflow.technicalCase().getState()).isEqualTo(CaseState.DONE);
  }

 /**
  * Manager and Team Leader do verify but Executive Manager does not accept
  */
  @Test
  void approvalTask_verified_notAccepted(BpmClient bpmClient)
  {
    TaskSelector verifyTasks = createProcurrementRequest(bpmClient);

    bpmClient.mock().element(HtmlDialog.VERIFY_REQUEST_TEAM_LEADER).with(ProcurementRequest.class, (in, out) -> out.setDataOkTeamLeader(true));
    verifyRequest(bpmClient, verifyTasks, TEAMLEADER);

    bpmClient.mock().element(HtmlDialog.VERIFY_REQUEST_MANAGER).with(ProcurementRequest.class, (in, out) -> out.setDataOkManager(true));
    Workflow workflow = verifyRequest(bpmClient, verifyTasks, MANAGER).workflow();

    executeSystemTask(bpmClient, workflow);
   
    bpmClient.mock().element(HtmlDialog.ACCEPT_REQUEST).with(ProcurementRequest.class, (in, out) -> out.setAccepted(false));
    ProcurementRequest request = acceptRequest(bpmClient, workflow);

    assertThat(request.getAccepted()).isFalse();
    assertThat(workflow.technicalCase().getState()).isEqualTo(CaseState.DONE);
  }

  /**
   * Manager and Team Leader do verify and Executive Manager does accept
   */
  @Test
  void approvalTask_verified_accepted(BpmClient bpmClient)
  {
    TaskSelector verifyTasks = createProcurrementRequest(bpmClient);
    
    bpmClient.mock().element(HtmlDialog.VERIFY_REQUEST_TEAM_LEADER).with(ProcurementRequest.class, (in, out) -> out.setDataOkTeamLeader(true));
    verifyRequest(bpmClient, verifyTasks, TEAMLEADER);
    
    bpmClient.mock().element(HtmlDialog.VERIFY_REQUEST_MANAGER).with(ProcurementRequest.class, (in, out) -> out.setDataOkManager(true));
    Workflow workflow = verifyRequest(bpmClient, verifyTasks, MANAGER).workflow();
    
    executeSystemTask(bpmClient, workflow);
    
    bpmClient.mock().element(HtmlDialog.ACCEPT_REQUEST).with(ProcurementRequest.class, (in, out) -> out.setAccepted(true));
    ProcurementRequest request = acceptRequest(bpmClient, workflow);
    
    assertThat(request.getAccepted()).isTrue();
    assertThat(workflow.technicalCase().getState()).isEqualTo(CaseState.DONE);
  }

  private TaskSelector createProcurrementRequest(BpmClient bpmClient)
  {
    var testData = new ProcurementRequest();
    testData.setDescription("PC");
    testData.setAmount(3);
    testData.setPricePerUnit(1222.95);
    testData.setTotalPrice(3668.85);

    bpmClient.mock().element(HtmlDialog.ENTER_REQUEST).with(in -> testData);

    ExecutionResult result = bpmClient
        .start().process(PROCUREMENT_PROCESS)
        .as().user("ldv")
        .execute();
    assertThat(result).isNotNull();
    TaskSelector tasks = result.workflow().nextTask();
    assertThat(result.workflow().nextTasks()).hasSize(2);
    assertThat(tasks.activatorRole(TEAMLEADER).get().getName()).startsWith("Verify Request:");
    assertThat(tasks.activatorRole(MANAGER).get().getName()).startsWith("Verify Request:");
    return tasks;
  }
  
  private ExecutionResult verifyRequest(BpmClient bpmClient, TaskSelector tasks, String role)
  {
    ExecutionResult result = bpmClient.start()
            .resumableTask(tasks.activatorRole(role).get())
            .as().role(role).execute();
    assertThat(result.workflow().task().getState()).isIn(TaskState.DONE, TaskState.READY_FOR_JOIN);
    return result;
  }

  private ProcurementRequest acceptRequest(BpmClient bpmClient, Workflow workflow)
  {
    ExecutionResult result = bpmClient.start()
            .resumableTask(workflow.nextTask().name().contains("Accept Request:").get())
            .as().role(EXECUTIVE_MANAGER).execute();
    assertThat(result.workflow().task().getState()).isIn(TaskState.DONE);
    return result.data().last();
  }

  private void executeSystemTask(BpmClient client, Workflow workflow)
  {
    client.start().resumableTask(workflow.nextTask().system().get())
            .as().systemUser().execute();
  }
}
