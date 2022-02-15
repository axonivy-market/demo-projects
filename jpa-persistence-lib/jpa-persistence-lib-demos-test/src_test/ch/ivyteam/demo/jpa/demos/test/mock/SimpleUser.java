package ch.ivyteam.demo.jpa.demos.test.mock;

import java.util.ArrayList;
import java.util.Date;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import ch.ivyteam.ivy.location.ILocationService;
import ch.ivyteam.ivy.security.EMailNotificationKind;
import ch.ivyteam.ivy.security.IRole;
import ch.ivyteam.ivy.security.IRoleMatcher;
import ch.ivyteam.ivy.security.ISecurityContext;
import ch.ivyteam.ivy.security.IUser;
import ch.ivyteam.ivy.security.IUserAbsence;
import ch.ivyteam.ivy.security.IUserEMailNotificationSettings;
import ch.ivyteam.ivy.security.IUserSubstitute;
import ch.ivyteam.ivy.security.IUserToken;
import ch.ivyteam.ivy.security.SubstitutionType;

public class SimpleUser implements IUser {
	private long id = -1;
	private String name;
	private String fullUserName;
	private String password;
	private Locale emailLanguage;
	private String eMailAddress;
	private String externalSecurityName;
	private final Map<String, IRole> rolesMap = new HashMap<>();

	private static long nextId = 0;

	public SimpleUser() {
		id = getNextId();
	}

	synchronized private long getNextId() {
		return nextId++;
	}

	@Override
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getPassword() {
		return this.password;
	}

	@Override
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String getFullName() {
		return fullUserName;
	}

	@Override
	public void setFullName(String fullUserName) {
		this.fullUserName = fullUserName;
	}

	@Override
	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public Locale getEMailLanguage() {
		return this.emailLanguage;
	}

	@Override
	public void setEMailLanguage(Locale defaultLanguage) {
		this.emailLanguage = defaultLanguage;
	}

	@Override
	public String getEMailAddress() {
		return eMailAddress;
	}

	@Override
	public void setEMailAddress(String eMailAddress) {
		this.eMailAddress = eMailAddress;
	}

	@Override
	public String getExternalSecurityName() {
		return externalSecurityName;
	}

	@Override
	public void setExternalSecurityName(String externalSecurityName) {
		this.externalSecurityName = externalSecurityName;
	}

	@Override
	public List<IRole> getRoles() {
		return new ArrayList<>(rolesMap.values());
	}

	@Override
	public void addRole(IRole role) {
		rolesMap.put(role.getName(), role);
		((SimpleRole)role).addUser(this);
	}

	@Override
	public void removeRole(IRole role) {
		rolesMap.remove(role.getName());
		((SimpleRole)role).removeUser(this);
	}

	public boolean hasDirectRole(String roleName) {
		return rolesMap.containsKey(roleName);
	}

	@Override
	public String toString() {
		return String.format("SimpleUser [name=%s, fullUserName=%s, eMailAddress=%s, id=%s]", name, fullUserName, eMailAddress, id);
	}


	// not mocked

	@Override
	public boolean isMember(IUserToken userToken, boolean useSessionRoles) {
		throw new NotMockedException();
	}

	@Override
	public String getMemberName() {
		throw new NotMockedException();
	}


	@Override
	public String getDisplayName() {
		throw new NotMockedException();
	}

	@Override
	public boolean isUser() {
		throw new NotMockedException();
	}

	@Override
	public int getIdentifier() {
		throw new NotMockedException();
	}

	@Override
	public ISecurityContext getSecurityContext() {
		throw new NotMockedException();
	}

	@Override
	public List<IRole> getAllRoles() {
		throw new NotMockedException();
	}

	@Override
	public void setProperty(String name, String value) {
		throw new NotMockedException();
	}

	@Override
	public String getProperty(String name) {
		throw new NotMockedException();
	}

	@Override
	public String removeProperty(String name) {
		throw new NotMockedException();
	}

	@Override
	public List<String> getAllPropertyNames() {
		throw new NotMockedException();
	}

	@Override
	public boolean isPropertyBacked(String name) {
		throw new NotMockedException();
	}

	@Override
	public IUserAbsence createAbsence(Date startDateInclusive, Date stopDateInclusive, String description) {
		throw new NotMockedException();
	}

	@Override
	public void deleteAbsence(IUserAbsence absence) {
		throw new NotMockedException();
	}

	@Override
	public List<IUserAbsence> getAbsences() {
		throw new NotMockedException();
	}

	@Override
	public boolean isAbsent() {
		throw new NotMockedException();
	}

	@Override
	public IUserSubstitute createSubstitute(IUser mySubstitute, IRole forThisRole, String description) {
		throw new NotMockedException();
	}

	@Override
	public IUserSubstitute createSubstitute(IUser mySubstitute, String description, SubstitutionType type) {
		throw new NotMockedException();
	}

	@Override
	public void deleteSubstitute(IUserSubstitute substitute) {
		throw new NotMockedException();
	}

	@Override
	public List<IUserSubstitute> getSubstitutes() {
		throw new NotMockedException();
	}

	@Override
	public EnumSet<EMailNotificationKind> getEMailNotificationKind() {
		throw new NotMockedException();
	}

	@Override
	public void setEMailNotificationKind(EnumSet<EMailNotificationKind> eMailNotificationKinds) {
		throw new NotMockedException();
	}

	@Override
	public IUserEMailNotificationSettings getEMailNotificationSettings() {
		throw new NotMockedException();
	}

	@Override
	public void setEMailNotificationSettings(IUserEMailNotificationSettings settings) {
		throw new NotMockedException();
	}

	@Override
	public IUserToken getUserToken() {
		throw new NotMockedException();
	}

	@Override
	public List<IUserSubstitute> getSubstitutions() {
		throw new NotMockedException();
	}

	@Override
	public List<IUserSubstitute> getActiveSubstitutions() {
		throw new NotMockedException();
	}

	@Override
	public ILocationService locations() {
		throw new NotMockedException();
	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void enable() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void disable() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String getSecurityMemberId() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Locale getLanguage() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setLanguage(Locale language) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void setExternalName(String externalName) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public IRoleMatcher has() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getExternalName() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getExternalId() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean isExternal() {
		// TODO Auto-generated method stub
		return false;
	}
}
