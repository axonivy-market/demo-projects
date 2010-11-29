package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.util.List;

/**
 * This is the parementers of pseudo containers that uses its parent container.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 23.07.2010
 */
class InsideContainerParameters extends ContainerParameters
{
  protected InsideContainerParameters(List<String> cmsContexts, String name, String fullName,
          ComplexComponentParameters parentContainerParameters, Integer position, Class clazz)
  {
    super(cmsContexts, name, fullName, parentContainerParameters, position, clazz);
  }

  private static final long serialVersionUID = 5960252359063328929L;

  @Override
  protected final ComponentType getComponentType()
  {
    return ComponentType.INSIDE;
  }
}
