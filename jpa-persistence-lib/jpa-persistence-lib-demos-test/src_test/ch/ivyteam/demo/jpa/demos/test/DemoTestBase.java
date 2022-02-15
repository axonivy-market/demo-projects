package ch.ivyteam.demo.jpa.demos.test;

import ch.ivyteam.demo.jpa.demos.enums.Role;
import ch.ivyteam.demo.jpa.demos.test.dao.TestDemoDAO;
import ch.ivyteam.demo.jpa.demos.test.mock.Mocked;
import ch.ivyteam.demo.jpa.demos.test.service.TestService;

public class DemoTestBase extends IvyTestBase {
	protected final TestDemoDAO testDemoDao = TestDemoDAO.getInstance();

	/**
	 * Create the static roles.
	 */
	public void createRoles() {
		for(Role role : Role.values()) {
			Mocked.securityContext.addSimpleRole(
					role.getIvyRoleName(), role.getIvyRoleName(), role.getIvyRoleName(),
					false, Mocked.securityContext.getTopLevelRole());
		}
	}

	/**
	 * Prepare the test environment.
	 * 
	 */
	public void prepareTestDataAndMocking(boolean clean) {
		createRoles();
		TestService.prepareTestDataAndIvy(clean, true);
	}

}
