package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.util.List;

import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.ComponentType;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.internal.TreeNode;

/**
 * This is parameter class of lists that use a RTable with and detail edit part.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 09.03.2010
 */
class MasterDetailParameters extends TableParameters
{
  private static final long serialVersionUID = 2722121770925266842L;

  @SuppressWarnings("unchecked")
protected MasterDetailParameters(List<String> cmsContexts, String name, String fullName,
          ComplexComponentParameters parentContainerParameters, Integer position,
          TreeNode<ComponentParameters> parameters, Class clazz)
  {
    super(cmsContexts, name, fullName, parentContainerParameters, position, parameters, clazz);
  }

  @Override
  protected final ComponentType getComponentType()
  {
    return ComponentType.MASTER_DETAIL;
  }

  @Override
  protected final boolean isContainer()
  {
    return true;
  }
}
