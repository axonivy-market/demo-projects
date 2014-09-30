package ch.ivyteam.ivy.admin;

import java.util.concurrent.Callable;

import ch.ivyteam.ivy.application.ApplicationConfigurationManagerNavigationUtil;
import ch.ivyteam.ivy.application.IApplication;
import ch.ivyteam.ivy.security.IPermissionGroup;
import ch.ivyteam.ivy.security.ISecurityDescriptor;
import ch.ivyteam.ivy.security.IUser;
import ch.ivyteam.ivy.security.SecurityManagerFactory;


public class SystemAdminMaker 
{
	public static void grantSystemAdminRightsTo(final IUser user) throws Exception
    {
    	SecurityManagerFactory.getSecurityManager().executeAsSystem(new Callable<Void>(){
				@Override			
				public Void call() throws Exception {
					IApplication application = ApplicationConfigurationManagerNavigationUtil.getApplication(user.getSecurityContext());
					ISecurityDescriptor securityDescriptor = application.getSecurityDescriptor();
					IPermissionGroup rootPermissionGroup = securityDescriptor.getSecurityDescriptorType().getRootPermissionGroup();
	                securityDescriptor.grantPermissions(rootPermissionGroup, user);
	                
	                user.setProperty("isAdmin", String.valueOf(true));
	                return null;
				}
		});
    }
}