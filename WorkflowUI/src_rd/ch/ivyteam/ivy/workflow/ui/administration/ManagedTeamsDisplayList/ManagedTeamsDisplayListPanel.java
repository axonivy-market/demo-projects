package ch.ivyteam.ivy.workflow.ui.administration.ManagedTeamsDisplayList;

import ch.ivyteam.ivy.addons.widgets.RTableWithExcelExport;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink;
import ch.ivyteam.ivy.richdialog.widgets.components.customrenderers.RTextFieldCellWidget;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.workflow.ui.common.Header.HeaderPanel;
import ch.ivyteam.ivy.workflow.ui.utils.UIHelper;

import com.ulcjava.base.application.ULCFlowLayoutPane;
import com.ulcjava.base.application.util.Dimension;
import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import com.ulcjava.base.application.ULCContainer;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;

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
private RHyperlink exitButton = null;
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
		usersManagingRolesTable.setModelConfiguration("{/showTableheader true /autoTableheader false /showtooltip false /showIcons true /version \"3.0\"/columns {{/result \"result=entry.user.getName() + \\r\\n\\t(entry.user.getFullName() is initialized? \\\" (\\\" + entry.user.getFullName() + \\\")\\\": \\\"\\\")\"/version \"3.0\"/tooltip \"\"/icon \"result=ivy.cms.cr(\\\"/ch/ivyteam/ivy/workflow/ui/security/images/user16\\\")\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/security/plainStrings/userShortDesc\\\")\"/field \"\"/editable \"\"/condition \"\"/columnWidth \"250\"/columnStyle \"labelLikeTableCell\"/cellWidget \"\"}{/result \"result=value\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/managedTeamsShortDesc\\\")\"/field \"userManagedTeams\"/editable \"true\"/condition \"\"/columnWidth \"400\"/cellWidget \"managingRolesTextFieldCellWidget\"}}}");
		usersManagingRolesTable.setRowHeight(20);
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
		headerBoxPane.setPreferredSize(new com.ulcjava.base.application.util.Dimension(20,75));
		headerBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getHeaderRDC());
		headerBoxPane.set(1, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getExitButton());
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
 * This method initializes exitButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink	
 */
private RHyperlink getExitButton() {
	if (exitButton == null) {
		exitButton = new RHyperlink();
		exitButton.setName("exitButton");
		exitButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/close32\")%>");
		exitButton.setStyle("toolBarButton");
		exitButton.setStyleProperties("{/insetsRight \"3\"}");
		exitButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/close\")%>");
	}
	return exitButton;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"