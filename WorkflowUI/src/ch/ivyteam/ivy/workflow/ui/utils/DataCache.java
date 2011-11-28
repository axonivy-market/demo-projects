package ch.ivyteam.ivy.workflow.ui.utils;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import ch.ivyteam.ivy.data.cache.IDataCache;
import ch.ivyteam.ivy.data.cache.IDataCacheEntry;
import ch.ivyteam.ivy.environment.EnvironmentNotAvailableException;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.persistence.PersistencyException;
import ch.ivyteam.ivy.workflow.IProcessStart;
import ch.ivyteam.ivy.workflow.IWorkflowSession;

public class DataCache {
	
	private static final String DATA_CACHE_GROUP_ID = "xivy.workflow.ui.dataCacheGroup";
	private static final String FLOW_DISPLAY_INTEGRATION_PROCESS_START_DATA_CACHE_ENTRY_ID = "flowDisplayIntegrationProcessStart";
	private static final String FUNCTION_PROCESS_STARTS_DATA_CACHE_ENTRY_ID = "fonctionProcessStarts";
	private static final String WEB_BANNER_PROCESS_START_DATA_CACHE_ENTRY_ID = "bannerProcessStart";
	
	
	
	public static IProcessStart findFlowDisplayProcessStart(IWorkflowSession session, String flowDisplayProcessStartLinkHREF) throws EnvironmentNotAvailableException, PersistencyException
	{
		return findProcessStart(session, flowDisplayProcessStartLinkHREF, FLOW_DISPLAY_INTEGRATION_PROCESS_START_DATA_CACHE_ENTRY_ID);
	}
	
	
	public static IProcessStart findWebBannerProcessStart(IWorkflowSession session, String webBannerProcessStartLinkHREF) throws EnvironmentNotAvailableException, PersistencyException
	{
		return findProcessStart(session, webBannerProcessStartLinkHREF, WEB_BANNER_PROCESS_START_DATA_CACHE_ENTRY_ID);
	}
	
	
	private static IProcessStart findProcessStart(IWorkflowSession session, String processStartLinkHREF, String dataCacheEntryId) throws EnvironmentNotAvailableException, PersistencyException
	{
		IProcessStart flowDisplayProcessStart = null;
		IDataCache environmentCache = null;
		IDataCacheEntry dataCacheEntry = null;
		
	
		environmentCache = Ivy.datacache().getApplicationCache();				
		dataCacheEntry = environmentCache.getEntry(DATA_CACHE_GROUP_ID, dataCacheEntryId);
		
		if (dataCacheEntry == null || dataCacheEntry.getValue() == null)
		{
			// entry does not have the value; set it
			if (processStartLinkHREF.length() > 0)
			{
				for (IProcessStart processStart : session.getStartableProcessStarts())
				{		
					// Ex. of requestPath: 1215975017F13818/demoRunner.ivp to split as two elements
					// equals has to be done on second String (ex: demoRunner.ivp)
					String[] requestPathStrings = processStart.getRequestPath().split("/");
					
					if (processStartLinkHREF.equals(requestPathStrings[1]))
					{
						// request path from global variable found!					
						flowDisplayProcessStart = processStart;
						Ivy.log().debug("Found process start request path {0} name {1} in startable process starts; adding to the environment cache.", 
											processStart.getRequestPath(), processStart.getName());
						
						environmentCache.setEntry(DATA_CACHE_GROUP_ID, dataCacheEntryId, -1, processStart);
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
	
		
	public static List<IProcessStart> findFunctionProcessStarts(IWorkflowSession session, String functionProcessStartLinkHREFs) throws EnvironmentNotAvailableException, PersistencyException
	{
		IProcessStart flowDisplayProcessStart = null;
		IDataCache environmentCache = null;
		IDataCacheEntry dataCacheEntry = null;
		
		List<IProcessStart> functionProcessStarts = new ArrayList<IProcessStart>();
	
		environmentCache = Ivy.datacache().getApplicationCache();				
		dataCacheEntry = environmentCache.getEntry(DATA_CACHE_GROUP_ID, FUNCTION_PROCESS_STARTS_DATA_CACHE_ENTRY_ID);
		
		if (dataCacheEntry == null || dataCacheEntry.getValue() == null)
		{
			// entry does not have the value; set it
			List<IProcessStart> sessionStartableProcessStarts = session.getStartableProcessStarts();
			
			List<String> functionsProcessStartRequestPaths = Arrays.asList(functionProcessStartLinkHREFs.split(", "));
			
			for (String processStartRequestPath: functionsProcessStartRequestPaths)
			{
				Ivy.log().debug("Looking for the {0} as process start request path.", processStartRequestPath);
				
				for (IProcessStart processStart : sessionStartableProcessStarts)
				{		
					// Ex. of requestPath: 1215975017F13818/demoRunner.ivp to split as two elements
					// equals has to be done on second String (ex: demoRunner.ivp)
					List<String> requestPathElements = Arrays.asList(processStart.getRequestPath().split("/"));
					
					Ivy.log().debug("Is process start request <{0}> equals to <{1}> ? {2}.", 
													processStartRequestPath,
													requestPathElements.get(1),
													processStartRequestPath.equals(requestPathElements.get(1)));
					
					if (processStartRequestPath.equals(requestPathElements.get(1)))
					{
						// request path from global variable found!
						Ivy.log().debug("Found function process start request path {0} name {1}.", processStart.getRequestPath(), processStart.getName());
						functionProcessStarts.add(processStart);
						break;
					}
				}//for
				
			}//for
			
			Ivy.log().debug("Adding {0} function process starts to the environment cache.", functionProcessStarts.size());
			environmentCache.setEntry(DATA_CACHE_GROUP_ID, FUNCTION_PROCESS_STARTS_DATA_CACHE_ENTRY_ID, -1, functionProcessStarts);
		}
		else
		{
			// entry has the value; read it
			functionProcessStarts = (List<IProcessStart>) dataCacheEntry.getValue();
			Ivy.log().debug("Found {0} function process starts in environment cache.", functionProcessStarts.size());
		}
		
		return functionProcessStarts;
	}
	
		
	
}
