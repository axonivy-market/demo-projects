package ch.ivyteam.ivy.server.configuration.system.db.DeleteAdmin;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;

/**
 * RichDialog panel implementation for DeleteAdminPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class DeleteAdminPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RLabel messageLabel = null;
private RGridLayoutPane buttonPane = null;
private RButton okButton = null;
private RButton cancelButton = null;
  
  /**
   * Create a new instance of DeleteAdminPanel
   */
  public DeleteAdminPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes DeleteAdminPanel
   * @return void
   */
  public void initialize()
  {
        this.add(getMessageLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getButtonPane(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes messageLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getMessageLabel() {
	if (messageLabel == null) {
		messageLabel = new RLabel();
		messageLabel.setName("messageLabel");
		messageLabel.setText(" Do you really want to delete the administrator?");
		messageLabel.setIconUri("<%=ivy.cms.cr(\"/Icons/Warning/24\")%>");
		messageLabel.setStyleProperties("{/fill \"BOTH\"/insetsRight \"5\"/insetsLeft \"5\"}");
	}
	return messageLabel;
}

/**
 * This method initializes buttonPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridLayoutPane	
 */
private RGridLayoutPane getButtonPane() {
	if (buttonPane == null) {
		buttonPane = new RGridLayoutPane();
		buttonPane.setName("buttonPane");
		buttonPane.setStyleProperties("{/anchor \"EAST\"/insetsBottom \"5\"/insetsTop \"5\"/insetsRight \"5\"/insetsLeft \"5\"}");
		buttonPane.setHgap(5);
		buttonPane.add(getOkButton());
		buttonPane.add(getCancelButton());
	}
	return buttonPane;
}

/**
 * This method initializes okButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getOkButton() {
	if (okButton == null) {
		okButton = new RButton();
		okButton.setText("Ok");
		okButton.setDefaultCapable(true);
		okButton.setName("okButton");
	}
	return okButton;
}

/**
 * This method initializes cancelButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getCancelButton() {
	if (cancelButton == null) {
		cancelButton = new RButton();
		cancelButton.setText("Cancel");
		cancelButton.setName("cancelButton");
	}
	return cancelButton;
}
}