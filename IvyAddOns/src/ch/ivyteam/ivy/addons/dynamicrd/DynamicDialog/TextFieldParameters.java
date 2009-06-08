package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.util.List;

import ch.ivyteam.ivy.addons.cmscontext.Cms;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.ComponentType.ComponentTypeEnum;

/**
 * This is parameter class of fields that use a RLookupTextField.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 12.09.2008
 */
public class TextFieldParameters extends FieldComponentParameters
{
  private static final long serialVersionUID = 8013106510784613082L;

  protected int columns;

  protected Boolean isDate = false;

  private TextValidationParameters textValidationParameters;

  public TextFieldParameters(Configuration configuration, List<String> cmsContexts, String name,
          String fullName, Boolean isNumber, Boolean _isDate, ContainerParameters parentContainerParameters)
  {
    super(configuration, cmsContexts, name, fullName, parentContainerParameters);

    textValidationParameters = new TextValidationParameters(cmsContexts, name, fullName, isNumber, _isDate);

    columns = Cms.coAsNumber(cmsContexts, KnownParameters.COLUMNS_PARAMETERS, 0).intValue();

    isDate = _isDate;
  }

  public int getColumns()
  {
    return columns;
  }

  @Override
  public ComponentTypeEnum getComponentType()
  {
    return ComponentType.ComponentTypeEnum.TEXT_FIELD;
  }

  public TextValidationParameters getTextValidationParameters()
  {
    return textValidationParameters;
  }
}
