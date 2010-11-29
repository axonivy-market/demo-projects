package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.util.List;

import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.ComponentType;

/**
 * This is the parameters of containers that uses a RTabbedPane.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 28.09.2009
 */
class TabbedPaneParameters extends ContainerParameters
{
  private static final long serialVersionUID = -8692141675398148936L;

  protected TabbedPaneParameters(List<String> cmsContexts, String name, String fullName,
          ComplexComponentParameters parentContainerParameters, Integer position, Class clazz)
  {
    super(cmsContexts, name, fullName, parentContainerParameters, position, clazz);
  }

  @Override
  public ComponentType getComponentType()
  {
    return ComponentType.TABBED_PANE;
  }
}
