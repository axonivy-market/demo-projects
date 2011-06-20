package ch.ivyteam.ivy.workflow.ui.utils;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.concurrent.Callable;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.security.IRole;
import ch.ivyteam.ivy.security.IUser;
import ch.ivyteam.ivy.security.IUserSubstitute;
/**
 * 
 * @author tirib, TI-Informatique
 * @since 11.06.2011
 * 
 */ 
public class UserSubstituteHelper {
	 /**
	  * if the user own this role then he can manager substitutes for all users
	  */
	 private final static String SUBSTITUTES_MANAGER_ROLE = "SUBSTITUTES_MANAGER";
	 
	/**
	 * 
	 * @param user on which the check needs to be done
	 * @return true if the user own the role {@SUBSTITUTES_MANAGER_ROLE}then he can manager substitutes for all users
	 * 
	 */
	public static Boolean isSubstitutesManager(final IUser user)
	{   
		try
	    {
	      return Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<Boolean>()
	        {
	          public Boolean call() throws Exception
	          {
	        	  List<IRole> roles = user.getAllRoles();
	        	  Ivy.log().debug("User {0} class {1}.", user, user.getClass().toString());
	        	  for (IRole role: roles)
	        	  {
	        		  Ivy.log().debug("Checking the role {0}.", role.getName());
	        		  if (SUBSTITUTES_MANAGER_ROLE.equals(role.getName()))
	        			  return true;
	        	  }
	        	  return false;
	          }
	        });
	    }
	    catch (Exception e)
	    {
	      Ivy.log().error("Error during is substitutes manager: " + e.getMessage(), e);
	      return false;
	    }
	}
	
	
	/**
	 * It returns the list of user's substitutes executed as system user.
	 * 
	 * @param user for which the substitutes has to be found
	 * @return list of user's substitutes
	 */
	public static List<IUserSubstitute> getSubstitutes(final IUser user)
	{   
		try
	    {
	      return Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<List<IUserSubstitute>>()
	        {
	          public List<IUserSubstitute> call() throws Exception
	          {
	        	  return user.getSubstitutes();
	          }
	        });
	    }
	    catch (Exception e)
	    {
	      Ivy.log().error("Error during get substitutes: " + e.getMessage(), e);
	      return null;
	    }
	} 
	
	
	/**
	 * It creates a new substitute
	 *  
	 * @param user for which the substitute needs to be created
	 * @param mySubstitute a user which is the substitute of this user
	 * @param forThisRole  a role for which the substitute user substitutes me (maybe null if substitute user substitutes me only personally)
	 * @param description the description 
	 * @return the new substitute 
	 */
	public static IUserSubstitute createSubstitute(final IUser user, final IUser mySubstitute, final IRole forThisRole, final String description)
	{   
		try
	    {
			final String sessionUserName = Ivy.session().getSessionUserName();
			
	      return Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<IUserSubstitute>()
	        {
	          public IUserSubstitute call() throws Exception
	          {
	        	  Ivy.log().info("User {0} creating substitute for user {1}: substitute={2}, forRole={3}, description={4}.",
	        			  sessionUserName,
	        			  user.getName(),
	        			  mySubstitute.getName(),
	        			  forThisRole,
	        			  description);
	        	  String fullDescription = new SimpleDateFormat("yyyy.MM.dd HH:mm:ss").format(new Date()) + 
	        	  							" " + sessionUserName +  
	        	  							(description.length()>0? " - " + description: "");
	        	  return user.createSubstitute(mySubstitute, forThisRole, fullDescription);
	          }
	        });
	    }
	    catch (Exception e)
	    {
	      Ivy.log().error("Error during create substitute: " + e.getMessage(), e);
	      return null;
	    }
	} 
	
	/**
	 * It deletes a substitute
	 *  
	 * @param user for which substitute needs to be deleted
	 * @param userSubstitute to delete
	 * @return true if on exception during delete substitute
	 */
	public static Boolean deleteSubstitute(final IUser user, final IUserSubstitute userSubstitute)
	{   
		try
	    {
			final String sessionUserName = Ivy.session().getSessionUserName();
			
	      return Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<Boolean>()
	        {
	          public Boolean call() throws Exception
	          {	        	  
	        	  Ivy.log().info("User {0} deletes substitute for user {1}: substitute={2}, forRole={3}, description={4}.",
	        			  sessionUserName, 
	        			  user.getName(), 
	        			  userSubstitute.getSubstituteUser().getName(), 
	        			  userSubstitute.isPersonallyOnly()? "personally only": userSubstitute.getSubstitutionRole(), 
	        			  userSubstitute.getDescription()); 
	        	  
	        	  user.deleteSubstitute(userSubstitute);
	        	  return true;
	          }
	        });
	    }
	    catch (Exception e)
	    {
	      Ivy.log().error("Error during delete substitute: " + e.getMessage(), e);
	      return false;
	    }
	} 
	
	

	
}