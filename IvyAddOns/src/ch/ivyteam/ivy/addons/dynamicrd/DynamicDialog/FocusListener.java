/**
 * 
 */
package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import com.ulcjava.base.application.event.FocusEvent;
import com.ulcjava.base.application.event.IFocusListener;
import com.ulcjava.base.shared.UlcEventCategories;
import com.ulcjava.base.shared.UlcEventConstants;

/**
 * The listener interface for receiving keyboard focus events on a component.
 * This class is registered with all components that need to process focus events.
 * When a focus action event occurs, that object's focusGained() or focusLost()
 * method is invoked.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 12.09.2008
 */
class FocusListener implements IFocusListener
{
  private static final long serialVersionUID = 4697534874041967441L;

  private FieldComponent component = null;

  private String gainedMethod = "";

  private String lostMethod = "";

  /**
   * Create a new focus listener.
   * 
   * @param _component The component to wich the listener is attached
   * @param gained The UI logic method that should be invoked when the focus gained event occurs
   * @param lost The UI logic method that should be invoked when the focus lost event occurs
   */
  public FocusListener(FieldComponent _component, String gained, String lost)
  {
    gainedMethod = gained;
    lostMethod = lost;

    _component.getMainComponent().setEventDeliveryMode(UlcEventCategories.FOCUS_EVENT_CATEGORY,
            UlcEventConstants.ASYNCHRONOUS_MODE);

    component = _component;
  }

  /* (non-Javadoc)
   * @see com.ulcjava.base.application.event.IFocusListener#focusGained(com.ulcjava.base.application.event.FocusEvent)
   */
  public void focusGained(FocusEvent arg0)
  {
    component.focusGained(gainedMethod);
  }

  public void focusLost(FocusEvent arg0)
  {
    component.focusLost(lostMethod);
  }
}