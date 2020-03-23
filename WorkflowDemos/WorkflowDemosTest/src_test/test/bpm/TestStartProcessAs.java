package test.bpm;

import static org.assertj.core.api.Assertions.assertThat;

import javax.inject.Named;

import org.junit.jupiter.api.Test;

import ch.ivyteam.ivy.application.IApplication;
import ch.ivyteam.ivy.bpm.engine.client.BpmClient;
import ch.ivyteam.ivy.bpm.engine.client.ExecutionResult;
import ch.ivyteam.ivy.bpm.exec.client.IvyProcessTest;
import ch.ivyteam.ivy.security.IRole;
import ch.ivyteam.ivy.security.ISession;
import ch.ivyteam.ivy.security.IUser;

/**
 * This test shows how you can start a process in your test with different roles and users
 * @author rwei
 * @since 9.1
 */
@IvyProcessTest
class TestStartProcessAs
{
  private static final String PROCESS = "152551002ABB8DFE/start.ivp";
  
  @Test
  void noAs(BpmClient client) throws Exception
  {
    ExecutionResult result = client
        .request(PROCESS)
        .usingHttp()
        .execute();
    
    assertThat(result.getRequestedCase().getCreatorUser())
        .isNull();
  }

  @Test
  void asAnonymous(BpmClient client) throws Exception
  {
    ExecutionResult result = client
        .request(PROCESS)
        .usingHttp()
        .as().anonymous()
        .execute();
    
    assertThat(result.getRequestedCase().getCreatorUser())
        .isNull();
  }
  
  @Test
  void asEverybody(BpmClient client, IRole everybody) throws Exception
  {
    ExecutionResult result = client
        .request(PROCESS)
        .usingHttp()
        .as().everybody()
        .execute();
    
    assertThat(result.getRequestedCase().getCreatorUser())
        .isEqualTo(result.getWorkflowSession().getSessionUser());
    assertThat(result.getWorkflowSession().hasRole(everybody, false))
        .isTrue();
  }

  @Test
  void asRoleName(BpmClient client, @Named("HR Manager") IRole hrManager) throws Exception
  {
    ExecutionResult result = client
        .request(PROCESS)
        .usingHttp()
        .as().role("HR Manager")
        .execute();
    
    assertThat(result.getRequestedCase().getCreatorUser())
        .isEqualTo(result.getWorkflowSession().getSessionUser());
    assertThat(result.getWorkflowSession().hasRole(hrManager, false))
        .isTrue();
  }

  @Test
  void asRole(BpmClient client, @Named("HR Manager") IRole hrManager) throws Exception
  {
    ExecutionResult result = client
        .request(PROCESS)
        .usingHttp()
        .as().role(hrManager)
        .execute();
    
    assertThat(result.getRequestedCase().getCreatorUser())
        .isEqualTo(result.getWorkflowSession().getSessionUser());
    assertThat(result.getWorkflowSession().hasRole(hrManager, false))
        .isTrue();
  }

  @Test
  void asUserName(BpmClient client, @Named("jb") IUser jamesBond) throws Exception
  {
    ExecutionResult result = client
        .request(PROCESS)
        .usingHttp()
        .as().user("jb")
        .execute();
    
    assertThat(result.getRequestedCase().getCreatorUser())
        .isEqualTo(result.getWorkflowSession().getSessionUser())
        .isEqualTo(jamesBond);    
  }

  @Test
  void asUser(BpmClient client, @Named("jb") IUser jamesBond) throws Exception
  {
    ExecutionResult result = client
        .request(PROCESS)
        .usingHttp()
        .as().user(jamesBond)
        .execute();
    
    assertThat(result.getRequestedCase().getCreatorUser())
        .isEqualTo(result.getWorkflowSession().getSessionUser())
        .isEqualTo(jamesBond);
  }

  @Test
  void asSystemUser(BpmClient client, IApplication app) throws Exception
  {
    ExecutionResult result = client
        .request(PROCESS)
        .usingHttp()
        .as().systemUser()
        .execute();
    
    assertThat(result.getRequestedCase().getCreatorUser())
        .isEqualTo(result.getWorkflowSession().getSessionUser())
        .isEqualTo(app.getSecurityContext().getSystemUser());
  }

  @Test
  void asSession(BpmClient client, ISession session, @Named("jb") IUser jamesBond) throws Exception
  {
    session.authenticateSessionUser(jamesBond, "testing");
    
    ExecutionResult result = client
        .request(PROCESS)
        .usingHttp()
        .as().session(session)
        .execute();
    
    assertThat(result.getWorkflowSession())
        .isSameAs(session);
    
    assertThat(result.getRequestedCase().getCreatorUser())
        .isEqualTo(result.getWorkflowSession().getSessionUser())
        .isEqualTo(jamesBond);
  }
}
