package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.io.Serializable;
import java.util.List;

import ch.ivyteam.ivy.addons.cmscontext.Cms;
import ch.ivyteam.ivy.environment.Ivy;

/**
 * This is the common parameters for all components.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 12.09.2008
 */
public abstract class ComponentParameters implements Comparable<ComponentParameters>, Serializable
{
  private List<String> cmsContexts = null;

  private boolean enabled;

  private boolean focusable;

  private String fullName = null;

  private String initMethod;

  private String postStartupMethod;

  private String focusGainedMethod;

  private String focusLostMethod;

  private String valueChangedMethod;

  private String actionMethod;

  private String controller;

  private String name = null;

  private boolean newColumn;

  private String titleRef;

  private String shortTitleRef;

  private boolean visible;

  private Integer position;

  private String toolTipRef;

  private boolean showToolTip;

  private int gridWidth;

  private int gridX;

  private int gridY;

  private float weightX;

  private String className;

  private boolean parentVisible;

  private String nextToContainerStyle;

  private boolean parentEnabled;

  private int insetsTop;

  private int insetsBottom;

  private int insetsRight;

  private int insetsLeft;

  protected ComponentParameters(List<String> cmsContexts, String name, String fullName,
          ComplexComponentParameters parentContainerParameters, Integer position, Class clazz)
  {
    super();

    this.cmsContexts = cmsContexts;
    this.name = name;
    this.fullName = fullName;
    this.className = clazz.getName();

    this.visible = Cms.coAsBoolean(cmsContexts, KnownParameters.VISIBLE_PARAMETER, true);
    if (parentContainerParameters instanceof MasterDetailParameters)
    {
      this.visible = false;
    }

    this.showToolTip = Cms.coAsBoolean(cmsContexts, KnownParameters.SHOW_TOOL_TIP_PARAMETER, false);

    this.enabled = Cms.coAsBoolean(cmsContexts, KnownParameters.ENABLED_PARAMETER, true);

    this.titleRef = Cms.cr(cmsContexts, KnownParameters.LABEL_STRING);

    this.shortTitleRef = Cms.cr(cmsContexts, KnownParameters.SHORT_LABEL_STRING);

    this.toolTipRef = Cms.cr(cmsContexts, KnownParameters.TOOL_TIP_STRING);

    this.initMethod = Cms.co(cmsContexts, KnownParameters.INIT_METHOD_PARAMETER);

    this.postStartupMethod = Cms.co(cmsContexts, KnownParameters.POST_STARTUP_METHOD_PARAMETER);

    this.valueChangedMethod = Cms.co(cmsContexts, KnownParameters.VALUE_CHANGED_METHOD_PARAMETER);

    this.focusLostMethod = Cms.co(cmsContexts, KnownParameters.FOCUS_LOST_METHOD_PARAMETER);

    this.focusGainedMethod = Cms.co(cmsContexts, KnownParameters.FOCUS_GAINED_METHOD_PARAMETER);

    this.actionMethod = Cms.co(cmsContexts, KnownParameters.ACTION_METHOD_PARAMETER);

    this.controller = Cms.co(cmsContexts, KnownParameters.CONTROLLER_PARAMETER);

    if (isList())
    {
      this.focusable = Cms.coAsBoolean(cmsContexts, KnownParameters.FOCUSABLE_PARAMETER, true);
    }
    else if (isContainer())
    {
      this.focusable = Cms.coAsBoolean(cmsContexts, KnownParameters.FOCUSABLE_PARAMETER, false);
    }
    else
    {
      this.focusable = Cms.coAsBoolean(cmsContexts, KnownParameters.FOCUSABLE_PARAMETER, true);
    }

    this.newColumn = Cms.co(cmsContexts, KnownParameters.NEW_COLUMN_PARAMETER).equals("1") ? true : false;

    this.position = Cms.coAsNumber(cmsContexts, KnownParameters.POSITION_PARAMETER, position).intValue();

    this.gridWidth = Cms.coAsNumber(cmsContexts, KnownParameters.GRID_WIDTH_PARAMETER, 1).intValue();

    this.gridX = Cms.coAsNumber(cmsContexts, KnownParameters.GRID_X_PARAMETER, -1).intValue();

    this.gridY = Cms.coAsNumber(cmsContexts, KnownParameters.GRID_Y_PARAMETER, -1).intValue();

    try
    {
      this.weightX = Float.parseFloat(Cms.co(cmsContexts, KnownParameters.WEIGHT_X_PARAMETER, "0"));
    }
    catch (NumberFormatException e)
    {
      // Nothing to do
    }

    parentVisible = true;
    if (parentContainerParameters != null)
    {
      parentVisible = parentContainerParameters.isVisible() && parentContainerParameters.isParentVisible();
    }
    parentEnabled = true;
    if (parentContainerParameters != null)
    {
      parentEnabled = parentContainerParameters.isEnabled() && parentContainerParameters.isParentEnabled();
    }

    this.nextToContainerStyle = Cms.co(cmsContexts, KnownParameters.NEXT_TO_CONTAINER_STYLE_PARAMETER,
            KnownParameters.NEXT_TO_CONTAINER_DEFAULT_STYLE);

    this.insetsBottom = Cms.coAsNumber(cmsContexts, KnownParameters.INSETS_BOTTOM_PARAMETER, -1).intValue();
    this.insetsLeft = Cms.coAsNumber(cmsContexts, KnownParameters.INSETS_LEFT_PARAMETER, -1).intValue();
    this.insetsRight = Cms.coAsNumber(cmsContexts, KnownParameters.INSETS_RIGHT_PARAMETER, -1).intValue();
    this.insetsTop = Cms.coAsNumber(cmsContexts, KnownParameters.INSETS_TOP_PARAMETER, -1).intValue();
  }

  /**
   * Gets the CMS contexts.
   * 
   * @return CMS contexts
   * 
   * @see Cms
   */
  public final List<String> getCmsContexts()
  {
    return cmsContexts;
  }

  /**
   * Gets the component type.
   * 
   * @return component type
   */
  protected abstract ComponentType getComponentType();

  /**
   * Gets the fully qualified component's name. This name uniquely identifies a component and these
   * parameters.
   * 
   * @return fully qualified name
   */
  public final String getFullName()
  {
    return fullName;
  }

  /**
   * Gets the UI logic method name that should be invoked while the init time.
   * 
   * @return UI logic method name
   */
  protected final String getInitMethod()
  {
    return initMethod;
  }

  protected final String getPostStartupMethod()
  {
    return postStartupMethod;
  }

  protected final String getFocusGainedMethod()
  {
    return focusGainedMethod;
  }

  protected final String getFocusLostMethod()
  {
    return focusLostMethod;
  }

  protected final String getValueChangedMethod()
  {
    return valueChangedMethod;
  }

  protected final String getActionMethod()
  {
    return actionMethod;
  }

  /**
   * Gets the name of the data class attribute related to this component.
   * 
   * @return name
   */
  public final String getName()
  {
    return name;
  }

  /**
   * Gets the title of the component. The title acts as label in field component and acts as frame border
   * title with container.
   * 
   * @return title
   */
  public final String getTitle()
  {
    String result;

    if (titleRef != null && !titleRef.equals(""))
    {
      result = Ivy.cms().co(titleRef);
    }
    else
    {
      result = name;
    }
    return result;
  }

  /**
   * Gets the short title of the component. The short title acts as column header into list.
   * 
   * @return short title
   */
  protected final String getShortTitle()
  {
    String result;

    if (shortTitleRef != null && !shortTitleRef.equals(""))
    {
      result = Ivy.cms().co(shortTitleRef);
    }
    else
    {
      result = getTitle();
    }
    return result;
  }

  /**
   * Returns whether this component's parameters describe a container.
   * 
   * @return true if the component's parameters describe a container; false otherwise
   */
  protected abstract boolean isContainer();

  /**
   * Returns whether this component's parameters describe a component that displays a List.
   * 
   * @return true if the component's parameters describe a list; false otherwise
   */
  public abstract boolean isList();

  /**
   * Returns whether the component that is described by this parameters is enabled.
   * 
   * @return true if this component is enabled; false otherwise
   */
  public final boolean isEnabled()
  {
    return enabled;
  }

  /**
   * Returns whether the component that is described by this parameters can be focused.
   * 
   * @return true if this component is focusable; false otherwise
   */
  public final boolean isFocusable()
  {
    return focusable;
  }

  /**
   * Retrurns whether the component that is described by this parameters is on the top of a new column.
   * 
   * @return true if this component is on the top of a new column; false otherwise
   */
  public final boolean isNewColumn()
  {
    return newColumn;
  }

  /**
   * Returns whether the component that is described by this parameters is visible.
   * 
   * @return true if this component is visible; false otherwise
   */
  public final boolean isVisible()
  {
    return visible;
  }

  /**
   * {@inheritDoc}
   */
  public final int compareTo(ComponentParameters arg0)
  {
    if (this == arg0)
    {
      return 0;
    }
    if (arg0 == null)
    {
      return 1;
    }

    return position.compareTo(arg0.position);
  }

  protected final String getToolTip()
  {
    String result;

    if (toolTipRef != null && !toolTipRef.equals(""))
    {
      result = Ivy.cms().co(toolTipRef);
    }
    else
    {
      result = null;
    }
    return result;
  }

  /**
   * Returns true if the tool tip should be shown.
   * 
   * @return true if the tool tip should be shown; false otherwise
   */
  public final boolean isToolTipShown()
  {
    return showToolTip;
  }

  protected final int getGridWidth()
  {
    if (gridWidth <= 0)
    {
      gridWidth = 1;
    }
    return gridWidth;
  }

  protected final int getGridX()
  {
    if (gridX <= -1)
    {
      gridX = -1;
    }
    return gridX * Component.GRID_BAG_COLUMN_WIDTH;
  }

  protected final int getGridY()
  {
    if (gridY <= -1)
    {
      gridY = -1;
    }
    return gridY;
  }

  protected final Float getWeightX()
  {
    if (weightX <= 0)
    {
      weightX = 1;
    }
    return weightX;
  }

  /**
   * Gets the visible state of the parent component.
   * 
   * @return true if the parent component is visible; false otherwise
   */
  protected final boolean isParentVisible()
  {
    return parentVisible;
  }

  protected final String getNextToContainerStyle()
  {
    return nextToContainerStyle;
  }

  /**
   * Get the class name of the attribute represented by this dynamic dialog component.
   * 
   * @return class name
   */
  protected final String getClassName()
  {
    return className;
  }

  /**
   * Gets the enable state of the parent component.
   * 
   * @return true if the parent component is enabled; false otherwise
   */
  public final boolean isParentEnabled()
  {
    return parentEnabled;
  }

  /**
   * Gets the RDC that should be loaded in dynamic dialog as controller that provides methods for this
   * component.
   * 
   * @return fully qualified RDC panel class name
   */
  protected final String getController()
  {
    return controller;
  }

  public Integer getInsetsBottom()
  {
    return insetsBottom;
  }

  public Integer getInsetsLeft()
  {
    return insetsLeft;
  }

  public Integer getInsetsRight()
  {
    return insetsRight;
  }

  public Integer getInsetsTop()
  {
    return insetsTop;
  }
}
