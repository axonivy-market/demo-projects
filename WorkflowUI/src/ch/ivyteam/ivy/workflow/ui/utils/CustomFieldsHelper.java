package ch.ivyteam.ivy.workflow.ui.utils;

import java.text.MessageFormat;
import java.util.concurrent.Callable;

import ch.ivyteam.ivy.cm.IContentManagementSystem;
import ch.ivyteam.ivy.environment.EnvironmentNotAvailableException;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.project.IvyProjectNavigationUtil;
import ch.ivyteam.ivy.security.SecurityManagerFactory;
import ch.ivyteam.ivy.workflow.ICase;
import ch.ivyteam.ivy.workflow.ITask;
import ch.ivyteam.ivy.workflow.ui.data.restricted.common.CustomFieldsLabels;
import ch.ivyteam.log.Logger;

/**
 * 
 * @author tirib
 * @since march 30th, 2010
 * 
 * TODO: replace the getContentObject() with method that will also search in required libraries cms.
 * IContentManagementSystem:getContentObject(String uri)
 * Gets the content object with the given uri. Only this content management system is searched (i.e. local search only), overriding is not considered. 
 * If you want to use overriding and include required projects in the search then you should use IContentManagementSystem.findContentObject(String) instead. This is normally the intended behavior. 
 * 
 *
 */
public class CustomFieldsHelper {

	
	/**
	 * variable that helps to loop on the custom fields cms uris
	 */
	private static final String CUSTOM_FIELDS_NAMES[] = {"customVarcharField", "customDecimalField", "customTimestampField"};
	
	/**
	 * the CMS uri for the case custom fields labels depending on project (labels are common for all cases) 
	 */
	private static final String CASE_CUSTOM_FIELDS_PROJECT_BASIC_URI = "/processes/additionalInformation/case";
	
	
	/**
	 * the CMS uri for the case custom fields labels depending on process
	 * Remark:
	 * {0} stands for case.getProcessCode() without spaces
	 */
	private static final String CASE_CUSTOM_FIELDS_PROCESS_BASIC_URI = "/processes/{0}/additionalInformation/case";

	
	/**
	 * the CMS uri for the task custom fields labels depending on project (labels are common for all tasks)
	 * Remark:
	 * {0} stands for task.getKindCode() without spaces
	 */
	private static final String TASK_CUSTOM_FIELDS_PROJECT_BASIC_URI = "/processes/additionalInformation/task";
	
	
	/**
	 * the CMS uri for the task custom fields labels depending on process
	 * Remarks:
	 * {0} stands for case.getProcessCode() without spaces
	 */
	private static final String TASK_CUSTOM_FIELDS_PROCESS_BASIC_URI = "/processes/{0}/additionalInformation/task";
	


	
	

	
	/**
	 * Get the case custom fields labels from CMS according to the following order:
	 * <ul> 	 
	 *  <li>try to get /processes/{<process code>}/additionalInformation/case/[customVarchar|customDecimal|customTimestamp][1-5] </li>
	 * 	<li>if empty then try to get /processes/additionalInformation/case/[customVarchar|customDecimal|customTimestamp][1-5] </li>
	 * 	<li>if empty return null</li>
	 * </ul>
	 * 
	 * Remarks:
	 * <process code> is case.getProcessCode() without spaces
	 * @param wfCase
	 * @return
	 * @throws Exception
	 */
	public static CustomFieldsLabels getCaseCustomFieldsLabels(final ICase wfCase, final Logger logger) throws Exception
	{

		return SecurityManagerFactory.getSecurityManager().executeAsSystem(new Callable<CustomFieldsLabels>() {
            public CustomFieldsLabels call() throws Exception {
            	
            	// get the case's CMS
            	IContentManagementSystem cms = IvyProjectNavigationUtil.getIvyProject(wfCase.getProcessModelVersion()).getContentManagementSystem();
            	logger.debug("Retrieving case custom fields labels; Recieved cms {0}.", cms);
            	
            	String caseCustomFieldsLabelsFullCmsUri = ""; 
            	
            	// try to use the process based uri
            	if (wfCase.getProcessCode() != null)
            	{
            		// build the final cms uri by replacing the placeholder
            		caseCustomFieldsLabelsFullCmsUri = MessageFormat.format(CASE_CUSTOM_FIELDS_PROCESS_BASIC_URI, wfCase.getProcessCode());
            	}
            	
            	// if null, then try to use the project based uri
            	if (cms.getContentObject(caseCustomFieldsLabelsFullCmsUri) == null)
            	{
            		// the cms uri not defined, try with project based uri
            		caseCustomFieldsLabelsFullCmsUri = CASE_CUSTOM_FIELDS_PROJECT_BASIC_URI;
            	}
            	
            	// if cms uri available, then get custom fields labels
            	logger.debug("caseCustomFieldsLabelsFullCmsUri is {0}, the cms:{1} cr is available? <{2}>.", 
            					caseCustomFieldsLabelsFullCmsUri,
            					cms.getIdentifier(),
            					(cms.getContentObject(caseCustomFieldsLabelsFullCmsUri) != null));
            	
            	if (cms.getContentObject(caseCustomFieldsLabelsFullCmsUri) != null)
            	{
            		// get the custom fields labels
                    return getCustomFieldsLabels(cms, caseCustomFieldsLabelsFullCmsUri, logger);
            	}
            	else
            		return null;   	
            	
            }
            
		});

	}
	
	
	/**
	 * Get the task custom fields labels from CMS according to the following uri:
	 * <ul>
	 * 	<li>try to use /processes/additionalInformation/task/[customVarchar|customDecimal|customTimestamp][1-5] </li>	
	 * 	<li>if empty then try to use /processes/<process code>/additionalInformation/task/[customVarchar|customDecimal|customTimestamp][1-5] </li> 
	 * 	<li>if empty return null</li>
	 * </ul>
	 * Remarks: 
	 * <process code> is case.getProcessCode() without spaces
	 * 
	 * @param task
	 * @return
	 * @throws Exception 
	 * @throws EnvironmentNotAvailableException 
	 */
	public static CustomFieldsLabels getTaskCustomFieldsLabels(final ITask task, final Logger logger) throws Exception
	{
		
		return SecurityManagerFactory.getSecurityManager().executeAsSystem(new Callable<CustomFieldsLabels>() {
            public CustomFieldsLabels call() throws Exception {

            	// get the taks's case
            	ICase wfCase = task.getCase();
            	
            	// get the task's CMS
            	IContentManagementSystem cms = IvyProjectNavigationUtil.getIvyProject(wfCase.getProcessModelVersion()).getContentManagementSystem();
            	
            	
            	String taskCustomFieldsLabelsFullCmsUri = ""; 
            	
            	// try to use the process based uri
            	if (wfCase.getProcessCode() != null)
            	{
            		// build the final cms uri by replacing the placeholder
            		taskCustomFieldsLabelsFullCmsUri = MessageFormat.format(TASK_CUSTOM_FIELDS_PROCESS_BASIC_URI, wfCase.getProcessCode());
            	}
            	
            	// if null, then try to use the project based uri
            	if (cms.getContentObject(taskCustomFieldsLabelsFullCmsUri) == null)
            	{
            		// the cms uri not defined, try with project based uri
            		taskCustomFieldsLabelsFullCmsUri = TASK_CUSTOM_FIELDS_PROJECT_BASIC_URI;
            	}
            	
            	// if cms uri available, then get custom fields labels
            	logger.debug("taskCustomFieldsLabelsFullCmsUri is: {0} cms content exists ? {1}.", 
            					taskCustomFieldsLabelsFullCmsUri,
            					cms.getContentObject(taskCustomFieldsLabelsFullCmsUri));
            	
            	if (cms.getContentObject(taskCustomFieldsLabelsFullCmsUri) != null)
            	{
            		// get the custom fields labels
                    return getCustomFieldsLabels(cms, taskCustomFieldsLabelsFullCmsUri, logger);
            	}
            	else
            		return null;
            	
            }
            
		});
	}
	
	
	/**
	 * 
	 * @param processModelVersion in which CMS entries (custom fields labels) has to be found
	 * @param customFieldsLabelsBasicFolderCmsUri is the folder CMS Uri (without / at the end) under which 
	 * custom labels are stored. 
	 * 	ex:
	 * 			/processes/Credit_request/additionalInformation
	 * 			/processes/Credit_request/activities/finCreditValidation/additionalInformation
	 * Each custom label has its strucutre as following:
	 * .../[customVarchar|customDecimal|customTimestamp][1-5]
	 * @return CustomFieldsLabels object if there is a Content Object at customFieldsLabelsBasicCmsUri, otherwise null
	 * @throws Exception 
	 */
	public static CustomFieldsLabels getCustomFieldsLabels(final IContentManagementSystem cms, final String customFieldsLabelsBasicFolderCmsUri, final Logger logger) throws Exception
	{
		logger.debug("Getting the custom fields labels from CMS Uri {0}.", new Object[]{customFieldsLabelsBasicFolderCmsUri});

		return SecurityManagerFactory.getSecurityManager().executeAsSystem(new Callable<CustomFieldsLabels>() {
			
            public CustomFieldsLabels call() throws Exception {
        		
        		// ensure that the CMS folder customFieldsLabelsBasicCmsUri exists
        		logger.debug("The recieved basic CMS uri folder {0} exists: {1}.", customFieldsLabelsBasicFolderCmsUri, cms.getContentObject(customFieldsLabelsBasicFolderCmsUri));
        		
        		if (cms.getContentObject(customFieldsLabelsBasicFolderCmsUri) == null)
        			return null;
        		

        		CustomFieldsLabels customFieldsLabels = new CustomFieldsLabels();
        		
        		// loop at the CMS entries
        		String uri = "";
        		String cmsCo = "";
        		
        		for (int i=1; i<6; i++)
        		{
        			for (int j=0; j<3; j++)
        			{
        				// build the cms uri for the given custom field
        				uri = customFieldsLabelsBasicFolderCmsUri + "/" + CUSTOM_FIELDS_NAMES[j] + i + "/plainStrings/label";
        				
        				logger.debug("URI " + uri + " exists in CMS? " + (cms.getContentObject(uri) != null));
        				
        				if (cms.getContentObject(uri) != null)
        				{
        					// getContentObjectValue(String uri, Locale language)
        					cmsCo = cms.getContentObjectValue(uri, Ivy.session().getContentLocale()).getContentAsString();
        					
        					switch(i)
        					{
        						case 1:
        							if (j==0) customFieldsLabels.setCustomVarcharField1Label(cmsCo);
        							if (j==1) customFieldsLabels.setCustomDecimalField1Label(cmsCo);
        							if (j==2) customFieldsLabels.setCustomTimestampField1Label(cmsCo);
        							break;
        						
        						case 2:
        							if (j==0) customFieldsLabels.setCustomVarcharField2Label(cmsCo);
        							if (j==1) customFieldsLabels.setCustomDecimalField2Label(cmsCo);
        							if (j==2) customFieldsLabels.setCustomTimestampField2Label(cmsCo);
        							break;
        						
        						case 3:
        							if (j==0) customFieldsLabels.setCustomVarcharField3Label(cmsCo);
        							if (j==1) customFieldsLabels.setCustomDecimalField3Label(cmsCo);
        							if (j==2) customFieldsLabels.setCustomTimestampField3Label(cmsCo);
        							break;

        						case 4:
        							if (j==0) customFieldsLabels.setCustomVarcharField4Label(cmsCo);
        							if (j==1) customFieldsLabels.setCustomDecimalField4Label(cmsCo);
        							if (j==2) customFieldsLabels.setCustomTimestampField4Label(cmsCo);
        							break;

        						case 5:
        							if (j==0) customFieldsLabels.setCustomVarcharField5Label(cmsCo);
        							if (j==1) customFieldsLabels.setCustomDecimalField5Label(cmsCo);
        							if (j==2) customFieldsLabels.setCustomTimestampField5Label(cmsCo);
        							break;
        						
        						default:
        					}
        				}
        			}//for
        		}//for
        		
        		return customFieldsLabels;
            	
            }
		});
		
	}
	
	
}
