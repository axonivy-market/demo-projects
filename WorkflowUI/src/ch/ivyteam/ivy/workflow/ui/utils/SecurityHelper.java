package ch.ivyteam.ivy.workflow.ui.utils;

import java.util.concurrent.Callable;

import ch.ivyteam.ivy.cm.IContentObjectValue;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.scripting.objects.Binary;
import ch.ivyteam.ivy.security.SecurityManagerFactory;
/**
 * @author bb
 * 
 */
public class SecurityHelper {

	/**
	 * read a content object value as system
	 * 
	 * @param cms path
	 * @return IContentObjectValue
	 * @throws Exception 
	 */
	public static IContentObjectValue getContnetObjectValueAsSystem(final String path) throws Exception {
		
		try {
			return SecurityManagerFactory.getSecurityManager().executeAsSystem(new Callable<IContentObjectValue>(){
				public IContentObjectValue call() throws Exception {
					// sudo
					return Ivy.cms().getContentObjectValue(path, 
							Ivy.session().getContentLocale()); // java.util.Locale.ENGLISH
				}
			});			
		} catch (Exception e) {
		
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * read a content object byte array as system
	 * 
	 * @param contnet object value
	 * @return Binary
	 * @throws Exception 
	 */
	public static Binary getContentAsByteArray(final IContentObjectValue cov) throws Exception {
		
		try {
			return SecurityManagerFactory.getSecurityManager().executeAsSystem(new Callable<Binary>(){
				public Binary call() throws Exception {
					// sudo
					return new Binary(cov.getContentAsByteArray()); // java.util.Locale.ENGLISH
				}
			});			
		} catch (Exception e) {
		
			e.printStackTrace();
		}
		return null;
	}	
}
