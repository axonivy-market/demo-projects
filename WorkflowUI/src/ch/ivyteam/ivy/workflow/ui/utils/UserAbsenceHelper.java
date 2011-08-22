package ch.ivyteam.ivy.workflow.ui.utils;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.concurrent.Callable;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.security.IRole;
import ch.ivyteam.ivy.security.IUser;
import ch.ivyteam.ivy.security.IUserAbsence;

/**
 * 
 * @author tirib, TI-Informatique
 * @since 11.06.2011
 * 
 */ 

public class UserAbsenceHelper {

	 /**
	  * if the user own this role then he can manager absences for all users
	  */
	 public final static String ABSENCES_MANAGER_ROLE = "ABSENCES_MANAGER";

	/**
	 * 
	 * @param user on which the check needs to be done
	 * @return true if the user own the role {@ABSENCES_MANAGER_ROLE}then he can manager absences for all users
	 * 
	 */
	public static Boolean isAbsencesManager(final IUser user)
	{   
		try
	    {
	      return Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<Boolean>()
	        {
	          public Boolean call() throws Exception
	          {
	        	  List<IRole> roles = user.getAllRoles();
	        	  
	        	  for (IRole role: roles)
	        	  {
	        		  Ivy.log().debug("Checking the role {0}.", role.getName());
	        		  if (ABSENCES_MANAGER_ROLE.equals(role.getName()))
	        			  return true;
	        	  }
	        	  return false;
	          }
	        });
	    }
	    catch (Exception e)
	    {
	      Ivy.log().error("Error during is absences manager: " + e.getMessage(), e);
	      return false;
	    }
	}
	
	
	/**
	 * It returns the list of user's absences executed as system user.
	 * 
	 * @param user for which the absences has to be found
	 * @return list of user's absences
	 */
	public static List<IUserAbsence> getAbsences(final IUser user)
	{   
		try
	    {
	      return Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<List<IUserAbsence>>()
	        {
	          public List<IUserAbsence> call() throws Exception
	          {
	        	  return user.getAbsences();
	          }
	        });
	    }
	    catch (Exception e)
	    {
	      Ivy.log().error("Error during get absences: " + e.getMessage(), e);
	      return null;
	    }
	} 
	
	

	/**
	 * It creates the absence for the user
	 * 
	 * @param user for which the absence needs to be created
	 * @param startDateInclusive the start date of the absence (inclusive this date)
	 * @param stopDateInclusive the stop date of the absence (inclusive this date)
	 * @param description the description 
	 * @return the new absence
	 */
	public static IUserAbsence createAbsence(final IUser user, final Date startDateInclusive, 
			final Date stopDateInclusive, final String description)
	{   
		try
	    {
			final String sessionUserName = Ivy.session().getSessionUserName();
			
	      return Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<IUserAbsence>()
	        {
	          public IUserAbsence call() throws Exception
	          {
	        	  Ivy.log().info("User " + sessionUserName + " creates absence for user " + user.getName() + ":" + 
	        			  "from inclusive=" + startDateInclusive + 
	        			  "stop inclusive=" + stopDateInclusive + 
	        			  ", description=" + description);
	        	  String fullDescription = new SimpleDateFormat("yyyy.MM.dd HH:mm:ss").format(new Date()) + 
	        	  							" " + sessionUserName +  
	        	  							(description.length()>0? " - " + description: "");
	        	  
	        	  return user.createAbsence(startDateInclusive, stopDateInclusive, fullDescription);
	          }
	        });
	    }
	    catch (Exception e)
	    {
	      Ivy.log().error("Error during create absence: " + e.getMessage(), e);
	      return null;
	    }
	} 
	
	
	/**
	 * It deletes the absence
	 * 
	 * @param user
	 * @param userAbsence
	 * @return
	 */
	public static Boolean deleteAbsence(final IUser user, final IUserAbsence userAbsence)
	{   
		try
	    {
			final String sessionUserName = Ivy.session().getSessionUserName();
			
	      return Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<Boolean>()
	        {
	          public Boolean call() throws Exception
	          {
	        	  Ivy.log().info("User " + sessionUserName + " deletes absence for user " + user.getName() + ":" + 
	        			  "from inclusive=" + userAbsence.getStartTimestamp() + 
	        			  "stop inclusive=" + userAbsence.getStopTimestamp() + 
	        			  ", description=" + userAbsence.getDescription());
	        	  
	        	  user.deleteAbsence(userAbsence);
	        	  return true;
	          }
	        });
	    }
	    catch (Exception e)
	    {
	      Ivy.log().error("Error during delete absence: " + e.getMessage(), e);
	      return false;
	    }
	} 
}