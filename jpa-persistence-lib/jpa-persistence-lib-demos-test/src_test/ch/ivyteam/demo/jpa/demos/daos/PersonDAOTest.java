package ch.ivyteam.demo.jpa.demos.daos;

import static org.assertj.core.api.Assertions.assertThat;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.time.LocalDate;
import java.util.List;
import java.util.Random;

import javax.persistence.Tuple;
import javax.transaction.TransactionRolledbackException;

import org.apache.commons.io.FileUtils;
import org.apache.log4j.Level;
import org.dbunit.dataset.DataSetException;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.axonivy.persistence.search.SearchFilter;

import ch.ivyteam.demo.jpa.demos.entities.Department;
import ch.ivyteam.demo.jpa.demos.entities.Person;
import ch.ivyteam.demo.jpa.demos.enums.MaritalStatus;
import ch.ivyteam.demo.jpa.demos.enums.PersonSearchField;
import ch.ivyteam.demo.jpa.demos.service.DateService;
import ch.ivyteam.demo.jpa.demos.test.DemoTestBase;
import ch.ivyteam.demo.jpa.demos.test.service.TestService;
import ch.ivyteam.ivy.environment.IvyTest;


@IvyTest
public class PersonDAOTest extends DemoTestBase {
	private static final PersonDAO personDAO = PersonDAO.getInstance();
	private static final String userLeitung = "gera.dewegs";

	@BeforeEach
	public void prepare() throws DataSetException, FileNotFoundException, IOException  {
		switchToSystemUser();
		prepareTestDataAndMocking(true);
	}

	@Test
	public void testLoadTestdata() {
		switchOnLogging(Level.INFO);

		List<Person> all = personDAO.findAll();
		assertThat(all).as("Found entries").hasSizeGreaterThan(300);

		for (Person person : all) {
			LOG.info(String.format("Person: %-20s %-20s %tF %-20s %9.2f",
					person.getFirstName(), person.getLastName(), person.getBirthdate(),
					person.getMaritalStatus(), person.getSalary()));
		}
	}

	@Test
	public void testLoadPermissions() {
		switchOnLogging(Level.INFO, packageLevelCombine(packageLevelHibernateSqlStatements(), packageLevelHibernateSqlParameters()));
		switchToUser(userLeitung);
		List<Person> all = personDAO.findAll();
		assertThat(all).as("Found entries").hasSizeGreaterThan(5);

		for (Person person : all) {
			LOG.info(String.format("Person: %-20s %-20s %tF %-20s %9.2f",
					person.getFirstName(), person.getLastName(), person.getBirthdate(),
					person.getMaritalStatus(), person.getSalary()));
			assertThat(person.getDepartment().getName()).as("Correct department").isEqualTo("Leitung");
		}
	}

	//@Test
	public void testData() throws DataSetException, FileNotFoundException, IOException {
		List<Person> all = personDAO.findAll();

		Random r = new Random();

		LocalDate border = LocalDate.of(1950, 1, 1);

		switchOnLogging(Level.WARN, packageLevel("com.axonivy.demo", Level.DEBUG));
		for (Person person : all) {
			switch(person.getMaritalStatus()) {
			case PARTNERSHIP_CANCELED:
			case PARTNER_PASSED_AWAY:
			case WIDOWED:
				if(r.nextInt(10) > 3) {
					person.setMaritalStatus(MaritalStatus.MARRIED);
				}
				break;
			default:
				break;

			}

			LocalDate bd = DateService.dateToLocalDate(person.getBirthdate());

			LOG.debug("Birthdate {0}", bd);

			while(bd.isBefore(border)) {
				bd = bd.plusYears(50);
			}

			person.setBirthdate(DateService.localDateToDate(bd));

			personDAO.save(person);
		}

		InputStream inputStream = TestService.getDBExport();
		FileUtils.copyInputStreamToFile(inputStream, new File("C:/Temp/exported.xls"));
		LOG.info("Wrote Excel file");
	}

	@Test
	public void testSearch() {
		SearchFilter filter = new SearchFilter();

		filter
		.add(PersonSearchField.ID)
		.add(PersonSearchField.IVY_USER_NAME)
		.add(PersonSearchField.FIRST_NAME)
		.add(PersonSearchField.LAST_NAME)
		.add(PersonSearchField.BIRTHDATE)
		.add(PersonSearchField.MARITAL_STATUS)
		.add(PersonSearchField.SALARY)
		.add(PersonSearchField.DEPARTMENT_NAME);

		filter.addSort(PersonSearchField.LAST_NAME, true).addSort(PersonSearchField.FIRST_NAME, true);

		List<Tuple> persons = personDAO.findBySearchFilter(filter);

		logTuples("Persons", persons, -30);

		assertThat(persons).as("Find tuples").hasSizeGreaterThan(300);
	}

	@Test
	public void testSearchIndividual() {
		switchOnLogging(Level.INFO,
				packageLevelHibernateSqlStatements(),
				packageLevelHibernateSqlParameters(),
				packageLevel("com.axonivy", Level.INFO));

		SearchFilter filter = new SearchFilter();

		filter.add(PersonSearchField.ID)
		.add(PersonSearchField.IVY_USER_NAME, "er");

		List<Tuple> persons = personDAO.findBySearchFilter(filter);

		logTuples("Persons", persons, -30);

		assertThat(persons).as("Find tuples").hasSizeGreaterThan(100);
	}

	@Test
	public void testTransactions() throws TransactionRolledbackException {
		Person person = personDAO.findByIvyUserName(userLeitung, null);
		assertThat(person).as("Find person").isNotNull();
		Department leitung = person.getDepartment();
		assertThat(leitung).as("Find department").isNotNull();

		personDAO.beginSession();
		personDAO.beginTransaction();

		person = new Person();
		person.setIvyUserName("ivyname1");
		person.setDepartment(leitung);
		personDAO.save(person);

		person = new Person();
		person.setIvyUserName("ivyname2");
		person.setDepartment(leitung);
		personDAO.save(person);

		assertThat(personDAO.findByIvyUserName("ivyname1", null)).as("Find person").isNotNull();
		assertThat(personDAO.findByIvyUserName("ivyname2", null)).as("Find person").isNotNull();

		personDAO.rollbackTransaction();
		personDAO.closeSession();

		assertThat(personDAO.findByIvyUserName("ivyname1", null)).as("Rolledback person").isNull();
		assertThat(personDAO.findByIvyUserName("ivyname2", null)).as("Rolledback person").isNull();
	}
}
