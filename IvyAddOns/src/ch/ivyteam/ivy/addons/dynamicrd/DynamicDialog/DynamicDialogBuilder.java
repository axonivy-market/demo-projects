package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.util.List;
import java.util.Map;

import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.DynamicDialogPanel;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.FieldComponent.NextToState;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.internal.TreeNode;

import com.ulcjava.base.application.GridBagConstraints;
import com.ulcjava.base.application.ULCFrame;
import com.ulcjava.base.application.ULCRootPane;

/**
 * This helper class is reponsible to create the dynamic dialog UI.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 26.11.2009
 */
final class DynamicDialogBuilder
{
  private DynamicDialogBuilder()
  {
  }

  protected static void build(TreeNode<ComponentParameters> parameterTree, DynamicDialogPanel panel,
          final Position pos, final Map<String, Component> componentMap, final List<Component> componentList,
          int index)
  {
    ULCRootPane root;
    ULCFrame frame;

    root = panel.getRootPane();
    if (root instanceof ULCFrame)
    {
      frame = (ULCFrame) root;
      if (frame.getTitle().startsWith("RootFrame"))
      {
        frame.setTitle(parameterTree.getValue().getTitle());
      }
    }

    build(parameterTree, panel, null, null, pos, componentMap, componentList, index);
  }

  protected static Component build(TreeNode<ComponentParameters> parameterTree, DynamicDialogPanel panel,
          ComplexComponent parentContainer, ComplexComponent lastContainer, final Position pos,
          final Map<String, Component> componentMap, final List<Component> componentList, int index)
  {
    ComponentParameters parameters;
    ComplexComponent container;
    Component component;
    int posX;
    int posY;

    parameters = parameterTree.getValue();

    if (parameters.isNewColumn())
    {
      parentContainer.newColumn(pos);
    }

    posX = parameters.getGridX();
    if (posX >= 0)
    {
      pos.setPosX(posX);
    }
    posY = parameters.getGridY();
    if (posY >= 0)
    {
      pos.setPosY(posY + 1);
    }

    component = null;
    if (parameters.isList())
    {
      container = ComponentFactory.createListContainer(panel, parentContainer,
              (ComplexComponentParameters) parameters, index);
      container.initialize(pos, lastContainer);

      if (parameters.isContainer())
      {
        buildContainerBody(parameterTree, panel, container, pos, componentMap, componentList, -1);
      }

      component = container;
    }
    else if (parameters.isContainer())
    {
      container = ComponentFactory.createContainer(panel, parentContainer,
              (ComplexComponentParameters) parameters, index);

      container.initialize(pos, lastContainer);

      buildContainerBody(parameterTree, panel, container, pos, componentMap, componentList, -1);

      component = container;
    }
    else if (parameters instanceof FieldComponentParameters
            && ((FieldComponentParameters) parameters).getNextToComponentParameters() != null)
    {
      component = buildSideBySideComponents((FieldComponentParameters) parameters, panel, parentContainer,
              pos, componentMap, componentList, index);
    }
    else
    {
      component = ComponentFactory.createComponent(panel, parentContainer, parameters, index);

      if (component != null)
      {
        component.initialize(pos);
      }
    }
    if (componentMap != null)
    {
      componentMap.put(component.getFullName(), component);
    }
    if (componentList != null)
    {
      componentList.add(component);
    }

    return component;
  }

  private static Component buildSideBySideComponents(FieldComponentParameters fieldComponentParameters,
          DynamicDialogPanel panel, ComplexComponent container, Position pos,
          Map<String, Component> componentMap, List<Component> componentList, int index)
  {
    FieldComponent component;
    FieldComponent result;
    FieldComponentParameters parameters;
    NextToContainer nextToContainer;

    Position insidePos;
    int count;
    int maxHeight;
    int reservedSpace;
    int offsetX;

    GridBagConstraints constraints;

    parameters = fieldComponentParameters;
    while (parameters != null)
    {
      parameters = parameters.getNextToComponentParameters();
      if (parameters.getNextToComponentParameters() == null)
      {
        break;
      }
    }
    reservedSpace = 0;

    parameters = fieldComponentParameters;
    constraints = new GridBagConstraints();

    offsetX = 0;
    switch (KnownParameters.getLayoutType(container.getParameters().getFieldLayout()))
    {
      case ICON_LABEL_FIELD_LAYOUT:
        offsetX = 2;
        reservedSpace = 1;
        break;
      case LABEL_FIELD_ICON_LAYOUT:
        offsetX = 1;
        reservedSpace = 2;
        break;
      case LABEL_ICON_FIELD_LAYOUT:
        offsetX = 2;
        reservedSpace = 1;
        break;
      case ICON_LABEL_ON_FIELD_LAYOUT:
      case LABEL_ON_ICON_FIELD_LAYOUT:
      case LABEL_ICON_ON_FIELD_LAYOUT:
      case LABEL_ON_FIELD_ICON_LAYOUT:
      default:
        break;
    }
    constraints.setGridX(pos.getPosX() + offsetX);
    constraints.setGridY(pos.getPosY() + 0);
    constraints.setGridWidth(parameters.getGridWidth() * Component.GRID_BAG_COLUMN_WIDTH - reservedSpace
            - offsetX);

    nextToContainer = new NextToContainer(panel, container, parameters, index);

    nextToContainer.initialize(pos, null, constraints);

    componentList.add(nextToContainer);

    count = 0;
    result = null;
    maxHeight = 0;
    parameters = fieldComponentParameters;

    while (parameters != null)
    {
      component = ComponentFactory.createComponent(panel, nextToContainer, parameters, index);
      if (result == null)
      {
        result = component;
      }

      if (component != null)
      {
        component.setNextTo(NextToState.MIDDLE);
        if (count == 0)
        {
          component.setNextTo(NextToState.FIRST);
        }
        if (parameters.getNextToComponentParameters() == null)
        {
          component.setNextTo(NextToState.LAST);
        }

        insidePos = new Position(count * Component.GRID_BAG_COLUMN_WIDTH, 0);

        component.initialize(insidePos);
        if (insidePos.getPosY() > maxHeight)
        {
          maxHeight = insidePos.getPosY();
        }
      }

      componentMap.put(component.getFullName(), component);
      componentList.add(component);

      parameters = parameters.getNextToComponentParameters();

      count++;
    }

    constraints.setGridHeight(maxHeight);

    pos.setPosY(pos.getPosY() + maxHeight);

    return result;
  }

  protected static void buildContainerBody(TreeNode<ComponentParameters> parameterTree,
          DynamicDialogPanel panel, ComplexComponent parentContainer, final Position pos,
          final Map<String, Component> componentMap, final List<Component> componentList, int index)
  {
    ComplexComponent lastContainer;
    Component lastComponent;
    ComponentParameters parameters;
    Position usedPosition;

    lastContainer = null;

    usedPosition = parentContainer.getStartPos(pos);

    parentContainer.addFillers(usedPosition);

    for (TreeNode<ComponentParameters> child : parameterTree)
    {
      parameters = child.getValue();

      if (parameters instanceof FieldComponentParameters)
      {
        FieldComponentParameters fieldComponentParameters = (FieldComponentParameters) parameters;

        if (!fieldComponentParameters.getNextTo().equals(""))
        {
          continue;
        }
      }

      if (parameters.isNewColumn())
      {
        lastContainer = null;
      }

      lastComponent = build(child, panel, parentContainer, lastContainer, usedPosition, componentMap,
              componentList, index);
      lastContainer = null;
      if (lastComponent instanceof ComplexComponent)
      {
        lastContainer = (ComplexComponent) lastComponent;
      }
    }

    parentContainer.finalizeContainer(usedPosition);
  }
}
