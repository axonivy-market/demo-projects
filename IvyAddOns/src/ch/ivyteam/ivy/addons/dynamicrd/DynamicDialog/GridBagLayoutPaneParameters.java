package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.util.List;

import ch.ivyteam.ivy.addons.cmscontext.Cms;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.ComponentType;

/**
 * This is the parameters of containers that uses a RGridBagLayoutPane.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 12.09.2008
 */
class GridBagLayoutPaneParameters extends ContainerParameters
{
  private boolean showBorder;

  @SuppressWarnings("unchecked")
protected GridBagLayoutPaneParameters(List<String> cmsContexts, String name, String fullName,
          ComplexComponentParameters parentContainerParameters, Integer position, Class clazz)
  {
    super(cmsContexts, name, fullName, parentContainerParameters, position, clazz);
    
    showBorder = Cms.coAsBoolean(cmsContexts, KnownParameters.SHOW_BORDER_PARAMETER, true);
  }

  private static final long serialVersionUID = -2451605960696627834L;

  @Override
  public ComponentType getComponentType()
  {
    return ComponentType.GRID_BAG_LAYOUT_PANE;
  }

  protected boolean showBorder()
  {
    return showBorder;
  }

}
