package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.util.List;

import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.ComponentType;

/**
 * This is parameter class of fields that use a RLookupTextField.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 14.09.2008
 */
class TextFieldListParameters extends FieldComponentWithListParameters
{
  private static final long serialVersionUID = 6795256309594433855L;

  private TextValidationParameters textValidationParameters;

  protected TextFieldListParameters(List<String> cmsContexts, String name, String fullName,
          List<String[]> recordsetRef, ComplexComponentParameters parentContainerParameters, Integer position,
          Class<?> clazz, String defaultDBConfig)
  {
    super(cmsContexts, name, fullName, recordsetRef, parentContainerParameters, position, clazz,
            defaultDBConfig);

    textValidationParameters = new TextValidationParameters(cmsContexts, isAssignableFromNumber(),
            isAssignableFromInteger(), isAssignableFromDate());
  }

  @Override
  public ComponentType getComponentType()
  {
    return ComponentType.TEXT_FIELD_LIST;
  }

  protected TextValidationParameters getTextValidationParameters()
  {
    return textValidationParameters;
  }

  @Override
  protected boolean hasEmptyValue()
  {
    return true;
  }

  @Override
  protected final boolean isEditableByDefault()
  {
    return false;
  }
}
