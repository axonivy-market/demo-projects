package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.util.List;

import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.ComponentType;

/**
 * This is the parameters of containers that uses a RTaskPane.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 12.09.2008
 */
class TaskPaneParameters extends ContainerParameters
{
  private static final long serialVersionUID = -1220506840587405573L;

  @SuppressWarnings("unchecked")
protected TaskPaneParameters(List<String> cmsContexts, String name, String fullName,
          ComplexComponentParameters parentContainerParameters, Integer position, Class clazz)
  {
    super(cmsContexts, name, fullName, parentContainerParameters, position, clazz);
  }

  @Override
  protected final ComponentType getComponentType()
  {
    return ComponentType.TASK_PANE;
  }
}
