package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import ch.ivyteam.ivy.scripting.objects.Date;

/**
 * Validation mechanism that is used by look up and text fields.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 18.02.2009
 */
public final class TextValidation
{
  private TextValidation()
  {
  }

  /**
   * Validates only the allowed chars. Uses it to validate field content while typing.
   * 
   * @param fieldComponent field that should be validated
   * @param mandatory true if the field is mandatory; false otherwise
   * @param firstValidation true if it's the first call for this field; false otherwise
   * @param parameters field parameters
   * @return true if the field content is valid; false otherwise
   */
  public static boolean inlineValidate(FieldComponent fieldComponent, boolean mandatory,
          Boolean firstValidation, TextValidationParameters parameters)
  {
    boolean valid;
    String value;

    value = fieldComponent.getText();

    valid = true;
    if (firstValidation)
    {
      valid &= checkMaxLength(parameters, value);

      if (parameters.getAllowedChars() != null && !parameters.getAllowedChars().equals("")
              && !value.matches("^" + parameters.getAllowedChars() + "$"))
      {
        valid = false;
      }
    }
    else
    {
      valid = validate(fieldComponent, mandatory, parameters, true);
    }

    return valid;
  }

  /**
   * Validates the field content.
   * 
   * @param fieldComponent field that should be validated
   * @param mandatory true if the field is mandatory; false otherwise
   * @param parameters field parameters
   * @return true if the field content is valid; false otherwise
   */
  public static boolean validate(FieldComponent fieldComponent, boolean mandatory,
          TextValidationParameters parameters)
  {
    return validate(fieldComponent, mandatory, parameters, false);
  }

  private static boolean validate(FieldComponent fieldComponent, boolean mandatory,
          TextValidationParameters parameters, boolean inline)
  {
    boolean valid;
    String value;
    Date valueAsDate;

    value = fieldComponent.getText();
    valueAsDate = fieldComponent.getValueAsDate();

    valid = true;

    if (mandatory || value.length() != 0)
    {
      if (parameters.isDate() && value.length() != 0)
      {
        valid &= checkDate(fieldComponent, inline, valueAsDate);
      }
      else
      {
        valid &= checkMaxLength(parameters, value) && checkValidation(parameters, value)
                && checkContent(parameters, value) && checkMandatory(mandatory, value);
      }
    }

    return valid;
  }

  private static boolean checkMandatory(boolean mandatory, String value)
  {
    boolean valid;

    valid = true;

    if (mandatory && value.length() == 0)
    {
      valid = false;
    }
    return valid;
  }

  private static boolean checkDate(FieldComponent fieldComponent, boolean inline, Date valueAsDate)
  {
    boolean valid;

    valid = true;

    if (valueAsDate == null)
    {
      valid = false;
    }
    else if (!inline)
    {
      fieldComponent.setValueAsDate(valueAsDate);
    }
    return valid;
  }

  private static boolean checkContent(TextValidationParameters parameters, String value)
  {
    boolean valid;

    valid = true;

    if (parameters.getAllowedChars() != null && !value.matches(parameters.getAllowedChars()))
    {
      valid = false;
    }

    return valid;
  }

  private static boolean checkValidation(TextValidationParameters parameters, String value)
  {
    boolean valid;

    valid = true;

    if (parameters.getValidations() != null)
    {
      for (String s : parameters.getValidations())
      {
        if (!value.matches(s))
        {
          valid = false;
          break;
        }
      }
    }
    return valid;
  }

  private static boolean checkMaxLength(TextValidationParameters parameters, String value)
  {
    boolean valid;

    valid = true;

    if (value.length() > parameters.getMaxLength())
    {
      valid = false;
    }
    return valid;
  }

}
