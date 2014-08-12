package ch.ivyteam.wf.common;  
  
import java.util.HashSet;
import java.util.Set;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.security.ISecurityMember;
import ch.ivyteam.ivy.security.IUser;
  
@ManagedBean
@RequestScoped
public class SubstituteBean
{
	private Set<ISecurityMember> activators;
    
	private Set<ISecurityMember> getActivators() 
	{
		if(activators == null)
		{
			IUser myUser = Ivy.session().getSessionUser();
			activators = new HashSet<>();
	        activators.addAll(myUser.getAllRoles());
	        activators.add(myUser);
		}
		return activators;
	}
	
	public boolean isSubstitute(ISecurityMember activator)
	{
		return !getActivators().contains(activator);
	}
}