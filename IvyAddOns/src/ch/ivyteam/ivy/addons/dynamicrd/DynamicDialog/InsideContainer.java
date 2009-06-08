package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.DynamicDialogPanel;

import com.ulcjava.base.application.ULCComponent;
import com.ulcjava.base.application.ULCContainer;

/**
 * This is the implementation of pseudo containers that uses its parent container.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 13.10.2008
 */
public class InsideContainer extends Container
{

  protected ULCContainer parentContainer = null;

  public InsideContainer(DynamicDialogPanel panel, Container _parentContainer, ULCContainer ulcContainer,
          ContainerParameters _parameters, Integer height)
  {
    super(panel, _parentContainer, ulcContainer, _parameters, height);

    parameters = _parameters;
    parentContainer = ulcContainer;
  }

  @Override
  protected boolean createFiller()
  {
    return true;
  }

  @Override
  public ULCComponent getLastMainComponent()
  {
    return getMainComponent();
  }

  @Override
  public ULCComponent getMainComponent()
  {
    return parentContainer;
  }

  @Override
  public ContainerParameters getParameters()
  {
    return (ContainerParameters) parameters;
  }

  @Override
  public ULCContainer getUlcContainer()
  {
    return parentContainer;
  }

  @Override
  public void initialize(Position pos, Container previousContainer)
  {
    super.initialize(pos);
  }

  @Override
  public boolean isFocusable()
  {
    return false;
  }

  @Override
  public void setFocusable(boolean b)
  {
    // Nothing to do
  }

  @Override
  protected void applyStyles()
  {
    // Nothing to do
  }

  @Override
  protected void updateEnabledChildren()
  {
    for (Component component : children)
    {
      component.setParentEnabled(isEnabled());
    }
    super.updateEnabledChildren();
  }

  @Override
  protected void updateVisibleChildren()
  {
    for (Component component : children)
    {
      component.setParentVisible(isVisible());
    }
    super.updateVisibleChildren();
  }

  @Override
  public boolean useParentContainer()
  {
    return true;
  }
}
