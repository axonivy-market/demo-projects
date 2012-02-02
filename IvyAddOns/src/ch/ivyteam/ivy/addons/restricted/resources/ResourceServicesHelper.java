package ch.ivyteam.ivy.addons.restricted.resources;


import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

import org.apache.commons.io.FileUtils;

import ch.ivyteam.ivy.addons.filemanager.FileHandler;
import ch.ivyteam.ivy.addons.filemanager.FileManager.FileManagerPanel;
import ch.ivyteam.ivy.addons.restricted.util.PublicAPIHelper;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.workflow.ICase;

/**
 * 
 * @author tirib, TI-Informatique 
 * @since march 2010
 *
 */
public class ResourceServicesHelper {
	
	
	private static final char[] ILLEGAL_CHARACTERS = { '/', '\n', '\r', '\t', '\0', '\f', '`', '?', '\\', '<', '>', '|', '\"', ':', '!', '*'};
	
	private static final String REGEXP_ILLEGAL_CHARACTERS = "/\n\r\t\0\f`?\\\\<>|\":!\\*";
	
	private static final Pattern ILLEGAL_CHARACTERS_PATTERN = Pattern.compile(new String("[^" + REGEXP_ILLEGAL_CHARACTERS+ "]*"));
	
	private static final Pattern CHARACTERS_TO_REPLACE_PATTERN = Pattern.compile(new String("[" + REGEXP_ILLEGAL_CHARACTERS+ "]*"));
	
	private static final String RESOURCES_PATH_GLOBAL_VARIABLE_NAME = "xivy_addons_resourcesPath";
	
	
	/**
	 * It returns the application resources path
	 * 
	 * It is based on:
	 * <ul>
	 * 	<li> global variable ivy.var.xivy_addons_resourcesPath and </li>
	 * 	<li>
	 * 		ivy.cms.co("/ch/ivyteam/ivy/addons/resources/parameters/applicationResourcesPath") string resource with placeholders.
	 * 		For applications resources that are not related to the given case:
	 * 		/res/<environment code>/<application (software or tower) code_module>
	 * 		/res/{0}/{1}
	 * 		
	 * 		where:
	 * 		{0} is environment name; be aware that the "Default" environment name returns empty string; in that case "Default" value is used,
	 * 		{1} application (software or tower) code_module. Ex: xgov_a4y if module is not set, it will use only application code
	 *  </li>
	 * </ul>
	 * 
	 * @param applicationCode
	 * 				Application code Ex: xgov
	 * 
	 * @param applicationModule
	 * 				Application module Ex: a4y, xcad, etc. 
	 * @return 
	 * 				the absolute path for the application resources
	 */
	public static String readApplicationResourcesPath(String applicationCode, String applicationModule)
	{
		String applicationResourcesAbsolutePath = "";
		
		// resolve the resources absolute path
		String resourcesAbsolutePath = getResourcesAbsolutePath();
		
		// build the parameters to place on CMS URI resource placeholders
		List<Object> coFormatObjects = new ArrayList<Object>();

		// define environment
		String environment = getActiveEnvironment();
		Ivy.log().debug("Environment is {0}.", environment);
		coFormatObjects.add(environment);
		
		// define application code and application module
		String applicationCodeAndModule = applicationCode;
		if (applicationModule != null || !("".equals(applicationModule)))
			applicationCodeAndModule += "_" + applicationModule;
		Ivy.log().debug("The application code and module is {0}.", applicationCodeAndModule);
		
		coFormatObjects.add(applicationCodeAndModule);		
		
		applicationResourcesAbsolutePath = 	resourcesAbsolutePath + 
									Ivy.cms().co("/ch/ivyteam/ivy/addons/resources/parameters/applicationResourcesPath", coFormatObjects);
		
		return applicationResourcesAbsolutePath; 
	}
	
	
	/**
	 * It returns the case documents absolute path
	 * 
	 * It is based on:
	 * <ul>
	 * 	<li> global variable ivy.var.xivy_addons_resourcesPath and </li>
	 * 	<li>
	 * 		ivy.cms.co("/ch/ivyteam/ivy/addons/resources/parameters/caseDocumentsPath") string resource with placeholders.
	 * 		For case documents (pdf files, bills, certificates, salary sheets) that are visible in WFUI documents tab. This is usefull for end user in order to execute task.
	 * 		/files/<environment>/<case id>/Documents
	 * 		/files/{0}/{1}/Documents
	 * 		
	 * 		where
	 * 		{0} is environmnent name; be aware that the "Default" environment name returns empty string; in that case "Default" value is used,
	 * 		{1} case identifier. 
	 *  </li>
	 * </ul>
	 *  
	 * @param caseIdentifier
	 *				case identifier for which the case root folder absolute path has to be found
	 *
	 * @return 
	 * 				the absolute path for the case documents
	 */
	public static String readCaseDocumentsPath(Number caseIdentifier)
	{
		String caseResourcesAbsolutePath = readCaseSpecificSubPath(caseIdentifier, 
									"/ch/ivyteam/ivy/addons/resources/parameters/caseDocumentsPath");
		
		Ivy.log().info("Case documents path for case id {0} is {1}.", caseIdentifier.intValue(), caseResourcesAbsolutePath);
		
		return caseResourcesAbsolutePath;	
	}
	
	
	
	/**
	 * It returns the case resources absolute path
	 * 
	 * It is based on:
	 * <ul>
	 * 	<li> global variable ivy.var.xivy_addons_resourcesPath and </li>
	 * 	<li>
	 *			ivy.cms.co("/ch/ivyteam/ivy/addons/resources/parameters/caseResourcesPath") string resources with placeholders.
	 *			For case resources (xml files, configs, generated file) that are not visible in WFUI documents tab.
	 *			/files/<environment>/<case id>/<Resources or Documents>
	 *			/files/{0}/{1}/Resources
	 *			
	 *			where
	 *			{0} is environment name; be aware that the "Default" environment name returns empty string; in that case "Default" value is used,
	 *			{1} case identifier. 
	 *  </li>
	 * </ul> 
	 *  
	 * @param caseIdentifier
	 *			case identifier for which the case root folder absolute path has to be found
	 *
	 * @return 
	 * 			the absolute path for the case resources
	 */
	public static String readCaseResourcesPath(Number caseIdentifier)
	{
		String caseResourcesAbsolutePath = readCaseSpecificSubPath(caseIdentifier, 
									"/ch/ivyteam/ivy/addons/resources/parameters/caseResourcesPath");
		
		Ivy.log().info("Case resources path for case id {0} is {1}.", caseIdentifier.intValue(), caseResourcesAbsolutePath);
		
		return caseResourcesAbsolutePath;	
	}
	
	
	
	
	/**
	 * It returns the case specific sub folder according to the recieved input parameters
	 *  
	 * @param ivy_var_xivy_addons_resourcesPath
	 * 				the global variable that contain the absolute path for resources
	 * 
	 * @param caseIdentifier
	 * 				case identifier for which the case root folder absolute path has to be found
	 * 
	 * @param cmsUriWithPlaceHolders
	 * 				CMS URI that contains the relatif path where placeholders have to be replaced
	 * 				Ex: "/ch/ivyteam/ivy/addons/resources/parameters/caseResourcesPath"
	 * 
	 * @return 
	 * 				the absolute path for the case specific sub folder
	 */
	private static String readCaseSpecificSubPath(Number caseIdentifier, String cmsUriWithPlaceHolders)
	{		
		String caseSpecificSubAbsolutePath = "";
		
		// resolve the resources absolute path
		String resourcesAbsolutePath = getResourcesAbsolutePath();
		
		// build the parameters to place on CMS URI resource placeholders
		List<Object> coFormatObjects = new ArrayList<Object>();

		// define environment
		String environment = getActiveEnvironment();
		Ivy.log().debug("Environment is {0}.", environment);
		coFormatObjects.add(environment);
		
		// attention: the case identifier should not be formatted; ex: 1'034
		coFormatObjects.add("" + caseIdentifier.intValue());		
		
		caseSpecificSubAbsolutePath = resourcesAbsolutePath + Ivy.cms().co(cmsUriWithPlaceHolders, coFormatObjects);
		
		return caseSpecificSubAbsolutePath;
	}
	
	
	
	/**
	 * it returns the resources path global variable value
	 * Remark:
	 * 		If the global variable is not set, then use the application file area
	 * 
	 * @return
	 * 			the resources absolute path (root folder absolute path for the resources)
	 */
	private static String getResourcesAbsolutePath()
	{
		String resourcesPath = Ivy.var().get(RESOURCES_PATH_GLOBAL_VARIABLE_NAME); 
		Ivy.log().debug("Returning the global variable {0} value {1}.",
				RESOURCES_PATH_GLOBAL_VARIABLE_NAME,
				resourcesPath);
		
		// if global variable is not set then use the application file area
		if (resourcesPath == null || "".equals(resourcesPath))
			resourcesPath = PublicAPIHelper.getApplicationFileAreaAbsolutePathAsSystemUser();
		
		Ivy.log().info("The resolved resources absolute path is: {0}", resourcesPath);
		
		return resourcesPath;
	}
	
	
	
	
	
	/**
	 * It returns the active environment
	 * Remark:
	 * 		If active session environment is default, the Public AP return empty string, then create a folder called "Default"
	 * 
	 * @return 
	 * 			the active environment name
	 */
	private static String getActiveEnvironment()
	{
		return Ivy.session().getActiveEnvironment() != null? Ivy.session().getActiveEnvironment(): "Default";
	}
	
	
	
	
	
	
	/**
	 * It creates the case root directory and 
	 * 
	 * If business main contact name is set, 
	 * then create the sub directory for it
	 * 
	 * If business object name is set, 
	 * then create the sub directory for it
	 * 
	 * 
	 * @param fileManagerRDC 
	 * 			is the File Manager Rich Dialog instace that will be used to create folder (makeDirectory). He needs to have its server path set.
	 * 
	 * @param wfCase 
	 * 			is the case for which directories has to be created including the check if business main contact and business object name are set
	 * 
	 * @throws Exception
	 */
	public static void makeDefaultCaseDirectories(FileManagerPanel fileManagerRDC, ICase wfCase) throws Exception
	{

		// define the server path
		String serverPath = readCaseDocumentsPath(wfCase.getIdentifier());
		Object callMethodParams[] = null;
		
//		Object callMethodParams[] = new Object[1];
//		callMethodParams[0] = serverPath;
//		
//		fileManagerRDC.getPanelAPI().callMethod("setServerPath", callMethodParams);			
//				
//		Ivy.log().debug("The file manager server path is {0}.", serverPath);
		
		java.io.File directoryToCreateFile;
		String standardizedDirectoryToCreate;


		// build the list of default case directories to create
		List<String> directoriesToCreate = new ArrayList<String>();
		
		if (wfCase.getBusinessMainContactName() != null && wfCase.getBusinessMainContactName().length() > 0)
		{
			directoriesToCreate.add(wfCase.getBusinessMainContactName());	
		}

	
		if (wfCase.getBusinessObjectName() != null && wfCase.getBusinessObjectName().length() > 0)
		{
			directoriesToCreate.add(wfCase.getBusinessObjectName());
		}


		for (String directoryToCreate: directoriesToCreate)
		{
			if (directoryToCreate.length() > 0)
			{	
				standardizedDirectoryToCreate = ResourceServicesHelper.isValidDirectoryName(directoryToCreate)? 
																				directoryToCreate: 
																				ResourceServicesHelper.standardizeDirectoryName(directoryToCreate);
			
			 	directoryToCreateFile = new java.io.File(FileHandler.formatPathWithEndSeparator(serverPath, false) + standardizedDirectoryToCreate);
			
				if (!directoryToCreateFile.exists())
				{	
					Ivy.log().info("Case documents: creating of sub directory {0} in {1}", standardizedDirectoryToCreate, serverPath);
					
					callMethodParams = new Object[1];
					callMethodParams[0] = standardizedDirectoryToCreate;
					
					fileManagerRDC.getPanelAPI().callMethod("makeDirectory", callMethodParams);
	
				}
				else
				{
					Ivy.log().info("Case documents: the sub directory {0} of {1} exists already.", directoryToCreate, serverPath);
				}
			}
		}
	}
	
	
	
	
	/**
	 * This method return true if the directory name is valid
	 * @param directoryName is the directory name to validate
	 * @return true or false
	 */
	public static boolean isValidDirectoryName(String directoryName)
	{
		return ILLEGAL_CHARACTERS_PATTERN.matcher(directoryName).matches();
	}
	
	
	
	/**
	 * It returns the "normalized" directory name, it means whithout illegal caracters
	 * that are not allowed in the folder creation.
	 * 
	 * @param invalidDirectoryName is the directory name to "standardize"
	 * @return the "standardized" directory name
	 */
	public static String standardizeDirectoryName(String invalidDirectoryName)
	{
		return invalidDirectoryName.replaceAll(CHARACTERS_TO_REPLACE_PATTERN.pattern(), "");

	}
	
	
	/**
	 * It returns true if the folder contains files, otherwise false. 
	 * The check is done on all files including those in sub directories.
	 * 
	 * @param directoryPath
	 * 				The absolute path of the directory on which search has to be done
	 * @return
	 * 
	 */
	public static Boolean folderContainsFiles(String directoryPath)
	{
		File myDir = new File(directoryPath) ; 
		File currentFile = null;
		Boolean containsFiles = false;
		
		if (myDir.isDirectory())
		{
			// get all files AND all sub directories are searched as well  
			Iterator<File> iterator  = FileUtils.iterateFiles(myDir, null, true);

			while (iterator.hasNext())
			{
				currentFile = iterator.next();
				Ivy.log().debug("Analyzing the {0}-{1}.", 
						(currentFile.isFile()? "File": "Directory"), 
						currentFile.getAbsolutePath());
				if (currentFile.isFile())
				{
					containsFiles = true;
					break;
				}
			}
		}

		return containsFiles;
	}
	
	
	
	public static void main(String args[])
	{
		for(int i=0; i<ILLEGAL_CHARACTERS.length; i++)
		{
			String fileName = "Bond " + ILLEGAL_CHARACTERS[i] + "James";
			System.out.println(fileName + " is valid file name? : " + 
						isValidDirectoryName(fileName) +  
						standardizeDirectoryName(fileName));
		}
	}

}
