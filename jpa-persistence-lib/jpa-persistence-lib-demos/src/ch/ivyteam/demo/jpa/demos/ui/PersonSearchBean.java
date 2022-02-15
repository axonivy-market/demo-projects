package ch.ivyteam.demo.jpa.demos.ui;

import java.util.ArrayList;
import java.util.List;

import javax.faces.application.FacesMessage;
import javax.faces.application.FacesMessage.Severity;

import org.apache.commons.lang.StringUtils;
import org.primefaces.PrimeFaces;

import com.axonivy.persistence.dao.QuerySettings;

import ch.ivyteam.demo.jpa.demos.Logger;
import ch.ivyteam.demo.jpa.demos.daos.DepartmentDAO;
import ch.ivyteam.demo.jpa.demos.daos.PersonDAO;
import ch.ivyteam.demo.jpa.demos.entities.Department;
import ch.ivyteam.demo.jpa.demos.entities.Department_;
import ch.ivyteam.demo.jpa.demos.entities.Person;
import ch.ivyteam.demo.jpa.demos.service.PersonService;
import ch.ivyteam.demo.jpa.demos.service.ValidationService;
import ch.ivyteam.demo.jpa.demos.validation.groups.SaveErrorGroup;
import ch.ivyteam.demo.jpa.demos.validation.groups.SaveWarnGroup;

public class PersonSearchBean {
	private static final Logger LOG = Logger.getLogger(PersonSearchBean.class);
	private List<Department> departments = new ArrayList<>();
	private PersonSearchLazyDataModel personSearchLazyDataModel = new PersonSearchLazyDataModel();
	private Person person = new Person();
	private Severity severity = null;

	public PersonSearchBean() {
		departments = DepartmentDAO.getInstance().findAll(new QuerySettings<Department>().withOrderAttributes(Department_.name));
	}

	/**
	 * @return the departments
	 */
	public List<Department> getDepartments() {
		return departments;
	}

	/**
	 * @return the personSearchLazyDataModel
	 */
	public PersonSearchLazyDataModel getPersonSearchLazyDataModel() {
		return personSearchLazyDataModel;
	}

	/**
	 * @return the person
	 */
	public Person getPerson() {
		return person;
	}

	public void setActivePerson(String personId) {
		if (StringUtils.isEmpty(personId)) {
			person = new Person();
		}
		else {
			person = PersonDAO.getInstance().findById(personId);
		}
	}

	public void validatePersonForSave(boolean secondSave) {
		if(secondSave) {
			severity = ValidationService.validate2FacesMessages(person, true, SaveErrorGroup.class);
		}
		else {
			severity = ValidationService.validate2FacesMessages(person, true, SaveErrorGroup.class, SaveWarnGroup.class);
		}
	}

	public boolean isSaveViolationMaxWarning() {
		return severity != null && severity.getOrdinal() < FacesMessage.SEVERITY_ERROR.getOrdinal();
	}

	public boolean isNoSaveViolation() {
		return severity == null;
	}

	public Severity resetSaveViolation() {
		Severity help = severity;
		severity = null;
		return help;
	}

	public void saveAndSyncPerson() {
		LOG.info("Save and sync person {0}", person.getIvyUserName());
		PersonDAO.getInstance().save(person);
		PersonService.syncUser(person);
	}

	public void deletePerson(String personId) {
		Person toDelete = null;
		if (StringUtils.isNotEmpty(personId)) {
			toDelete = PersonDAO.getInstance().findById(personId);
			if(toDelete != null) {
				LOG.info("Deleting person ''{0} {1}'' (id: {2})", toDelete.getFirstName(), toDelete.getLastName(), personId);
				PersonDAO.getInstance().delete(toDelete);
			}
		}

		if(toDelete == null) {
			LOG.error("Could not find and delete person with id ''{0}''", personId);
		}
	}

	public void hidePersonDialog() {
		PrimeFaces.current().executeScript("PF('personDialog').hide()");
		PrimeFaces.current().ajax().update("mainForm");
	}
}
