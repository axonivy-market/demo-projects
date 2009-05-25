package ch.ivyteam.ivy.workflow.ui.common.PermissionDeniedDisplayMessage;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;

/**
 * RichDialog panel implementation for PermissionDeniedDisplayMessagePanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class PermissionDeniedDisplayMessagePanel extends RichDialogBorderPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RLabel aLabel = null;
/**
   * Create a new instance of PermissionDeniedDisplayMessagePanel
   */
  public PermissionDeniedDisplayMessagePanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes PermissionDeniedDisplayMessagePanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(169,26));
        this.setVisible(false);
        this.add(getALabel(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
  }

/**
 * This method initializes aLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getALabel() {
	if (aLabel == null) {
		aLabel = new RLabel();
		aLabel.setText("<html>Invisible RDC for <br>Permission denied display message");
		aLabel.setVisible(false);
		aLabel.setName("aLabel");
	}
	return aLabel;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"