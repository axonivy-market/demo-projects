package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.util.List;

import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.ComponentType.ComponentTypeEnum;

/**
 * This is parameter class of fields that use a DatePicker.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 29.12.2008
 */
public class DatePickerParameters extends FieldComponentParameters
{
  private static final long serialVersionUID = -6843588913231643452L;

  public DatePickerParameters(Configuration configuration, List<String> cmsContexts, String name,
          String fullName, ContainerParameters parentContainerParameters)
  {
    super(configuration, cmsContexts, name, fullName, parentContainerParameters);
  }

  @Override
  public ComponentTypeEnum getComponentType()
  {
    return ComponentType.ComponentTypeEnum.DATE_PICKER;
  }
}
