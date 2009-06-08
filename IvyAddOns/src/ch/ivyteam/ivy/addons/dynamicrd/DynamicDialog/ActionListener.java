package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import com.ulcjava.base.application.event.ActionEvent;
import com.ulcjava.base.application.event.IActionListener;

/**
 * This is the listener class for receiving action events.
 * This class is registered with all components that need to process action events.
 * When the action event occurs, that object's actionPerformed() method is invoked. 
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 12.09.2008
 */
class ActionListener implements IActionListener
{
  private static final long serialVersionUID = -5508941492982811117L;

  private FieldComponent fieldComponent = null;

  private String method;

  /**
   * Creates a new action listener.
   * 
   * @param _fieldComponent The component to which the listener is attached
   * @param _method The UI logic method that should be invoked when the event occurs
   */
  public ActionListener(FieldComponent _fieldComponent, String _method)
  {
    fieldComponent = _fieldComponent;
    method = _method;
  }

  public void actionPerformed(ActionEvent arg0)
  {
    fieldComponent.valueChanged(method);
  }
}