package ch.ivyteam.ivy.addons.restricted.util;

import java.util.concurrent.Callable;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.workflow.ICase;

/**
 * It helps to call public api as SYSTEM
 * 
 * @author tirib, TI-Informatique
 * @since 16.11.2010
 *
 */

public class PublicAPIHelper {

	
	/**
	 * It find case by case identifier
	 * 
	 * @param caseIdentifier
	 * @return case, if not found it returns null 
	 */
	public static ICase findCaseAsSystemUser(final int caseIdentifier)
    {
		ICase wfCase = null;
		
        try {
        	wfCase = Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<ICase>() {
                                            public ICase call() throws Exception {
                                            		return Ivy.wf().findCase(caseIdentifier);
                                            }
            });               
        } catch (Exception e) {
	        Ivy.log().error("Error during the findCaseAsSystemUser(): " + e.getMessage() + " case identifier: " + caseIdentifier, e);
        }
        
		return wfCase;
    }
	
	
	/**
	 * It returns the Ivy application file area absolute path
	 * 
	 * @return 
	 * 		application file area absolute path
	 */
	public static String getApplicationFileAreaAbsolutePathAsSystemUser()
	{
		String fileAreaAbsolutePath = "";
		
        try {
        	fileAreaAbsolutePath = Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<String>() {
                                            public String call() throws Exception {
                                            		return Ivy.wf().getApplication().getFileArea().getAbsolutePath();
                                            }
            });               
        } catch (Exception e) {
	        Ivy.log().error("Error during the getApplicationFileAreaAbsolutePathAsSystemUser(): " + e.getMessage(), e);
        }
        
		return fileAreaAbsolutePath;
		
	}
	

}