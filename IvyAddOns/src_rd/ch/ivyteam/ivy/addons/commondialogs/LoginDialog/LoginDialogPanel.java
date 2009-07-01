package ch.ivyteam.ivy.addons.commondialogs.LoginDialog;

import ch.ivyteam.ivy.persistence.PersistencyException;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.components.RPasswordField;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.security.AuthenticationException;
import ch.ivyteam.ivy.security.ISession;
import ch.ivyteam.security.Password;
import ch.ivyteam.ivy.richdialog.widgets.components.RComboBox;

/**
 * RichDialog panel implementation for LoginDialogPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class LoginDialogPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RLabel xpertlineIconLabel = null;
private RLabel iconLabel = null;
private RLabel userNameLabel = null;
private RLabel passwordLabel = null;
private RTextField userNameTextField = null;
private RPasswordField passwordPasswordField = null;
private RGridLayoutPane buttonPane = null;
private RButton loginButton = null;
private RButton cancelButton = null;
private RLabel sessionLanguageLabel = null;
private RComboBox sessionLanguagesComboBox = null;
  
  /**
   * Create a new instance of LoginDialogPanel
   */
  public LoginDialogPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes LoginDialogPanel
   * @return void
   */
  public void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(407,194));
        this.add(getXpertlineIconLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getIconLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 5, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getUserNameLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getPasswordLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getUserNameTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getPasswordPasswordField(), new com.ulcjava.base.application.GridBagConstraints(2, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getButtonPane(), new com.ulcjava.base.application.GridBagConstraints(2, 8, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getSessionLanguageLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 6, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getSessionLanguagesComboBox(), new com.ulcjava.base.application.GridBagConstraints(2, 6, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes xpertlineIconLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getXpertlineIconLabel() {
	if (xpertlineIconLabel == null) {
		xpertlineIconLabel = new RLabel();
		xpertlineIconLabel.setName("xpertlineIconLabel");
		xpertlineIconLabel.setIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/addons/images/XpertLineLogo\") %>");
		xpertlineIconLabel.setStyleProperties("{/anchor \"NORTHWEST\"}");
		xpertlineIconLabel.setStyle("border-all");
	}
	return xpertlineIconLabel;
}

/**
 * This method initializes iconLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getIconLabel() {
	if (iconLabel == null) {
		iconLabel = new RLabel();
		iconLabel.setName("iconLabel");
		iconLabel.setIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/large/login\") %>");
		iconLabel.setStyleProperties("{/anchor \"NORTHWEST\"}");
		iconLabel.setStyle("border-all");
	}
	return iconLabel;
}

/**
 * This method initializes userNameLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getUserNameLabel() {
	if (userNameLabel == null) {
		userNameLabel = new RLabel();
		userNameLabel.setText("<%= ivy.cms.co(\"/ch/ivyteam/ivy/addons/strings/labels/userName\") %>");
		userNameLabel.setStyle("border-top-left-bottom");
		userNameLabel.setStyleProperties("{/anchor \"WEST\"}");
		userNameLabel.setName("userNameLabel");
	}
	return userNameLabel;
}

/**
 * This method initializes passwordLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getPasswordLabel() {
	if (passwordLabel == null) {
		passwordLabel = new RLabel();
		passwordLabel.setText("<%= ivy.cms.co(\"/ch/ivyteam/ivy/addons/strings/labels/password\") %>");
		passwordLabel.setStyle("border-top-left-bottom");
		passwordLabel.setStyleProperties("{/anchor \"WEST\"}");
		passwordLabel.setName("passwordLabel");
	}
	return passwordLabel;
}

/**
 * This method initializes userNameTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getUserNameTextField() {
	if (userNameTextField == null) {
		userNameTextField = new RTextField();
		userNameTextField.setText("RTextField");
		userNameTextField.setColumns(20);
		userNameTextField.setStyle("fill-horiz-north-border");
		userNameTextField.setName("userNameTextField");
	}
	return userNameTextField;
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
		passwordPasswordField.setStyle("fill-horiz-north-border");
		passwordPasswordField.setName("passwordPasswordField");
	}
	return passwordPasswordField;
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
		buttonPane.setStyle("buttons");
		buttonPane.setHgap(5);
		buttonPane.setStyleProperties("{/anchor \"SOUTHEAST\"/insetsBottom \"5\"/insetsTop \"5\"/insetsRight \"5\"/insetsLeft \"5\"}");
		buttonPane.add(getLoginButton());
		buttonPane.add(getCancelButton());
	}
	return buttonPane;
}

/**
 * This method initializes loginButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getLoginButton() {
	if (loginButton == null) {
		loginButton = new RButton();
		loginButton.setText("<%= ivy.cms.co(\"/ch/ivyteam/ivy/addons/strings/buttons/login\") %>");
		loginButton.setStyle("border-all");
		loginButton.setName("loginButton");
	}
	return loginButton;
}

/**
 * This method initializes cancelButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getCancelButton() {
	if (cancelButton == null) {
		cancelButton = new RButton();
		cancelButton.setName("cancelButton");
		cancelButton.setStyle("border-all");
		cancelButton.setText("<%= ivy.cms.co(\"/ch/ivyteam/ivy/addons/strings/buttons/cancel\") %>");
	}
	return cancelButton;
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
 * This method initializes sessionLanguageLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getSessionLanguageLabel() {
	if (sessionLanguageLabel == null) {
		sessionLanguageLabel = new RLabel();
		sessionLanguageLabel.setName("sessionLanguageLabel");
		sessionLanguageLabel.setStyle("border-top-left-bottom");
		sessionLanguageLabel.setStyleProperties("{/anchor \"WEST\"}");
		sessionLanguageLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/strings/labels/sessionLanguage\")%>");
	}
	return sessionLanguageLabel;
}

/**
 * This method initializes sessionLanguagesComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getSessionLanguagesComboBox() {
	if (sessionLanguagesComboBox == null) {
		sessionLanguagesComboBox = new RComboBox();
		sessionLanguagesComboBox.setName("sessionLanguagesComboBox");
		sessionLanguagesComboBox.setModelConfiguration("{/result \"result=entry\"/version \"2.0\"/icon \"\"/tooltip \"result=entry\"}");
		sessionLanguagesComboBox.setStyle("fill-horiz-north-border");
	}
	return sessionLanguagesComboBox;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"