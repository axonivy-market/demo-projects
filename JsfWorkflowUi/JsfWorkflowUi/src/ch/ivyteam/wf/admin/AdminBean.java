package ch.ivyteam.wf.admin;  
  
import java.io.Serializable;

import javax.faces.bean.ManagedBean;

import ch.ivyteam.ivy.environment.Ivy;
  
@SuppressWarnings("serial")
@ManagedBean
public class AdminBean implements Serializable {
    private Boolean isAdmin;
    
	public Boolean getIsAdmin() {
		isAdmin = Ivy.wf().getSecurityContext().getCurrentSession().getSessionUser().getProperty("isAdmin").equals("true");
		return isAdmin;
	}
}  