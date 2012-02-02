package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.internal.VisualDebugGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;

import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.GridBagConstraints;
import com.ulcjava.base.application.ULCComponent;
import com.ulcjava.base.application.ULCContainer;
import com.ulcjava.base.application.border.ULCTitledBorder;

/**
 * This is the implementation of containers that uses a RGridBagLayoutPane.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 12.09.2008
 */
public class GridBagLayoutPane extends ComplexComponent
{

  private RGridBagLayoutPane gridBag = null;

  /**
   * Constructs a new GridBagLayoutPane object.
   * 
   * @param panel dynamic dialog panel
   * @param parentContainer parent container
   * @param parameters parameters
   * @param index position when component is in a list
   */
  protected GridBagLayoutPane(DynamicDialogPanel panel, ComplexComponent container,
          GridBagLayoutPaneParameters parameters, int index)
  {
    super(panel, container, parameters, index);
  }

  @Override
  protected final void applyComponentStyle()
  {
    gridBag.setStyle(getParameters().getContainerStyle());

    setWeightX(gridBag);
  }

  private RGridBagLayoutPane getGridBag()
  {
    if (gridBag == null)
    {
      gridBag = new VisualDebugGridBagLayoutPane();
      if (getParameters().showBorder())
      {
        gridBag.setBorder(BorderFactory.createTitledBorder(null, getParameters().getTitle()));
      }
      gridBag.setName(getParameters().getName());

      getUlcComponents().add(gridBag);
    }
    return gridBag;
  }

  @Override
  public final ULCComponent getLastMainComponent()
  {
    return getMainComponent();
  }

  @Override
  public final ULCComponent getMainComponent()
  {
    return gridBag;
  }

  @Override
  public final GridBagLayoutPaneParameters getParameters()
  {
    return (GridBagLayoutPaneParameters) getComponentParameters();
  }

  @Override
  public final ULCContainer getUlcContainer()
  {
    return gridBag;
  }

  @Override
  protected final void initialize(final Position pos, ComplexComponent previousContainer)
  {
    GridBagConstraints constraints;

    constraints = new GridBagConstraints();
    constraints.setGridX(pos.getPosX() + 0);
    constraints.setGridY(pos.getPosY() + 0);
    constraints.setGridWidth(getParameters().getGridWidth() * GRID_BAG_COLUMN_WIDTH);
    getParentContainer().add(getGridBag(), constraints);

    super.initialize(pos);

    pos.setPosY(pos.getPosY() + 1);
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
  public final String getLabel()
  {
    String result;

    result = null;
    if (gridBag.getBorder() instanceof ULCTitledBorder)
    {
      ULCTitledBorder border = (ULCTitledBorder) gridBag.getBorder();

      result = border.getTitle();
    }
    return result;
  }

  @Override
  public final void setLabel(String value)
  {
    if (gridBag.getBorder() instanceof ULCTitledBorder)
    {
      ULCTitledBorder border = (ULCTitledBorder) gridBag.getBorder();

      border.setTitle(value);
    }
  }

  @Override
  protected final boolean useParentContainer()
  {
    return false;
  }

  @Override
  protected final Position getStartPos(Position pos)
  {
    return new Position();
  }
}
