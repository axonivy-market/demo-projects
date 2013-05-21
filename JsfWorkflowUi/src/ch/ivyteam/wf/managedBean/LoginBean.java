package ch.ivyteam.wf.managedBean;

import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;

import ch.ivyteam.ivy.environment.Ivy;

@ManagedBean
@SessionScoped
public class LoginBean {
	private String username;
	private String password;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void login() {
		boolean loggedIn = Ivy.session().loginSessionUser(username, password);
		password = null;
		
		if (!loggedIn) {
			FacesContext.getCurrentInstance().addMessage(
					null, new FacesMessage(FacesMessage.SEVERITY_ERROR, "Login failed", ""));
		}
	}
}
