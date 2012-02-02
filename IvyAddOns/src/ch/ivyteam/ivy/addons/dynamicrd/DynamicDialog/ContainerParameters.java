package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.util.List;

/**
 * Base class for all containers.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 23.07.2010
 */
abstract class ContainerParameters extends ComplexComponentParameters
{
  private static final long serialVersionUID = -326951498408536685L;

  protected ContainerParameters(List<String> cmsContexts, String name, String fullName,
          ComplexComponentParameters parentContainerParameters, Integer position, Class<?> clazz)
  {
    super(cmsContexts, name, fullName, parentContainerParameters, position, clazz);
  }

  @Override
  public final boolean isContainer()
  {
    return true;
  }

  @Override
  public final boolean isList()
  {
    return false;
  }
}