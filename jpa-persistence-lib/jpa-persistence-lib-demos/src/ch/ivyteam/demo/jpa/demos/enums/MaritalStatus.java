package ch.ivyteam.demo.jpa.demos.enums;

import ch.ivyteam.demo.jpa.demos.ivy.HasCmsName;

public enum MaritalStatus implements HasCmsName {
	SINGLE,
	MARRIED,
	WIDOWED,
	DIVORCED,
	PARTNERSHIP,
	PARTNER_PASSED_AWAY,
	PARTNERSHIP_CANCELED;
}
