package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.util.List;

import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.ComponentType;

/**
 * This is parameter class of fields that use a RCheckBox.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 28.09.2009
 */
class CheckBoxParameters extends FieldComponentParameters
{
  private static final long serialVersionUID = -2737030278711072741L;

  protected CheckBoxParameters(List<String> cmsContexts, String name, String fullName,
          ComplexComponentParameters parentContainerParameters, Integer position, Class<?> clazz)
  {
    super(cmsContexts, name, fullName, parentContainerParameters, position, clazz);
  }

  @Override
  public ComponentType getComponentType()
  {
    return ComponentType.CHECK_BOX;
  }

  @Override
  protected final boolean isEditableByDefault()
  {
    return false;
  }
}
