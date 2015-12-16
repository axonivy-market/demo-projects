package ch.ivyteam.wf.common;

import javax.faces.bean.ManagedBean;
import javax.faces.context.FacesContext;

@ManagedBean
public class Navigation {
	
	public String getStyle(String name)
	{
		return isActive(name) ? "active" : "";
	}
	
	private boolean isActive(String name)
	{
		String requestPathInfo = FacesContext.getCurrentInstance().getExternalContext().getRequestPathInfo();
		return requestPathInfo.contains(name + ".xhtml");
	}
}
