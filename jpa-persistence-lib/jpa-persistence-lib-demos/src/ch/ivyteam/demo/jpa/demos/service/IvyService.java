package ch.ivyteam.demo.jpa.demos.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import org.apache.commons.lang.StringUtils;

import ch.ivyteam.demo.jpa.demos.Constants;
import ch.ivyteam.demo.jpa.demos.Logger;
import ch.ivyteam.demo.jpa.demos.enums.Role;
import ch.ivyteam.demo.jpa.demos.ivy.CustomField;
import ch.ivyteam.ivy.application.IApplication;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.process.model.value.SignalCode;
import ch.ivyteam.ivy.security.IRole;
import ch.ivyteam.ivy.security.IUser;
import ch.ivyteam.ivy.workflow.ICase;
import ch.ivyteam.ivy.workflow.ITask;
import ch.ivyteam.ivy.workflow.IWorkflowContext;
import ch.ivyteam.ivy.workflow.IWorkflowSession;
import ch.ivyteam.ivy.workflow.TaskState;
import ch.ivyteam.ivy.workflow.query.CaseQuery;
import ch.ivyteam.ivy.workflow.query.TaskQuery;


/**
 * Services to support working with Ivy functions.
 */
public class IvyService {
	private static final Logger LOG = Logger.getLogger(IvyService.class);
	private static final String SESSION_KEY_BASE = IvyService.class.getCanonicalName() + ".";
	private static final String SESSION_OLD_CONTENT_LOCALE = SESSION_KEY_BASE + "oldContentLocale";
	private static final String SESSION_OLD_FORMATTING_LOCALE = SESSION_KEY_BASE + "oldFormattingLocale";
	private static final Pattern PATHPART = Pattern.compile("[/ ]*(.*?)[/ ]*");
	private static final String DESIGNER_APPLICATION_NAME = "designer";

	private IvyService() {
	}

	/**
	 * Set the application's default {@link Locale}.
	 * 
	 * The locale will be set to {@link Constants#DEFAULT_LOCALE} into
	 * the session and will be valid for this session until
	 * {@link #restoreSessionLocale()} is called.
	 */
	public static void setSessionDefaultLocale() {
		setSessionAttribute(SESSION_OLD_CONTENT_LOCALE, Ivy.session().getContentLocale());
		setSessionAttribute(SESSION_OLD_FORMATTING_LOCALE, Ivy.session().getFormattingLocale());

		Ivy.session().setContentLocale(Constants.DEFAULT_LOCALE);
		Ivy.session().setFormattingLocale(Constants.DEFAULT_LOCALE);
	}

	/**
	 * Restore the original {@link Locale} of the session.
	 */
	public static void restoreSessionLocale() {
		Locale contentLocale = (Locale)getSessionAttribute(SESSION_OLD_CONTENT_LOCALE);
		Locale formattingLocale = (Locale)getSessionAttribute(SESSION_OLD_FORMATTING_LOCALE);
		if(contentLocale != null) {
			Ivy.session().setContentLocale(Constants.DEFAULT_LOCALE);
		}
		if(formattingLocale != null) {
			Ivy.session().setFormattingLocale(Constants.DEFAULT_LOCALE);
		}
	}

	/**
	 * Just a shortcut to run code as system.
	 * 
	 * @param <T>
	 * @param callable
	 * @return
	 * @throws Exception
	 */
	public static <T> T executeAsSystem(Callable<T> callable) throws Exception {
		return Ivy.wf().getSecurityContext().executeAsSystemUser(callable);
	}

	/**
	 * Get the Id of the current application.
	 * 
	 * @return
	 */
	public static long getApplicationId() {
		return Ivy.wf().getApplication().getId();
	}

	/**
	 * Get the top level role.
	 * 
	 * @return
	 */
	public static IRole getApplicationTopLevelRole() {
		return Ivy.wf().getSecurityContext().getTopLevelRole();
	}

	/**
	 * Find an {@link IRole}.
	 * 
	 * @param role
	 * @return
	 */
	public static IRole findRole(Role role) {
		return findRole(role.getIvyRoleName());
	}

	/**
	 * Find an ivy role.
	 * 
	 * @param rolename
	 * @return
	 */
	public static IRole findRole(String rolename) {
		return Ivy.wf().getSecurityContext().findRole(rolename);
	}

	/**
	 * Find an ivy user.
	 * 
	 * @param username
	 * @return
	 */
	public static IUser findUser(String username) {
		return Ivy.wf().getSecurityContext().findUser(username);
	}

	/**
	 * Get a non-blank Ivy global variable as a String.
	 * 
	 * If the variable is not set or blank, then return default value. If the
	 * variable is set, then it is trimmed before returning.
	 * 
	 * @param name
	 * @param defValue
	 * @return
	 */
	public static String getNonBlankGlobalVariable(String name, String defValue) {
		String value = Ivy.var().get(name);
		if (StringUtils.isBlank(value)) {
			value = defValue;
		} else {
			value = value.trim();
		}
		return value;
	}

	/**
	 * Does the current user have global access?
	 * 
	 * Global access will be granted to the system user and to users having the Administrator role. 
	 * 
	 * @return
	 */
	public static boolean hasGlobalAccess() {
		return hasRole(Role.ADMINISTRATOR) || isSystemUser();
	}


	/**
	 * Get the current session user.
	 * 
	 * @return
	 */
	public static IUser getSessionUser() {
		IUser user = null;
		IWorkflowSession session = Ivy.session();
		if(session != null) {
			user = session.getSessionUser();
		}
		if(user == null) {
			LOG.error("Could not determine current user for session {0}", session);
		}

		return user;
	}

	/**
	 * Get the current session username.
	 * 
	 * @return
	 */
	public static String getSessionUserName() {
		String userName = null;
		IWorkflowSession session = Ivy.session();
		if(session != null) {
			userName = session.getSessionUserName();
		}
		if(userName == null) {
			LOG.error("Could not determine current user for session {0}", session);
		}

		return userName;
	}

	/**
	 * Get the system user.
	 * 
	 * @return
	 */
	public static IUser getSystemUser() {
		IUser user = null;
		IWorkflowSession session = Ivy.session();
		if(session != null) {
			try {
				user = executeAsSystem(() -> session.getSecurityContext().getSystemUser());
			} catch (Exception e) {
				LOG.error("Could not determine the system user.", e);
			}
		}
		return user;
	}

	/**
	 * Is the current session user the system user?
	 * 
	 * @return
	 */
	public static boolean isSystemUser() {
		return isSystemUser(getSessionUser());
	}

	/**
	 * Is the given user the system user?
	 * 
	 * @param user
	 * @return
	 */
	public static boolean isSystemUser(IUser user) {
		boolean result = false;
		if(user != null) {
			IUser systemUser = getSystemUser();

			if(systemUser != null) {
				result = systemUser.getId() == user.getId();
			}
		}
		return result;
	}

	/**
	 * Are we running in Designer?
	 * 
	 * Note: this function might be called by Logger so do not log here... :-)
	 * 
	 * @return
	 * @throws Exception
	 */
	public static boolean isDesigner() throws Exception {
		boolean designer = false;
		IWorkflowContext wf = Ivy.wf();

		if(wf != null) {
			IApplication application = wf.getApplication();

			if(application != null) {
				designer = DESIGNER_APPLICATION_NAME.equalsIgnoreCase(application.getName());
			}
		}
		return designer;
	}

	/**
	 * Check if the session user has any of the given Ivy roles.
	 * 
	 * @param roleNames
	 * @return true if user has a role
	 */
	public static boolean hasRole(String...roleNames) {
		Boolean hasRole = false;
		if(isSystemUser()) {
			hasRole = true;
		}
		else {
			for (String roleName : roleNames) {
				IRole role = findRole(roleName);

				if (role != null) {
					if(Ivy.session().hasRole(role, true)) {
						hasRole = true;
						break;
					}
				}
			}
		}
		return hasRole;
	}

	/**
	 * Check if the session user has a concrete ivy role.
	 * 
	 * Note, that the System user and the Developer user will have all roles.
	 * 
	 * @param roles
	 * @return
	 */
	public static boolean hasRole(Role...roles) {
		return hasRole(Stream.of(roles).map(r -> r.getIvyRoleName()).toArray(String[]::new));
	}

	/**
	 * Get list of user for a role.
	 *  
	 * @param role
	 * @return
	 */
	public static List<IUser> getUsersOfRole(Role role) {
		return getUsersOfRole(role.getIvyRoleName());
	}

	/**
	 * Get list of user for a role. 
	 * 
	 * @param roleName
	 * @return List<IUser>
	 */
	public static List<IUser> getUsersOfRole(String roleName) {
		List<IUser> users = new ArrayList<>();
		IRole role = findRole(roleName);

		if (role != null) {
			users = role.getAllUsers();
		}

		return users;
	}

	/**
	 * Get an attribute from the current session.
	 * 
	 * @param key
	 * @return
	 */
	public static Object getSessionAttribute(String key) {
		Object attribute = null;
		IWorkflowSession session = Ivy.session();
		if(session != null) {
			attribute = session.getAttribute(key);
		}
		else {
			LOG.error("Could not determine current session.");
		}
		return attribute;
	}

	/**
	 * Set an attribute to the current session.
	 * 
	 * @param key
	 * @param attribute
	 * @return
	 */
	public static Object setSessionAttribute(String key, Object attribute) {
		Object old = null;
		IWorkflowSession session = Ivy.session();
		if(session != null) {
			old = session.setAttribute(key, attribute);
		}
		else {
			LOG.error("Could not determine current session.");
		}
		return old;
	}

	/**
	 * Send a signal containing a single {@link String}.
	 * 
	 * The {@link String} will typically contain the id of an object.
	 * 
	 * @param signalCode
	 * @param data
	 */
	public static void sendSignal(String signalCode, String signalData) {
		Ivy.wf().signals().send(new SignalCode(signalCode), signalData);
	}

	/**
	 * Send a signal.
	 * 
	 * @param signalCode
	 */
	public static void sendSignal(String signalCode) {
		Ivy.wf().signals().send(new SignalCode(signalCode));
	}

	/**
	 * Execute a case query.
	 * 
	 * @param caseQuery
	 * @return
	 */
	public static List<ICase> executeCaseQuery(CaseQuery caseQuery) {
		return Ivy.wf().getCaseQueryExecutor().getResults(caseQuery);
	}

	/**
	 * Execute a case query, force a single result.
	 * 
	 * @param caseQuery
	 * @return
	 */
	@SuppressWarnings("deprecation")
	public static ICase executeCaseQueryForceSingleResult(CaseQuery caseQuery) {
		List<ICase> icases = executeCaseQuery(caseQuery);
		ICase result = null;
		if(icases != null && icases.size() > 0) {
			result = icases.get(0);
			if(icases.size() > 1) {
				try {
					// throw to get stack trace
					throw new RuntimeException("Case query returned " + icases.size() + " results: " +
							icases.stream().map(c -> "" + c.getId()).collect(Collectors.joining(", ")));
				}
				catch(RuntimeException e) {
					LOG.warn("CaseQuery did not return single result.", e);
				}
			}
		}
		return result;
	}

	/**
	 * Execute a task query.
	 * 
	 * @param taskQuery
	 * @return
	 */
	public static List<ITask> executeTaskQuery(TaskQuery taskQuery) {
		return Ivy.wf().getTaskQueryExecutor().getResults(taskQuery);
	}

	/**
	 * Execute a task query, force a single result.
	 * 
	 * @param taskQuery
	 * @return
	 */
	@SuppressWarnings("deprecation")
	public static ITask executeTaskQueryForceSingleResult(TaskQuery taskQuery) {
		List<ITask> itasks = executeTaskQuery(taskQuery);
		ITask result = null;
		if(itasks != null && itasks.size() > 0) {
			result = itasks.get(0);
			if(itasks.size() > 1) {
				try {
					// throw to get stack trace
					throw new RuntimeException("Task query returned " + itasks.size() + " results: " +
							itasks.stream().map(c -> "" + c.getId()).collect(Collectors.joining(", ")));
				}
				catch(RuntimeException e) {
					LOG.warn("TaskQuery did not return single result.", e);
				}
			}
		}
		return result;
	}


	/**
	 * Reset a task if it is in an active state.
	 * 
	 * Active States are:
	 * <ul>
	 * <li>{@link TaskState#RESUMED}</li>
	 * <li>{@link TaskState#CREATED}</li>
	 * <li>{@link TaskState#PARKED}</li>
	 * <li>{@link TaskState#READY_FOR_JOIN}</li>
	 * <li>{@link TaskState#FAILED}</li>
	 * </ul>
	 * 
	 */
	public static void resetTaskIfActive() {
		List<TaskState> states = Arrays.asList(TaskState.RESUMED, TaskState.CREATED, TaskState.PARKED, TaskState.READY_FOR_JOIN, TaskState.FAILED);
		ITask task = Ivy.wfTask();
		if (task != null && states.contains(Ivy.wfTask().getState())) {
			task.reset();
		}
		else {
			LOG.warn("Could not reset task {0}", task);
		}
	}

	/**
	 * Set embed in frame flag to false.
	 * 
	 * @param wfCase
	 */
	public static void setEmbedInFrame(ICase wfCase) {
		wfCase.customFields().stringField(CustomField.EMBED_IN_FRAME.getFieldName()).set(Boolean.FALSE.toString());
	}
}
