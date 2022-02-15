package ch.ivyteam.demo.jpa.demos.test.mock;

import java.util.ArrayList;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Optional;
import java.util.concurrent.Callable;

import javax.servlet.http.HttpServletRequest;

import ch.ivyteam.demo.jpa.demos.Logger;
import ch.ivyteam.ivy.security.ClusterSessionsSnapshot;
import ch.ivyteam.ivy.security.EMailNotificationKind;
import ch.ivyteam.ivy.security.IExternalSecuritySystemProvider;
import ch.ivyteam.ivy.security.IPermission;
import ch.ivyteam.ivy.security.IRole;
import ch.ivyteam.ivy.security.ISecurityContext;
import ch.ivyteam.ivy.security.ISecurityDescriptor;
import ch.ivyteam.ivy.security.ISecurityMember;
import ch.ivyteam.ivy.security.ISession;
import ch.ivyteam.ivy.security.IUser;
import ch.ivyteam.ivy.security.IUserEMailNotificationSettings;
import ch.ivyteam.ivy.security.member.IMemberRepository;
import ch.ivyteam.ivy.security.query.IUserQueryExecutor;
import ch.ivyteam.ivy.security.role.IRoleRepository;
import ch.ivyteam.ivy.security.session.ISessionRepository;
import ch.ivyteam.ivy.security.synch.SynchronizationListener;
import ch.ivyteam.ivy.security.synch.UserSynchResult;
import ch.ivyteam.ivy.security.user.IUserRepository;

public class SimpleSecurityContext implements ISecurityContext {
	private static final Logger LOG = Logger.getLogger(SimpleSecurityContext.class);

	private final Map<String, IUser> userMap = new HashMap<>();
	private final Map<String, IRole> rolesMap = new HashMap<>();

	private final SimpleRole topLevelRole;
	private final SimpleUser systemUser;

	public SimpleSecurityContext() {
		topLevelRole = addSimpleRole("Everyone", "Everyone", "Everyone", false, null);
		systemUser = (SimpleUser) createUser("SYSTEM", "System user", "SYSTEM", Locale.ENGLISH, "system@test.aonxivy.com", null);
	}

	public SimpleRole addSimpleRole(String name, String displayNameTemplate, String displayDescriptionTemplate, boolean isDynamic, IRole parent) {
		SimpleRole role = new SimpleRole(name, displayNameTemplate, displayDescriptionTemplate, isDynamic, parent);
		rolesMap.put(name, role);
		return role;
	}

	public IRole removeSimpleRole(String rolename) {
		IRole role = rolesMap.remove(rolename);
		if(role.getParent() != null) {
			((SimpleRole)role.getParent()).removeChildRole(role);
		}
		if(role != null) {
			for (IRole child : role.getChildRoles()) {
				removeSimpleRole(child.getName());
			}
		}
		else {
			LOG.warn("Could not remove role {0}", rolename);
		}
		return role;
	}

	@Override
	public <T> T executeAsSystemUser(Callable<T> callable) throws Exception {
		LOG.info("Simulating execution of callable as system user");
		return callable.call();
	}

	@Override
	public IUser createUser(String userName, String fullUserName, String password, Locale eMailLanguage, String eMailAddress, String externalSecuritySystemName) {
		SimpleUser user = new SimpleUser();
		user.setName(userName);
		user.setFullName(fullUserName);
		user.setPassword(password);
		user.setEMailLanguage(eMailLanguage);
		user.setEMailAddress(eMailAddress);
		user.setExternalSecurityName(externalSecuritySystemName);
		user.addRole(getTopLevelRole());
		userMap.put(user.getName(), user);
		return user;
	}

	@Override
	public List<IUser> getUsers() {
		return new ArrayList<>(userMap.values());
	}

	@Override
	public IUser findUser(String userName) {
		return userMap.get(userName);
	}

	@Override
	public List<IRole> getRoles() {
		List<IRole> roles = new ArrayList<>();
		acquireRoles(roles, getTopLevelRole());
		return roles;
	}

	private void acquireRoles(List<IRole> roles, IRole role) {
		roles.add(role);
		for(IRole childRole : role.getChildRoles()) {
			acquireRoles(roles, childRole);
		}
	}

	@Override
	public IRole findRole(String roleName) {
		return rolesMap.get(roleName);
	}

	@Override
	public IRole getTopLevelRole() {
		return topLevelRole;
	}

	@Override
	public IUser getSystemUser() {
		return systemUser;
	}

	// not mocked

	@Override
	public <T> T getAdapter(Class<T> arg0) { throw new NotMockedException(); }

	@Override
	public void triggerSynchronization(SynchronizationListener listener) { throw new NotMockedException(); }

	@Override
	public boolean isSynchronizationRunning() { throw new NotMockedException();	}

	@Override
	public UserSynchResult synchronizeUser(String userName) { throw new NotMockedException(); }

	@Override
	public List<IRole> getActiveRoles() { throw new NotMockedException();	}

	@Override
	public IRole findRole(long roleId) { throw new NotMockedException(); }

	@Override
	public IRole findRole(int roleId) { throw new NotMockedException();	}

	@Override
	public IUser createUser(String userName, String fullUserName, String password, Locale eMailLanguage,
			String eMailAddress, EnumSet<EMailNotificationKind> eMailNotificationKinds,
			String externalSecuritySystemName) {
		throw new NotMockedException();	}

	@Override
	public IUser createUser(String userName, String fullUserName, String password, Locale eMailLanguage,
			String eMailAddress, IUserEMailNotificationSettings notificationSettings,
			String externalSecuritySystemName) {
		throw new NotMockedException();	}

	@Override
	public void deleteUser(String userName) {
		throw new NotMockedException();
	}

	@Override
	public IUser findUserWithoutLookup(String userName) {
		throw new NotMockedException();	}

	@Override
	public IUser findUser(long userId) {
		throw new NotMockedException();	}

	@Override
	public IUser findUser(int userId) {
		throw new NotMockedException();	}

	@Override
	public ISession createSession(int sessionIdentifier) {
		throw new NotMockedException();	}

	@Override
	public ISession createSession() {
		throw new NotMockedException();	}

	@Override
	public ISession findSession(int sessionIdentifier) {
		throw new NotMockedException();	}

	@Override
	public ISession getSystemUserSession() {
		throw new NotMockedException();	}

	@Override
	public void destroySession(int sessionIdentifier) {
		throw new NotMockedException();
	}

	@Override
	public List<ISession> getSessions() {
		throw new NotMockedException();	}

	@Override
	public long getSessionCount() {
		throw new NotMockedException();	}

	@Override
	public ClusterSessionsSnapshot getClusterSessionsSnapshot() {
		throw new NotMockedException();	}

	@Override
	public ClusterSessionsSnapshot getClusterSessionsSnapshot(long maxAge) {
		throw new NotMockedException();	}

	@Override
	public boolean hasPermission(ISecurityDescriptor securityDescriptor, IPermission permission) {
		throw new NotMockedException();	}

	@Override
	public void checkPermission(ISecurityDescriptor securityDescriptor, IPermission permission) {
		throw new NotMockedException();
	}

	@Override
	public ISession getCurrentSession() {
		throw new NotMockedException();	}

	@Override
	public ISecurityMember findSecurityMember(String securityMemberName) {
		throw new NotMockedException();	}

	@Override
	public String getExternalSecuritySystemName() {
		throw new NotMockedException();	}

	@Override
	public IExternalSecuritySystemProvider getExternalSecuritySystemProvider() {
		throw new NotMockedException();	}

	@Override
	public long getId() {
		throw new NotMockedException();	}

	@Override
	public int getIdentifier() {
		throw new NotMockedException();	}

	@Override
	public <T> T executeAs(Callable<T> callable, ISession executionContext) throws Exception {
		throw new NotMockedException();	}

	@Override
	public IUserQueryExecutor getUserQueryExecutor() {
		throw new NotMockedException();	}

	@Override
	public IUserRepository users() {
		throw new NotMockedException();	}

	@Override
	public IMemberRepository members() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public IRoleRepository roles() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ISessionRepository sessions() {
		// TODO Auto-generated method stub
		return null;
	}
	
}
