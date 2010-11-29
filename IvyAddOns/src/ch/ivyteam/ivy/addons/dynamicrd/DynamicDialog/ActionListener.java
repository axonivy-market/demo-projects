package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import com.ulcjava.base.application.event.ActionEvent;
import com.ulcjava.base.application.event.IActionListener;

/**
 * This is the listener class for receiving action events. This class is registered with all components that
 * need to process action events. When the action event occurs, that object's actionPerformed() method is
 * invoked.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 12.09.2008
 */
class ActionListener implements IActionListener
{
  private static final long serialVersionUID = -5508941492982811117L;

  private Component component = null;

  /**
   * Creates a new action listener.
   * 
   * @param component The component to which the listener is attached
   * @param method The UI logic method that should be invoked when the event occurs
   */
  public ActionListener(Component component)
  {
    this.component = component;
  }

  /**
   * {@inheritDoc}
   */
  public void actionPerformed(ActionEvent arg0)
  {
    component.action();
  }
}