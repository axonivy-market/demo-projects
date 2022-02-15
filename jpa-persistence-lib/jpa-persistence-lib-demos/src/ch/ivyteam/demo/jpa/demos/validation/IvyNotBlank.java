package ch.ivyteam.demo.jpa.demos.validation;

import static java.lang.annotation.RetentionPolicy.RUNTIME;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.ConstraintValidatorContext;
import javax.validation.Payload;

import org.apache.commons.lang3.StringUtils;


/**
 * The annotated element must not be null. Accepts any type.
 *
 *
 */
@Target({ElementType.METHOD, ElementType.FIELD, ElementType.ANNOTATION_TYPE, ElementType.CONSTRUCTOR, ElementType.PARAMETER })
@Retention(RUNTIME)
@Constraint(validatedBy = IvyNotBlank.IvyNotBlankValidator.class)
@Documented
public @interface IvyNotBlank {
	String MESSAGE = "/Validations/com/axonivy/demo/jpa_demo/core/valueRequired";
	/**
	 *
	 * @return The Ivy CMS path.
	 */
	String message() default MESSAGE;

	/**
	 *
	 * @return The groups the constraint belongs to.
	 */
	Class<?>[] groups() default {};

	/**
	 *
	 * @return The payload associated to the constraint.
	 */
	Class<? extends Payload>[] payload() default {};

	/**
	 * Client Id which can be null
	 */
	String clientId() default "";


	public class IvyNotBlankValidator extends ConstraintValidatorAdapter<IvyNotBlank, String> {

		@Override
		public boolean isValid(String value, ConstraintValidatorContext context) {
			boolean isValid = true;
			if(StringUtils.isBlank(value)) {
				isValid = false;
				addConstraintViolation(context, constraintAnnotation.clientId());
			}
			return isValid;
		}
	}
}