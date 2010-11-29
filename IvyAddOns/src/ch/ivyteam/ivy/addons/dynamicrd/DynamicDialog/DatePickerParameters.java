package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.util.List;

import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.ComponentType;

/**
 * This is parameter class of fields that use a DatePicker.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 29.12.2008
 */
class DatePickerParameters extends FieldComponentParameters
{
  private static final long serialVersionUID = -6843588913231643452L;

  protected DatePickerParameters(List<String> cmsContexts, String name, String fullName,
          ComplexComponentParameters parentContainerParameters, Integer position, Class<?> clazz)
  {
    super(cmsContexts, name, fullName, parentContainerParameters, position, clazz);
  }

  @Override
  public ComponentType getComponentType()
  {
    return ComponentType.DATE_PICKER;
  }

  @Override
  protected final boolean isEditableByDefault()
  {
    return false;
  }
}
