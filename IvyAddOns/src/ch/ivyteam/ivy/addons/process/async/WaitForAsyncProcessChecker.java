package ch.ivyteam.ivy.addons.process.async;

import java.util.Map;

import ch.ivyteam.ivy.addons.process.parameter.ProcessParameter;
import ch.ivyteam.ivy.addons.process.parameter.ProcessParameterMap;
import ch.ivyteam.ivy.addons.process.parameter.db.ProcessDataDbService;
import ch.ivyteam.ivy.persistence.IQueryResult;
import ch.ivyteam.ivy.persistence.PersistencyException;
import ch.ivyteam.ivy.process.intermediateevent.IProcessIntermediateEventBeanRuntime;
import ch.ivyteam.ivy.workflow.CaseState;
import ch.ivyteam.ivy.workflow.ICase;
import ch.ivyteam.ivy.workflow.IIntermediateEvent;
import ch.ivyteam.ivy.workflow.IIntermediateEventElement;
import ch.ivyteam.ivy.workflow.IPropertyFilter;
import ch.ivyteam.ivy.workflow.IWorkflowContext;
import ch.ivyteam.ivy.workflow.IntermediateEventProperty;
import ch.ivyteam.ivy.workflow.IntermediateEventState;
import ch.ivyteam.logicalexpression.RelationalOperator;

/**
 * This class is used to detect finished process groups.
 * You don't use this class directly. Instead you use the intermediate event bean
 * {@link WaitForAsyncProcess} and which in turn uses this class.
 * @author hsp
 * @since Pilatus
 */
public class WaitForAsyncProcessChecker {

	private final IProcessIntermediateEventBeanRuntime sEventBeanRuntime;
	
	

	public WaitForAsyncProcessChecker(final IProcessIntermediateEventBeanRuntime eventBeanRuntime) {
		this.sEventBeanRuntime = eventBeanRuntime;
	}
	
	/**
	 * get the {@link IWorkflowContext} (ivy.wf)
	 * @return the WorkflowContext
	 * @throws PersistencyException
	 */
	private IWorkflowContext wf() throws PersistencyException {
		return getEventBeanRuntime().getIntermediateEventElement().getProcessModelVersion().getWorkflowContext();
	}
	
	/**
	 * This method checks if there are any processes that have finished
	 * @return returns true if 1 or more events are fired, otherwise false
	 */
	@SuppressWarnings("unchecked")
	public boolean checkForFinishedProcesses() {
		/*
		 * for each IntermediateEvent that is WAITING we get the EventIdentifier and search for all
		 * cases with this EventIdentifier in additional property named EVENT_ID.
		 * 
		 * If the case is locked (signalEndOfProcess was called for the case), we cancel.
		 * 
		 * If all cases are in the CaseState done / additional case property HAS_PROCESS_ENDED = TRUE,
		 * we fire the event.
		 * 
		 * If we find no cases, we assume that there aren't any Tasks defined yet and do nothing.
		*/ 
		try {
			final IWorkflowContext wf = wf();
			// filter for WAITING IntermediateEvent
			final IPropertyFilter<IntermediateEventProperty> intermediateEventPropertyFilter = wf.createIntermediateEventPropertyFilter(IntermediateEventProperty.STATE, RelationalOperator.EQUAL, IntermediateEventState.WAITING.intValue());				
			// this IntermediateEvent
			final IIntermediateEventElement intermediateEventElement =  getEventBeanRuntime().getIntermediateEventElement();
			// filtered IntermediateEvent elements
			final IQueryResult<IIntermediateEvent> waitingIntermediateEvents = intermediateEventElement.findIntermediateEvents(intermediateEventPropertyFilter, null, 0, -1, false);
			final int waitingIntermediateEventsCount = waitingIntermediateEvents.getResultCount();
			
			// loop over all waitingIntermediateEvents
			for(int i = 0; i < waitingIntermediateEventsCount; i++) {
				final String eventId = waitingIntermediateEvents.get(i).getEventIdentifier();

				// find all cases with the additional property EVENT_ID set to eventId
				final IQueryResult<ICase> cases = wf.findCases(WaitForAsyncProcessHelper.EVENT_ID, eventId, 0, -1, false);
				final int caseCount = cases.getResultCount();
				
				// check if there are any cases for this eventId
				if(caseCount > 0) {
					// if so, check if all cases have ended
					boolean done = true;
					for(int j = 0; j < caseCount; j++) {
						final ICase theCase = cases.get(j);
						final CaseState state = theCase.getState();
						
						// only call isCaseLocked if it is really necessary => the case was locked
						if(WaitForAsyncProcessHelper.isCaseLocked(theCase)) {
							done = false;
							break;
						}
						
						final boolean isProcessDone = state.equals(CaseState.DONE);
						if(isProcessDone) {
							// we ignore the HAS_PROCESS_ENDED property if the Case is done
							continue;
						}
						
						final boolean isProcessRunning = theCase.getAdditionalProperty(WaitForAsyncProcessHelper.HAS_PROCESS_ENDED).equals(WaitForAsyncProcessHelper.FALSE);
						if(isProcessRunning) {
							done = false;
							break;
						}
					}

					if(done) {
						// all cases have ended
						// collect the parameters, remove all additional properties and fire the event
						final ProcessParameterMap params = new ProcessParameterMap();
						for(int j = 0; j < caseCount; j++) {
							final ICase theCase = cases.get(j);
							try {
								final Map map = ProcessDataDbService.loadProcessParameter(theCase);
								// check if we have data
								if(map != null) {
									final String key = (String) map.get(WaitForAsyncProcessHelper.PARAM_NAME);
									final ProcessParameter value = (ProcessParameter) map.get(WaitForAsyncProcessHelper.PARAM);
									params.putProcessParameter(key, value);
									// clean up
									ProcessDataDbService.deleteProcessData(theCase);
								}
							} catch(Exception e) {
								error(e);
							}
							// clean up
							theCase.setAdditionalProperty(WaitForAsyncProcessHelper.EVENT_ID, null);
							theCase.setAdditionalProperty(WaitForAsyncProcessHelper.HAS_PROCESS_ENDED, null);
							theCase.setAdditionalProperty(WaitForAsyncProcessHelper.CHECK_FOR_CASE_LOCK, null);
						}
						// fire event
						getEventBeanRuntime().fireProcessIntermediateEventEx(eventId, params, "");
						return true;
					}
				}
				
			}
			
		} catch (Exception e) {
			error(e);
			return false;
		}
		return false;
	}
	
	/**
	 * get the runtime
	 * @return the runtime
	 */
	private IProcessIntermediateEventBeanRuntime getEventBeanRuntime() {
		return sEventBeanRuntime;
	}
	
	/**
	 * Shortcut for debug messages
	 * @param o
	 */
	@SuppressWarnings("unused")
	private void debug(final Object o) {
		getEventBeanRuntime().getRuntimeLogLogger().debug(o);
	}
	
	/**
	 * Shortcut for error messages
	 * @param o
	 */
	private void error(final Object o) {
		getEventBeanRuntime().getRuntimeLogLogger().error(o);
	}
	
}
