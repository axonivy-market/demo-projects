package ch.ivyteam.htmldialog.demo.beanValidation;

import static java.lang.annotation.ElementType.*;
import static java.lang.annotation.RetentionPolicy.*;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.Payload;


@Target( { METHOD, FIELD, ANNOTATION_TYPE })
@Retention(RUNTIME)
@Constraint(validatedBy = StartsWithValidator.class) // defines the class which executes the validation check
@Documented
public @interface StartsWith {
	String prefix() default ""; // defines a custom field
    String message() default "Field has not the expected prefix";
    Class<?>[] groups() default {};
    public abstract Class<? extends Payload>[] payload() default {};
}