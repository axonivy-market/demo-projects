package ch.ivyteam.demo.jpa.demos.daos;

import static org.assertj.core.api.Assertions.assertThat;

import java.io.FileNotFoundException;
import java.io.IOException;

import org.apache.log4j.Level;
import org.dbunit.dataset.DataSetException;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import ch.ivyteam.demo.jpa.demos.entities.Department;
import ch.ivyteam.demo.jpa.demos.test.DemoTestBase;
import ch.ivyteam.ivy.environment.IvyTest;


@IvyTest
public class DepartmentDAOTest extends DemoTestBase {
	private static final DepartmentDAO departmentDAO = DepartmentDAO.getInstance();

	@BeforeEach
	public void prepare() throws Exception {
		prepareTestDataAndMocking(true);
		switchToSystemUser();
	}

	@Test
	public void testData() throws DataSetException, FileNotFoundException, IOException {
		switchOnLogging(Level.INFO, packageLevel("com.axonivy", Level.INFO));
		
		Department einkauf = departmentDAO.findByName("Einkauf");
		Department leitung = departmentDAO.findByName("Leitung");
		Department marketing = departmentDAO.findByName("Marketing");
		Department produktion = departmentDAO.findByName("Produktion");
		Department vertrieb = departmentDAO.findByName("Vertrieb");
		
		assertThat(einkauf).as("Find Einkauf").isNotNull();
		assertThat(leitung).as("Find Leitung").isNotNull();
		assertThat(marketing).as("Find Marketing").isNotNull();
		assertThat(produktion).as("Find Produktion").isNotNull();
		assertThat(vertrieb).as("Find Vertrieb").isNotNull();
	}
}
