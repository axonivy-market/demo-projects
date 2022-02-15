package ch.ivyteam.demo.jpa.demos.enums;

import ch.ivyteam.demo.jpa.demos.ivy.HasCmsName;

public enum Role implements HasCmsName {
	USER("User"),
	ADMINISTRATOR("Administrator");

	private String ivyRoleName;

	private Role(String ivyRoleName) {
		this.ivyRoleName = ivyRoleName;
	}
	
	public String getIvyRoleName() {
		return ivyRoleName;
	}
}
