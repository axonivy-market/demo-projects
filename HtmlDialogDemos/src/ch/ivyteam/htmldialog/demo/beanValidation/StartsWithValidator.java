package ch.ivyteam.htmldialog.demo.beanValidation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class StartsWithValidator implements ConstraintValidator<StartsWith, String> {
	private String prefix;

	public void initialize(StartsWith constraintAnnotation) {
		prefix = constraintAnnotation.prefix().toUpperCase();
	}

	public boolean isValid(String fieldValue,
			ConstraintValidatorContext constraintContext) {
		if (fieldValue == null)
		{
			return true;
		}
		return fieldValue.toUpperCase().startsWith(prefix);
	}

}
