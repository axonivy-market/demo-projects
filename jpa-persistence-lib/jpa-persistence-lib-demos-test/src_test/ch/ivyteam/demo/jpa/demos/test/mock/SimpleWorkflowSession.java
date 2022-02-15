package ch.ivyteam.demo.jpa.demos.test.mock;

import java.util.Date;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

import ch.ivyteam.ivy.persistence.IGroup;
import ch.ivyteam.ivy.persistence.IQueryResult;
import ch.ivyteam.ivy.persistence.OrderDirection;
import ch.ivyteam.ivy.security.IPermission;
import ch.ivyteam.ivy.security.IRole;
import ch.ivyteam.ivy.security.IRoleMatcher;
import ch.ivyteam.ivy.security.ISecurityContext;
import ch.ivyteam.ivy.security.ISecurityDescriptor;
import ch.ivyteam.ivy.security.ISecurityMember;
import ch.ivyteam.ivy.security.ISession;
import ch.ivyteam.ivy.security.IUser;
import ch.ivyteam.ivy.security.IUserSubstitute;
import ch.ivyteam.ivy.workflow.CaseDefinition;
import ch.ivyteam.ivy.workflow.CaseProperty;
import ch.ivyteam.ivy.workflow.ICase;
import ch.ivyteam.ivy.workflow.IProcessData;
import ch.ivyteam.ivy.workflow.IProcessStart;
import ch.ivyteam.ivy.workflow.IPropertyFilter;
import ch.ivyteam.ivy.workflow.ITask;
import ch.ivyteam.ivy.workflow.IWorkflowContext;
import ch.ivyteam.ivy.workflow.IWorkflowSession;
import ch.ivyteam.ivy.workflow.InvolvedCasesByRoleQuery;
import ch.ivyteam.ivy.workflow.JoinTaskOptions;
import ch.ivyteam.ivy.workflow.NewTasksDefinition;
import ch.ivyteam.ivy.workflow.PropertyOrder;
import ch.ivyteam.ivy.workflow.ResumeTaskResult;
import ch.ivyteam.ivy.workflow.TaskAndCaseCreationOptions;
import ch.ivyteam.ivy.workflow.TaskDefinition;
import ch.ivyteam.ivy.workflow.TaskElementKind;
import ch.ivyteam.ivy.workflow.TaskProperty;
import ch.ivyteam.ivy.workflow.TaskState;
import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
import ch.ivyteam.ivy.workflow.WorkflowProcessElement;
import ch.ivyteam.ivy.workflow.start.IWebStartable;
import ch.ivyteam.security.Password;

public class SimpleWorkflowSession implements IWorkflowSession {
	private IUser user;
	private final Map<String, Object> attributeMap = new HashMap<>();
	private Locale contentLocale = Locale.GERMAN;
	private Locale formattingLocale = Locale.GERMANY;

	public void setSessionUser(IUser user) {
		this.user = user;
	}

	@Override
	public IUser getSessionUser() {
		return user;
	}

	@Override
	public String getSessionUserName() {
		return user != null ? user.getName() : null;
	}

	@Override
	public ISecurityContext getSecurityContext() {
		return Mocked.securityContext;
	}

	@Override
	public Object setAttribute(String attributeName, Object attributeValue) {
		return attributeMap.put(attributeName, attributeValue);
	}

	@Override
	public Object getAttribute(String attributeName) {
		return attributeMap.get(attributeName);
	}

	@Override
	public void setContentLocale(Locale contentLocale) {
		this.contentLocale = contentLocale;
	}

	@Override
	public Locale getContentLocale() {
		return contentLocale;
	}

	@Override
	public void setFormattingLocale(Locale formattingLocale) {
		this.formattingLocale = formattingLocale;
	}

	@Override
	public Locale getFormattingLocale() {
		return formattingLocale;
	}

	@Override
	public boolean hasRole(IRole role, boolean useSessionRoles) {
		return ((SimpleUser)user).hasDirectRole(role.getName());
	}

	// not mocked functions start here

	@Override
	public int getIdentifier() {
		throw new NotMockedException();
	}

	@Override
	public boolean isSessionUserUnknown() {
		throw new NotMockedException();
	}

	@Override
	public boolean isSessionUserSystemUser() {
		throw new NotMockedException();
	}

	@Override
	public void assignRole(IRole role) {
		throw new NotMockedException();
	}

	@Override
	public void authenticateSessionUser(String userName, Password password) {
		throw new NotMockedException();
	}

	@Override
	public void authenticateSessionUser(String userName, Password password, long currentTaskId) {
		throw new NotMockedException();
	}

	@Override
	public boolean checkPassword(String password) {
		throw new NotMockedException();
	}

	@Override
	public boolean loginSessionUser(String userName, String password) {
		throw new NotMockedException();
	}

	@Override
	public boolean loginSessionUser(String userName, String password, long currentTaskId) {
		throw new NotMockedException();
	}

	@Override
	public void logoutSessionUser() {
		throw new NotMockedException();
	}

	@Override
	public void logoutSessionUser(long currentTaskId) {
		throw new NotMockedException();
	}

	@Override
	public boolean isAbsent() {
		throw new NotMockedException();
	}

	@Override
	public boolean hasActiveSubstitutions() {
		throw new NotMockedException();
	}

	@Override
	public List<IUserSubstitute> getActiveSubstitutions() {
		throw new NotMockedException();
	}

	@Override
	public String getClusterNode() {
		throw new NotMockedException();
	}

	@Override
	public boolean isMemberThroughActiveSubstitution(String securityMemberName) {
		throw new NotMockedException();
	}

	@Override
	public boolean isMemberThroughActiveSubstitution(ISecurityMember securityMember) {
		throw new NotMockedException();
	}

	@Override
	public void setHttpSessionIdentifier(String httpSessionIdentifier) {
		throw new NotMockedException();
	}

	@Override
	public String getHttpSessionIdentifier() {
		throw new NotMockedException();
	}

	@Override
	public List<ISession> getMySessions() {
		throw new NotMockedException();
	}

	@Override
	public boolean hasMoreThanOneSession() {
		throw new NotMockedException();
	}

	@Override
	public boolean hasPermission(ISecurityDescriptor securityDescriptor, IPermission permission) {
		throw new NotMockedException();
	}

	@Override
	public void checkPermission(ISecurityDescriptor securityDescriptor, IPermission permission) {
		throw new NotMockedException();
	}

	@Override
	public IRole getSessionRole() {
		throw new NotMockedException();
	}

	@Override
	public void setContentLocale(String language, String country) {
		throw new NotMockedException();
	}

	@Override
	public void setFormattingLocale(String language, String country) {
		throw new NotMockedException();
	}

	@Override
	public String getAuthenticationMode() {
		throw new NotMockedException();
	}

	@Override
	public void authenticateSessionUser(IUser user, String authenticationMode) {
		throw new NotMockedException();
	}

	@Override
	public void authenticateSessionUser(IUser user, String authenticationMode, long currentTaskId) {
		throw new NotMockedException();
	}

	@Override
	public void setActiveEnvironment(String name) {
		throw new NotMockedException();
	}

	@Override
	public String getActiveEnvironment() {
		throw new NotMockedException();
	}

	@Override
	public void clearAttributes() {
		throw new NotMockedException();
	}

	@Override
	public boolean canActAsUser(IUser user) {
		throw new NotMockedException();
	}

	@Override
	public boolean canActAsUser(IUser user, SubstituteInclusion substituteInclusion) {
		throw new NotMockedException();
	}

	@Override
	public <T> T getAdapter(Class<T> arg0) {
		throw new NotMockedException();
	}

	@Override
	public Object removeAttribute(String attributeName) {
		throw new NotMockedException();
	}

	@Override
	public Set<String> getAttributeNames() {
		throw new NotMockedException();
	}

	@Override
	public IWorkflowContext getWorkflowContext() {
		throw new NotMockedException();
	}

	@Override
	public List<IProcessStart> getStartableProcessStarts() {
		throw new NotMockedException();
	}

	@Override
	public List<IWebStartable> getStartables() {
		throw new NotMockedException();
	}

	@Override
	public ITask findWorkingTask(long taskIdentifier) {
		throw new NotMockedException();
	}

	@Override
	public ITask findWorkingTask(int taskIdentifier) {
		throw new NotMockedException();
	}

	@Override
	public void resetWorkingTaskOnTaskStartRequest(long taskId, String requestPath) {
		throw new NotMockedException();
	}

	@Override
	public IQueryResult<ITask> findWorkTasks(IPropertyFilter<TaskProperty> filter,
			List<PropertyOrder<TaskProperty>> order, int startIndex, int count, boolean returnAllCount,
			EnumSet<TaskState> includeTaskStates) {
		throw new NotMockedException();
	}

	@Override
	public List<ITask> findSuspendedWorkTasks(int startIndex, int count) {
		throw new NotMockedException();
	}

	@Override
	public List<ITask> findSuspendedAndParkedWorkTasks(int startIndex, int count) {
		throw new NotMockedException();
	}

	@Override
	public List<ITask> findParkedWorkTasks(int startIndex, int count) {
		throw new NotMockedException();
	}

	@Override
	public List<ITask> findResumedWorkTasks(int startIndex, int count) {
		throw new NotMockedException();
	}

	@Override
	public List<ITask> findCreatedAndResumedWorkTasks(int startIndex, int count) {
		throw new NotMockedException();
	}

	@Override
	public IQueryResult<ITask> findLockedWorkTasks(IPropertyFilter<TaskProperty> filter,
			List<PropertyOrder<TaskProperty>> order, int startIndex, int count, boolean returnAllCount,
			EnumSet<TaskState> includeTaskStates) {
		throw new NotMockedException();
	}

	@Override
	public IQueryResult<ICase> findStartedCases(IPropertyFilter<CaseProperty> filter,
			List<PropertyOrder<CaseProperty>> order, int startIndex, int count, boolean returnAllCount) {
		throw new NotMockedException();
	}

	@Override
	public List<ICase> findStartedCases(int startIndex, int count, Date caseStartTimestampFilter) {
		throw new NotMockedException();
	}

	@Override
	public IQueryResult<ICase> findStartedCasesByRole(List<IRole> roles, IPropertyFilter<CaseProperty> filter,
			List<PropertyOrder<CaseProperty>> order, int startIndex, int count, boolean returnAllCount) {
		throw new NotMockedException();
	}

	@Override
	public IQueryResult<ITask> findWorkedOnTasks(IPropertyFilter<TaskProperty> filter,
			List<PropertyOrder<TaskProperty>> order, int startIndex, int count, boolean returnAllCount) {
		throw new NotMockedException();
	}

	@Override
	public List<ITask> findWorkedOnTasks(int startIndex, int count, Date taskEndTimestampFilter) {
		throw new NotMockedException();
	}

	@Override
	public IQueryResult<ITask> findWorkedOnTasksByRole(List<IRole> roles, IPropertyFilter<TaskProperty> filter,
			List<PropertyOrder<TaskProperty>> order, int startIndex, int count, boolean returnAllCount) {
		throw new NotMockedException();
	}

	@Override
	public ITask findEndedTask(long taskId) {
		throw new NotMockedException();
	}

	@Override
	public ITask createTaskAndCase(IProcessStart processStart) {
		throw new NotMockedException();
	}

	@Override
	public ITask createTaskAndCase(TaskAndCaseCreationOptions creationOptions) {
		throw new NotMockedException();
	}

	@Override
	public ITask createTaskAndCase(ITask creatorTask, IProcessStart processStart, IProcessData startProcessData,
			CaseDefinition caseDefinition, TaskDefinition taskDefinition) {
		throw new NotMockedException();
	}

	@Override
	public ITask resumeTask(long taskIdentifier) {
		throw new NotMockedException();
	}

	@Override
	public ITask resumeTask(int taskIdentifier) {
		throw new NotMockedException();
	}

	@Override
	public ResumeTaskResult resumeTask(long taskIdentifier, String requestPath) {
		throw new NotMockedException();
	}

	@Override
	public List<ITask> joiningTasks(ITask task, WorkflowProcessElement element, TaskElementKind joinTaskElementKind,
			JoinTaskOptions options, boolean hasEndPage) {
		throw new NotMockedException();
	}

	@Override
	public ITask endJoiningTasksAndStartNewTasks(List<ITask> joiningTasks, IProcessData startProcessData,
			NewTasksDefinition newTasksDefinition) {
		throw new NotMockedException();
	}

	@Override
	public void resetTask(ITask runningTask) {
		throw new NotMockedException();
	}

	@Override
	public void endWorkingTask(ITask runningTask, WorkflowProcessElement element, boolean hasEndPage) {
		throw new NotMockedException();
	}

	@Override
	public void setTaskPosition(ITask runningTask, String currentRequestPath) {
		throw new NotMockedException();
	}

	@Override
	public void parkTask(ITask task) {
		throw new NotMockedException();
	}

	@Override
	public void failTask(ITask failedTask, String failReason, boolean retryAfterFailedTimeout) {
		throw new NotMockedException();
	}

	@Override
	public List<ITask> retryJoiningTasksOnFirstJoinableTaskElement() {
		throw new NotMockedException();
	}

	@Override
	public IProcessData createProcessData() {
		throw new NotMockedException();
	}

	@Override
	public List<IGroup<ITask>> findWorkTaskCategories(IPropertyFilter<TaskProperty> categoryFilter,
			TaskProperty categoryProperty, OrderDirection categoryPropertyOrder, EnumSet<TaskState> includeTaskStates) {
		throw new NotMockedException();
	}

	@Override
	public List<IGroup<ITask>> findWorkedOnTaskCategories(IPropertyFilter<TaskProperty> categoryFilter,
			TaskProperty categoryProperty, OrderDirection categoryPropertyOrder) {
		throw new NotMockedException();
	}

	@Override
	public List<IGroup<ICase>> findStartedCaseCategories(IPropertyFilter<CaseProperty> categoryFilter,
			CaseProperty categoryProperty, OrderDirection categoryPropertyOrder) {
		throw new NotMockedException();
	}

	@Override
	public IQueryResult<ICase> findInvolvedCases(IPropertyFilter<CaseProperty> filter,
			List<PropertyOrder<CaseProperty>> order, int startIndex, int count, boolean returnAllCount) {
		throw new NotMockedException();
	}

	@Override
	public List<IGroup<ICase>> findInvolvedCasesCategories(IPropertyFilter<CaseProperty> categoryFilter,
			CaseProperty categoryProperty, OrderDirection categoryPropertyOrder) {
		throw new NotMockedException();
	}

	@Override
	public IQueryResult<ICase> findInvolvedCasesByRole(List<IRole> roles, IPropertyFilter<CaseProperty> filter,
			List<PropertyOrder<CaseProperty>> order, int startIndex, int count, boolean returnAllCount) {
		throw new NotMockedException();
	}

	@Override
	public IQueryResult<ICase> findInvolvedCasesByRole(InvolvedCasesByRoleQuery query) {
		throw new NotMockedException();
	}

	@Override
	public List<IGroup<ICase>> findInvolvedCasesByRoleCategories(List<IRole> roles,
			IPropertyFilter<CaseProperty> categoryFilter, CaseProperty categoryProperty,
			OrderDirection categoryPropertyOrder) {
		throw new NotMockedException();
	}

	@Override
	public ITask updateTask(ITask task, TaskUpdateDefinition updateDefinition) {
		throw new NotMockedException();
	}

	@Override
	public int getWorkingTaskCount() {
		throw new NotMockedException();
	}

	@Override
	public IRoleMatcher has() {
		// TODO Auto-generated method stub
		return null;
	}
}
