package ch.ivyteam.demo.jpa.demos.validation;

import static java.lang.annotation.ElementType.ANNOTATION_TYPE;
import static java.lang.annotation.ElementType.CONSTRUCTOR;
import static java.lang.annotation.ElementType.FIELD;
import static java.lang.annotation.ElementType.METHOD;
import static java.lang.annotation.ElementType.PARAMETER;
import static java.lang.annotation.RetentionPolicy.RUNTIME;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.ConstraintValidatorContext;
import javax.validation.Payload;


/**
 * The annotated element size must be between the specified boundaries (included).
 *
 * @author mhm
 */
@Target({METHOD, FIELD, ANNOTATION_TYPE, CONSTRUCTOR, PARAMETER })
@Retention(RUNTIME)
@Constraint(validatedBy = {IvySize.Validator.class})
@Documented
public @interface IvySize {
	String MESSAGE = "/Validations/com/axonivy/demo/jpa_demo/core/size";
	/**
	 * @return The Ivy CMS path.
	 */
	String message() default MESSAGE;

	/**
	 * @return The groups the constraint belongs to.
	 */
	Class<?>[] groups() default {};

	/**
	 *
	 * @return The payload associated to the constraint.
	 */
	Class<? extends Payload>[] payload() default {};

	/**
	 * @return size the element must be longer or equal to.
	 */
	int min() default -1;

	/**
	 * @return size the element must be lower or equal to.
	 */
	int max() default -1;

	/**
	 * Client Id which can be null
	 */
	String clientId() default "";

	public class Validator extends ConstraintValidatorAdapter<IvySize, Object> {

		public static boolean isValid(Object value, int min, int max) {
			boolean valid = true;
			if(value != null) {
				int length = safeString(value).length();
				if(max > 0 && length > max) {
					valid = false;
				} else if(min > 0 && length < min) {
					valid = false;
				}
			}
			return valid;
		}


		@Override
		public boolean isValid(Object value, ConstraintValidatorContext context) {
			boolean valid = true;

			int min = constraintAnnotation.min();
			int max = constraintAnnotation.max();

			if(!isValid(value, min, max)) {
				addConstraintViolation(context, constraintAnnotation.clientId(), min, max, safeString(value).length());
				valid = false;
			}

			return valid;
		}
	}
}