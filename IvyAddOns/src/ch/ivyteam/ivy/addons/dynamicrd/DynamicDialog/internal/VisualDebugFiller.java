package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.internal;

import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;

import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.util.Color;

/**
 * This widget provides a RFiller that display a border when the 'Visual Rich Dialog Debugging' is
 * active.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 20.07.2010
 */
public class VisualDebugFiller extends RFiller
{
  private static final long serialVersionUID = 1L;

  /**
   * Constructs a new VisualDebugFiller object.
   */
  @SuppressWarnings("restriction")
  public VisualDebugFiller()
  {
    super();

    if (ch.ivyteam.ivy.richdialog.exec.restricted.RichDialogExecEnvironment.getInstance().isVisualDebug())
    {
      this.setBorder(BorderFactory.createLineBorder(Color.green));
    }
  }
}
