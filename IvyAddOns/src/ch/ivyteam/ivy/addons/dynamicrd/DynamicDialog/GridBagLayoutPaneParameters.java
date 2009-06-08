package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.util.List;

import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.ComponentType.ComponentTypeEnum;

/**
 * This is the parameters of containers that uses a RGridBagLayoutPane.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 12.09.2008
 */
public class GridBagLayoutPaneParameters extends ContainerParameters
{
  private static final long serialVersionUID = -2451605960696627834L;

  public GridBagLayoutPaneParameters(Configuration configuration, List<String> cmsContexts, String name,
          String fullName, ContainerParameters parentContainerParameters)
  {
    super(configuration, cmsContexts, name, fullName, parentContainerParameters);
  }

  @Override
  public ComponentTypeEnum getComponentType()
  {
    return ComponentTypeEnum.GRID_BAG_LAYOUT_PANE;
  }

}
