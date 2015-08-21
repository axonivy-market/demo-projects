package ch.ivyteam.ivy.workflow.ui.administration.ManagedTeamsDisplayList;

import ch.ivyteam.ivy.addons.widgets.RTableWithExcelExport;
import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.components.customrenderers.RTextFieldCellWidget;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.workflow.ui.common.Header.HeaderPanel;
import ch.ivyteam.ivy.workflow.ui.utils.UIHelper;

import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.ULCContainer;
import com.ulcjava.base.application.ULCFlowLayoutPane;
import com.ulcjava.base.application.ULCTable;
import com.ulcjava.base.application.border.ULCEtchedBorder;
import com.ulcjava.base.application.util.Dimension;

/**
 * RichDialog panel implementation for ManagingRolesDisplayListPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class ManagedTeamsDisplayListPanel extends RichDialogBorderPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RScrollPane usersManagingRolesScrollPane = null;
private RTableWithExcelExport usersManagingRolesTable = null;
private RFlowLayoutPane actionsFlowLayoutPane = null;
private RButton okButton = null;
private RButton cancelButton = null;
private RTextFieldCellWidget managingRolesTextFieldCellWidget = null;  //  @jve:decl-index=0:visual-constraint="819,259"
private RBoxPane headerBoxPane = null;
@EmbeddedRichDialog(HeaderPanel.class) private ULCContainer headerRDC = null;
private RBoxPane managedTeamsActionsBoxPane = null;
private RGridBagLayoutPane findCasesGridBagLayoutPane = null;
private RBoxPane findBoxPane = null;
private RTextField caseNameCriteriaTextField = null;
private RHyperlink findCasesHyperlink = null;
/**
   * Create a new instance of ManagingRolesDisplayListPanel
   */
  public ManagedTeamsDisplayListPanel()
  {
    super();
    initialize();
    
    // prettify text fields
    UIHelper.prettifyComponent(this);    
  }
  
  /**
   * This method initializes ManagingRolesDisplayListPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(800,600));
        this.add(getActionsFlowLayoutPane(), com.ulcjava.base.application.ULCBorderLayoutPane.SOUTH);
        this.add(getUsersManagingRolesScrollPane(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
        this.add(getHeaderBoxPane(), com.ulcjava.base.application.ULCBorderLayoutPane.NORTH);
  }

/**
 * This method initializes usersManagingRolesScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getUsersManagingRolesScrollPane() {
	if (usersManagingRolesScrollPane == null) {
		usersManagingRolesScrollPane = new RScrollPane();
		usersManagingRolesScrollPane.setName("usersManagingRolesScrollPane");
		usersManagingRolesScrollPane.setViewPortView(getUsersManagingRolesTable());
	}
	return usersManagingRolesScrollPane;
}

/**
 * This method initializes usersManagingRolesTable	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTable	
 */
private RTableWithExcelExport getUsersManagingRolesTable() {
	if (usersManagingRolesTable == null) {
		usersManagingRolesTable = new RTableWithExcelExport();
		usersManagingRolesTable.setName("usersManagingRolesTable");
		usersManagingRolesTable.setModelConfiguration("{/showTableheader true /autoTableheader false /showtooltip false /showIcons true /version \"3.0\"/columns {{/result \"result=\\\"<html><b>\\\" + entry.user.getName() + \\\"</b>\\\" + \\r\\n\\t(entry.user.getFullName() is initialized? \\\" (\\\" + entry.user.getFullName() + \\\")\\\": \\\"\\\")\"/version \"3.0\"/tooltip \"\"/icon \"result=ivy.cms.cr(\\\"/ch/ivyteam/ivy/workflow/ui/security/images/user16\\\")\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/security/plainStrings/userShortDesc\\\")\"/field \"\"/editable \"\"/condition \"\"/columnWidth \"300\"/columnStyle \"labelLikeTableCell\"/cellWidget \"\"}{/result \"result=value\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/managedTeamsShortDesc\\\")\"/field \"userManagedTeams\"/editable \"false\"/condition \"\"/columnWidth \"600\"/cellWidget \"managingRolesTextFieldCellWidget\"}{/result \"result=\\\"...\\\"\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/edit\\\")\"/field \"\"/editable \"\"/condition \"\"/columnWidth \"50\"/cellWidget \"selectManagedTeamsButtonCellWidget\"}}}");
		usersManagingRolesTable.setRowHeight(20);
		usersManagingRolesTable.setAutoResizeMode(ULCTable.AUTO_RESIZE_OFF);
		usersManagingRolesTable.setSortable(true);
	}
	return usersManagingRolesTable;
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
		okButton.setPreferredSize(new com.ulcjava.base.application.util.Dimension(100,25));
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
		cancelButton.setPreferredSize(new com.ulcjava.base.application.util.Dimension(100,25));
		cancelButton.setName("cancelButton");
	}
	return cancelButton;
}

/**
 * This method initializes managingRolesTextFieldCellWidget	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.customrenderers.RTextFieldCellWidget	
 */
@SuppressWarnings("unused")
private RTextFieldCellWidget getManagingRolesTextFieldCellWidget() {
	if (managingRolesTextFieldCellWidget == null) {
		managingRolesTextFieldCellWidget = new RTextFieldCellWidget();
		managingRolesTextFieldCellWidget.setText("");
		managingRolesTextFieldCellWidget.setName("managingRolesTextFieldCellWidget");
	}
	return managingRolesTextFieldCellWidget;
}

/**
 * This method initializes headerBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getHeaderBoxPane() {
	if (headerBoxPane == null) {
		headerBoxPane = new RBoxPane();
		headerBoxPane.setName("headerBoxPane");
		headerBoxPane.setPreferredSize(new com.ulcjava.base.application.util.Dimension(20,100));
		headerBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getHeaderRDC());
		headerBoxPane.set(0, 1, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getManagedTeamsActionsBoxPane());
	}
	return headerBoxPane;
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
		headerRDC.setToolTipText("\n");
		headerRDC.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		headerRDC.setPreferredSize(new Dimension(20, 75));
	}
	return headerRDC;
}

/**
 * This method initializes managedTeamsActionsBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getManagedTeamsActionsBoxPane() {
	if (managedTeamsActionsBoxPane == null) {
		RFiller hFiller = new RFiller();
		hFiller.setStyleProperties("{/weightX \"1\"}");
		managedTeamsActionsBoxPane = new RBoxPane();
		managedTeamsActionsBoxPane.setName("managedTeamsActionsBoxPane");
		managedTeamsActionsBoxPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		managedTeamsActionsBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, hFiller);
		managedTeamsActionsBoxPane.set(1, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getFindCasesGridBagLayoutPane());
	}
	return managedTeamsActionsBoxPane;
}

/**
 * This method initializes findCasesGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getFindCasesGridBagLayoutPane() {
	if (findCasesGridBagLayoutPane == null) {
		findCasesGridBagLayoutPane = new RGridBagLayoutPane();
		findCasesGridBagLayoutPane.setBorder(BorderFactory.createEmptyBorder(0, 0, 0, 0));
		findCasesGridBagLayoutPane.setOpaque(false);
		findCasesGridBagLayoutPane.setName("findCasesGridBagLayoutPane");
		findCasesGridBagLayoutPane.setStyleProperties("{/fill \"NONE\"}");
		findCasesGridBagLayoutPane.add(getFindBoxPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return findCasesGridBagLayoutPane;
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
		findBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getCaseNameCriteriaTextField());
		findBoxPane.set(1, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getFindCasesHyperlink());
	}
	return findBoxPane;
}

/**
 * This method initializes caseNameCriteriaTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getCaseNameCriteriaTextField() {
	if (caseNameCriteriaTextField == null) {
		caseNameCriteriaTextField = new RTextField();
		caseNameCriteriaTextField.setBorder(BorderFactory.createEmptyBorder(0, 0, 0, 0));
		caseNameCriteriaTextField.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/findUsersByNameLongDesc\")%>");
		caseNameCriteriaTextField.setColumns(20);
		caseNameCriteriaTextField.setText("Find users");
		caseNameCriteriaTextField.setSelectAllOnFocusGained(true);
		caseNameCriteriaTextField.setStyleProperties("{/backgroundColor {/b \"255\"/r \"255\"/g \"255\"}/insetsTop \"0\"/insetsBottom \"0\"/opaque \"true\"/fill \"BOTH\"/insetsLeft \"0\"/weightY \"0\"/weightX \"1\"}");
		caseNameCriteriaTextField.setName("caseNameCriteriaTextField");
	}
	return caseNameCriteriaTextField;
}

/**
 * This method initializes findCasesHyperlink	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink	
 */
private RHyperlink getFindCasesHyperlink() {
	if (findCasesHyperlink == null) {
		findCasesHyperlink = new RHyperlink();
		findCasesHyperlink.setName("findCasesHyperlink");
		findCasesHyperlink.setIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/view24\") %>");
		findCasesHyperlink.setStyleProperties("{/backgroundColor {/b \"255\"/r \"255\"/g \"255\"}/insetsTop \"0\"/insetsRight \"0\"/insetsLeft \"0\"}");
		findCasesHyperlink.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/find\")%>");
	}
	return findCasesHyperlink;
}

}  //  @jve:decl-index=0:visual-constraint="10,10"