package ch.ivyteam.demo.jpa.demos.validation;

import static java.lang.annotation.ElementType.ANNOTATION_TYPE;
import static java.lang.annotation.ElementType.TYPE;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.ConstraintValidatorContext;
import javax.validation.Payload;

import com.axonivy.persistence.dao.QuerySettings;
import com.axonivy.persistence.dao.markers.AuditableMarker;

import ch.ivyteam.demo.jpa.demos.daos.PersonDAO;
import ch.ivyteam.demo.jpa.demos.entities.Person;


@Target({TYPE, ANNOTATION_TYPE})
@Retention(RetentionPolicy.RUNTIME)
@Documented
@Constraint(validatedBy = ValidUniqueIvyUserName.Validator.class)
public @interface ValidUniqueIvyUserName {
	String MESSAGE = "/Validations/com/axonivy/demo/jpa_demo/core/validation/ValidUniqueIvyUserName/duplicate";
	String message() default MESSAGE;

	Class<?>[] groups() default {};

	Class<? extends Payload>[] payload() default {};

	/**
	 * Client Id which can be null
	 */
	String clientId() default "";

	/**
	 * Validate, that Ivy user name is unique.
	 */
	public class Validator extends ConstraintValidatorAdapter<ValidUniqueIvyUserName, Person> {
		@Override
		public boolean isValid(Person person, ConstraintValidatorContext context) {
			boolean isValid = true;

			if(person != null && person.getIvyUserName() != null) {
				Person existing = PersonDAO.getInstance().findByIvyUserName(person.getIvyUserName(), new QuerySettings<Person>().withMarkers(AuditableMarker.ALL));

				if(existing != null && !existing.getId().equals(person.getId())) {
					addConstraintViolation(context, "ivyUserName", person.getIvyUserName());
					isValid = false;
				}
			}
			return isValid;
		}
	}
}
