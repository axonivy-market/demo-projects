package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.internal.VisualDebugGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPaneContainer;

import com.ulcjava.base.application.GridBagConstraints;
import com.ulcjava.base.application.ULCComponent;
import com.ulcjava.base.application.ULCContainer;

/**
 * This is the implementation of containers that uses a RTaskPane.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 12.09.2008
 */
public class TaskPane extends ComplexComponent
{
  private RGridBagLayoutPane gridBag = null;

  private RTaskPane taskPane = null;

  private RTaskPaneContainer taskPaneContainer;

  /**
   * Constructs a new TaskPane object.
   * 
   * @param panel dynamic dialog panel
   * @param parentContainer parent container
   * @param parameters parameters
   * @param index position when component is in a list
   */
  protected TaskPane(DynamicDialogPanel panel, ComplexComponent parentContainer,
          TaskPaneParameters parameters, int index)
  {
    super(panel, parentContainer, parameters, index);
  }

  @Override
  protected final void applyComponentStyle()
  {
    gridBag.setStyle(getParameters().getInsideContainerStyle());
    taskPane.setStyle(getParameters().getContainerStyle());
    if (taskPaneContainer != null)
    {
      taskPaneContainer.setStyle(getParameters().getContainerStyle());
    }

    setWeightX(taskPane);
  }

  @Override
  public final ULCComponent getLastMainComponent()
  {
    return getMainComponent();
  }

  @Override
  public final ULCComponent getMainComponent()
  {
    return taskPane;
  }

  @Override
  public final TaskPaneParameters getParameters()
  {
    return (TaskPaneParameters) getComponentParameters();
  }

  @Override
  public final ULCContainer getUlcContainer()
  {
    return gridBag;
  }

  @Override
  protected final void initialize(final Position pos, ComplexComponent previousContainer)
  {
    RTaskPaneContainer usedTaskPaneContainer;
    ULCContainer container;

    usedTaskPaneContainer = null;
    if (previousContainer != null)
    {
      // Get the GridBagLayout
      container = previousContainer.getUlcContainer();
      if (container != null)
      {
        // Get the TaskPane
        container = container.getParent();
        if (container != null)
        {
          // Get the TaskPane container
          container = container.getParent();
          if (container instanceof RTaskPaneContainer)
          {
            usedTaskPaneContainer = (RTaskPaneContainer) container;
          }
        }
      }
    }

    if (usedTaskPaneContainer == null)
    {
      GridBagConstraints constraints;

      constraints = new GridBagConstraints();
      constraints.setGridX(pos.getPosX());
      constraints.setGridY(pos.getPosY());
      constraints.setGridWidth(getParameters().getGridWidth() * GRID_BAG_COLUMN_WIDTH);

      usedTaskPaneContainer = getTaskPaneContainer();
      getParentContainer().add(usedTaskPaneContainer, constraints);

      pos.setPosY(pos.getPosY() + 1);
    }

    usedTaskPaneContainer.add(getTaskPane());

    super.initialize(pos);
  }

  private RGridBagLayoutPane getGridBag()
  {
    if (gridBag == null)
    {
      gridBag = new VisualDebugGridBagLayoutPane();
      gridBag.setName(getParameters().getName() + "GridBag");

      getUlcComponents().add(gridBag);
    }
    return gridBag;
  }

  private RTaskPane getTaskPane()
  {
    if (taskPane == null)
    {
      taskPane = new RTaskPane();
      taskPane.setTitle(getParameters().getTitle());
      taskPane.setName(getParameters().getName() + "TaskPane");

      taskPane.add(getGridBag());

      getUlcComponents().add(taskPane);
    }
    return taskPane;
  }

  private RTaskPaneContainer getTaskPaneContainer()
  {
    if (taskPaneContainer == null)
    {
      taskPaneContainer = new RTaskPaneContainer();
      taskPaneContainer.setName(getParameters().getName() + "TaskPaneContainer");

      // TODO Add property to manage setSingleTaskPaneOpen
    }
    return taskPaneContainer;
  }

  @Override
  public final boolean isFocusable()
  {
    return taskPane.isFocusable();
  }

  @Override
  public final void setFocusable(boolean b)
  {
    taskPane.setFocusable(b);
  }

  @Override
  public final void setLabel(String value)
  {
    taskPane.setTitle(value);
  }

  @Override
  public final String getLabel()
  {
    return taskPane.getTitle();
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
