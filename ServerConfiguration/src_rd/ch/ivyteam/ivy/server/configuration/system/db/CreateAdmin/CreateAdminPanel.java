package ch.ivyteam.ivy.server.configuration.system.db.CreateAdmin;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RPasswordField;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridLayoutPane;

import com.ulcjava.base.application.util.Color;

/**
 * RichDialog panel implementation for CreateAdminPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class CreateAdminPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RLabel nameLabel = null;
private RTextField nameTextField = null;
private RTextField fullNameTextField = null;
private RTextField eMailAddressTextField = null;
private RPasswordField passwordPasswordField = null;
private RPasswordField confirmPasswordField = null;
private RGridLayoutPane buttonPane = null;
private RButton okButton = null;
private RButton cancelButton = null;
private RLabel fullNameLabel = null;
private RLabel eMailAddressLabel = null;
private RLabel passwordLabel = null;
private RLabel confirmPasswordLabel = null;
  
  /**
   * Create a new instance of CreateAdminPanel
   */
  public CreateAdminPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes CreateAdminPanel
   * @return void
   */
  public void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(261,161));
        this.add(getNameLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getNameTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getFullNameTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getEMailAddressTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getPasswordPasswordField(), new com.ulcjava.base.application.GridBagConstraints(2, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getConfirmPasswordField(), new com.ulcjava.base.application.GridBagConstraints(2, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getButtonPane(), new com.ulcjava.base.application.GridBagConstraints(1, 6, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getFullNameLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getEMailAddressLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getPasswordLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getConfirmPasswordLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes nameLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getNameLabel() {
	if (nameLabel == null) {
		nameLabel = new RLabel();
		nameLabel.setName("nameLabel");
		nameLabel.setText("Name");
	}
	return nameLabel;
}

/**
 * This method initializes nameTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getNameTextField() {
	if (nameTextField == null) {
		nameTextField = new RTextField();
		nameTextField.setText("RTextField");
		nameTextField.setColumns(20);
		nameTextField.setMandatory(true);
		nameTextField.setValidation("StringOneWord");
		nameTextField.setName("nameTextField");
	}
	return nameTextField;
}

/**
 * This method initializes fullNameTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getFullNameTextField() {
	if (fullNameTextField == null) {
		fullNameTextField = new RTextField();
		fullNameTextField.setText("RTextField");
		fullNameTextField.setName("fullNameTextField");
	}
	return fullNameTextField;
}

/**
 * This method initializes eMailAddressTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getEMailAddressTextField() {
	if (eMailAddressTextField == null) {
		eMailAddressTextField = new RTextField();
		eMailAddressTextField.setText("RTextField");
		eMailAddressTextField.setMandatory(false);
		eMailAddressTextField.setValidation("Email");
		eMailAddressTextField.setToolTipText("<%=ivy.cms.co(\"/labels/adminMailToolTip\")%>");
		eMailAddressTextField.setName("eMailAddressTextField");
	}
	return eMailAddressTextField;
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
		passwordPasswordField.setName("passwordPasswordField");
	}
	return passwordPasswordField;
}

/**
 * This method initializes confirmPasswordField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RPasswordField	
 */
private RPasswordField getConfirmPasswordField() {
	if (confirmPasswordField == null) {
		confirmPasswordField = new RPasswordField();
		confirmPasswordField.setText("RPasswordField");
		confirmPasswordField.setName("confirmPasswordField");
	}
	return confirmPasswordField;
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
		buttonPane.setEnabled(false);
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
		okButton.setDefaultCapable(true);
		okButton.setName("okButton");
		okButton.setText("Ok");
		okButton.setFocusPainted(true);
		okButton.setBackground(new Color(244, 247, 255));
		okButton.setDefaultCapable(true);
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
 * This method initializes fullNameLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getFullNameLabel() {
	if (fullNameLabel == null) {
		fullNameLabel = new RLabel();
		fullNameLabel.setText("Full Name");
		fullNameLabel.setName("fullNameLabel");
	}
	return fullNameLabel;
}

/**
 * This method initializes eMailAddressLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getEMailAddressLabel() {
	if (eMailAddressLabel == null) {
		eMailAddressLabel = new RLabel();
		eMailAddressLabel.setText("Mail Address");
		eMailAddressLabel.setName("eMailAddressLabel");
	}
	return eMailAddressLabel;
}

/**
 * This method initializes passwordLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getPasswordLabel() {
	if (passwordLabel == null) {
		passwordLabel = new RLabel();
		passwordLabel.setText("Password");
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
		confirmPasswordLabel.setText("Confirm Password");
		confirmPasswordLabel.setName("confirmPasswordLabel");
	}
	return confirmPasswordLabel;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"