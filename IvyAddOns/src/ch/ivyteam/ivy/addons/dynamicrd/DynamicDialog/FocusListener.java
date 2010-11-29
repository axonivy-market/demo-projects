/**
 * 
 */
package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import com.ulcjava.base.application.event.FocusEvent;
import com.ulcjava.base.application.event.IFocusListener;
import com.ulcjava.base.shared.UlcEventCategories;
import com.ulcjava.base.shared.UlcEventConstants;

/**
 * The listener interface for receiving keyboard focus events on a component. This class is registered with
 * all components that need to process focus events. When a focus action event occurs, that object's
 * focusGained() or focusLost() method is invoked.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 12.09.2008
 */
class FocusListener implements IFocusListener
{
  private static final long serialVersionUID = 4697534874041967441L;

  private Component component = null;

  /**
   * Create a new focus listener.
   * 
   * @param component The component to wich the listener is attached
   */
  public FocusListener(Component component)
  {
    component.getMainComponent().setEventDeliveryMode(UlcEventCategories.FOCUS_EVENT_CATEGORY,
            UlcEventConstants.ASYNCHRONOUS_MODE);

    this.component = component;
  }

  /**
   * {@inheritDoc}
   */
  public void focusGained(FocusEvent arg0)
  {
    component.focusGained();
  }

  
  /**
   * {@inheritDoc}
   */
  public void focusLost(FocusEvent arg0)
  {
    component.focusLost();
  }
}