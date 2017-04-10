package ch.ivyteam.wf.format;

import javax.faces.bean.ApplicationScoped;
import javax.faces.bean.ManagedBean;

import org.apache.commons.lang3.StringUtils;

import ch.ivyteam.ivy.security.ISecurityMember;
import ch.ivyteam.ivy.security.IUser;

@ManagedBean
@ApplicationScoped
public class SecurityMemberFormatter {

	public String formatShort(ISecurityMember member) {
		return member == null ? "" : member.getDisplayName();
	}

	public String formatFull(ISecurityMember member) {
		if (member == null) {
			return "";
		}
		if (member instanceof IUser) {
			IUser user = (IUser) member;
			if (StringUtils.isBlank(user.getFullName())) {
				return user.getName();
			}
			return user.getFullName() + " (" + user.getName() + ")";
		}
		return member.getDisplayName();
	}

}
