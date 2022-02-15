package ch.ivyteam.demo.jpa.demos.daos.markers;

import com.axonivy.persistence.dao.markers.QueryMarker;

import ch.ivyteam.demo.jpa.demos.enums.AccessRestriction;

/**
 * Switch access restrictions on or off.
 */
public class AccessMarker implements QueryMarker {
	private final AccessRestriction accessRestriction;

	public static final AccessMarker AUTHORIZED = new AccessMarker(AccessRestriction.AUTHORIZED);
	public static final AccessMarker ALL = new AccessMarker(AccessRestriction.ALL);

	private AccessMarker(AccessRestriction accessRestriction) {
		this.accessRestriction = accessRestriction;
	}

	public AccessRestriction getAccessRestriction() {
		return accessRestriction;
	}
}
