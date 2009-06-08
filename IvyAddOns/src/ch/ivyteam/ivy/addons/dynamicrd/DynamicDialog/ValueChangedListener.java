/**
 * 
 */
package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import com.ulcjava.base.application.event.IValueChangedListener;
import com.ulcjava.base.application.event.ValueChangedEvent;
import com.ulcjava.base.shared.UlcEventCategories;
import com.ulcjava.base.shared.UlcEventConstants;

/**
 * This is the listener class for receiving value change events.
 * This class is registered with all components that need to process value change events.
 * When the value change event occurs, that object's valueChanged() method is invoked.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 12.09.2008
 */
class ValueChangedListener implements IValueChangedListener
{
  private static final long serialVersionUID = -2809071659106895506L;

  private FieldComponent fieldComponent = null;

  private String method;

  /**
   * @param _fieldComponent The component to wich the listener is attached
   * @param _method The UI logic method that should be invoked when the event occurs
   */
  public ValueChangedListener(FieldComponent _fieldComponent, String _method)
  {
    fieldComponent = _fieldComponent;
    method = _method;
    fieldComponent.getMainComponent().setEventDeliveryMode(UlcEventCategories.VALUE_CHANGED_EVENT_CATEGORY,
            UlcEventConstants.ASYNCHRONOUS_MODE);
    fieldComponent.getMainComponent().setEventDeliveryMode(UlcEventCategories.KEY_EVENT_CATEGORY,
            UlcEventConstants.ASYNCHRONOUS_MODE);
  }

  public void valueChanged(ValueChangedEvent e)
  {
    fieldComponent.valueChanged(method);
  }
}