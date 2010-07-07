package ch.ivyteam.ivy.workflow.ui.common.Settings;

import ch.ivyteam.ivy.persistence.PersistencyException;
import ch.ivyteam.ivy.rd.common.EmailNotificationSettings.EmailNotificationSettingsPanel;
import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RPasswordField;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RCollapsiblePane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RToolBar;
import ch.ivyteam.ivy.security.AuthenticationException;
import ch.ivyteam.ivy.security.ISession;
import ch.ivyteam.ivy.workflow.ui.common.CaseTaskParametersEdit.CaseTaskParametersEditPanel;
import ch.ivyteam.ivy.workflow.ui.common.Header.HeaderPanel;
import ch.ivyteam.security.Password;

import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.ULCContainer;
import com.ulcjava.base.application.border.ULCTitledBorder;
import com.ulcjava.base.application.util.Color;
import com.ulcjava.base.application.util.Font;

/**
 * RichDialog panel implementation for SettingsPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class SettingsPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
@EmbeddedRichDialog(HeaderPanel.class) private ULCContainer header = null;
private RGridBagLayoutPane passwordGridBagLayoutPane = null;
private RLabel oldPasswordLabel = null;
private RLabel newPasswordLabel = null;
private RLabel confirmNewPasswordLabel = null;
private RPasswordField oldPasswordTextField = null;
private RPasswordField newPasswordTextField = null;
private RPasswordField confirmTextField = null;
private RLabel errorLabel = null;
private RButton saveButton = null;
private RLabel loggedInAsLabel = null;
@EmbeddedRichDialog(CaseTaskParametersEditPanel.class) private ULCContainer caseTaskParametersEditRDC = null;
private RButton changePasswordButton = null;
private RCollapsiblePane changePasswordCollapsiblePane = null;
private RBoxPane changePasswordBoxPane = null;
private RButton updatePWButton = null;
private @EmbeddedRichDialog(EmailNotificationSettingsPanel.class) ULCContainer emailNotificationSettingsPanel = null;
private RToolBar settingsToolBar = null;
private RButton exitButton = null;
/**
   * Create a new instance of SettingsPanel
   */
  public SettingsPanel()
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
        RFiller verticalFiller = new RFiller();
        verticalFiller.setStyleProperties("{/fill \"VERTICAL\"/weightY \"1\"}");
        RFiller Filler2 = new RFiller();
        Filler2.setStyle("verticalGlue");
        this.add(getHeader(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getPasswordGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getErrorLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 8, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(Filler2, new com.ulcjava.base.application.GridBagConstraints(0, 11, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getCaseTaskParametersEditRDC(), new com.ulcjava.base.application.GridBagConstraints(0, 6, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(verticalFiller, new com.ulcjava.base.application.GridBagConstraints(0, 10, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getEmailNotificationSettingsPanel(), new com.ulcjava.base.application.GridBagConstraints(0, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getSettingsToolBar(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes header	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.common.Header.HeaderPanel	
 */
private ULCContainer getHeader()  {
	if (header == null) {
		header = RichDialogPanelFactory.create(HeaderPanel.class);
		header.setName("header");
		header.setStyleProperties("{/weightX \"1\"}");
	}
	return header;
}

/**
 * This method initializes passwordGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getPasswordGridBagLayoutPane() {
	if (passwordGridBagLayoutPane == null) {
		RFiller Filler = new RFiller();
		Filler.setStyle("horizontalGlue");
		passwordGridBagLayoutPane = new RGridBagLayoutPane();
		passwordGridBagLayoutPane.setName("passwordGridBagLayoutPane");
		passwordGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(null, "Password", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(12, 74, 124)));
		passwordGridBagLayoutPane.add(Filler, new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		passwordGridBagLayoutPane.add(getLoggedInAsLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		passwordGridBagLayoutPane.add(getChangePasswordButton(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		passwordGridBagLayoutPane.add(getChangePasswordCollapsiblePane(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return passwordGridBagLayoutPane;
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
		oldPasswordLabel.setStyleProperties("{/weightX \"1\"}");
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
		oldPasswordTextField.setColumns(15);
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
		confirmTextField.setName("confirmTextField");
	}
	return confirmTextField;
}

/**
 * This method initializes errorLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getErrorLabel() {
	if (errorLabel == null) {
		errorLabel = new RLabel();
		errorLabel.setText("error");
		errorLabel.setStyleProperties("{/foregroundColor {/b \"0\"/r \"153\"/g \"0\"}}");
		errorLabel.setName("errorLabel");
	}
	return errorLabel;
}

/**
 * This method initializes saveButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getSaveButton() {
	if (saveButton == null) {
		saveButton = new RButton();
		saveButton.setName("saveButton");
		saveButton.setRolloverIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/save32\")%>");
		saveButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/save24\")%>");
		saveButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/save\")%>");
	}
	return saveButton;
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
 * This method initializes loggedInAsLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getLoggedInAsLabel() {
	if (loggedInAsLabel == null) {
		loggedInAsLabel = new RLabel();
		loggedInAsLabel.setName("loggedInAsLabel");
		loggedInAsLabel.setStyleProperties("{/weightX \"1\"}");
		loggedInAsLabel.setText("Logged in as....");
	}
	return loggedInAsLabel;
}

/**
 * This method initializes caseTaskParametersEditRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.common.CaseTaskParametersEdit.CaseTaskParametersEditPanel	
 */
private ULCContainer getCaseTaskParametersEditRDC()  {
	if (caseTaskParametersEditRDC == null) {
		caseTaskParametersEditRDC = RichDialogPanelFactory.create(CaseTaskParametersEditPanel.class);
		caseTaskParametersEditRDC.setName("caseTaskParametersEditRDC");
		caseTaskParametersEditRDC.setName("caseTaskParametersEditRDC");
	}
	return caseTaskParametersEditRDC;
}

/**
 * This method initializes changePasswordButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getChangePasswordButton() {
	if (changePasswordButton == null) {
		changePasswordButton = new RButton();
		changePasswordButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/changePassword\")%>");
		changePasswordButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/changePassword\")%>");
		changePasswordButton.setStyleProperties("{/anchor \"WEST\"/minimumSizeWidth \"130\"/weightX \"0.2\"}");
		changePasswordButton.setName("changePasswordButton");
	}
	return changePasswordButton;
}

/**
 * This method initializes changePasswordCollapsiblePane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RCollapsiblePane	
 */
private RCollapsiblePane getChangePasswordCollapsiblePane() {
	if (changePasswordCollapsiblePane == null) {
		changePasswordCollapsiblePane = new RCollapsiblePane();
		changePasswordCollapsiblePane.setName("changePasswordCollapsiblePane");
		changePasswordCollapsiblePane.setCollapsed(true);
		changePasswordCollapsiblePane.add(getChangePasswordBoxPane());
	}
	return changePasswordCollapsiblePane;
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
		changePasswordBoxPane.set(1, 3, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getUpdatePWButton());
	}
	return changePasswordBoxPane;
}

/**
 * This method initializes updatePWButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getUpdatePWButton() {
	if (updatePWButton == null) {
		updatePWButton = new RButton();
		updatePWButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/save\")%>");
		updatePWButton.setStyleProperties("{/anchor \"NORTHEAST\"}");
		updatePWButton.setName("updatePWButton");
	}
	return updatePWButton;
}

/**
 * This method initializes emailNotificationSettingsPanel	
 * 	
 * @return ch.ivyteam.ivy.rd.common.EmailNotificationSettings.EmailNotificationSettingsPanel	
 */
private ULCContainer getEmailNotificationSettingsPanel() {
	if (emailNotificationSettingsPanel == null) {
		emailNotificationSettingsPanel = new EmailNotificationSettingsPanel();
		emailNotificationSettingsPanel.setName("emailNotificationSettingsPanel");
	}
	return emailNotificationSettingsPanel;
}

/**
 * This method initializes ToolBar	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RToolBar	
 */
private RToolBar getSettingsToolBar() {
	if (settingsToolBar == null) {
		RFiller Filler1 = new RFiller();
		settingsToolBar = new RToolBar();
		settingsToolBar.setFloatable(false);
		settingsToolBar.setName("settingsToolBar");
		settingsToolBar.add(getSaveButton());
		settingsToolBar.add(Filler1);
		settingsToolBar.add(getExitButton());
	}
	return settingsToolBar;
}
/**
 * This method initializes exitButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getExitButton() {
	if (exitButton == null) {
		exitButton = new RButton();
		exitButton.setName("exitButton");
		exitButton.setRolloverIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/close32\")%>");
		exitButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/close24\")%>");
		exitButton.setStyleProperties("{/minimumSizeHeight \"32\"}");
		exitButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/close\")%>");
	}
	return exitButton;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"