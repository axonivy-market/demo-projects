package ch.ivyteam.demo.jpa.demos.validation;


import static org.assertj.core.api.Assertions.assertThat;

import java.util.Set;

import javax.faces.application.FacesMessage;
import javax.faces.application.FacesMessage.Severity;
import javax.validation.ConstraintViolation;

import org.apache.log4j.Level;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;

import ch.ivyteam.demo.jpa.demos.Logger;
import ch.ivyteam.demo.jpa.demos.service.UiService;
import ch.ivyteam.demo.jpa.demos.service.ValidationService;
import ch.ivyteam.demo.jpa.demos.test.DemoTestBase;
import ch.ivyteam.demo.jpa.demos.test.mock.Mocked;
import ch.ivyteam.demo.jpa.demos.validation.groups.Error;
import ch.ivyteam.demo.jpa.demos.validation.groups.Warning;
import ch.ivyteam.ivy.environment.IvyTest;


@IvyTest
public class ValidationTest extends DemoTestBase {
	private static final Logger LOG = Logger.getLogger(ValidationTest.class);

	public interface Step1WarnGroup extends Warning {}
	public interface Step1ErrorGroup extends Error {}

	public interface Step2WarnGroup extends Warning {}
	public interface Step2ErrorGroup extends Error {}

	
	class Test1 {
		@IvyNotNull(groups = {Step1WarnGroup.class, Step2ErrorGroup.class})
		private String field1;

		@IvyNotNull(groups = {Step1WarnGroup.class, Step2ErrorGroup.class})
		private String field2;

		public String getField1() {
			return field1;
		}

		public void setField1(String field1) {
			this.field1 = field1;
		}

		public String getField2() {
			return field2;
		}

		public void setField2(String field2) {
			this.field2 = field2;
		}
	}

	@Test
	public void testMixedGroups() {
		Mockito.mockStatic(UiService.class, i -> i.getMethod().getName().equals("findComponent") ? null : i.callRealMethod());

		switchOnLogging(Level.INFO);
		Test1 test1 = new Test1();
		Set<ConstraintViolation<Test1>> violations;
		Severity severity;

		LOG.info("Testing validations for step 1");
		violations = ValidationService.validate(test1, Step1WarnGroup.class, Step1ErrorGroup.class);
		assertThat(violations).as("Step 1 violations").hasSize(2);
		Mocked.facesContext.resetFacesMessages();
		severity = ValidationService.validate2FacesMessages(test1,  Step1WarnGroup.class, Step1ErrorGroup.class);
		LOG.info("Severity: {0}", severity);

		assertFacesMessages(
				"Faces Messages from step 1",
				new FacesMessage(FacesMessage.SEVERITY_WARN, "", ""),
				new FacesMessage(FacesMessage.SEVERITY_WARN, "", ""));

		LOG.info("Testing validations for step 2");
		violations = ValidationService.validate(test1, Step2WarnGroup.class, Step2ErrorGroup.class);
		assertThat(violations).as("Step 2 violations").hasSize(2);
		Mocked.facesContext.resetFacesMessages();
		severity = ValidationService.validate2FacesMessages(test1,  Step2WarnGroup.class, Step2ErrorGroup.class);
		LOG.info("Severity: {0}", severity);

		assertFacesMessages(
				"Faces Messages from step 2",
				new FacesMessage(FacesMessage.SEVERITY_ERROR, "", ""),
				new FacesMessage(FacesMessage.SEVERITY_ERROR, "", ""));
	}
}
