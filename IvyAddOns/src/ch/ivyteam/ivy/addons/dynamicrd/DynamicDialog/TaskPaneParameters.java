package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.util.List;

import ch.ivyteam.ivy.addons.cmscontext.Cms;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.ComponentType.ComponentTypeEnum;

/**
 * This is the parameters of containers that uses a RTaskPane.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 12.09.2008
 */
public class TaskPaneParameters extends ContainerParameters
{
  private static final long serialVersionUID = -1220506840587405573L;

  protected String insideContainerStyle;

  public TaskPaneParameters(Configuration configuration, List<String> cmsContexts, String name,
          String fullName, ContainerParameters parentContainerParameters)
  {
    super(configuration, cmsContexts, name, fullName, parentContainerParameters);

    insideContainerStyle = Cms.co(getCmsContexts(), KnownParameters.INSIDE_CONTAINER_STYLE_PARAMETER,
            parentContainerParameters.insideContainerStyle);
  }

  @Override
  public ComponentTypeEnum getComponentType()
  {
    return ComponentTypeEnum.TASK_PANE;
  }

  protected String getInsideContainerStyle()
  {
    return insideContainerStyle;
  }

}
