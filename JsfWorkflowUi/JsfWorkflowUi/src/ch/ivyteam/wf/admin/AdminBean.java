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
}  