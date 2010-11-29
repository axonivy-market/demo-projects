package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import com.ulcjava.base.application.event.IValueChangedListener;
import com.ulcjava.base.application.event.ValueChangedEvent;
import com.ulcjava.base.shared.UlcEventCategories;
import com.ulcjava.base.shared.UlcEventConstants;

/**
 * This is the listener class for receiving value change events. This class is registered with all components
 * that need to process value change events. When the value change event occurs, that object's valueChanged()
 * method is invoked.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 12.09.2008
 */
public class ValueChangedListener implements IValueChangedListener
{
  private static final long serialVersionUID = -2809071659106895506L;

  private Component component;

  /**
   * @param component The component to wich the listener is attached
   */
  public ValueChangedListener(Component component, boolean synchronous)
  {
    this.component = component;
    component.getMainComponent().setEventDeliveryMode(UlcEventCategories.VALUE_CHANGED_EVENT_CATEGORY,
            synchronous ? UlcEventConstants.SYNCHRONOUS_MODE : UlcEventConstants.ASYNCHRONOUS_MODE);
    component.getMainComponent().setEventDeliveryMode(UlcEventCategories.KEY_EVENT_CATEGORY,
            UlcEventConstants.ASYNCHRONOUS_MODE);
  }

  /**
   * {@inheritDoc}
   */
  public final void valueChanged(ValueChangedEvent e)
  {
    component.valueChanged();
  }
}