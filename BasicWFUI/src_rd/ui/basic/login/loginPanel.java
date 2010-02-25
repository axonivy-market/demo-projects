package ui.basic.login;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.components.RPasswordField;
import com.ulcjava.base.application.util.Color;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink;
import ch.ivyteam.ivy.richdialog.widgets.components.RDatePicker;
import com.ulcjava.base.application.util.Font;

/**
 * <p>loginPanel is a rich dialog panel implementation.
 *
 * <p>Please note that a rich dialog panel is not an instance of a Swing 
 * container, but of an ULCContainer. As such it can not be run 
 * or instantiated outside the ULC framework.
 */
public class loginPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RLabel nameLabel = null;
private RLabel passwordLabel = null;
private RTextField nameTextField = null;
private RPasswordField PasswordField = null;
private RLabel captionLabel = null;
private RButton loginButton = null;
private RLabel errorLabel = null;
private RHyperlink logoutHyperlink = null;
private RLabel loginInfoLabel = null;
private RButton closeButton = null;
/**
   * Create a new instance of loginPanel
   */
  public loginPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes loginPanel
   * @return void
   */
  private void initialize()
  {
        RFiller Filler = new RFiller();
        Filler.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(435,276));
        this.add(getNameLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getPasswordLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getNameTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getPasswordField(), new com.ulcjava.base.application.GridBagConstraints(1, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getCaptionLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(Filler, new com.ulcjava.base.application.GridBagConstraints(2, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getLoginButton(), new com.ulcjava.base.application.GridBagConstraints(1, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getErrorLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getLogoutHyperlink(), new com.ulcjava.base.application.GridBagConstraints(2, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getLoginInfoLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getCloseButton(), new com.ulcjava.base.application.GridBagConstraints(2, 6, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
		nameLabel.setStyle("basicwfui_label");
		nameLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/main/loginName\")%>");
	}
	return nameLabel;
}

/**
 * This method initializes passwordLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getPasswordLabel() {
	if (passwordLabel == null) {
		passwordLabel = new RLabel();
		passwordLabel.setName("passwordLabel");
		passwordLabel.setStyle("basicwfui_label");
		passwordLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/main/loginPw\")%>");
	}
	return passwordLabel;
}

/**
 * This method initializes nameTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getNameTextField() {
	if (nameTextField == null) {
		nameTextField = new RTextField();
		nameTextField.setText("nameTextField");
		nameTextField.setColumns(20);
		nameTextField.setFocusCycleRoot(false);
		nameTextField.setFont(new Font("Tahoma", 0, 11));
		nameTextField.setNextFocusableComponent(getPasswordField());
		nameTextField.setName("nameTextField");
	}
	return nameTextField;
}

/**
 * This method initializes PasswordField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RPasswordField	
 */
private RPasswordField getPasswordField() {
	if (PasswordField == null) {
		PasswordField = new RPasswordField();
		PasswordField.setText("RPasswordField");
		PasswordField.setColumns(20);
		PasswordField.setBackground(new Color(240, 243, 249));
		PasswordField.setNextFocusableComponent(getLoginButton());
		PasswordField.setName("PasswordField");
	}
	return PasswordField;
}

/**
 * This method initializes captionLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCaptionLabel() {
	if (captionLabel == null) {
		captionLabel = new RLabel();
		captionLabel.setName("captionLabel");
		captionLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/basicwfui/images/wfuser_48\")%>");
		captionLabel.setStyle("basicwfui_caption");
		captionLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/main/loginCaption\")%>");
	}
	return captionLabel;
}

/**
 * This method initializes loginButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getLoginButton() {
	if (loginButton == null) {
		loginButton = new RButton();
		loginButton.setStyle("basicwfui_actionbutton");
		loginButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/main/login\")%>");
		loginButton.setName("loginButton");
	}
	return loginButton;
}

/**
 * This method initializes errorLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getErrorLabel() {
	if (errorLabel == null) {
		errorLabel = new RLabel();
		errorLabel.setText("errorLabel");
		errorLabel.setStyle("basiwfui_errorLabel");
		errorLabel.setName("errorLabel");
	}
	return errorLabel;
}

/**
 * This method initializes logoutHyperlink	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink	
 */
private RHyperlink getLogoutHyperlink() {
	if (logoutHyperlink == null) {
		logoutHyperlink = new RHyperlink();
		logoutHyperlink.setText("> <%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/main/logout\")%>");
		logoutHyperlink.setStyleProperties("{/marginLeft \"20\"}");
		logoutHyperlink.setName("logoutHyperlink");
	}
	return logoutHyperlink;
}

/**
 * This method initializes loginInfoLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getLoginInfoLabel() {
	if (loginInfoLabel == null) {
		loginInfoLabel = new RLabel();
		loginInfoLabel.setText("wfuserInfo");
		loginInfoLabel.setStyleProperties("{/font {/name \"Dialog\"/size \"11\"/style \"BOLD\"}}");
		loginInfoLabel.setStyle("basicwfui_label");
		loginInfoLabel.setName("loginInfoLabel");
	}
	return loginInfoLabel;
}

/**
 * This method initializes closeButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getCloseButton() {
	if (closeButton == null) {
		closeButton = new RButton();
		closeButton.setStyle("basicwfui_actionbutton");
		closeButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/common/closeTab\")%>");
		closeButton.setStyleProperties("{/anchor \"SOUTHEAST\"}");
		closeButton.setName("closeButton");
	}
	return closeButton;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"