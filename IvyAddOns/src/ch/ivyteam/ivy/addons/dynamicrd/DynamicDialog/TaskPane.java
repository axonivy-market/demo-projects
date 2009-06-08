package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPaneContainer;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.DynamicDialogPanel;

import com.ulcjava.base.application.GridBagConstraints;
import com.ulcjava.base.application.ULCComponent;
import com.ulcjava.base.application.ULCContainer;

/**
 * This is the implementation of containers that uses a RTaskPane.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 12.09.2008
 */
public class TaskPane extends Container
{
  protected RGridBagLayoutPane gridBag = null;

  protected RTaskPane taskPane = null;

  public TaskPane(DynamicDialogPanel panel, Container parentContainer, ULCContainer ulcContainer,
          TaskPaneParameters _parameters, Integer height)
  {
    super(panel, parentContainer, ulcContainer, _parameters, height);

    parameters = _parameters;
  }

  @Override
  protected void applyStyles()
  {
    gridBag.setStyle(getParameters().getInsideContainerStyle());
    taskPane.setStyle(getParameters().getContainerStyle());
  }

  @Override
  public ULCComponent getLastMainComponent()
  {
    return getMainComponent();
  }

  @Override
  public ULCComponent getMainComponent()
  {
    return taskPane;
  }

  @Override
  public TaskPaneParameters getParameters()
  {
    return (TaskPaneParameters) parameters;
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

    RTaskPaneContainer taskPaneContainer;
    ULCContainer container;

    taskPaneContainer = null;
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
            taskPaneContainer = (RTaskPaneContainer) container;
          }
        }
      }
    }

    if (taskPaneContainer == null)
    {
      GridBagConstraints constraints;

      taskPaneContainer = new RTaskPaneContainer();
      taskPaneContainer.setName(parameters.getName());

      constraints = new GridBagConstraints();

      constraints.setGridX(pos.getPosX());
      constraints.setGridY(pos.getPosY());
      constraints.setGridWidth(3);
      constraints.setGridHeight(height);
      ulcContainer.add(taskPaneContainer, constraints);

      pos.setPosY(pos.getPosY() + 1 + height);
    }

    taskPane = new RTaskPane();
    taskPane.setTitle(getParameters().getTitle());
    taskPane.setName(parameters.getName());
    taskPaneContainer.add(taskPane);

    gridBag = new RGridBagLayoutPane();
    gridBag.setName(parameters.getName());
    taskPane.add(gridBag);

    ulcComponents.add(taskPane);
    ulcComponents.add(gridBag);

    super.initialize(pos);
  }

  @Override
  public boolean isFocusable()
  {
    return taskPane.isFocusable();
  }

  @Override
  public void setFocusable(boolean b)
  {
    taskPane.setFocusable(b);
  }
}
