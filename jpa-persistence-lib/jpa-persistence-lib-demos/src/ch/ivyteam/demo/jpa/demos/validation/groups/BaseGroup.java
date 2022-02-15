package ch.ivyteam.demo.jpa.demos.validation.groups;


/**
 * Base group for all annotations which are connected to a FacesMessage severity.
 *
 * Note, it you use this annotation group directly on an element, then all validations for
 * validation groups inheriting from {@link BaseGroup} will also be performed.
 */
public abstract interface BaseGroup {
}
