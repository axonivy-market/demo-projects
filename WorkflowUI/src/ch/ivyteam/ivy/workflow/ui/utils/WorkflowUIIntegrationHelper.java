package ch.ivyteam.ivy.workflow.ui.utils;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import ch.ivyteam.ivy.data.cache.IDataCache;
import ch.ivyteam.ivy.data.cache.IDataCacheEntry;
import ch.ivyteam.ivy.environment.EnvironmentNotAvailableException;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.persistence.PersistencyException;
import ch.ivyteam.ivy.richdialog.exec.IRichDialogContext;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.workflow.IProcessStart;
import ch.ivyteam.ivy.workflow.IWorkflowSession;

/**
 * 
 * @author tirib
 * @since 2012/05/09
 * @copyright TI-Informatique
 * 
 *            It start different loosely coupled integration to the WFUI based on the loading of given process
 *            start to the given display
 * 
 */
public class WorkflowUIIntegrationHelper
{

  private static final String WFUI_INTEGRATION_DATA_CACHE_GROUP_ID = "xivy.workflow.ui.dataCacheGroup";

  private static final String WEB_BANNER_PROCESS_START_LINK_HREF = "xivy_workflow_ui_webBannerProcessStartLinkHREF";

  private static final String FUNCTIONS_PROCESS_START_LINK_HREF = "xivy_workflow_ui_functionsProcessStartLinkHREF";

  private static final String FLOW_DISPLAY_PROCESS_START_LINK_HREF = "xivy_workflow_ui_restricted_flowDisplayProcessStartLinkHREF";

  private static final String CONNECTED_USERS_MONITOR_PROCESS_START_LINK_HREF = "xivy_workflow_ui_restricted_connectedUsersMonitorProcessStartLinkHREF";

  
  public static boolean startFunctionProcessStarts(IWorkflowSession session, IRichDialogContext rdContext, IRichDialogPanel richDialogPanel, String displayId)  
  {
    boolean successful = false;
    List<IProcessStart> processStarts;    
    ch.ivyteam.ivy.scripting.objects.List<IProcessStart> processStartsIvyList = null;
    
    processStarts = findFunctionProcessStarts(session);
    successful = !processStarts.isEmpty();
    processStartsIvyList =  ch.ivyteam.ivy.scripting.objects.List.create(IProcessStart.class);
    processStartsIvyList.addAll(processStarts);
    
    // start the process starts
    StartConfigurationCreator.startMultipleProcesses(rdContext, displayId, richDialogPanel, processStartsIvyList);
    
    return successful;
  }
  
  /**
   * It starts the banner integration process on the north of the window
   * 
   * @param session
   * @param richDialogPanel
   * @param displayId
   * @return if the process is found and started
   * @throws EnvironmentNotAvailableException
   * @throws PersistencyException
   */
  public static boolean startWebBannerProcessStart(IWorkflowSession session,
          IRichDialogPanel richDialogPanel, String displayId) throws EnvironmentNotAvailableException,
          PersistencyException
  {
    return startProcessStart(Ivy.var().get(WEB_BANNER_PROCESS_START_LINK_HREF), session, richDialogPanel,
            displayId);
  }

  /**
   * It starts the Flow Display integration process on the north of the task detail Rich Dialog
   * 
   * @param session is the current user ivy security session
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
  public static Boolean startFlowDisplayProcessStart(IWorkflowSession session,
          IRichDialogPanel richDialogPanel, String displayId) throws EnvironmentNotAvailableException,
          PersistencyException
  {
    return startProcessStart(Ivy.var().get(FLOW_DISPLAY_PROCESS_START_LINK_HREF), session, richDialogPanel,
            displayId);
  }

  /**
   * It starts the Connected users monitor integration process at the west bottom corner inside the WorkfloUI
   * tab
   * 
   * @param session is the current user ivy security session
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
  public static Boolean startConnectedUsersMonitorProcessStart(IWorkflowSession session,
          IRichDialogPanel richDialogPanel, String displayId) throws EnvironmentNotAvailableException,
          PersistencyException
  {
    return startProcessStart(Ivy.var().get(CONNECTED_USERS_MONITOR_PROCESS_START_LINK_HREF), session,
            richDialogPanel, displayId);
  }

  private static boolean startProcessStart(String processStartLinkHREF, IWorkflowSession session,
          IRichDialogPanel richDialogPanel, String displayId) throws EnvironmentNotAvailableException,
          PersistencyException
  {
    boolean operationSuccessful = false;
    IProcessStart processStart = findProcessStart(session, processStartLinkHREF);

    if (processStart != null)
    {
      Ivy.log().debug("Starting process start request path {0} name {1}.", processStart.getRequestPath(),
              processStart.getName());
      StartConfigurationCreator.startProcess(displayId, richDialogPanel, processStart);
      operationSuccessful = true;
    }

    return operationSuccessful;
  }

  /**
   * It finds the given {@link IProcessStart} according to the given name
   * 
   * @param session
   * @param processStartLinkHREF
   * @return
   * @throws EnvironmentNotAvailableException
   * @throws PersistencyException
   */
  private static IProcessStart findProcessStart(IWorkflowSession session, String processStartLinkHREF)
          throws EnvironmentNotAvailableException, PersistencyException
  {
    String dataCacheEntryId = processStartLinkHREF;
    IProcessStart processStart = null;
    IDataCache environmentCache = null;
    IDataCacheEntry dataCacheEntry = null;

    environmentCache = Ivy.datacache().getAppCache();
    dataCacheEntry = environmentCache.getEntry(WFUI_INTEGRATION_DATA_CACHE_GROUP_ID, dataCacheEntryId);

    if (dataCacheEntry == null || dataCacheEntry.getValue() == null)
    {
      // entry does not have the value; set it
      if (processStartLinkHREF.length() > 0)
      {
        for (IProcessStart actualProcessStart : session.getStartableProcessStarts())
        {
          // Ex. of requestPath: 1215975017F13818/demoRunner.ivp to split as two elements
          // equals has to be done on second String (ex: demoRunner.ivp)
          String[] requestPathStrings = actualProcessStart.getRequestPath().split("/");

          if (processStartLinkHREF.equals(requestPathStrings[1]))
          {
            // request path from global variable found!
            processStart = actualProcessStart;
            Ivy.log().debug("Found process start request path {0} name {1} in startable process starts; adding to the application cache.",
                            actualProcessStart.getRequestPath(), actualProcessStart.getName());

            environmentCache.setEntry(WFUI_INTEGRATION_DATA_CACHE_GROUP_ID, dataCacheEntryId, 60, actualProcessStart);
            break;
          }
        }
      }
    }
    else
    {
      // entry has the value; read it
      processStart = (IProcessStart) dataCacheEntry.getValue();
      Ivy.log().debug("Found process start request path {0} name {1} in application cache.", processStart.getRequestPath(), processStart.getName());
    }

    return processStart;
  }

  private static List<IProcessStart> findFunctionProcessStarts(IWorkflowSession session)
          throws EnvironmentNotAvailableException, PersistencyException
  {
    String functionProcessStartLinkHREFs = Ivy.var().get(FUNCTIONS_PROCESS_START_LINK_HREF);
    IDataCache environmentCache = null;
    IDataCacheEntry dataCacheEntry = null;

    List<IProcessStart> functionProcessStarts = new ArrayList<IProcessStart>();

    environmentCache = Ivy.datacache().getAppCache();
    dataCacheEntry = environmentCache.getEntry(WFUI_INTEGRATION_DATA_CACHE_GROUP_ID, FUNCTIONS_PROCESS_START_LINK_HREF);

    if (dataCacheEntry == null || dataCacheEntry.getValue() == null)
    {
      // entry does not have the value; set it
      List<IProcessStart> sessionStartableProcessStarts = session.getStartableProcessStarts();

      List<String> functionsProcessStartRequestPaths = Arrays.asList(functionProcessStartLinkHREFs.split(", "));

      for (String processStartRequestPath : functionsProcessStartRequestPaths)
      {
        Ivy.log().debug("Looking for the {0} as process start request path.", processStartRequestPath);

        for (IProcessStart processStart : sessionStartableProcessStarts)
        {
          // Ex. of requestPath: 1215975017F13818/demoRunner.ivp to split as two elements
          // equals has to be done on second String (ex: demoRunner.ivp)
          List<String> requestPathElements = Arrays.asList(processStart.getRequestPath().split("/"));

          Ivy.log().debug("Is process start request <{0}> equals to <{1}> ? {2}.", processStartRequestPath,
                  requestPathElements.get(1), processStartRequestPath.equals(requestPathElements.get(1)));

          if (processStartRequestPath.equals(requestPathElements.get(1)))
          {
            // request path from global variable found!
            Ivy.log().debug("Found function process start request path {0} name {1}.", processStart.getRequestPath(), processStart.getName());
            functionProcessStarts.add(processStart);
            break;
          }
        }// for

      }// for

      Ivy.log().debug("Adding {0} function process starts to the application cache.", functionProcessStarts.size());
      environmentCache.setEntry(WFUI_INTEGRATION_DATA_CACHE_GROUP_ID, FUNCTIONS_PROCESS_START_LINK_HREF, 60, functionProcessStarts);
    }
    else
    {
      // entry has the value; read it
      functionProcessStarts = (List<IProcessStart>) dataCacheEntry.getValue();
      Ivy.log().debug("Found {0} function process starts in application cache.", functionProcessStarts.size());
    }

    return functionProcessStarts;
  }
}