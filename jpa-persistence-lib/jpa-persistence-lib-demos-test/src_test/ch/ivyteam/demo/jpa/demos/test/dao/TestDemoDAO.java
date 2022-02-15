package ch.ivyteam.demo.jpa.demos.test.dao;

import ch.ivyteam.demo.jpa.demos.test.mock.SimplePersistenceContext;


public class TestDemoDAO extends DemoDAO {
	private static final TestDemoDAO instance = new TestDemoDAO();

	private TestDemoDAO() {
	}

	public static TestDemoDAO getInstance() {
		return instance;
	}

	@Override
	public String getPersistenceUnitName() {
		return SimplePersistenceContext.JPA_DEMO_TEST;
	}
}
