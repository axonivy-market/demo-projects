package ch.ivyteam.htmldialog.demo.input.beanValidation;

import static java.lang.annotation.ElementType.ANNOTATION_TYPE;
import static java.lang.annotation.ElementType.FIELD;
import static java.lang.annotation.ElementType.METHOD;
import static java.lang.annotation.RetentionPolicy.RUNTIME;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.Payload;
import javax.validation.ReportAsSingleViolation;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

// re-use other existing constraints:
@NotNull
@Size(min = 4, max = 20)
@UpperCase // custom constraint in same package
@StartsWith(prefix = "ZG") // custom constraint in same package

// only show the validation message from this annotation and not from it's
// re-used types:
@ReportAsSingleViolation

@Target({METHOD, FIELD, ANNOTATION_TYPE})
@Retention(RUNTIME)
@Constraint(validatedBy = {})
@Documented
public @interface LicensePlate {
  String message() default "Field does not contain a valid license plate";

  Class<?>[] groups() default {};

  public abstract Class<? extends Payload>[] payload() default {};
}
