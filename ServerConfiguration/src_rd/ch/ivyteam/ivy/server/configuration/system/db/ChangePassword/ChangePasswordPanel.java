package ch.ivyteam.ivy.server.configuration.system.db.ChangePassword;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RPasswordField;

/**
 * RichDialog panel implementation for ChangePasswordPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class ChangePasswordPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RGridLayoutPane buttonPane = null;
private RButton okButton = null;
private RButton cancelButton = null;
private RLabel passwordLabel = null;
private RLabel confirmPasswordLabel = null;
private RPasswordField passwordPasswordField = null;
private RPasswordField confirmPasswordPasswordField = null;
  
  /**
   * Create a new instance of ChangePasswordPanel
   */
  public ChangePasswordPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes ChangePasswordPanel
   * @return void
   */
  public void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(304,86));
        this.add(getButtonPane(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getPasswordLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getConfirmPasswordLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getPasswordPasswordField(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getConfirmPasswordPasswordField(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
		buttonPane.setHgap(5);
		buttonPane.setStyleProperties("{/anchor \"EAST\"/insetsBottom \"5\"/insetsTop \"5\"/insetsRight \"5\"/insetsLeft \"5\"}");
		buttonPane.setName("buttonPane");
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
		okButton.setDefaultCapable(false);
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
		cancelButton.setDefaultCapable(true);
		cancelButton.setName("cancelButton");
	}
	return cancelButton;
}

/**
 * This method initializes passwordLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getPasswordLabel() {
	if (passwordLabel == null) {
		passwordLabel = new RLabel();
		passwordLabel.setText("New Password");
		passwordLabel.setName("passwordLabel");
	}
	return passwordLabel;
}

/**
 * This method initializes confirmPasswordLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getConfirmPasswordLabel() {
	if (confirmPasswordLabel == null) {
		confirmPasswordLabel = new RLabel();
		confirmPasswordLabel.setText("Confirm New Password");
		confirmPasswordLabel.setName("confirmPasswordLabel");
	}
	return confirmPasswordLabel;
}

/**
 * This method initializes passwordPasswordField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RPasswordField	
 */
private RPasswordField getPasswordPasswordField() {
	if (passwordPasswordField == null) {
		passwordPasswordField = new RPasswordField();
		passwordPasswordField.setText("RPasswordField");
		passwordPasswordField.setColumns(20);
		passwordPasswordField.setName("passwordPasswordField");
	}
	return passwordPasswordField;
}

/**
 * This method initializes confirmPasswordPasswordField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RPasswordField	
 */
private RPasswordField getConfirmPasswordPasswordField() {
	if (confirmPasswordPasswordField == null) {
		confirmPasswordPasswordField = new RPasswordField();
		confirmPasswordPasswordField.setText("RPasswordField");
		confirmPasswordPasswordField.setName("confirmPasswordPasswordField");
	}
	return confirmPasswordPasswordField;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"