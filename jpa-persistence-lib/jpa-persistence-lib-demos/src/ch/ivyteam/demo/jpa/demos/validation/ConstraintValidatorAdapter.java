package ch.ivyteam.demo.jpa.demos.validation;

import java.lang.annotation.Annotation;
import java.util.Arrays;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import ch.ivyteam.ivy.environment.Ivy;

public abstract class ConstraintValidatorAdapter<A extends Annotation, T> implements ConstraintValidator<A, T>{

	protected A constraintAnnotation;

	@Override
	public void initialize(A constraintAnnotation) {
		this.constraintAnnotation = constraintAnnotation;
	}

	/**
	 * Add a constraint violation with an IVY CMS entry.
	 * 
	 * @param context the context received in the {@link ConstraintValidator#isValid(Object, ConstraintValidatorContext)} method
	 * @param clientId an optional clientId (could later be used to )
	 * @param args to use for the Ivy CMS entry
	 * @return
	 */
	protected ConstraintValidatorContext addConstraintViolation(ConstraintValidatorContext context, String clientId, Object...args) {
		String message = context.getDefaultConstraintMessageTemplate();
		return addConstraintViolationWithMessage(context, message, clientId, args);
	}

	/**
	 * Add a constraint violation with an IVY CMS entry.
	 * 
	 * @param context the context received in the {@link ConstraintValidator#isValid(Object, ConstraintValidatorContext)} method
	 * @param message Ivy CMS path
	 * @param clientId an optional clientId (could later be used to )
	 * @param args to use for the Ivy CMS entry
	 * @return
	 */
	protected ConstraintValidatorContext addConstraintViolationWithMessage(ConstraintValidatorContext context, String message, String clientId, Object...args) {
		context.disableDefaultConstraintViolation();
		return context
				.buildConstraintViolationWithTemplate(Ivy.cms().co(message, Arrays.asList(args)))
				.addPropertyNode(clientId)
				.addConstraintViolation();
	}

	protected static String safeString(Object value) {
		return value != null ? value.toString() : "";
	}
}
