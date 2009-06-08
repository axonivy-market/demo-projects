package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import ch.ivyteam.ivy.addons.cmscontext.Cms;

/**
 * This is parameter class of validation mechanism.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 18.02.2009
 */
public class TextValidationParameters implements Serializable
{
  private static final String ALLOWED_CHARS = "allowedChars";

  private static final String DATE_VALIDATION_REGEX = "^[0-9]{1,2}.[0-9]{1,2}.[0-9]{4}";

  private static final String LENGTH = "length";

  private static final String NUMBER_VALIDATION_REGEX = "^[0-9.]*$";

  private static final long serialVersionUID = 28176537784750846L;

  private static final String VALIDATION = "validation";

  protected String allowedChars = null;

  protected Boolean isDate = false;

  protected Boolean isNumber = false;

  protected Integer maxLength = Integer.MAX_VALUE;

  protected List<String> validations;

  public TextValidationParameters(List<String> cmsContexts, String name, String fullName, Boolean _isNumber,
          Boolean _isDate)
  {
    String validationUri;
    String validationParameterUri;

    isDate = _isDate;
    isNumber = _isNumber;

    validationUri = "";
    validationParameterUri = Cms.cr(cmsContexts, KnownParameters.VALIDATION_PARAMETER);
    if (!validationParameterUri.equals(""))
    {
      validationUri = Cms.getCms(Cms.getCms(validationParameterUri, false), true);
      if (validationUri.equals(""))
      {
        throw new DynamicDialogException("Could not access the CMS validation uri '" + validationUri
                + "' used by uri '" + validationParameterUri + "'");
      }
    }

    if (!validationUri.equals(""))
    {
      List<String> tempCmsContexts = new ArrayList<String>();
      tempCmsContexts.add(validationUri);
      validations = Cms.coList(tempCmsContexts, VALIDATION);
      allowedChars = Cms.co(tempCmsContexts, ALLOWED_CHARS);
      try
      {
        maxLength = Integer.parseInt(Cms.co(tempCmsContexts, LENGTH));
      }
      catch (NumberFormatException e)
      {
        // Nothing to do
      }
    }

    if (_isNumber)
    {
      if (allowedChars == null || allowedChars.equals(""))
      {
        allowedChars = NUMBER_VALIDATION_REGEX;
      }
    }

    if (_isDate)
    {
      if (allowedChars == null || allowedChars.equals(""))
      {
        allowedChars = NUMBER_VALIDATION_REGEX;
        validations = new ArrayList<String>();
        validations.add(DATE_VALIDATION_REGEX);
      }
    }
  }

  /**
   * Gets the regex that is validated while typing.
   * 
   * @return allowed char while typing.
   */
  public String getAllowedChars()
  {
    return allowedChars;
  }

  /**
   * Gets the maximum string length of the content.
   * 
   * @return maximum length
   */
  public Integer getMaxLength()
  {
    return maxLength;
  }

  /**
   * Gets the regexs that are used to validate content.
   * 
   * @return regexs
   */
  public List<String> getValidations()
  {
    return validations;
  }

  /**
   * Gets if the content should represent a date.
   * 
   * @return true if the field should represent a date; false otherwise
   */
  public Boolean isDate()
  {
    return isDate;
  }

  /**
   * Gets if the content should represent a number.
   * 
   * @return true if the field should represent a number; false otherwise
   */
  public Boolean isNumber()
  {
    return isNumber;
  }
}
