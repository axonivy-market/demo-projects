package ch.ivyteam.demo.jpa.demos.test.mock;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import ch.ivyteam.ivy.security.IRole;
import ch.ivyteam.ivy.security.ISecurityContext;
import ch.ivyteam.ivy.security.IUser;
import ch.ivyteam.ivy.security.IUserToken;
import ch.ivyteam.ivy.security.user.IRoleUsers;

public class SimpleRole implements IRole {

	private final String name;
	private String displayNameTemplate;
	private String displayDescriptionTemplate;
	private final IRole parent;
	private final Map<String, IRole> childRoles = new HashMap<>();
	private final Map<String, IUser> users = new HashMap<>();
	private final boolean isDynamic;
	public SimpleRole(String name, String displayNameTemplate, String displayDescriptionTemplate, boolean isDynamic, IRole parent) {
		this.name = name;
		this.parent = parent;
		this.displayNameTemplate = displayNameTemplate;
		this.displayDescriptionTemplate = displayDescriptionTemplate;
		this.isDynamic = isDynamic;
		if(parent != null) {
			((SimpleRole)parent).childRoles.put(name, this);
		}
	}

	public IUser addUser(IUser user) {
		return users.put(user.getName(), user);
	}

	public IUser removeUser(IUser user) {
		return users.remove(user.getName());
	}

	public IRole removeChildRole(IRole role) {
		return childRoles.remove(role.getName());
	}

	@Override
	public List<IRole> getChildRoles() {
		return new ArrayList<>(childRoles.values());
	}

	@Override
	public String getName() {
		return this.name;
	}

	@Override
	public IRole getParent() {
		return this.parent;
	}

	@Override
	public IRole findChildRole(String roleName) {
		return childRoles.get(roleName);
	}

	@Override
	public IRole createChildRole(String roleName, String displayNameTemplate, String displayDescriptionTemplate, boolean isDynamic) {
		return Mocked.securityContext.addSimpleRole(roleName, displayNameTemplate, displayDescriptionTemplate, isDynamic, this);
	}

	@Override
	public List<IUser> getUsers() {
		return new ArrayList<>(users.values());
	}

	@Override
	public void setDisplayDescriptionTemplate(String displayDescriptionTemplate) {
		this.displayDescriptionTemplate = displayDescriptionTemplate;
	}

	@Override
	public String getDisplayDescriptionTemplate() {
		return displayDescriptionTemplate;
	}

	@Override
	public String getDisplayNameTemplate() {
		return displayNameTemplate; 
	}

	@Override
	public void setDisplayNameTemplate(String displayNameTemplate) {
		this.displayNameTemplate = displayNameTemplate;
	}

	@Override
	public boolean isDynamic() {
		return isDynamic;
	}

	@Override
	public boolean isMember(IUserToken userToken, boolean useSessionRoles) {
		throw new NotMockedException();
	}

	@Override
	public String getMemberName() {
		throw new NotMockedException();
	}

	@Override
	public boolean isUser() {
		throw new NotMockedException();
	}

	@Override
	public long getId() {
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
	public String getDisplayDescription() {
		throw new NotMockedException();
	}

	@Override
	public void deleteAllChildRoles() {
		throw new NotMockedException();
	}

	@Override
	public void delete() {
		throw new NotMockedException();
	}

	@Override
	public IRole createChildRole(String roleName, String displayNameTemplate, String displayDescriptionTemplate,
			String namingAndDirectoryReferenceName, boolean isDynamic) {
		throw new NotMockedException();
	}

	@Override
	public void setExternalSecurityName(String externalSecurityName) {
		throw new NotMockedException();
	}

	@Override
	public String getExternalSecurityName() {
		throw new NotMockedException();
	}

	@Override
	public List<IUser> getAllUsers() {
		throw new NotMockedException();
	}

	@Override
	public IRoleUsers users() {
		throw new NotMockedException();
	}

	@Override
	public boolean isRole(IRole role) {
		throw new NotMockedException();
	}

	@Override
	public void move(IRole newParent) {
		throw new NotMockedException();
	}

	@Override
	public String getDisplayName() {
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
	public void addRoleMember(IRole role) {
		throw new NotMockedException();
	}

	@Override
	public List<IRole> getRoleMembers() {
		throw new NotMockedException();
	}

	@Override
	public void removeRoleMember(IRole role) {
		throw new NotMockedException();
	}

	@Override
	public List<IRole> getRoles() {
		throw new NotMockedException();
	}

	@Override
	public List<IRole> getAllRoles() {
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
	public void setExternalName(String externalName) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String getExternalName() {
		// TODO Auto-generated method stub
		return null;
	}
}
