package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import ch.ivyteam.ivy.scripting.objects.Date;

/**
 * Validation mechanism that is used by look up and text fields.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 18.02.2009
 */
public class TextValidation
{
  /**
   * Validates only the allowed chars. Uses it to validate field content while typing.
   * 
   * @param fieldComponent field that should be validated
   * @param mandatory true if the field is mandatory; false otherwise
   * @param firstValidation true if it's the first call for this field; false otherwise
   * @param parameters field parameters
   * @return true if the field content is valid; false otherwise
   */
  static public boolean inlineValidate(FieldComponent fieldComponent, boolean mandatory,
          Boolean firstValidation, TextValidationParameters parameters)
  {
    boolean valid;
    String value;

    value = fieldComponent.getText();

    valid = true;
    if (firstValidation)
    {
      if (value.length() > parameters.getMaxLength())
      {
        valid = false;
      }

      if (parameters.getAllowedChars() != null && !parameters.getAllowedChars().equals(""))
      {
        if (!value.matches("^" + parameters.getAllowedChars() + "$"))
        {
          valid = false;
        }
      }
    }
    else
    {
      valid = validate(fieldComponent, mandatory, parameters);
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
  static public boolean validate(FieldComponent fieldComponent, boolean mandatory,
          TextValidationParameters parameters)
  {
    boolean valid;
    String value;
    Date valueAsDate;

    value = fieldComponent.getText();
    valueAsDate = fieldComponent.getValueAsDate();

    valid = true;

    if (!mandatory && value.length() == 0)
    {
      // Nothing to do - the result is valid
    }
    else
    {
      if (value.length() > parameters.getMaxLength())
      {
        valid = false;
      }

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
      if (parameters.allowedChars != null)
      {
        if (!value.matches(parameters.allowedChars))
        {
          valid = false;
        }
      }
      if (mandatory && value.length() == 0)
      {
        valid = false;
      }

      if (parameters.isDate() && value.length() != 0)
      {
        if (valueAsDate == null)
        {
          valid = false;
        }
      }

      if (parameters.isNumber && value.length() != 0)
      {
        if (parameters == null)
        {
          valid = false;
        }
      }
    }

    return valid;
  }

}
