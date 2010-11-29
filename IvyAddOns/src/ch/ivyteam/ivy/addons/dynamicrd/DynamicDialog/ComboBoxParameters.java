package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.util.List;

import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.ComponentType;

/**
 * This is parameter class of fields that use a RComboBox.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 12.09.2008
 */
class ComboBoxParameters extends FieldComponentWithListParameters
{
  private static final long serialVersionUID = -753764892313307544L;

  protected ComboBoxParameters(List<String> cmsContexts, String name, String fullName,
          List<String[]> recordsetRef, ComplexComponentParameters parentContainerParameters, Integer position, Class<?> clazz, String defaultDBConfig)
  {
    super(cmsContexts, name, fullName, recordsetRef, parentContainerParameters, position, clazz, defaultDBConfig);
  }

  @Override
  public ComponentType getComponentType()
  {
    return ComponentType.COMBO_BOX;
  }

  @Override
  protected boolean hasEmptyValue()
  {
    return !(isMandatory() && isValidationBlocking());
  }

  @Override
  protected final boolean isEditableByDefault()
  {
    return false;
  }
}
