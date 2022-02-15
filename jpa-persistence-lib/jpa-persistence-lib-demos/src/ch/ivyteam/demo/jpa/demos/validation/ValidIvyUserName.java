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

import org.apache.commons.lang.StringUtils;

import ch.ivyteam.demo.jpa.demos.entities.Person;


@Target({TYPE, ANNOTATION_TYPE})
@Retention(RetentionPolicy.RUNTIME)
@Documented
@Constraint(validatedBy = ValidIvyUserName.Validator.class)
public @interface ValidIvyUserName {
	String MESSAGE = "/Validations/com/axonivy/demo/jpa_demo/core/validation/ValidIvyUserName/unconventional";
	String message() default MESSAGE;

	Class<?>[] groups() default {};

	Class<? extends Payload>[] payload() default {};

	/**
	 * Client Id which can be null
	 */
	String clientId() default "";

	/**
	 * Validate, that Ivy user name is firstname.lastname
	 */
	public class Validator extends ConstraintValidatorAdapter<ValidIvyUserName, Person> {
		@Override
		public boolean isValid(Person person, ConstraintValidatorContext context) {
			boolean isValid = true;

			if(person != null && !StringUtils.isBlank(person.getFirstName()) && !StringUtils.isBlank(person.getLastName())) {
				String suggested = person.getFirstName().strip().toLowerCase() + "." + person.getLastName().strip().toLowerCase();

				if(!suggested.equals(person.getIvyUserName())) {
					addConstraintViolation(context, "ivyUserName", person.getIvyUserName(), suggested);
					isValid = false;
				}
			}
			return isValid;
		}
	}
}
