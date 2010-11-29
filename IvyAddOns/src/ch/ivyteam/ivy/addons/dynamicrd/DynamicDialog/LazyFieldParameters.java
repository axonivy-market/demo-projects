package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.util.List;

import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.ComponentType;

/**
 * This is parameter class of fields that use a widget chosen at runtime.
 * @see ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.LazyField
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 08.04.2010
 */
class LazyFieldParameters extends FieldComponentParameters
{
  private static final long serialVersionUID = -1959485588649573756L;

  protected LazyFieldParameters(List<String> cmsContexts, String name, String fullName,
          ComplexComponentParameters parentContainerParameters, Integer position, Class<?> clazz)
  {
    super(cmsContexts, name, fullName, parentContainerParameters, position, clazz);
  }

  @Override
  public ComponentType getComponentType()
  {
    return ComponentType.LAZY_FIELD;
  }

  @Override
  protected final boolean isEditableByDefault()
  {
    return false;
  }
}
