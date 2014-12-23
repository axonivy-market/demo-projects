package ch.ivyteam.wf.admin;  
  
import java.io.Serializable;

import javax.faces.bean.ManagedBean;

import ch.ivyteam.ivy.environment.Ivy;
  
@SuppressWarnings("serial")
@ManagedBean
public class AdminBean implements Serializable {
    
	public Boolean getIsAdmin() {
		return Ivy.session().hasPermission(Ivy.request().getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.ADMINISTRATE_WORKFLOW);
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