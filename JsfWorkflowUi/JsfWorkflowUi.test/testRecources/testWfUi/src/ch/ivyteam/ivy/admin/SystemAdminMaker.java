package ch.ivyteam.ivy.admin;

import java.util.concurrent.Callable;

import ch.ivyteam.ivy.security.IPermissionGroup;
import ch.ivyteam.ivy.security.ISecurityDescriptor;
import ch.ivyteam.ivy.security.ISecurityManager;
import ch.ivyteam.ivy.security.IUser;
import ch.ivyteam.ivy.security.SecurityManagerFactory;
import ch.ivyteam.ivy.server.IServer;
import ch.ivyteam.ivy.server.ServerFactory;


public class SystemAdminMaker 
{
	public static void grantSystemAdminRightsTo(final IUser user) throws Exception
    {
    	SecurityManagerFactory.getSecurityManager().executeAsSystem(new Callable<Void>(){
    	
				@Override
				public Void call() throws Exception {
					IServer server = ServerFactory.getServer();
			        ISecurityManager securityManager = server.getSecurityManager();
			        ISecurityDescriptor systemSecurityDescriptor = securityManager.getSystemSecurityDescriptor();
					IPermissionGroup rootPermissionGroup = securityManager.getSystemSecurityDescriptor().getSecurityDescriptorType().getRootPermissionGroup();    
	                systemSecurityDescriptor.grantPermissions(rootPermissionGroup, user);
	                systemSecurityDescriptor.grantPermission(ch.ivyteam.ivy.security.IPermission.TASK_PAGE_ARCHIVE_READ_ALL, user);
	                systemSecurityDescriptor.grantPermission(ch.ivyteam.ivy.security.IPermission.ADMINISTRATE_WORKFLOW, user);
	                systemSecurityDescriptor.grantPermission(ch.ivyteam.ivy.security.IPermission.CASE_READ_ALL, user);
					return null;
				}
		});
    }
}