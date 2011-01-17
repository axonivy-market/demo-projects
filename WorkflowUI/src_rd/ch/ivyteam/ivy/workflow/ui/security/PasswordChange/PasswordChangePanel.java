package ch.ivyteam.ivy.workflow.ui.security.PasswordChange;

import ch.ivyteam.ivy.persistence.PersistencyException;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RPasswordField;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane;
import ch.ivyteam.ivy.security.AuthenticationException;
import ch.ivyteam.ivy.security.ISession;
import ch.ivyteam.security.Password;

import com.ulcjava.base.application.ULCFlowLayoutPane;
import com.ulcjava.base.application.enabler.ULCAndEnabler;

/**
 * RichDialog panel implementation for SettingsPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class PasswordChangePanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RLabel oldPasswordLabel = null;
private RLabel newPasswordLabel = null;
private RLabel confirmNewPasswordLabel = null;
private RPasswordField oldPasswordTextField = null;
private RPasswordField newPasswordTextField = null;
private RPasswordField confirmTextField = null;
private RBoxPane changePasswordBoxPane = null;
private RFlowLayoutPane actionsFlowLayoutPane = null;
private RButton okButton = null;
private RButton cancelButton = null;
private ULCAndEnabler ulcAndEnabler = null;  //  @jve:decl-index=0:visual-constraint="487,86"
/**
   * Create a new instance of SettingsPanel
   */
  public PasswordChangePanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes SettingsPanel
   * @return void
   */
  public void initialize()
  {
        RFiller verticalFiller1 = new RFiller();
        verticalFiller1.setStyleProperties("{/fill \"VERTICAL\"/weightY \"1\"}");
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(350,125));
        this.add(getChangePasswordBoxPane(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getActionsFlowLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(verticalFiller1, new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes oldPasswordLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getOldPasswordLabel() {
	if (oldPasswordLabel == null) {
		oldPasswordLabel = new RLabel();
		oldPasswordLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/oldPassword\")%>");
		oldPasswordLabel.setName("oldPasswordLabel");
	}
	return oldPasswordLabel;
}

/**
 * This method initializes newPasswordLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getNewPasswordLabel() {
	if (newPasswordLabel == null) {
		newPasswordLabel = new RLabel();
		newPasswordLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/newPassword\")%>");
		newPasswordLabel.setName("newPasswordLabel");
	}
	return newPasswordLabel;
}

/**
 * This method initializes confirmNewPasswordLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getConfirmNewPasswordLabel() {
	if (confirmNewPasswordLabel == null) {
		confirmNewPasswordLabel = new RLabel();
		confirmNewPasswordLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/confirmNewPassword\")%>");
		confirmNewPasswordLabel.setName("confirmNewPasswordLabel");
	}
	return confirmNewPasswordLabel;
}

/**
 * This method initializes oldPasswordTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RPasswordField getOldPasswordTextField() {
	if (oldPasswordTextField == null) {
		oldPasswordTextField = new RPasswordField();
		oldPasswordTextField.setText("");
		oldPasswordTextField.setColumns(25);
		oldPasswordTextField.setStyleProperties("{/weightX \"1\"}");
		oldPasswordTextField.setName("oldPasswordTextField");
	}
	return oldPasswordTextField;
}

/**
 * This method initializes newPasswordTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RPasswordField getNewPasswordTextField() {
	if (newPasswordTextField == null) {
		newPasswordTextField = new RPasswordField();
		newPasswordTextField.setName("newPasswordTextField");
		newPasswordTextField.setColumns(25);
		newPasswordTextField.setText("");
		newPasswordTextField.setName("newPasswordTextField");
	}
	return newPasswordTextField;
}

/**
 * This method initializes confirmTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RPasswordField getConfirmTextField() {
	if (confirmTextField == null) {
		confirmTextField = new RPasswordField();
		confirmTextField.setText("");
		confirmTextField.setColumns(25);
		confirmTextField.setName("confirmTextField");
	}
	return confirmTextField;
}

/**
 * Logs in the current session user
 * @param session session
 * @param userName user name
 * @param password password
 * @return
 * @throws PersistencyException
 */
public AuthenticationException login(ISession session, String userName, String password) throws PersistencyException
{
	try
	{
		session.authenticateSessionUser(userName, new Password(password));
		return null;
	}
	catch(AuthenticationException ex)
	{
		return ex;
	}
}

/**
 * This method initializes changePasswordBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getChangePasswordBoxPane() {
	if (changePasswordBoxPane == null) {
		changePasswordBoxPane = new RBoxPane();
		changePasswordBoxPane.setName("changePasswordBoxPane");
		changePasswordBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getOldPasswordLabel());
		changePasswordBoxPane.set(1, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getOldPasswordTextField());
		changePasswordBoxPane.set(0, 1, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getNewPasswordLabel());
		changePasswordBoxPane.set(1, 1, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getNewPasswordTextField());
		changePasswordBoxPane.set(0, 2, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getConfirmNewPasswordLabel());
		changePasswordBoxPane.set(1, 2, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getConfirmTextField());
	}
	return changePasswordBoxPane;
}

/**
 * This method initializes actionsFlowLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane	
 */
private RFlowLayoutPane getActionsFlowLayoutPane() {
	if (actionsFlowLayoutPane == null) {
		actionsFlowLayoutPane = new RFlowLayoutPane();
		actionsFlowLayoutPane.setName("actionsFlowLayoutPane");
		actionsFlowLayoutPane.setAlignment(ULCFlowLayoutPane.RIGHT);
		actionsFlowLayoutPane.setName("actionsFlowLayoutPane");
		actionsFlowLayoutPane.add(getOkButton());
		actionsFlowLayoutPane.add(getCancelButton());
	}
	return actionsFlowLayoutPane;
}

/**
 * This method initializes okButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getOkButton() {
	if (okButton == null) {
		okButton = new RButton();
		okButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/ok\")%>");
		okButton.setEnabler(getUlcAndEnabler());
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
		cancelButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/cancel\")%>");
		cancelButton.setName("cancelButton");
	}
	return cancelButton;
}

/**
 * This method initializes ulcAndEnabler	
 * 	
 * @return com.ulcjava.base.application.enabler.ULCAndEnabler	
 */
private ULCAndEnabler getUlcAndEnabler() {
	if (ulcAndEnabler == null) {
		ulcAndEnabler = new ULCAndEnabler();
		ulcAndEnabler.add(getNewPasswordTextField());
		ulcAndEnabler.add(getConfirmTextField());
	}
	return ulcAndEnabler;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"