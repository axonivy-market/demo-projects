package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.lang.reflect.InvocationTargetException;
import java.util.Vector;

import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.DynamicDialogPanel;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.internal.Invocation;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPaneContainer;

import com.ulcjava.base.application.ULCComponent;
import com.ulcjava.base.application.ULCContainer;

/**
 * This is the base class for all components (both containers and field components).
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 12.09.2008
 */
public abstract class Component
{

  protected Container container = null;

  protected boolean currentIsEnabled;

  protected boolean currentIsVisible;

  private Vector<IRichDialogPanel> dialogPanels = null;

  protected boolean isEnabled = true;

  protected boolean isParentEnabled = true;

  protected boolean isParentVisible = true;

  protected boolean isVisible = true;

  protected DynamicDialogPanel panel;

  protected ComponentParameters parameters = null;

  protected Vector<ULCComponent> ulcComponents = null;

  protected ULCContainer ulcContainer = null;

  public Component(DynamicDialogPanel _panel, Container parentContainer, ULCContainer _ulcContainer,
          ComponentParameters _parameters)
  {
    panel = _panel;
    parameters = _parameters;
    ulcContainer = _ulcContainer;
    ulcComponents = new Vector<ULCComponent>();
    container = parentContainer;
    if (container != null)
    {
      container.addChild(this);
    }
  }

  protected abstract void applyStyles();

  /**
   * This method is invoked when a focus gained event occurs. It invokes the 'help' UI logic method and the
   * one that is given.
   * 
   * @param method UI logic method name that should be invoked
   */
  public void focusGained(String method)
  {
    setFocus();

    invoke("help");

    invoke(method);
  }

  /**
   * This method is invoked when a focus lost event occurs. It invokes the UI logic method that is given.
   * 
   * @param method UI logic method name that should be invoked
   */
  public void focusLost(String method)
  {
    invoke(method);
  }

  /**
   * TODO Complete doc
   * @return the last main ULC component of the component
   */
  abstract public ULCComponent getLastMainComponent();

  /**
   * Get the main ULC component of the DynamicDialog compoent. It return, for example, the ComboBox component
   * in a field that contains a combo box, an icon and a label.
   * 
   * @return the main ULC component
   */
  abstract public ULCComponent getMainComponent();

  /**
   * Returns the components's parameters.
   * 
   * @return component's parameters
   */
  abstract public ComponentParameters getParameters();

  /**
   * Invoke the UI logic init method for this component.
   */
  public void init()
  {
    init(getParameters().getInitMethod());
  }

  protected void init(String method)
  {
    invoke(method);
  }

  /**
   * Initialize the component.
   * 
   * @param pos position in the parent grid bag layout
   */
  public void initialize(Position pos)
  {
    applyStyles();

    setVisible(parameters.isVisible());

    setEnabled(parameters.isEnabled());

    setFocusable(parameters.isFocusable());
  }

  protected void invoke(String method)
  {
    Object[] params;

    if (method != null && !method.equals(""))
    {
      if (dialogPanels == null)
      {
        dialogPanels = Invocation.getInvocationTargets(ulcContainer);
      }

      try
      {
        params = new Object[] {panel, getParameters().getFullName()};
        Invocation.invoke(method, params, dialogPanels);
      }
      catch (InvocationTargetException e)
      {
        try
        {
          params = new Object[] {getParameters().getFullName()};
          Invocation.invoke(method, params, dialogPanels);
        }
        catch (InvocationTargetException e2)
        {
          try
          {
            Invocation.invoke(method, null, dialogPanels);
          }
          catch (InvocationTargetException e3)
          {
            Ivy.log().debug("Unable to invoke method : " + method);
            // throw new DynamicDialogException(e3);
          }
        }
      }
    }
  }

  /**
   * Returns whether this component is enabled or disabled. By default components are enabled. An enabled
   * component reacts to user input and generates events. The method setEnabled changes the enabled state
   * accordingly.
   * 
   * @return true if the component is enabled; false otherwise.
   */
  final public boolean isEnabled()
  {
    return isEnabled && isParentEnabled;
  }

  /**
   * Returns whether this component can be focused.
   * 
   * @return true if this component is focusable, false otherwise.
   */
  abstract public boolean isFocusable();

  /**
   * Returns whether this component is visible.
   * 
   * @return true if the component is visible; false otherwise.
   */
  final public boolean isVisible()
  {
    return isVisible && isParentVisible;
  }

  /**
   * Enables or disables this component, as specified by b. An enabled component reacts to user input and
   * generates events. By default components are enabled.
   * 
   * @param value if true, this component is enabled; otherwise this component is disabled.
   */
  final public void setEnabled(boolean value)
  {
    if (isEnabled != value)
    {
      isEnabled = value;

      updateEnabled();
    }
  }

  /**
   * Give the focus to the component and move the parent scrool pane according to the component position.
   */
  public void setFocus()
  {
    // TODO Improve it
    ULCComponent component1 = null;
    ULCComponent component2 = null;
    ULCComponent component3 = null;
    ULCComponent component4 = null;
    ULCComponent component5 = null;
    RTaskPane taskPane = null;

    component1 = getMainComponent();
    while (component1 != null && !(component1 instanceof RScrollPane))
    {
      component5 = component4;
      component4 = component3;
      component3 = component2;
      component2 = component1;
      component1 = component1.getParent();
    }
    // We should have a container into a gridbag into a scrollpane. So,
    // component1 is RScrollPane, component2 must be a RGridBag and
    // component3 is the container or the TaskPaneContainer that contain the
    // RTaskPane that we want to focus on
    if (component4 != null && component1 != null)
    {
      if (component5 != null && component4 instanceof RTaskPaneContainer)
      {
        if (component5 instanceof RTaskPane)
        {
          taskPane = (RTaskPane) component5;
          taskPane.setCollapsed(false);          
        }
        component5.scrollToVisible();
      }
      else
      {
        component4.scrollToVisible();
      }
    }
  }

  /**
   * Sets whether this component is focusable.
   * 
   * @param true if this component should be focusable, false otherwise.
   */
  abstract public void setFocusable(boolean value);

  protected void setParentEnabled(boolean value)
  {
    isParentEnabled = value;

    updateEnabled();
  }

  protected void setParentVisible(boolean value)
  {
    isParentVisible = value;

    updateVisible();
  }

  /**
   * Shows or hides this component as specified by value.
   * 
   * @param value if true, show this component; otherwise, hide this component.
   */
  final public void setVisible(boolean value)
  {
    if (isVisible != value)
    {
      isVisible = value;

      updateVisible();
    }
  }

  final protected void updateEnabled()
  {
    for (ULCComponent component : ulcComponents)
    {
      component.setEnabled(isEnabled && isParentEnabled);
    }

    updateEnabledChildren();
  }

  protected void updateEnabledChildren()
  {
    // Nothing to do
  }

  final protected void updateVisible()
  {
    for (ULCComponent component : ulcComponents)
    {
      component.setVisible(isVisible && isParentVisible);
    }

    updateVisibleChildren();
  }

  protected void updateVisibleChildren()
  {
    // Nothing to do
  }

}