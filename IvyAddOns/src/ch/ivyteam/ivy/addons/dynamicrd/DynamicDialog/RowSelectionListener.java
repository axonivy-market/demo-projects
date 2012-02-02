package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import com.ulcjava.base.application.event.IListSelectionListener;
import com.ulcjava.base.application.event.ListSelectionEvent;

/**
 * This is the listener class for receiving row selection events. This class is registered with tables that
 * needs selection events. When the event occurs, that object's selectionChanged() method is invoked.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 04.12.2009
 */
class RowSelectionListener implements IListSelectionListener
{
  private static final long serialVersionUID = 702404716081141551L;

  private Table component;

  /**
   * Creates a new action listener.
   * 
   * @param component The component to which the listener is attached
   */
  public RowSelectionListener(Table component)
  {
    this.component = component;
  }

  /**
   * {@inheritDoc}
   */
  public void valueChanged(ListSelectionEvent arg0)
  {
    component.rowSelection();
  }
}