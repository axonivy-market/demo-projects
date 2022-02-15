package ch.ivyteam.demo.jpa.demos.enums;

/** 
 * Specify access restrictions. Refer to AccessMarker
 */
public enum AccessRestriction {
	/**
	 * Access all objects (i.e. switch off access check).
	 */
	ALL,
	/**
	 * Access only authorized objects.
	 */
	AUTHORIZED,
	/**
	 * The DAO decides whether ALL or AUTHORIZED is default..
	 */
	DEFAULT;
}