package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.io.Serializable;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import ch.ivyteam.ivy.addons.cmscontext.Cms;
import ch.ivyteam.ivy.environment.Ivy;

/**
 * This is parameter class of validation mechanism.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 18.02.2009
 */
class TextValidationParameters implements Serializable
{
  private static final String ALLOWED_CHARS = "allowedChars";

  private static final String LENGTH = "length";

  private static final String NUMBER_VALIDATION_REGEX = "^[0-9.]*$";

  private static final String INTEGER_VALIDATION_REGEX = "^[0-9]*$";

  private static final long serialVersionUID = 28176537784750846L;

  private static final String VALIDATION = "validation";

  private static final String DATE_VALIDATION_REGEX = "^[0-9%c]*$";

  private static final String DATE_SEPARATOR = "./-";

  private String allowedChars = null;

  private boolean date = false;

  private Integer maxLength = Integer.MAX_VALUE;

  private List<String> validations;

  protected TextValidationParameters(List<String> cmsContexts, boolean number, boolean integer, boolean date)
  {
    String validationUri;
    String validationParameterUri;

    this.date = date;

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

    if (number && (allowedChars == null || allowedChars.equals("")))
    {
      allowedChars = NUMBER_VALIDATION_REGEX;
    }

    if (integer && (allowedChars == null || allowedChars.equals("")))
    {
      allowedChars = INTEGER_VALIDATION_REGEX;
    }

    if (date && (allowedChars == null || allowedChars.equals("")))
    {
      DateFormat dateFormat;
      String separator;

      dateFormat = SimpleDateFormat.getDateInstance(SimpleDateFormat.SHORT, Ivy.session()
              .getFormattingLocale());

      separator = "";
      if (dateFormat instanceof SimpleDateFormat)
      {
        SimpleDateFormat simpleDateFormat = (SimpleDateFormat) dateFormat;

        separator = simpleDateFormat.toPattern().replaceAll("[a-zA-Z]", "");
      }
      if (separator.equals(""))
      {
        separator = DATE_SEPARATOR;
      }
      allowedChars = String.format(DATE_VALIDATION_REGEX, new Object[] {separator.charAt(0)});
      validations = new ArrayList<String>();
    }
  }

  /**
   * Gets the regex that is validated while typing.
   * 
   * @return allowed char while typing
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

  protected final boolean isDate()
  {
    return date;
  }
}
