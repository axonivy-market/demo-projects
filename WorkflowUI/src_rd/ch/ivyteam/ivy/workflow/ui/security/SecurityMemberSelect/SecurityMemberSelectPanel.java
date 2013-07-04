package ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect;

import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RList;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBorderLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.workflow.ui.common.Header.HeaderPanel;
import ch.ivyteam.ivy.workflow.ui.utils.UIHelper;

import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.ULCContainer;
import com.ulcjava.base.application.ULCFlowLayoutPane;
import com.ulcjava.base.application.border.ULCEtchedBorder;

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
private RList securityMembersList = null;
private RLabel footerLabel = null;
private RBorderLayoutPane securityMembersListBorderLayoutPane = null;
private RBoxPane securityMembersActionsBoxPane = null;
private RGridBagLayoutPane findSecurityMemberGridBagLayoutPane = null;
private RBoxPane findBoxPane = null;
private RTextField securityMemberNameTextField = null;
private RHyperlink findSecurityMemberHyperlink = null;
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
		securityMembersBorderLayoutPane.add(getSecurityMembersListBorderLayoutPane(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
	}
	return securityMembersBorderLayoutPane;
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
		securityMembersList.setModelConfiguration("{/result \"result=entry.isUser()? (entry as ch.ivyteam.ivy.security.IUser).getName(): entry.getMemberName()\"/version \"3.0\"/icon \"result=entry.isUser()? ivy.cms.cr(\\\"/ch/ivyteam/ivy/workflow/ui/security/images/user24\\\"): ivy.cms.cr(\\\"/ch/ivyteam/ivy/workflow/ui/security/images/role24\\\")\"/tooltip \"result=entry.getDisplayName()\"}");
	}
	return securityMembersList;
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
		securityMembersListBorderLayoutPane.add(getSecurityMembersActionsBoxPane(), com.ulcjava.base.application.ULCBorderLayoutPane.NORTH);
	}
	return securityMembersListBorderLayoutPane;
}

/**
 * This method initializes securityMembersActionsBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getSecurityMembersActionsBoxPane() {
	if (securityMembersActionsBoxPane == null) {
		RFiller hFiller = new RFiller();
		hFiller.setStyleProperties("{/weightX \"1\"}");
		securityMembersActionsBoxPane = new RBoxPane();
		securityMembersActionsBoxPane.setName("securityMembersActionsBoxPane");
		securityMembersActionsBoxPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		securityMembersActionsBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, hFiller);
		securityMembersActionsBoxPane.set(1, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getFindSecurityMemberGridBagLayoutPane());
	}
	return securityMembersActionsBoxPane;
}

/**
 * This method initializes findSecurityMemberGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getFindSecurityMemberGridBagLayoutPane() {
	if (findSecurityMemberGridBagLayoutPane == null) {
		findSecurityMemberGridBagLayoutPane = new RGridBagLayoutPane();
		findSecurityMemberGridBagLayoutPane.setBorder(BorderFactory.createEmptyBorder(0, 0, 0, 0));
		findSecurityMemberGridBagLayoutPane.setOpaque(false);
		findSecurityMemberGridBagLayoutPane.setName("findSecurityMemberGridBagLayoutPane");
		findSecurityMemberGridBagLayoutPane.setStyleProperties("{/fill \"NONE\"}");
		findSecurityMemberGridBagLayoutPane.add(getFindBoxPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return findSecurityMemberGridBagLayoutPane;
}

/**
 * This method initializes findBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getFindBoxPane() {
	if (findBoxPane == null) {
		findBoxPane = new RBoxPane();
		findBoxPane.setBorder(BorderFactory.createEtchedBorder(ULCEtchedBorder.LOWERED));
		findBoxPane.setName("findBoxPane");
		findBoxPane.setStyleProperties("{/insetsRight \"3\"/insetsLeft \"3\"/weightX \"1\"}");
		findBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getSecurityMemberNameTextField());
		findBoxPane.set(1, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getFindSecurityMemberHyperlink());
	}
	return findBoxPane;
}

/**
 * This method initializes securityMemberNameTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getSecurityMemberNameTextField() {
	if (securityMemberNameTextField == null) {
		securityMemberNameTextField = new RTextField();
		securityMemberNameTextField.setBorder(BorderFactory.createEmptyBorder(0, 0, 0, 0));
		securityMemberNameTextField.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/findUsersByNameLongDesc\")%>");
		securityMemberNameTextField.setColumns(20);
		securityMemberNameTextField.setText("Find users");
		securityMemberNameTextField.setSelectAllOnFocusGained(true);
		securityMemberNameTextField.setStyleProperties("{/backgroundColor {/b \"255\"/r \"255\"/g \"255\"}/insetsTop \"0\"/insetsBottom \"0\"/opaque \"true\"/fill \"BOTH\"/insetsLeft \"0\"/weightY \"0\"/weightX \"1\"}");
		securityMemberNameTextField.setName("securityMemberNameTextField");
	}
	return securityMemberNameTextField;
}

/**
 * This method initializes findSecurityMemberHyperlink	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink	
 */
private RHyperlink getFindSecurityMemberHyperlink() {
	if (findSecurityMemberHyperlink == null) {
		findSecurityMemberHyperlink = new RHyperlink();
		findSecurityMemberHyperlink.setName("findSecurityMemberHyperlink");
		findSecurityMemberHyperlink.setIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/view24\") %>");
		findSecurityMemberHyperlink.setStyleProperties("{/backgroundColor {/b \"255\"/r \"255\"/g \"255\"}/insetsTop \"0\"/insetsRight \"0\"/insetsLeft \"0\"}");
		findSecurityMemberHyperlink.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/find\")%>");
	}
	return findSecurityMemberHyperlink;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"