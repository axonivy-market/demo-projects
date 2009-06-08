package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.util.List;

import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.ComponentType.ComponentTypeEnum;

/**
 * This is parameter class of fields that use a RComboBox.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 12.09.2008
 */
public class ComboBoxParameters extends FieldComponentWithListParameters
{
  private static final long serialVersionUID = -753764892313307544L;

  public ComboBoxParameters(Configuration configuration, List<String> cmsContexts, String name, String fullName,
          List<String[]> recordsetRef, ContainerParameters parentContainerParameters)
  {
    super(configuration, cmsContexts, name, fullName, recordsetRef, parentContainerParameters);
  }

  @Override
  public ComponentTypeEnum getComponentType()
  {
    return ComponentType.ComponentTypeEnum.COMBO_BOX;
  }

  @Override
  protected boolean hasEmptyValue()
  {
    return true;
  }
}
