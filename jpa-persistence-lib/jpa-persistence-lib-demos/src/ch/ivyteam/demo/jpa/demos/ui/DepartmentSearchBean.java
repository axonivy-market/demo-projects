package ch.ivyteam.demo.jpa.demos.ui;

import java.util.ArrayList;
import java.util.List;

import javax.faces.application.FacesMessage;
import javax.faces.application.FacesMessage.Severity;

import org.apache.commons.lang.StringUtils;
import org.primefaces.PrimeFaces;

import com.axonivy.persistence.dao.QuerySettings;
import com.axonivy.persistence.dao.markers.AuditableMarker;

import ch.ivyteam.demo.jpa.demos.Logger;
import ch.ivyteam.demo.jpa.demos.daos.DepartmentDAO;
import ch.ivyteam.demo.jpa.demos.entities.Department;
import ch.ivyteam.demo.jpa.demos.entities.Department_;
import ch.ivyteam.demo.jpa.demos.service.ValidationService;
import ch.ivyteam.demo.jpa.demos.validation.groups.SaveErrorGroup;
import ch.ivyteam.demo.jpa.demos.validation.groups.SaveWarnGroup;

public class DepartmentSearchBean {
	private static final Logger LOG = Logger.getLogger(DepartmentSearchBean.class);
	private List<Department> departments = new ArrayList<>();
	private Department department = new Department();
	private Severity severity = null;

	public DepartmentSearchBean() {
		refreshDepartments();
	}

	protected void refreshDepartments() {
		try {
			departments = DepartmentDAO.getInstance()
					.findAll(new QuerySettings<Department>()
							.withMarkers(AuditableMarker.ALL)
							.withOrderAttributes(Department_.name));
		} catch (Exception e) {
			LOG.error("Error when refreshing Departments", e);
		}
	}

	/**
	 * @return the departments
	 */
	public List<Department> getDepartments() {
		return departments;
	}

	/**
	 * @return the department
	 */
	public Department getDepartment() {
		return department;
	}

	public void setActiveDepartment(String departmentId) {
		if (StringUtils.isEmpty(departmentId)) {
			department = new Department();
		}
		else {
			department = DepartmentDAO.getInstance().findById(departmentId);
		}
	}

	public void validateDepartmentForSave(boolean secondSave) {
		if(secondSave) {
			severity = ValidationService.validate2FacesMessages(department, true, SaveErrorGroup.class);
		}
		else {
			severity = ValidationService.validate2FacesMessages(department, true, SaveErrorGroup.class, SaveWarnGroup.class);
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

	public void saveDepartment() {
		DepartmentDAO.getInstance().save(department);
		refreshDepartments();
	}

	public void deleteDepartment(String departmentId) {
		Department toDelete = null;
		if (StringUtils.isNotEmpty(departmentId)) {
			toDelete = DepartmentDAO.getInstance().findById(departmentId);
			if(toDelete != null) {
				LOG.info("Deleting department ''{0}'' (id: {2})", toDelete.getName(), departmentId);
				DepartmentDAO.getInstance().delete(toDelete);
				refreshDepartments();
			}
		}

		if(toDelete == null) {
			LOG.error("Could not find and delete department with id ''{0}''", departmentId);
		}
	}

	public void hideDepartmentDialog() {
		PrimeFaces.current().executeScript("PF('departmentDialog').hide()");
		PrimeFaces.current().ajax().update("mainForm");
	}
}
