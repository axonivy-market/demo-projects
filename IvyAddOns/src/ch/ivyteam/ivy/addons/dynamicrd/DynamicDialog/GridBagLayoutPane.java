package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.DynamicDialogPanel;

import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.GridBagConstraints;
import com.ulcjava.base.application.ULCComponent;
import com.ulcjava.base.application.ULCContainer;

/**
 * This is the implementation of containers that uses a RGridBagLayoutPane.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 12.09.2008
 */
public class GridBagLayoutPane extends Container
{

  protected RGridBagLayoutPane gridBag = null;

  public GridBagLayoutPane(DynamicDialogPanel panel, Container container, ULCContainer ulcContainer,
          GridBagLayoutPaneParameters _parameters, Integer height)
  {
    super(panel, container, ulcContainer, _parameters, height);

    parameters = _parameters;
  }

  @Override
  protected void applyStyles()
  {
    super.applyStyles();
    gridBag.setStyle(getParameters().getContainerStyle());
  }

  private RGridBagLayoutPane getGridBag()
  {
    if (gridBag == null)
    {
      gridBag = new RGridBagLayoutPane();
      gridBag.setBorder(BorderFactory.createTitledBorder(null, parameters.getTitle()));
      gridBag.setName(parameters.getName());
    }
    return gridBag;
  }

  @Override
  public ULCComponent getLastMainComponent()
  {
    return getMainComponent();
  }

  @Override
  public ULCComponent getMainComponent()
  {
    return gridBag;
  }

  @Override
  public GridBagLayoutPaneParameters getParameters()
  {
    return (GridBagLayoutPaneParameters) parameters;
  }

  @Override
  public ULCContainer getUlcContainer()
  {
    return gridBag;
  }

  @Override
  public void initialize(Position pos, Container previousContainer)
  {
    super.initialize(pos, previousContainer);

    GridBagConstraints constraints;

    constraints = new GridBagConstraints();
    constraints.setGridX(pos.getPosX() + 0);
    constraints.setGridY(pos.getPosY() + 0);
    constraints.setGridHeight(height);
    constraints.setGridWidth(3);
    ulcContainer.add(getGridBag(), constraints);

    ulcComponents.add(getGridBag());

    super.initialize(pos);

    pos.setPosY(pos.getPosY() + 1 + height);
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
}
