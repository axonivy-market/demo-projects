package ch.ivyteam.htmldialog.demo.beanValidation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class UpperCaseValidator implements ConstraintValidator<UpperCase, String> {

	public void initialize(UpperCase constraintAnnotation) {
	}

	public boolean isValid(String fieldValue,
			ConstraintValidatorContext constraintContext) {
		if (fieldValue == null)
		{
			return true;
		}
		return fieldValue.equals(fieldValue.toUpperCase());
	}

}
