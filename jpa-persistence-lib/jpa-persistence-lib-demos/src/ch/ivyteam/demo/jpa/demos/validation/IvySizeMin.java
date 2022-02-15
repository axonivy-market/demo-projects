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
 * The annotated element size must exceed the specified min value (included).
 *
 * @author mhm
 */
@Target({METHOD, FIELD, ANNOTATION_TYPE, CONSTRUCTOR, PARAMETER })
@Retention(RUNTIME)
@Constraint(validatedBy = {IvySizeMin.Validator.class})
@Documented
public @interface IvySizeMin {
	String MESSAGE = "/Validations/com/axonivy/demo/jpa_demo/core/sizeMin";
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
	 * Client Id which can be null
	 */
	String clientId() default "";

	public class Validator extends ConstraintValidatorAdapter<IvySizeMin, Object> {

		public static boolean isValid(Object value, int min) {
			boolean valid = true;
			if(value != null) {
				int length = safeString(value).length();
				if(min > 0 && length < min) {
					valid = false;
				}
			}
			return valid;
		}

		@Override
		public boolean isValid(Object value, ConstraintValidatorContext context) {
			boolean valid = true;

			int min = constraintAnnotation.min();

			if(!isValid(value, min)) {
				addConstraintViolation(context, constraintAnnotation.clientId(), min, safeString(value).length());
				valid = false;
			}

			return valid;
		}
	}
}