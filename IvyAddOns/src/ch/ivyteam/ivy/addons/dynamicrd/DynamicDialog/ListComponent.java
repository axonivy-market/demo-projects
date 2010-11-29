package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import ch.ivyteam.ivy.scripting.objects.List;

/**
 * This is the base class of components that implement lists. This kind of components is used to
 * represent attribute of type Ivy List.
 * @see List
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 03.09.2010
 */
public abstract class ListComponent extends ComplexComponent
{
  @Override
  public abstract ListComponentParameters getParameters();

  protected ListComponent(DynamicDialogPanel panel, ComplexComponent container, ComplexComponentParameters parameters,
          int index)
  {
    super(panel, container, parameters, index);
  }

  /**
   * Gets the List displayed into the component
   * 
   * @return the displayed list 
   */
  public abstract List<?> getListData();

  /**
   * Fills the component with new data
   * 
   * @param list data to display
   */
  public abstract void setListData(List<?> list);
}
