package ch.ivyteam.wf.common;

import javax.faces.bean.ManagedBean;
import javax.faces.context.FacesContext;

@ManagedBean
public class Navigation {
	
	boolean isAdminMode = false;
	
	public String getStyle(String name)
	{
		return isActive(name) ? "active" : "";
	}

	public String getStyleA(String name)
	{
		if(isAdminMode && name.equalsIgnoreCase("TaskList") || name.equalsIgnoreCase("CaseList"))
		{
			return "";
		}
		else
		{
			return isActive(name) ? "active" : "";
		}	
	}	
	
	public void setAdminMode(boolean isAdmin)
	{	
		isAdminMode = isAdmin;
	}
	
	private boolean isActive(String name)
	{
		String requestPathInfo = FacesContext.getCurrentInstance().getExternalContext().getRequestPathInfo();
		return requestPathInfo.contains(name);
	}
}
