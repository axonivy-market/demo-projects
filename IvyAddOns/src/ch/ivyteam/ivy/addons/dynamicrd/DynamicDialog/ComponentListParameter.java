package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.util.List;

import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.ComponentType;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.internal.TreeNode;

/**
 * This is the parameters for the component that represents a
 * <code>List</Code> by creating a container for each item.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 06.04.2010
 */
class ComponentListParameter extends ListComponentParameters
{
  private static final long serialVersionUID = 2263989296889572694L;

  protected ComponentListParameter(List<String> cmsContexts, String name, String fullName,
          ComplexComponentParameters parentContainerParameters, Integer position,
          TreeNode<ComponentParameters> parameters, Class clazz)
  {
    super(cmsContexts, name, fullName, parentContainerParameters, position, parameters, clazz);
  }

  @Override
  public final ComponentType getComponentType()
  {
    return ComponentType.COMPONENT_LIST;
  }

  @Override
  protected final boolean isContainer()
  {
    return false;
  }
}
