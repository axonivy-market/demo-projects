package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.internal.VisualDebugGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.scripting.objects.List;

import com.ulcjava.base.application.GridBagConstraints;
import com.ulcjava.base.application.ULCComponent;
import com.ulcjava.base.application.ULCContainer;

/**
 * This is the implementation of component that represents a
 * <code>List</Code> by creating a container for each item.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 06.04.2010
 */
public class ComponentList extends ListComponent
{
  private RGridBagLayoutPane gridBag;

  private java.util.List<Map<String, Component>> componentMapList;

  private java.util.List<Component> componentList;

  private Class<?> clazz;

  private ComplexComponent container;

  @Override
  protected final void initialize(final Position pos, ComplexComponent previousContainer)
  {
    GridBagConstraints constraints;

    constraints = new GridBagConstraints();
    constraints.setGridX(pos.getPosX() + 0);
    constraints.setGridY(pos.getPosY() + 0);
    constraints.setFill(GridBagConstraints.BOTH);
    constraints.setGridWidth(getParameters().getGridWidth() * GRID_BAG_COLUMN_WIDTH);
    getParentContainer().add(getGridBag(), constraints);

    super.initialize(pos);

    pos.setPosY(pos.getPosY() + 3);
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

  @Override
  public final ComponentListParameter getParameters()
  {
    return (ComponentListParameter) getComponentParameters();
  }

  protected ComponentList(DynamicDialogPanel panel, ComplexComponent container,
          ComponentListParameter parameters, int index)
  {
    super(panel, container, parameters, index);

    componentMapList = new ArrayList<Map<String, Component>>();
    componentList = new ArrayList<Component>();
    this.container = container;
  }

  @Override
  public final ULCContainer getUlcContainer()
  {
    return getGridBag();
  }

  @Override
  public final ULCComponent getLastMainComponent()
  {
    return getMainComponent();
  }

  @Override
  public final ULCComponent getMainComponent()
  {
    return getGridBag();
  }

  @Override
  public final boolean isFocusable()
  {
    return true;
  }

  @Override
  public final void setFocusable(boolean value)
  {
    getGridBag().setFocusable(value);
  }

  @SuppressWarnings("unchecked")
  @Override
  public final List<?> getListData()
  {
    List result;
    int i;

    result = null;
    if (!componentMapList.isEmpty())
    {
      result = List.create(clazz);
      i = 0;
      for (Map<String, Component> componentMap : componentMapList)
      {
        result.add(DynamicDialogMapper.getValue(componentMap, getPanel().getInexistantAttributeValues(),
                clazz, this.getFullName() + "/item[" + i + "]", getPanel().getClassMap()));
        i++;
      }
    }
    return result;
  }

  @Override
  public final void setListData(List<?> list)
  {
    Position pos;
    ComplexComponent lastContainer;
    boolean createComponents;
    Object item;
    int index;

    clazz = null;
    if (!list.isEmpty())
    {
      clazz = list.getMemberType().getJavaClass();
    }

    createComponents = false;
    if (componentMapList.size() != list.size())
    {

      getGridBag().removeAll();
      for (Map<String, Component> map : componentMapList)
      {
        for (String s : map.keySet())
        {
          Component c = getPanel().getComponentMap().remove(s);
          if (c != null)
          {
            getPanel().getComponentList().remove(c);
          }
        }
      }
      componentMapList.clear();
      componentList.clear();
      createComponents = true;
    }

    pos = new Position();
    try
    {
      lastContainer = null;
      for (int i = 0; i < list.size(); i++)
      {
        item = list.get(i);

        if (createComponents)
        {
          lastContainer = createComponents(pos, lastContainer, i);
        }
      }

      if (createComponents)
      {
        index = getPanel().getComponentList().indexOf(this.container);
        if (index != -1)
        {
          getPanel().getComponentList().addAll(index, componentList);
        }
        getPanel().callInit(componentList);
        getPanel().applyStyles(componentList);
        getPanel().setTabulationOrder();
      }

      for (int i = 0; i < list.size(); i++)
      {
        item = list.get(i);
        DynamicDialogMapper.setValue(item, getPanel().getComponentMap(), getPanel()
                .getInexistantAttributeValues(), this.getFullName() + "/item[" + i + "]", false, getPanel()
                .getClassMap());
      }
    }
    catch (Exception e)
    {
      throw new DynamicDialogException(e);
    }
  }

  private ComplexComponent createComponents(Position pos, ComplexComponent lastContainer, int index)
  {
    Component lastComponent;
    Map<String, Component> componentMap;
    ComplexComponent constructedContainer;

    componentMap = new HashMap<String, Component>();
    componentMapList.add(componentMap);

    lastComponent = DynamicDialogBuilder.build(this.getParameters().getParameterTree().getChildren().get(0),
            getPanel(), this, lastContainer, pos, componentMap, componentList, index);

    constructedContainer = null;
    if (lastComponent instanceof ComplexComponent)
    {
      constructedContainer = (ComplexComponent) lastComponent;
    }

    getPanel().getComponentMap().putAll(componentMap);

    return constructedContainer;
  }

  @Override
  protected final void applyComponentStyle()
  {
    gridBag.setStyle(getParameters().getContainerStyle());
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
