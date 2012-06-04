package ch.ivyteam.ivy.workflow.ui.utils;

import ch.ivyteam.ivy.environment.EnvironmentNotAvailableException;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.persistence.PersistencyException;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.workflow.IProcessStart;
import ch.ivyteam.ivy.workflow.IWorkflowSession;
/**
 * 
 * @author tirib
 * @since 2012/05/09
 * @copyright TI-Informatique
 * 
 * It start different loosely coupled integration to the WFUI based on 
 * the loading of given process start to the given display
 * 
 */
public class WorkflowUIIntegrationHelper {
	
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
	
	
	/**
	 * It starts the Connected users monitor integration process at the west bottom corner inside the WorkfloUI tab
	 * 
	 * @param session is the current user ivy security session 
	 * 
	 * @param connectedUsersMonitorProcessStartLinkHREF to find and start
	 * 
	 * @param richDialogPanel is the Rich Dialog root panel
	 * 
	 * @param displayId is destination display id where process has to be started
	 * 
	 * @return true if the process is found and started
	 * 
	 * @throws EnvironmentNotAvailableException
	 * @throws PersistencyException
	 */
	public static Boolean startConnectedUsersMonitorProcessStart(IWorkflowSession session, String connectedUsersMonitorProcessStartLinkHREF, 
			IRichDialogPanel richDialogPanel, String displayId) throws EnvironmentNotAvailableException, PersistencyException
	{
		Boolean operationSuccessful = false;
		IProcessStart connectedUsersMonitorProcessStart = DataCache.findConntectedUsersMonitorProcessStart(session, connectedUsersMonitorProcessStartLinkHREF);
		
		if (connectedUsersMonitorProcessStart != null)
		{
			Ivy.log().debug("Starting process start request path {0} name {1}.", connectedUsersMonitorProcessStart.getRequestPath(), connectedUsersMonitorProcessStart.getName());
			StartConfigurationCreator.startProcess(displayId, richDialogPanel, connectedUsersMonitorProcessStart);
			operationSuccessful = true;
		}
		
		return operationSuccessful;
	}
}