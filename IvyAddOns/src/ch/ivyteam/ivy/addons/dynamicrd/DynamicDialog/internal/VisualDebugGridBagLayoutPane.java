package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.internal;

import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;

import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.border.ULCAbstractBorder;
import com.ulcjava.base.application.border.ULCTitledBorder;
import com.ulcjava.base.application.util.Color;

/**
 * This widget provides a RGridBagLayoutPane that display a border when the 'Visual Rich Dialog Debugging' is
 * active.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 15.04.2010
 */
public class VisualDebugGridBagLayoutPane extends RGridBagLayoutPane
{
  private static final long serialVersionUID = 1L;

  private boolean visualDebug;

  /**
   * Constructs a new VisualDebugGridBagLayoutPane object.
   */
  @SuppressWarnings("restriction")
  public VisualDebugGridBagLayoutPane()
  {
    super();

    visualDebug = false;
    if (ch.ivyteam.ivy.richdialog.exec.restricted.RichDialogExecEnvironment.getInstance().isVisualDebug())
    {
      visualDebug = true;
      this.setBorder(BorderFactory.createTitledBorder(BorderFactory.createLineBorder(Color.red), "GridBag",
              ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, null, Color.red));
    }
  }

  @Override
  public void setName(String arg0)
  {
    super.setName(arg0);

    if (visualDebug)
    {
      updateTitleBorder();
    }
  }

  private void updateTitleBorder()
  {
    ULCAbstractBorder border;
    String style;

    border = this.getBorder();
    if (border instanceof ULCTitledBorder)
    {
      ULCTitledBorder titledBorder = (ULCTitledBorder) border;
      style = getStyle();

      titledBorder.setTitle(getName() + " - " + "GridBag"
              + (style == null || style.equals("") ? "" : " - " + style));
    }
  }

  @Override
  public void setStyle(String arg0)
  {
    super.setStyle(arg0);

    if (visualDebug)
    {
      updateTitleBorder();
    }
  }
}
