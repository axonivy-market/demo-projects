package ch.ivyteam.demo.jpa.demos.validation.groups;

import javax.faces.application.FacesMessage;

/**
 * Validation groups inheriting from this interface will generate {@link FacesMessage#SEVERITY_ERROR}.
 */
public interface Error extends BaseGroup {

}
