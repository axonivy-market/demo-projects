package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.internal;

import java.lang.reflect.InvocationTargetException;
import java.util.Vector;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.DynamicDialogPanel;

import com.ulcjava.base.application.ULCComponent;
import com.ulcjava.base.application.ULCContainer;

/**
 * Gives possibilities to invoke UI logic method from java code.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 15.09.2008
 */
public class Invocation
{
  protected static Object[] callMethod(IRichDialogPanel dialogPanel, String method)
          throws InvocationTargetException, NoSuchMethodException
  {
    return callMethod(dialogPanel, method, new Object[0]);
  }

  protected static Object[] callMethod(IRichDialogPanel dialogPanel, String method, Object[] params)
          throws InvocationTargetException, NoSuchMethodException
  {
    Object[] result;

    result = null;

    if (dialogPanel != null)
    {
      result = dialogPanel.getPanelAPI().callMethod(method, params);
    }

    return result;
  }

  /**
   * Searches which panel should be invoked. The parent panel of DynamicDialog and its children are added to
   * the list.
   * 
   * @param container container from where the target is serached
   * @return panel list of targets
   */
  static public Vector<IRichDialogPanel> getInvocationTargets(ULCContainer container)
  {
    IRichDialogPanel parent;
    Vector<IRichDialogPanel> dialogPanels;
    ULCContainer temp;

    dialogPanels = new Vector<IRichDialogPanel>();
    parent = null;
    temp = container;

    do
    {
      temp = temp.getParent();

      if (temp instanceof IRichDialogPanel && !(temp instanceof DynamicDialogPanel))
      {
        parent = (IRichDialogPanel) temp;
        break;
      }
    } while (temp != null);

    if (parent != null)
    {
      dialogPanels.add(parent);

      for (ULCComponent component : parent.getPanelAPI().getPanelAsUlcContainer().getComponents())
      {
        if (component instanceof IRichDialogPanel)
        {
          dialogPanels.add((IRichDialogPanel) component);
        }
      }
    }

    return dialogPanels;
  }

  /**
   * Invokes the specified UI method with its params. Only invokes the first method found in the panels given.
   * 
   * @param method UI method name
   * @param params UI method params
   * @param dialogPanels panel list
   * @throws InvocationTargetException
   */
  static public void invoke(String method, Object[] params, Vector<IRichDialogPanel> dialogPanels)
          throws InvocationTargetException
  {
    boolean methodFound;
    NoSuchMethodException noSuchMethodException;
    // if (parent == null)
    // parent = getParent(container);

    methodFound = false;
    noSuchMethodException = null;

    if (method != null && !method.equals("") && dialogPanels != null)
    {
      for (IRichDialogPanel dialogPanel : dialogPanels)
      {
        try
        {
          callMethod(dialogPanel, method, params);
          methodFound = true;
        }
        catch (NoSuchMethodException e)
        {
          noSuchMethodException = e;
        }
      }
    }
    if (methodFound == false)
    {
      Ivy.log().debug(
              noSuchMethodException != null ? noSuchMethodException.getLocalizedMessage()
                      : "Unable to invoke method : " + method);
    }
  }
}
