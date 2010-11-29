package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.util.List;

import ch.ivyteam.ivy.addons.cmscontext.Cms;

/**
 * This is parameter class of fields that use a RLookupTextField.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 12.09.2008
 */
class TextFieldParameters extends FieldComponentParameters
{
  private static final long serialVersionUID = 8013106510784613082L;

  private TextValidationParameters textValidationParameters;

  private boolean oldStyleValidation;

  private String validation;
  
  private boolean backgroundTransparent;

  protected TextFieldParameters(List<String> cmsContexts, String name, String fullName,
          ComplexComponentParameters parentContainerParameters, Integer position, Class<?> clazz)
  {
    super(cmsContexts, name, fullName, parentContainerParameters, position, clazz);

    backgroundTransparent = Cms.coAsBoolean(cmsContexts, KnownParameters.BACKGROUND_TRANSPARENT_PARAMETER, false);
    
    validation = Cms.co(cmsContexts, KnownParameters.VALIDATION_PARAMETER);
    oldStyleValidation = Cms.coAsBoolean(cmsContexts, KnownParameters.OLD_STYLE_VALIDATION_PARAMETER, true);

    if (validation.startsWith(Cms.CMS_URI_ROOT) || (oldStyleValidation && validation.equals("")))
    {
      textValidationParameters = new TextValidationParameters(cmsContexts, isAssignableFromNumber(),
              isAssignableFromInteger(), isAssignableFromDate());
      oldStyleValidation = true;
    }
    else
    {
      if (validation.equals(""))
      {
        if (isAssignableFromNumber())
        {
          validation = "NumberIntPositive";
        }
        else if (isAssignableFromDate())
        {
          validation = "Date_ddMMyyyy";
        }
        else if (isAssignableFromDateTime())
        {
          validation = "DateTime_long";
        }
      }
      oldStyleValidation = false;
    }
  }

  @Override
  public ComponentType getComponentType()
  {
    return ComponentType.TEXT_FIELD;
  }

  public TextValidationParameters getTextValidationParameters()
  {
    return textValidationParameters;
  }

  @Override
  protected final boolean isEditableByDefault()
  {
    return true;
  }

  public boolean isOldStyleValidation()
  {
    return oldStyleValidation;
  }

  public String getValidation()
  {
    return validation;
  }

  protected final boolean isBackgroundTransparent()
  {
    return backgroundTransparent;
  }
}
