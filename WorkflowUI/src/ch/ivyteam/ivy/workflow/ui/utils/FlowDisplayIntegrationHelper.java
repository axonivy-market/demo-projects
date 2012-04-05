package ch.ivyteam.ivy.workflow.ui.utils;

import ch.ivyteam.ivy.environment.EnvironmentNotAvailableException;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.persistence.PersistencyException;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.workflow.IProcessStart;
import ch.ivyteam.ivy.workflow.IWorkflowSession;

public class FlowDisplayIntegrationHelper {
/*	
	private static final String DATA_CACHE_GROUP_ID = "xivy.workflow.ui.flowDisplayIntegration.dataCacheGroup";
	private static final String PROCESS_START_DATA_CACHE_ENTRY_ID = "xivy.workflow.ui.flowDisplayIntegration.processStartEntry";

	
	private static IProcessStart findFlowDisplayProcessStart(IWorkflowSession session, String flowDisplayProcessStartLinkHREF) throws EnvironmentNotAvailableException, PersistencyException
	{
		IProcessStart flowDisplayProcessStart = null;
		IDataCache environmentCache = null;
		IDataCacheGroup dataCacheGroup = null;
		IDataCacheEntry dataCacheEntry = null;
		
		
		// TODO: how to improve the performances instead searching IProcessStart each time? Environment cache?
		environmentCache = Ivy.datacache().getApplicationCache();				
		dataCacheEntry = environmentCache.getEntry(DATA_CACHE_GROUP_ID, PROCESS_START_DATA_CACHE_ENTRY_ID);
		
		if (dataCacheEntry == null || dataCacheEntry.getValue() == null)
		{
			// entry does not have the value; set it
			if (flowDisplayProcessStartLinkHREF.length() > 0)
			{
				for (IProcessStart processStart : session.getStartableProcessStarts())
				{		
					// Ex. of requestPath: 1215975017F13818/demoRunner.ivp to split as two elements
					// equals has to be done on second String (ex: demoRunner.ivp)
					String[] requestPathStrings = processStart.getRequestPath().split("/");
					
					if (flowDisplayProcessStartLinkHREF.equals(requestPathStrings[1]))
					{
						// request path from global variable found!					
						flowDisplayProcessStart = processStart;
						Ivy.log().debug("Found process start request path {0} name {1} in startable process starts; adding to the environment cache.", 
											processStart.getRequestPath(), processStart.getName());
						
						environmentCache.setEntry(DATA_CACHE_GROUP_ID, PROCESS_START_DATA_CACHE_ENTRY_ID, -1, processStart);
						break;
					}
				}			
			}			
		}
		else
		{
			// entry has the value; read it
			flowDisplayProcessStart = (IProcessStart) dataCacheEntry.getValue();
			Ivy.log().debug("Found process start request path {0} name {1} in environment cache.", flowDisplayProcessStart.getRequestPath(), flowDisplayProcessStart.getName());
		}
		
		return flowDisplayProcessStart;
	}
*/	
	
	
	
	/**
	 * It starts the Flow Display integration process on the north of the task detail Rich Dialog
	 * 
	 * @param session is the current user ivy security session 
	 * 
	 * @param flowDisplayProcessStartLinkHREF to find and start
	 * 
	 * @param richDialogPanel is the Rich Dialog root panel
	 * 
	 * @param flowDisplayDisplayId is destination display id where process has to be started
	 * 
	 * @return true if the process is found and started
	 * 
	 * @throws EnvironmentNotAvailableException
	 * @throws PersistencyException
	 */
	public static Boolean startFlowDisplayProcessStart(IWorkflowSession session, String flowDisplayProcessStartLinkHREF, IRichDialogPanel richDialogPanel, String flowDisplayDisplayId) 
							throws EnvironmentNotAvailableException, PersistencyException
	{
		Boolean operationSuccessful = false;
		IProcessStart flowDisplayProcessStart = DataCache.findFlowDisplayProcessStart(session, flowDisplayProcessStartLinkHREF);
		
		if (flowDisplayProcessStart != null)
		{
			Ivy.log().debug("Starting process start request path {0} name {1}.", flowDisplayProcessStart.getRequestPath(), flowDisplayProcessStart.getName());
			StartConfigurationCreator.startProcess(flowDisplayDisplayId, richDialogPanel, flowDisplayProcessStart);
			operationSuccessful = true;
		}
		
		return operationSuccessful;
	}
}