package ch.ivyteam.wf.admin;  
  
import java.io.Serializable;

import javax.faces.bean.ManagedBean;

import ch.ivyteam.ivy.environment.Ivy;
  
@SuppressWarnings("serial")
@ManagedBean
public class AdminBean implements Serializable {
    
	public Boolean isWorkflowAdmin() {
		return hasTaskPermissions() && hasCasePermissions();
	}

	private Boolean hasTaskPermissions() {
		return Ivy.session().hasPermission(Ivy.request().getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.TASK_READ_ALL);
	}

	private Boolean hasCasePermissions() {
		return Ivy.session().hasPermission(Ivy.request().getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.CASE_READ_ALL);
	}
	
	public Boolean hasWorkflowEventReadPermission() {
		return Ivy.session().hasPermission(Ivy.request().getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.WORKFLOW_EVENT_READ_ALL);
	}
	
	public Boolean hasReadAbsencesPermission() {
		return Ivy.session().hasPermission(Ivy.request().getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.USER_READ_ABSENCES);
	}
	
	public Boolean hasAbsencePermission() {
		return Ivy.session().hasPermission(Ivy.request().getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.USER_CREATE_ABSENCE)
				&& Ivy.session().hasPermission(Ivy.request().getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.USER_READ_ABSENCES);
	}
	
	public Boolean hasSubstitutePermission() {
		return Ivy.session().hasPermission(Ivy.request().getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.USER_CREATE_SUBSTITUTE)
				&& Ivy.session().hasPermission(Ivy.request().getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.USER_READ_SUBSTITUTIONS);
	}
	
	public Boolean hasSessionReadAllPermission() {
		return Ivy.session().hasPermission(Ivy.request().getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.SESSION_READ_ALL)
				&& Ivy.session().hasPermission(Ivy.request().getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.SESSION_READ_SESSION_USER)
				&& Ivy.session().hasPermission(Ivy.request().getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.SESSION_READ_ACTIVE_SUBSTITUTIONS)
				&& Ivy.session().hasPermission(Ivy.request().getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.SESSION_READ_ABSENT);
	}	
	
}  