package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.internal.VisualDebugGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBorderLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RTabbedPane;

import com.ulcjava.base.application.GridBagConstraints;
import com.ulcjava.base.application.ULCComponent;
import com.ulcjava.base.application.ULCContainer;

/**
 * This is the implementation of containers that uses a RTabsPane.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 28.09.2009
 */
public class TabbedPane extends ComplexComponent
{
  private RBorderLayoutPane borderLayoutPane = null;

  private RTabbedPane tabbedPane = null;

  private RGridBagLayoutPane gridBag;

  /**
   * Constructs a new TabbedPane object.
   * 
   * @param panel dynamic dialog panel
   * @param parentContainer parent container
   * @param parameters parameters
   * @param index position when component is in a list
   */
  protected TabbedPane(DynamicDialogPanel panel, ComplexComponent parentContainer,
          TabbedPaneParameters parameters, int index)
  {
    super(panel, parentContainer, parameters, index);
  }

  @Override
  protected final void applyComponentStyle()
  {
    borderLayoutPane.setStyle(getParameters().getInsideContainerStyle());
    gridBag.setStyle(getParameters().getInsideContainerStyle());
    tabbedPane.setStyle(getParameters().getContainerStyle());

    setWeightX(tabbedPane);
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
  public final TabbedPaneParameters getParameters()
  {
    return (TabbedPaneParameters) getComponentParameters();
  }

  @Override
  public final ULCContainer getUlcContainer()
  {
    return gridBag;
  }

  @Override
  protected final void initialize(final Position pos, ComplexComponent previousContainer)
  {
    ULCContainer container;
    GridBagConstraints constraints;

    tabbedPane = null;
    if (previousContainer != null)
    {
      // Get the GridBagLayout
      container = previousContainer.getUlcContainer();
      if (container != null)
      {
        // Get the RTabbedPane
        container = container.getParent().getParent();
        if (container instanceof RTabbedPane)
        {
          tabbedPane = (RTabbedPane) container;
        }
      }
    }

    if (tabbedPane == null)
    {
      tabbedPane = new RTabbedPane();
      tabbedPane.setName(getParameters().getName());

      constraints = new GridBagConstraints();

      constraints.setGridX(pos.getPosX());
      constraints.setGridY(pos.getPosY());
      constraints.setGridWidth(getParameters().getGridWidth() * GRID_BAG_COLUMN_WIDTH);
      getParentContainer().add(tabbedPane, constraints);

      pos.setPosY(pos.getPosY() + 1);
    }

    borderLayoutPane = new RBorderLayoutPane();
    borderLayoutPane.setName(getParameters().getName());
    tabbedPane.addTab(getParameters().getTitle(), borderLayoutPane);
    gridBag = new VisualDebugGridBagLayoutPane();
    gridBag.setName(getParameters().getName());
    borderLayoutPane.add(gridBag, "North");

    getUlcComponents().add(borderLayoutPane);
    getUlcComponents().add(gridBag);

    super.initialize(pos);
  }

  @Override
  public final boolean isFocusable()
  {
    return tabbedPane.isFocusable();
  }

  @Override
  public final void setFocusable(boolean b)
  {
    tabbedPane.setFocusable(b);
  }

  @Override
  public final void setLabel(String value)
  {
    int index;

    index = tabbedPane.indexOfComponent(borderLayoutPane);

    if (index >= 0)
    {
      tabbedPane.setTitleAt(index, value);
    }
  }

  @Override
  public final String getLabel()
  {
    int index;

    index = tabbedPane.indexOfComponent(borderLayoutPane);

    return index < 0 ? null : tabbedPane.getTitleAt(index);
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
