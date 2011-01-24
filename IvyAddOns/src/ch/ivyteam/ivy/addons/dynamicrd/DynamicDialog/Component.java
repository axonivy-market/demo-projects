package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.internal.FieldChangeEventParameters;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.event.SystemEvent;
import ch.ivyteam.ivy.event.SystemEventCategory;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.widgets.style.IStylableWidget;
import ch.ivyteam.ivy.security.IPermission;

import com.ulcjava.base.application.ULCComponent;
import com.ulcjava.base.application.ULCScrollPane;

/**
 * This is the base class for all components (both containers and field components).
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 12.09.2008
 */
public abstract class Component
{
  protected static final int GRID_BAG_COLUMN_WIDTH = 4;

  protected static final int GRID_BAG_COLUMN_LAST_X_POS = GRID_BAG_COLUMN_WIDTH - 1;

  private boolean currentIsEnabled;

  private boolean currentIsVisible;

  private List<IRichDialogPanel> dialogPanels = null;

  private boolean isEnabled = true;

  private boolean isParentEnabled = true;

  private boolean isParentVisible = true;

  private boolean isVisible = true;

  private DynamicDialogPanel panel;

  private ComponentParameters parameters;

  private List<ULCComponent> ulcComponents = null;

  private String fullName;

  private ComplexComponent parentContainer;

  private boolean methodCallAllowed = true;

  private Map<IStylableWidget, Map<String, String>> styleProperties;
  
  private IStylableWidget insetsSettingsTarget;
  
  private Position pos;

  /**
   * Constructs a new Component object.
   * 
   * @param panel dynamic dialog panel
   * @param parentContainer parent container
   * @param parameters parameters
   * @param index position when component is in a list
   */
  protected Component(DynamicDialogPanel panel, ComplexComponent parentContainer,
          ComponentParameters parameters, int index)
  {
    this.panel = panel;
    this.parameters = parameters;
    this.parentContainer = parentContainer;

    this.fullName = buildFullName(parentContainer, parameters, index);

    this.ulcComponents = new ArrayList<ULCComponent>();
    this.isParentVisible = parameters.isParentVisible();
    this.isParentEnabled = parameters.isParentEnabled();
    if (parentContainer != null)
    {
      parentContainer.addChild(this);
    }
  }

  protected abstract String buildFullName(ComplexComponent parentContainer, ComponentParameters parameters);

  protected String buildDefaultFullName(ComplexComponent parentContainer, ComponentParameters parameters)
  {
    String result;

    result = parentContainer.getFullName() + "/" + parameters.getName();

    return result;
  }

  private String buildFullName(ComplexComponent parentContainer, ComponentParameters parameters, int index)
  {
    String result;

    result = null;
    if (parentContainer == null)
    {
      result = parameters.getFullName();
    }
    else
    {
      if (result == null)
      {
        // This keeps index added to the container [x]
        result = buildFullName(parentContainer, parameters);
      }
    }
    if (index != -1)
    {
      result += "[" + index + "]";
    }
    return result;
  }

  protected final void applyStyles()
  {
    if (getMainComponent() instanceof IStylableWidget)
    {
      insetsSettingsTarget = (IStylableWidget)getMainComponent();
    }

    applyComponentStyle();
    
    if (insetsSettingsTarget != null)
    {
      if (parameters.getInsetsBottom() >= 0)
      {
        addStyleProperties(insetsSettingsTarget, "insetsBottom", parameters.getInsetsBottom().toString());
      }
      if (parameters.getInsetsTop() >= 0)
      {
        addStyleProperties(insetsSettingsTarget, "insetsTop", parameters.getInsetsTop().toString());
      }
      if (parameters.getInsetsLeft() >= 0)
      {
        addStyleProperties(insetsSettingsTarget, "insetsLeft", parameters.getInsetsLeft().toString());
      }
      if (parameters.getInsetsRight() >= 0)
      {
        addStyleProperties(insetsSettingsTarget, "insetsRight", parameters.getInsetsRight().toString());
      }
    }

    applyStyleProperties();
    styleProperties = null;
  }

  protected abstract void applyComponentStyle();

  /**
   * This method is invoked when a focus gained event occurs. It invokes the 'help' UI logic method and the
   * one that is given.
   * 
   * @param method UI logic method name that should be invoked
   */
  protected final void focusGained()
  {
    scrollToVisible();

    try
    {
      if (Ivy.session().hasPermission(
              Ivy.session().getWorkflowContext().getApplication().getSecurityDescriptor(),
              IPermission.ADMINISTRATE_WORKFLOW))
      {

        SystemEvent<FieldChangeEventParameters> event = new SystemEvent<FieldChangeEventParameters>(SystemEventCategory.THIRD_PARTY,
                "selectedDDFieldChange", new FieldChangeEventParameters(this, Ivy.cms()));
        Ivy.session().getWorkflowContext().getApplication().sendSystemEvent(event);
      }
    }
    catch (Exception e)
    {
      throw new DynamicDialogException(e);
    }

    invoke("help");

    invoke(getParameters().getFocusGainedMethod());
  }

  /**
   * This method is invoked when a focus lost event occurs. It invokes the UI logic method that is given.
   * 
   * @param method UI logic method name that should be invoked
   */
  protected void focusLost()
  {
    invoke(getParameters().getFocusLostMethod());
  }

  /**
   * Invoke the method given through the valueChangedMethod parameter.<br />
   * This method should not be used by end user application.
   */
  public void valueChanged()
  {
    invoke(getParameters().getValueChangedMethod());
  }

  protected void action()
  {
    invoke(getParameters().getActionMethod());
  }

  /**
   * Returns the last ULC component representing the DynamicDialog component. In DynamicDialog RadioButton is
   * a rich component that uses many ULC radio buttons. One per possible choice.
   * 
   * @return the last main ULC component of the component, when a component contains many ULC components;
   *         otherwise the result is the same as <code>GetMainComponent</code>.
   * 
   * @see #getMainComponent()
   */
  public abstract ULCComponent getLastMainComponent();

  /**
   * Gets the main ULC component of the DynamicDialog compoent. It return, for example, the ComboBox component
   * in a field that contains a combo box, an icon and a label.
   * 
   * @return the main ULC component
   */
  public abstract ULCComponent getMainComponent();

  /**
   * Returns the components's parameters.
   * 
   * @return component's parameters
   */
  public abstract ComponentParameters getParameters();

  /**
   * Invokes the UI logic init method for this component.
   */
  public final void init()
  {
    invoke(getParameters().getInitMethod());
  }

  /**
   * Invokes the postStartup method attached to this component
   */
  public final void postStartup()
  {
    invoke(getParameters().getPostStartupMethod());
  }

  /**
   * Initializes the component.
   * 
   * @param pos position in the parent grid bag layout
   */
  public final void initialize(final Position pos)
  {
    panel.addController(parameters.getController());
    
    this.pos = pos;

    initializeComponent(pos);

    if (!parameters.isVisible())
    {
      setVisible(false);
    }
    updateVisible();
    if (!parameters.isEnabled())
    {
      setEnabled(false);
    }
    updateEnabled();
    if (!parameters.isFocusable())
    {
      setFocusable(false);
    }
    setToolTip(parameters.getToolTip());
  }

  private void setToolTip(String toolTip)
  {
    if (toolTip != null && !toolTip.equals(""))
    {
      getMainComponent().setToolTipText(toolTip);
    }
  }

  protected final void invoke(String method)
  {
    panel.invoke(method, getFullName());
  }

  /**
   * Returns whether this component is enabled or disabled. By default components are enabled. An enabled
   * component reacts to user input and generates events. The method setEnabled changes the enabled state
   * accordingly.
   * 
   * @return true if the component is enabled; false otherwise
   */
  public final boolean isEnabled()
  {
    return isEnabled && isParentEnabled;
  }

  /**
   * Returns whether this component can be focused.
   * 
   * @return true if this component is focusable; false otherwise
   */
  public abstract boolean isFocusable();

  /**
   * Returns whether this component is visible.
   * 
   * @return true if the component is visible; false otherwise
   */
  public final boolean isVisible()
  {
    return isVisible && isParentVisible;
  }

  /**
   * Enables or disables this component, as specified by b. An enabled component reacts to user input and
   * generates events. By default components are enabled.
   * 
   * @param value if true, this component is enabled; otherwise this component is disabled
   */
  public final void setEnabled(boolean value)
  {
    if (isEnabled != value)
    {
      isEnabled = value;

      updateEnabled();
    }
  }

  /**
   * Move the parent scroll panes according to the component position.
   */
  public final void scrollToVisible()
  {
    ULCComponent ulcComponent = getMainComponent();
    do
    {
      ulcComponent.scrollToVisible();
      ulcComponent = ulcComponent.getParent();
    } while (ulcComponent != null);
  }

  /**
   * Sets whether this component is focusable.
   * 
   * @param true if this component should be focusable; false otherwise
   */
  protected abstract void setFocusable(boolean value);

  protected final void setParentEnabled(boolean value)
  {
    isParentEnabled = value;

    updateEnabled();
  }

  protected final void setParentVisible(boolean value)
  {
    isParentVisible = value;

    updateVisible();
  }

  /**
   * Shows or hides this component as specified by value.
   * 
   * @param value if true, show this component; otherwise, hide this component
   */
  public final void setVisible(boolean value)
  {
    if (isVisible != value)
    {
      isVisible = value;

      updateVisible();
    }
  }

  protected final void updateEnabled()
  {
    for (ULCComponent component : ulcComponents)
    {
      if (!(component instanceof ULCScrollPane))
      {
        component.setEnabled(isEnabled && isParentEnabled);
      }
    }

    updateEnabledChildren();
  }

  protected abstract void updateEnabledChildren();

  protected final void updateVisible()
  {
    for (ULCComponent component : ulcComponents)
    {
      component.setVisible(isVisible && isParentVisible);
    }

    updateVisibleChildren();
  }

  protected abstract void updateVisibleChildren();

  /**
   * Get the dynamic dialog RDC in which this component is included.
   * 
   * @return dynamic dialog panel
   */
  public final DynamicDialogPanel getPanel()
  {
    return panel;
  }

  protected abstract void setWeightX(IStylableWidget widget);

  protected final void setDefaultWeightX(IStylableWidget widget)
  {
    addStyleProperties(widget, "weightX", getParameters().getWeightX().toString());
  }

  protected final void applyStyleProperties()
  {
    Map<String, String> widgetStyleProperties;
    String value;
    StringBuffer properties;

    if (styleProperties != null)
    {
      for (IStylableWidget widget : styleProperties.keySet())
      {
        properties = new StringBuffer("{");
        widgetStyleProperties = styleProperties.get(widget);
        for (String property : widgetStyleProperties.keySet())
        {
          value = widgetStyleProperties.get(property);

          properties.append("/").append(property).append(" \"").append(value).append("\" ");
        }
        properties.append("}");

        widget.setStyleProperties(properties.toString());
      }
    }
  }

  protected final void addStyleProperties(IStylableWidget widget, String property, String value)
  {
    if (styleProperties == null)
    {
      styleProperties = new HashMap<IStylableWidget, Map<String, String>>();
    }
    if (!styleProperties.containsKey(widget))
    {
      styleProperties.put(widget, new HashMap<String, String>());
    }
    styleProperties.get(widget).put(property, value);
  }

  /**
   * Gets an internationalized date formatter that uses 2 digits for day, 2 digits for month and 4 digits for
   * year.
   * 
   * @return the date formater
   */
  public static final SimpleDateFormat getDateFormat()
  {
    SimpleDateFormat result;
    DateFormat format;

    // TODO Is it a better way to get date format dd.MM.yyyy with internationalisation support ?
    format = DateFormat.getDateInstance(DateFormat.SHORT, Ivy.session().getFormattingLocale());

    if (format instanceof SimpleDateFormat)
    {
      result = (SimpleDateFormat) format;

      result.applyPattern(result.toPattern().replaceAll("y+", "yyyy"));
    }
    else
    {
      result = new SimpleDateFormat("dd.MM.yyyy");
    }
    result.setLenient(false);
    return result;
  }

  /**
   * Gets an internationalized date formatter that uses 2 digits for day, 2 digits for month and 4 digits for
   * year and 2 digits for hour, minute and second.
   * 
   * @return the date formater
   */
  public static final SimpleDateFormat getDateTimeFormat()
  {
    SimpleDateFormat result;
    DateFormat format;

    // TODO Is it a better way to get date format dd.MM.yyyy with internationalisation support ?
    format = DateFormat.getDateTimeInstance(DateFormat.SHORT, DateFormat.SHORT, Ivy.session()
            .getFormattingLocale());

    if (format instanceof SimpleDateFormat)
    {
      result = (SimpleDateFormat) format;

      result.applyPattern(result.toPattern().replaceAll("y+", "yyyy"));
    }
    else
    {
      result = new SimpleDateFormat("dd.MM.yyyy HH:mm:ss");
    }
    result.setLenient(false);
    return result;
  }

  /**
   * Gets the fully qualified name that represents this component into DynamicDialog
   * 
   * @return fully qualified name
   */
  public String getFullName()
  {
    return fullName;
  }

  /**
   * Sets the label associated with this component. Labels are displayed next to the field or in border or
   * title of containers
   * 
   * @param value label
   */
  public abstract void setLabel(String value);

  /**
   * Gets the label associated with this component.
   * @see #setLabel(String)
   * 
   * @return label
   */
  public abstract String getLabel();

  protected final boolean isCurrentIsEnabled()
  {
    return currentIsEnabled;
  }

  protected final boolean isCurrentIsVisible()
  {
    return currentIsVisible;
  }

  protected final List<IRichDialogPanel> getDialogPanels()
  {
    return dialogPanels;
  }

  protected final boolean isParentEnabled()
  {
    return isParentEnabled;
  }

  protected final boolean isParentVisible()
  {
    return isParentVisible;
  }

  protected final List<ULCComponent> getUlcComponents()
  {
    return ulcComponents;
  }

  protected final ComplexComponent getParentContainer()
  {
    return parentContainer;
  }

  protected final ComponentParameters getComponentParameters()
  {
    return parameters;
  }

  protected abstract void initializeComponent(Position pos);

  @SuppressWarnings("unchecked")
protected final NoSuchMethodException getNoSuchMethodException(String methodName, Class clazz)
  {
    return new NoSuchMethodException("Not implemented method " + methodName + " on class " + clazz.getName());
  }

  protected final boolean isMethodCallAllowed()
  {
    return methodCallAllowed;
  }

  protected final void setCallInitMethod(boolean methodCallAllowed)
  {
    this.methodCallAllowed = methodCallAllowed;
  }

  protected final void setFullName(String fullName)
  {
    this.fullName = fullName;
  }

  public void setInsetsSettingsTarget(IStylableWidget insetsSettingsTarget)
  {
    this.insetsSettingsTarget = insetsSettingsTarget;
  }
  
  protected Position getPos()
  {
    return pos;
  }
}