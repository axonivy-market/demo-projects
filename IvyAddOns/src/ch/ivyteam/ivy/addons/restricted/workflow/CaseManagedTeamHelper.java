package ch.ivyteam.ivy.addons.restricted.workflow;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.StringTokenizer;
import java.util.concurrent.Callable;

import ch.ivyteam.ivy.addons.data.technical.IvyResultStatus;
import ch.ivyteam.ivy.environment.EnvironmentNotAvailableException;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.persistence.PersistencyException;
import ch.ivyteam.ivy.security.IUser;
import ch.ivyteam.ivy.workflow.ICase;
import ch.ivyteam.ivy.workflow.ITask;

/**
 * 
 * @author Rifat Binjos, TI-Informatique
 * @since 05.08.2010
 *
 */

public class CaseManagedTeamHelper {

	/**
	 * user property that is used for the managed teams feature (team members and team manager)
	 * in order to store the user's managed teams
	 */
	private static final String MANAGED_TEAMS_PROPERTY_KEY = "xivy.addons.managedTeams";

	
	/**
	 * It sets case managed teams value to the case data 
	 * without permission restriction. Each additional team is comma separated.
	 * 
	 * @param caseManagedTeams is list of managed teams to set.
	 * @param wfCase is the case on which data has to be modified
	 * @return true if successful, otherwise false
	 * @throws Exception  
	 */
	public static IvyResultStatus setCaseManagedTeams(final ICase wfCase, final List<String> caseManagedTeams)
    {
		IvyResultStatus ivyResultStatus = new IvyResultStatus();
		ivyResultStatus.setSuccessful(true);
		
        try {
            Boolean successful = Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<Boolean>(){
                public Boolean call() throws Exception {
                	if (caseManagedTeams.size() > 0)
                	{
                		String caseManagedTeamsAsString = "";
                		for(String managedTeam: caseManagedTeams)
                			caseManagedTeamsAsString += managedTeam + ",";
                		
                		// remove the last character ','
                		caseManagedTeamsAsString = caseManagedTeamsAsString.substring(0, caseManagedTeamsAsString.length()-1);
                		
                		// set the managed teams to the case
                		Ivy.log().info("Case {0}-{1} has now managed teams {2} set.", wfCase.getIdentifier(), wfCase.getName(), caseManagedTeams);
		            	wfCase.setCustomVarCharField5(caseManagedTeamsAsString);
		            	return true;
                	}
                	else
                	{
                		return false;
                	}
                }
            });
            
            ivyResultStatus.setSuccessful(successful);
            
            if (!successful)
            {
            	ivyResultStatus.setCode("XIVY_ADD_WF_002");
            	List<Object> args = new ArrayList<Object>();
            	args.add(wfCase.getIdentifier());
            	ivyResultStatus.setMessage(Ivy.cms().co("/messages/XIVY_ADD_WF_002", args));
            }
            
            // return the result
            return ivyResultStatus;

        } 
        catch (Exception e)
        {
        	ivyResultStatus.setSuccessful(false);
        	ivyResultStatus.setCode("XIVY_ADD_WF_002");
        	List<Object> args = new ArrayList<Object>();
        	args.add(wfCase.getIdentifier());
        	ivyResultStatus.setMessage(Ivy.cms().co("/messages/XIVY_ADD_WF_002", args));
        	ivyResultStatus.setJavaException(e);
        	return ivyResultStatus;
        }
    }
	

	
	
	
	/**
	 * It get case managed teams value from the case data
	 * without permission restriction
	 * 
	 * @param wfCase from which data has to be get
	 * @return the managed teams available on the case. If there is several teams, they are comma separated.If no data, then the empty string is returned.
	 * @throws Exception
	 */
	public static String getCaseManagedTeams(final ICase wfCase) throws Exception
    {
        try {
            return Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<String>(){
                public String call() throws Exception {
                	String customVarCharField5 = wfCase.getCustomVarCharField5();
                	return customVarCharField5 != null? customVarCharField5: "";   
                }
            });

        } catch (Exception e)
        {
        	throw new Exception("Error during getting the managed teams on case " + wfCase.getIdentifier(), e);
        }
    }
	
	
	/**
	 * It get case managed teams value from the case data
	 * without permission restriction
	 * 
	 * @param wfCase from which data has to be get
	 * @return the managed teams available on the case. If there is several teams, they are comma separated.If no data, then the empty string is returned.
	 * @throws Exception
	 */
	public static List<String> getCaseManagedTeamsAsList(final ICase wfCase) throws Exception
    {
        try {
            return Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<List<String>>(){
                public List<String> call() throws Exception {
                	String propValue = "";
    	            String propValueArray[] = null;
                	List<String> managedTeams = new ArrayList<String>();
                	
                	propValue = wfCase.getCustomVarCharField5();
    	            if (propValue != null && propValue.length() > 0)
    	            {
    	              propValueArray = propValue.split(",");
    	              managedTeams = Arrays.asList(propValueArray);
    	            }
                	return managedTeams;   
                }
            });

        } catch (Exception e)
        {
        	throw new Exception("Error during getting the managed teams on case " + wfCase.getIdentifier(), e);
        }
    }
	
	
	
	/**
	 * It get task managed team from task data 
	 * without permission restriction
	 * 
	 * @param wfTask
	 *					from which data has to be get		 					
	 * @return
	 *					the managed teams available on the task. If no data, then the empty string is returned. 					
	 * @throws Exception
	 */
	private static String getTaskManagedTeam(final ITask wfTask) throws Exception
	{
        try {
            return Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<String>(){
                public String call() throws Exception {
                	String customVarCharField5 = wfTask.getCustomVarCharField5();
                	return customVarCharField5 != null? customVarCharField5: "";   
                }
            });

        } catch (Exception e)
        {
        	throw new Exception("Error during getting the managed teams on task " + wfTask.getIdentifier(), e);
        }		
	}
	
	
	
	/**
	 * It returns the user's managed teams as a list
	 * 
	 * @return list of user's managed teams
	 * @throws EnvironmentNotAvailableException
	 * @throws PersistencyException
	 * @throws Exception
	 */
	public static List<String> getSessionUserManagedTeamsAsList() throws EnvironmentNotAvailableException, PersistencyException, Exception
	{
		return getSessionUserManagedTeamsAsList(Ivy.session().getSessionUser());
	}
	
	
	/**
	 * It returns the user's managed teams as a list
	 * 
	 * @param user
	 * 				session user for which managed teams to find.
	 * @return 
	 * 				list of user's managed teams. If no data, the empty list is returned.
	 * 
	 * @throws EnvironmentNotAvailableException
	 * @throws PersistencyException
	 * @throws Exception
	 */
	  public static List<String> getSessionUserManagedTeamsAsList(final IUser user) throws EnvironmentNotAvailableException, PersistencyException, Exception
	  {
	    
	    try
	    {
	      return Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<List<String>>()
	        {
	          public List<String> call() throws Exception
	          {
	            String propValue = "";
	            String propValueArray[] = null;

	            List<String> managedTeams = new ArrayList<String>();
	            
	            propValue = user.getProperty(MANAGED_TEAMS_PROPERTY_KEY);

	            Ivy.log().debug("The user {0} property {1} contains {2} value.", 
	            		user.getName(), MANAGED_TEAMS_PROPERTY_KEY, propValue);
	            
	            if (propValue != null && propValue.length() > 0)
	            {
	              propValueArray = propValue.split(",");
	              managedTeams = Arrays.asList(propValueArray);
	            }

	            return managedTeams;
	          }
	        });
	    }
	    catch (Exception e)
	    {
	    	throw new Exception("Error during getting the managed teams on user " + Ivy.session().getSessionUserName(), e);
	    }
	  }
	
	  
	  /**
	   * It returns the user's managed teams as a string value
	   * 
	   * @param user from which data has to be get
	   * @return comma separated list of user's managed teams
	   * @throws EnvironmentNotAvailableException
	   * @throws PersistencyException
	   * @throws Exception
	   */
	  public static String getSessionUserManagedTeamsAsString(final IUser user) throws EnvironmentNotAvailableException, PersistencyException, Exception
	  {
	    
	    try
	    {
	      return Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<String>()
	        {
	          public String call() throws Exception
	          {
	            String managedTeams = "";
	            
	            managedTeams = user.getProperty(MANAGED_TEAMS_PROPERTY_KEY);

	            Ivy.log().debug("The user {0} property {1} contains {2} value.", 
	            		user.getName(), MANAGED_TEAMS_PROPERTY_KEY, managedTeams);
	            
	            return managedTeams != null? managedTeams: "";
	          }
	        });
	    }
	    catch (Exception e)
	    {
	    	throw new Exception("Error during getting the managed teams on user " + Ivy.session().getSessionUserName(), e);
	    }
	  }
 
	  
	  /**
	   * It set the user's managed teams with string value
	   * 
	   * @param user 
	   * 					from which data has to be set
	   * @param managedTeams 
	   * 					a list of managed teams as a string value comma separated to set
	   * @return 
	   * 					true if operation successful; otherwise false
	   * @throws EnvironmentNotAvailableException
	   * @throws PersistencyException
	   * @throws Exception
	   */
	  public static Boolean setSessionUserManagedTeamsAsString(final IUser user, final String managedTeams) throws EnvironmentNotAvailableException, PersistencyException, Exception
	  {
	    
	    try
	    {
	      return Ivy.session().getSecurityContext().executeAsSystemUser(new Callable<Boolean>()
	        {
	          public Boolean call() throws Exception
	          {
	        	  // remove the white spaces
	        	  String teams = normaliseManagedTeams(managedTeams);
	        	  user.setProperty(MANAGED_TEAMS_PROPERTY_KEY, teams);
	        	  Ivy.log().debug("User {0} has now <{1}> as managed teams value.", user.getName(), teams);
	        	  return true;
	          }
	        });
	    }
	    catch (Exception e)
	    {
	    	throw new Exception("Error during setting the managed teams on user " + Ivy.session().getSessionUserName(), e);
	    }
	  }
	  
	  
	  /**
	   * It tells if the session user is team manager for that task AND its case 
	   * 
	   * @param wfTask
	   * 				task (and case that task belongs to ) on which check has to be done. 
	   * @return
	   * 				true if user is team manager on the task AND on the case, otherwise false.
	 * @throws Exception 
	   */
	  public static Boolean isSessionUserTeamManagerOnWfTask(ITask wfTask) throws Exception
	  {
		  Boolean result = false;		  
		  List<String> sessionUserManagedTeams = null;
		  String wfTaskManagedTeam = null;
		  List<String> wfCaseManagedTeams = null;
		  
		  if (Ivy.session().isSessionUserUnknown())
			  return result;
		  
		  // get the list of managed teams of the user
		  sessionUserManagedTeams = getSessionUserManagedTeamsAsList();		  
		  if (sessionUserManagedTeams.isEmpty())
			  return result;

		  // get the managed team on task
		  wfTaskManagedTeam = getTaskManagedTeam(wfTask);
		  if (wfTaskManagedTeam.length() < 0)
			  return result;
		  
		  // get the managed teams on case
		  wfCaseManagedTeams = getCaseManagedTeamsAsList(wfTask.getCase());
		  if (wfCaseManagedTeams.isEmpty())
			  return result;
		  
		  
		  // run through session user managed teams and find out if he is manager on the task AND on its case
		  for (String sessionUserManagedTeam: sessionUserManagedTeams)
		  {
			  if (wfTaskManagedTeam.equals(sessionUserManagedTeam) && 
					  	wfCaseManagedTeams.contains(sessionUserManagedTeam))
			  {
				  // the session user is manager on task AND on case
				  result = true;
				  break;
			  }
		  }
		  
		  return result;
	  }
	  
	  /** 
	   * It returns a string of comma separated managed teams without spaces (leading, central, trailing)
	   * 
	   * @param managedTeams
	   * 					list of managed teams to normalise
	   * @return
	   * 					list of comma separated managed teams without spaces.
	   */
	  private static String normaliseManagedTeams(String managedTeams) {
		  StringTokenizer st = new StringTokenizer(managedTeams," ",false);
		  String normalisedManagedTeams="";
		  
		  while (st.hasMoreElements()) 
			  normalisedManagedTeams += st.nextToken().trim();
		  
		  return normalisedManagedTeams;
		}

	  
}