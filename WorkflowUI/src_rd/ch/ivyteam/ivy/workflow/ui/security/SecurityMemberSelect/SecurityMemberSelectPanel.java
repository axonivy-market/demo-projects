package ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RList;
import ch.ivyteam.ivy.richdialog.widgets.components.RRadioButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBorderLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RToolBar;
import ch.ivyteam.ivy.workflow.ui.common.Header.HeaderPanel;
import ch.ivyteam.ivy.workflow.ui.utils.UIHelper;

import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.ULCButtonGroup;
import com.ulcjava.base.application.ULCFlowLayoutPane;
import com.ulcjava.base.application.border.ULCTitledBorder;
import com.ulcjava.base.application.util.Color;
import com.ulcjava.base.application.util.Font;
import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import com.ulcjava.base.application.ULCContainer;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;

/**
 * RichDialog panel implementation for DelegateTaskSelectPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class SecurityMemberSelectPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RFlowLayoutPane actionsFlowLayoutPane = null;
private RButton okButton = null;
private RButton cancelButton = null;
private RScrollPane securityMembersScrollPane = null;
@EmbeddedRichDialog(HeaderPanel.class) private ULCContainer headerRDC = null;
private RBorderLayoutPane securityMembersBorderLayoutPane = null;
private RToolBar refreshRolesToolBar = null;
private RList securityMembersList = null;
private RBoxPane findSecurityMemberByNameBoxPane = null;
private RLabel securityMemberNameLabel = null;
private RTextField securityMemberNameTextField = null;
private RBoxPane securityMemberTypesBoxPane = null;
private RRadioButton roleRadioButton = null;
private RRadioButton userRadioButton = null;
private RBoxPane securityMemberBoxPane = null;
private ULCButtonGroup securityMemberTypesButtonGroup = null;  //  @jve:decl-index=0:visual-constraint="672,93"
private RLabel roleLabel = null;
private RLabel userLabel = null;
private RLabel footerLabel = null;
private RBorderLayoutPane securityMembersListBorderLayoutPane = null;
private RToolBar findSecurityMemberToolBar = null;
/**
   * Create a new instance of DelegateTaskSelectPanel
   */
  public SecurityMemberSelectPanel()
  {
    super();
    initialize();

    // prettify ui components
    UIHelper.prettifyComponent(this); 
  }
  
  /**
   * This method initializes DelegateTaskSelectPanel
   * @return void
   */
  public void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(577,439));
        this.add(getHeaderRDC(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getSecurityMembersBorderLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
		actionsFlowLayoutPane.setAlignment(ULCFlowLayoutPane.RIGHT);
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
		okButton.setName("okButton");
		okButton.setText("Ok");
		okButton.setPreferredSize(new com.ulcjava.base.application.util.Dimension(100,23));
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
		cancelButton.setName("cancelButton");
		cancelButton.setText("Cancel");
		cancelButton.setPreferredSize(new com.ulcjava.base.application.util.Dimension(100,23));
	}
	return cancelButton;
}

/**
 * This method initializes securityMembersScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getSecurityMembersScrollPane() {
	if (securityMembersScrollPane == null) {
		securityMembersScrollPane = new RScrollPane();
		securityMembersScrollPane.setName("securityMembersScrollPane");
		securityMembersScrollPane.setStyleProperties("{/weightY \"1\"/weightX \"1\"}");
		securityMembersScrollPane.setViewPortView(getSecurityMembersList());
	}
	return securityMembersScrollPane;
}

/**
 * This method initializes headerRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.common.Header.HeaderPanel	
 */
private ULCContainer getHeaderRDC()  {
	if (headerRDC == null) {
		headerRDC = RichDialogPanelFactory.create(HeaderPanel.class);
		headerRDC.setName("headerRDC");
		headerRDC.setPreferredSize(new com.ulcjava.base.application.util.Dimension(20,75));
		headerRDC.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
	}
	return headerRDC;
}

/**
 * This method initializes securityMembersBorderLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBorderLayoutPane	
 */
private RBorderLayoutPane getSecurityMembersBorderLayoutPane() {
	if (securityMembersBorderLayoutPane == null) {
		securityMembersBorderLayoutPane = new RBorderLayoutPane();
		securityMembersBorderLayoutPane.setName("securityMembersBorderLayoutPane");
		securityMembersBorderLayoutPane.setStyleProperties("{/weightY \"1\"/weightX \"1\"}");
		securityMembersBorderLayoutPane.add(getActionsFlowLayoutPane(), com.ulcjava.base.application.ULCBorderLayoutPane.SOUTH);
		securityMembersBorderLayoutPane.add(getRefreshRolesToolBar(), com.ulcjava.base.application.ULCBorderLayoutPane.NORTH);
		securityMembersBorderLayoutPane.add(getSecurityMembersListBorderLayoutPane(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
	}
	return securityMembersBorderLayoutPane;
}




/**
 * This method initializes refreshRolesToolBar	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RToolBar	
 */
private RToolBar getRefreshRolesToolBar() {
	if (refreshRolesToolBar == null) {
		refreshRolesToolBar = new RToolBar();
		refreshRolesToolBar.setName("refreshRolesToolBar");
		refreshRolesToolBar.setFloatable(false);
		refreshRolesToolBar.add(getSecurityMemberBoxPane());
	}
	return refreshRolesToolBar;
}

/**
 * This method initializes securityMembersList	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RList	
 */
private RList getSecurityMembersList() {
	if (securityMembersList == null) {
		securityMembersList = new RList();
		securityMembersList.setName("securityMembersList");
		securityMembersList.setModelConfiguration("{/result \"result=entry.getMemberName()\"/version \"2.0\"/icon \"\"/tooltip \"result=entry.getMemberName()\"}");
	}
	return securityMembersList;
}

/**
 * This method initializes findSecurityMemberByNameBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getFindSecurityMemberByNameBoxPane() {
	if (findSecurityMemberByNameBoxPane == null) {
		findSecurityMemberByNameBoxPane = new RBoxPane();
		findSecurityMemberByNameBoxPane.setName("findSecurityMemberByNameBoxPane");
		findSecurityMemberByNameBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getFindSecurityMemberToolBar());
	}
	return findSecurityMemberByNameBoxPane;
}

/**
 * This method initializes securityMemberNameLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getSecurityMemberNameLabel() {
	if (securityMemberNameLabel == null) {
		securityMemberNameLabel = new RLabel();
		securityMemberNameLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/findByName\")%>");
		securityMemberNameLabel.setName("securityMemberNameLabel");
	}
	return securityMemberNameLabel;
}

/**
 * This method initializes securityMemberNameTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getSecurityMemberNameTextField() {
	if (securityMemberNameTextField == null) {
		securityMemberNameTextField = new RTextField();
		securityMemberNameTextField.setText("");
		securityMemberNameTextField.setStyleProperties("{/weightX \"1\"}");
		securityMemberNameTextField.setName("securityMemberNameTextField");
	}
	return securityMemberNameTextField;
}

/**
 * This method initializes securityMemberTypesBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getSecurityMemberTypesBoxPane() {
	if (securityMemberTypesBoxPane == null) {
		securityMemberTypesBoxPane = new RBoxPane();
		securityMemberTypesBoxPane.setName("securityMemberTypesBoxPane");
		securityMemberTypesBoxPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		securityMemberTypesBoxPane.setBorder(BorderFactory.createTitledBorder(null, "Security member types", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(12, 74, 124)));
		securityMemberTypesBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getRoleRadioButton());
		securityMemberTypesBoxPane.set(0, 2, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getUserRadioButton());
		securityMemberTypesBoxPane.set(1, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getRoleLabel());
		securityMemberTypesBoxPane.set(1, 2, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getUserLabel());
	}
	return securityMemberTypesBoxPane;
}

/**
 * This method initializes roleRadioButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RRadioButton	
 */
private RRadioButton getRoleRadioButton() {
	if (roleRadioButton == null) {
		roleRadioButton = new RRadioButton();
		roleRadioButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/role\")%>");
		roleRadioButton.setStyleProperties("{/weightX \"0\"}");
		roleRadioButton.setSelected(true);
		roleRadioButton.setGroup(getSecurityMemberTypesButtonGroup());
		roleRadioButton.setName("roleRadioButton");
	}
	return roleRadioButton;
}

/**
 * This method initializes userRadioButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RRadioButton	
 */
private RRadioButton getUserRadioButton() {
	if (userRadioButton == null) {
		userRadioButton = new RRadioButton();
		userRadioButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/user\")%>");
		userRadioButton.setGroup(getSecurityMemberTypesButtonGroup());
		userRadioButton.setName("userRadioButton");
	}
	return userRadioButton;
}

/**
 * This method initializes securityMemberBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getSecurityMemberBoxPane() {
	if (securityMemberBoxPane == null) {
		securityMemberBoxPane = new RBoxPane();
		securityMemberBoxPane.setName("securityMemberBoxPane");
		securityMemberBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getSecurityMemberTypesBoxPane());
		securityMemberBoxPane.set(0, 1, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getFindSecurityMemberByNameBoxPane());
	}
	return securityMemberBoxPane;
}

/**
 * This method initializes securityMemberTypesButtonGroup	
 * 	
 * @return com.ulcjava.base.application.ULCButtonGroup	
 */
private ULCButtonGroup getSecurityMemberTypesButtonGroup() {
	if (securityMemberTypesButtonGroup == null) {
		securityMemberTypesButtonGroup = new ULCButtonGroup();
	}
	return securityMemberTypesButtonGroup;
}

/**
 * This method initializes roleLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getRoleLabel() {
	if (roleLabel == null) {
		roleLabel = new RLabel();
		roleLabel.setText("");
		roleLabel.setStyleProperties("{/weightX \"1\"}");
		roleLabel.setIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/security/images/role24\") %>");
		roleLabel.setEnabler(getRoleRadioButton());
		roleLabel.setName("roleLabel");
	}
	return roleLabel;
}

/**
 * This method initializes userLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getUserLabel() {
	if (userLabel == null) {
		userLabel = new RLabel();
		userLabel.setText("");
		userLabel.setIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/security/images/user24\") %>");
		userLabel.setEnabler(getUserRadioButton());
		userLabel.setName("userLabel");
	}
	return userLabel;
}

/**
 * This method initializes footerLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getFooterLabel() {
	if (footerLabel == null) {
		footerLabel = new RLabel();
		footerLabel.setText("RLabel");
		footerLabel.setName("footerLabel");
	}
	return footerLabel;
}

/**
 * This method initializes securityMembersListBorderLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBorderLayoutPane	
 */
private RBorderLayoutPane getSecurityMembersListBorderLayoutPane() {
	if (securityMembersListBorderLayoutPane == null) {
		securityMembersListBorderLayoutPane = new RBorderLayoutPane();
		securityMembersListBorderLayoutPane.setName("securityMembersListBorderLayoutPane");
		securityMembersListBorderLayoutPane.add(getFooterLabel(), com.ulcjava.base.application.ULCBorderLayoutPane.SOUTH);
		securityMembersListBorderLayoutPane.add(getSecurityMembersScrollPane(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
	}
	return securityMembersListBorderLayoutPane;
}

/**
 * This method initializes findSecurityMemberToolBar	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RToolBar	
 */
private RToolBar getFindSecurityMemberToolBar() {
	if (findSecurityMemberToolBar == null) {
		findSecurityMemberToolBar = new RToolBar();
		findSecurityMemberToolBar.setName("findSecurityMemberToolBar");
		findSecurityMemberToolBar.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		findSecurityMemberToolBar.setFloatable(false);
		findSecurityMemberToolBar.add(getSecurityMemberNameLabel());
		findSecurityMemberToolBar.add(getSecurityMemberNameTextField());
	}
	return findSecurityMemberToolBar;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"