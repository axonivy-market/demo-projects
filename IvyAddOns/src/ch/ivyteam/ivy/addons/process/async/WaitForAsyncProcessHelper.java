package ch.ivyteam.ivy.addons.process.async;

import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

import ch.ivyteam.ivy.addons.process.parameter.ProcessParameter;
import ch.ivyteam.ivy.addons.process.parameter.db.ProcessDataDbService;
import ch.ivyteam.ivy.persistence.PersistencyException;
import ch.ivyteam.ivy.security.ISecurityContext;
import ch.ivyteam.ivy.workflow.ICase;

/**
 * This class handles the registration, checking for ended processes and firing the events for
 * the intermediate event bean that waits for processes
 * @author hsp
 * @since Pilatus
 */
public class WaitForAsyncProcessHelper {

	/** event id field used for additional case property and system event parameter map */
	public static final String EVENT_ID = "ch.ivyteam.ivy.addons.event.EventId";
	/** case id field used for system event parameter map */
	public static final String CASE_ID = "ch.ivyteam.ivy.addons.event.CaseId";
	/** process data (ProcessParameter) parameter field in map we want to pass inside the SIGNAL_PROCESS_ENDED event */
	public static final String PARAM = "ch.ivyteam.ivy.addons.event.ProcessParameter";
	/** parameter name parameter field in map we want to pass inside the SIGNAL_PROCESS_ENDED event*/
	public static final String PARAM_NAME = "ch.ivyteam.ivy.addons.event.ParamName";
	/** set this flag on a case to tell poll that it should check isCaseLocked */
	public static final String CHECK_FOR_CASE_LOCK = "ch.ivyteam.ivy.addons.event.CheckForCaseLock";
	/** This is the event that is sent when a process ends (from SignalEndOfAsyncProcess) */
	public static final String HAS_PROCESS_ENDED = "ch.ivyteam.ivy.addons.event.HasProcessEnded";
	/** used as value inside a case additional property in combination with HAS_PROCESS_ENDED */
	public static final String FALSE = "FALSE";
	/** used as value inside a case additional property in combination with HAS_PROCESS_ENDED */
	public static final String TRUE = "TRUE";
	
	/**
	 * wait for this time in millis until to execute the signal end code
	 * in case that eventId is not set on the case
	 */
	private static final int DELAY_PROCESS_END_TIME = 2000;

	/** Thread pool size for sExecutorService */
	private static final int THREAD_POOL_SIZE = 1;

	/** Service for delaying the process end signal */
	private static final ScheduledExecutorService sExecutorService = Executors.newScheduledThreadPool(THREAD_POOL_SIZE);
	
	/** stores all cases that are currently locked by the signalEndOfProcess method */
	volatile private static Set<Integer> sLockedCases = new HashSet<Integer>();
	
	/** lock for sLockedCases */
	private static final Lock sLockedCasesLock = new ReentrantLock();

	/**
	 * Register an asynchronous process with this bean. On a Trigger element call it this way:
	 * <code>out.eventId = WaitForAsyncProcess.registerProcess(triggeredTask.getCase(), in.eventId)</code>
	 * @param caseToRegister the case you want to register
	 * @param eventId eventId that belongs to the case
	 * @return the <code>eventId</code>
	 */
	public static String registerProcess(final ICase caseToRegister, final String eventId) {
		if(eventId == null || eventId == "" || caseToRegister == null) {
			throw new RuntimeException("Can not register Process. No caseToRegister and/or eventId!");
		}
		
		try {
			final ISecurityContext securityContext = caseToRegister.getApplication().getSecurityContext();
			securityContext.executeAsSystemUser(new Callable<Void>() {
	
				@Override
				public Void call() throws Exception {
					caseToRegister.setAdditionalProperty(HAS_PROCESS_ENDED, FALSE);
					caseToRegister.setAdditionalProperty(EVENT_ID, eventId);
					return null;
				}
			});
		} catch(Exception e) {
			//
		}
		
		return eventId;
	}

	/**
	 * Use this method to signal the end of the process. 
	 * @param caseToEnd the case that called this method
	 * @param params a map with 2 entries: <code>PARAM_NAME</code> (name of the parameter) and 
	 * <code>PARAM</code> (the ProcessParameter object)
	 */
	@SuppressWarnings("unchecked")
	public static void signalEndOfProcess(final ICase caseToEnd, final Map params) {
		/* 
		 *  In the case that eventId is not set on the case when we want to signal the end of process, we wait
		 *  for DELAY_PROCESS_END_TIME milliseconds before we check again. If its still empty, we ignore
		 *  this process. Since we don't want to block the caller thread, we put it inside the sExecutorService.
		 *  
		 *  We also lock the case until we are done. It could be, that the caller hit the end of process
		 *  while we are still waiting. If we have parameter, all of them are lost. So inside poll we
		 *  check if the case we try to check is locked or not.
		 */
		boolean doDelayInvocationOfEndProcess = false;
		try {
			// check if we have an eventId. if not set a delay 
			if(caseToEnd.getAdditionalProperty(EVENT_ID) == null) {
				doDelayInvocationOfEndProcess = true;
			}
			final ISecurityContext securityContext = caseToEnd.getApplication().getSecurityContext();
			
			
			// This Runnable stores the process data and marks the process as ended 
			final Runnable endProcess = new Runnable() {
				@Override
				public void run() {
					try {
						securityContext.executeAsSystemUser(new Callable<Void>() {
							@Override
							public Void call() throws Exception {
								try {
									final String eventId = caseToEnd.getAdditionalProperty(EVENT_ID);
									// check if we have an eventId 
									if (eventId != null	&& eventId.length() > 0) {
										// we have an eventId
										final Object param = params.get(PARAM);
										try {
											if (param != null && param instanceof ProcessParameter) {
												ProcessDataDbService.saveProcessData(params, caseToEnd);
											}
										} finally {
											// set the HAS_PROCESS_ENDED additional property to TRUE
											// so we know in poll() that the process has ended
											caseToEnd.setAdditionalProperty(HAS_PROCESS_ENDED, TRUE);
										}
									}
								} catch (Exception e) {
									//
								}
								return null;
							}
						});
					} catch (Exception e) {
						//
					} finally {
						WaitForAsyncProcessHelper.unlockCase(caseToEnd);
					}
				}
			};
			
			if(doDelayInvocationOfEndProcess == false) {
				// usual case. we have an eventId
				// synchronous invokation does not need any locking
				endProcess.run();
			} else {
				// This is an edge case. eventId is not yet set.
				// Therefore we delay the execution of the code
				// that marks the end of this process by DELAY_PROCESS_END_TIME
				
				// We lock the case because now it is possible that poll
				// executes while we are waiting. If during that time
				// the process would end normally through an end element,
				// all the sent ProcessParameter data would be lost.
				
				// the eventId could be set after the delay but the
				// case could still be locked because endProcess is still running.
				// This means it could be that not all flags and data are written.
				
				// Therefore poll must check first if a case is locked.
				// If that's the case, poll must abort
				WaitForAsyncProcessHelper.lockCase(caseToEnd);
				sExecutorService.schedule(endProcess, DELAY_PROCESS_END_TIME, TimeUnit.MILLISECONDS);
			}
		} catch (Exception e) {
			//
		}
	}

	/**
	 * Lock this case to tell <code>poll()</code> method that we are currently processing it.<br />
	 * This method can block if other Threads are currently accessing this method,
	 * unlockCase or isCaseLocked
	 * @param caseToLock case to lock
	 */
	public static void lockCase(ICase caseToLock) {
		sLockedCasesLock.lock();
		try {
			// we set CHECK_FOR_CASE_LOCK so poll() only
			// calls isCaseLocked if it is really necessary.
			// otherwise isCaseLocked would be called for each
			// ICase over all instances of this bean
			// which means it could start to block.
			caseToLock.setAdditionalProperty(CHECK_FOR_CASE_LOCK, TRUE);
			sLockedCases.add(caseToLock.getIdentifier());
		} catch (PersistencyException e) {
			//
		} finally {
			sLockedCasesLock.unlock();
		}
	}

	/**
	 * Unlock this case to tell the poll() that we are done processing it.<br />
	 * This method can block if other Threads are currently accessing this method,
	 * lockCase or isCaseLocked
	 * @param caseToUnlock case to unlock
	 */
	public static void unlockCase(ICase caseToUnlock) {
		if(WaitForAsyncProcessHelper.hasCaseCheckForCaseLockFlagSet(caseToUnlock)) {
			sLockedCasesLock.lock();
			try {
				sLockedCases.remove(caseToUnlock.getIdentifier());
			} finally {
				sLockedCasesLock.unlock();
			}
		}
	}

	/**
	 * check if this case is currently locked by signalendOfProcess method<br />
	 * This method can block if other Threads are currently accessing this method,
	 * lockCase or unlockCase
	 * @param theCase case we want to check
	 * @return true if it's locked, false otherwise
	 */
	public static boolean isCaseLocked(ICase theCase) {
		if(WaitForAsyncProcessHelper.hasCaseCheckForCaseLockFlagSet(theCase)) {
			sLockedCasesLock.lock();
			try {
				return sLockedCases.contains(theCase.getIdentifier());
			} finally {
				sLockedCasesLock.unlock();
			}
		} else {
			return false;
		}
	}

	/**
	 * check if theCase has the CHECK_FOR_CASE_LOCK set
	 * @param theCase check me for the flag
	 * @return true if theCase has the CHECK_FOR_CASE_LOCK set, otherwise false
	 */
	public static boolean hasCaseCheckForCaseLockFlagSet(final ICase theCase) {
		try {
			return TRUE.equals(theCase.getAdditionalProperty(CHECK_FOR_CASE_LOCK));
		} catch (PersistencyException e) {
			return false;
		}
	} 
	
	/**
	 * this method stops all services that {@link WaitForAsyncProcessHelper} uses
	 */
	public static void stop() {
		sExecutorService.shutdown();
	}

}
