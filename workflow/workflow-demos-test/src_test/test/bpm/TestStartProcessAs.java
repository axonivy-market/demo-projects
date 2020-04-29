package test.bpm;

import static org.assertj.core.api.Assertions.assertThat;

import javax.inject.Named;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import ch.ivyteam.ivy.application.IApplication;
import ch.ivyteam.ivy.bpm.engine.client.BpmClient;
import ch.ivyteam.ivy.bpm.engine.client.ExecutionResult;
import ch.ivyteam.ivy.bpm.engine.client.element.BpmElement;
import ch.ivyteam.ivy.bpm.engine.client.element.BpmProcess;
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
  private static final BpmProcess PROCESS = BpmProcess.name("FlowPatterns");
  private static final BpmElement START = PROCESS.elementName("start.ivp");
  private static final BpmElement HTML_DIALOG = PROCESS.element().fieldId("f5");

  @BeforeEach
  void before(BpmClient client)
  {
    client.mock().element(HTML_DIALOG).withNoAction();
  }

  @Test
  void noAs(BpmClient client)
  {
    ExecutionResult result = client
        .start().process(START)
        .usingHttp()
        .execute();

    assertThat(result.workflow().technicalCase().getCreatorUser())
        .isNull();
  }

  @Test
  void asAnonymous(BpmClient client)
  {
    ExecutionResult result = client
        .start().process(START)
        .usingHttp()
        .as().anonymous()
        .execute();

    assertThat(result.workflow().technicalCase().getCreatorUser())
        .isNull();
  }

  @Test
  void asEverybody(BpmClient client, IRole everybody)
  {
    ExecutionResult result = client
        .start().process(START)
        .usingHttp()
        .as().everybody()
        .execute();

    assertThat(result.workflow().technicalCase().getCreatorUser())
        .isEqualTo(result.workflow().session().getSessionUser());
    assertThat(result.workflow().session().hasRole(everybody, false))
        .isTrue();
  }

  @Test
  void asRoleName(BpmClient client, @Named("HR Manager") IRole hrManager)
  {
    ExecutionResult result = client
        .start().process(START)
        .usingHttp()
        .as().role("HR Manager")
        .execute();

    assertThat(result.workflow().technicalCase().getCreatorUser())
        .isEqualTo(result.workflow().session().getSessionUser());
    assertThat(result.workflow().session().hasRole(hrManager, false))
        .isTrue();
  }

  @Test
  void asRole(BpmClient client, @Named("HR Manager") IRole hrManager)
  {
    ExecutionResult result = client
        .start().process(START)
        .usingHttp()
        .as().role(hrManager)
        .execute();

    assertThat(result.workflow().technicalCase().getCreatorUser())
        .isEqualTo(result.workflow().session().getSessionUser());
    assertThat(result.workflow().session().hasRole(hrManager, false))
        .isTrue();
  }

  @Test
  void asUserName(BpmClient client, @Named("jb") IUser jamesBond)
  {
    ExecutionResult result = client
        .start().process(START)
        .usingHttp()
        .as().user("jb")
        .execute();

    assertThat(result.workflow().technicalCase().getCreatorUser())
        .isEqualTo(result.workflow().session().getSessionUser())
        .isEqualTo(jamesBond);
  }

  @Test
  void asUser(BpmClient client, @Named("jb") IUser jamesBond)
  {
    ExecutionResult result = client
        .start().process(START)
        .usingHttp()
        .as().user(jamesBond)
        .execute();

    assertThat(result.workflow().technicalCase().getCreatorUser())
        .isEqualTo(result.workflow().session().getSessionUser())
        .isEqualTo(jamesBond);
  }

  @Test
  void asSystemUser(BpmClient client, IApplication app)
  {
    ExecutionResult result = client
        .start().process(START)
        .usingHttp()
        .as().systemUser()
        .execute();

    assertThat(result.workflow().technicalCase().getCreatorUser())
        .isEqualTo(result.workflow().session().getSessionUser())
        .isEqualTo(app.getSecurityContext().getSystemUser());
  }

  @Test
  void asSession(BpmClient client, ISession session, @Named("jb") IUser jamesBond)
  {
    session.authenticateSessionUser(jamesBond, "testing");

    ExecutionResult result = client
        .start().process(START)
        .usingHttp()
        .as().session(session)
        .execute();

    assertThat(result.workflow().session())
        .isSameAs(session);

    assertThat(result.workflow().technicalCase().getCreatorUser())
        .isEqualTo(result.workflow().session().getSessionUser())
        .isEqualTo(jamesBond);
  }
}
