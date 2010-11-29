package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import com.ulcjava.base.application.ULCComponent;
import com.ulcjava.base.application.ULCContainer;

/**
 * This is the implementation of pseudo containers that uses its parent container.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 13.10.2008
 */
public class InsideContainer extends ComplexComponent
{
  /**
   * Constructs a new InsideContainer object.
   * 
   * @param panel dynamic dialog panel
   * @param parentContainer parent container
   * @param parameters parameters
   * @param index position when component is in a list
   */
  protected InsideContainer(DynamicDialogPanel panel, ComplexComponent parentContainer,
          ComplexComponentParameters parameters, int index)
  {
    super(panel, parentContainer, parameters, index);
    setCreateFiller(false);
  }

  @Override
  public final ULCComponent getLastMainComponent()
  {
    return getMainComponent();
  }

  @Override
  public final ULCComponent getMainComponent()
  {
    return getUlcContainer();
  }

  @Override
  public final ComplexComponentParameters getParameters()
  {
    return (ComplexComponentParameters) getComponentParameters();
  }

  @Override
  public final ULCContainer getUlcContainer()
  {
    ComplexComponent parent;
    ULCContainer result;

    parent = getParentContainer();
    if (parent != null)
    {
      result = parent.getUlcContainer();
    }
    else
    {
      result = getPanel();
    }
    return result;
  }

  @Override
  protected final void initialize(final Position pos, ComplexComponent previousContainer)
  {
    super.initialize(pos);
  }

  @Override
  public final boolean isFocusable()
  {
    return false;
  }

  @Override
  public final void setFocusable(boolean b)
  {
    // Nothing to do
  }

  @Override
  protected final void applyComponentStyle()
  {
    // Nothing to do
  }

  @Override
  protected final void updateEnabledChildren()
  {
    for (Component component : getChildren())
    {
      component.setParentEnabled(isEnabled());
    }
    super.updateEnabledChildren();
  }

  @Override
  protected final boolean useParentContainer()
  {
    return true;
  }

  @Override
  protected final Position getStartPos(Position pos)
  {
    return pos;
  }

  @Override
  public final String getLabel()
  {
    return null;
  }

  @Override
  public final void setLabel(String value)
  {
  }
}
