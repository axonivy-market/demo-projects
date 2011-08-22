package ch.ivyteam.ivy.workflow.ui.administration.ManagedTeamsSelect;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RTree;
import ch.ivyteam.ivy.richdialog.widgets.components.RTableTree;
import ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import com.ulcjava.base.application.util.Dimension;
import com.ulcjava.base.application.ULCFlowLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;

/**
 * <p>RoleSelectPanel is a rich dialog panel implementation.
 *
 * <p>Please note that a rich dialog panel is not an instance of a Swing 
 * container, but of an ULCContainer. As such it can not be run 
 * or instantiated outside the ULC framework.
 */
@SuppressWarnings("all")
public class ManagedTeamsSelectPanel extends RichDialogBorderPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RScrollPane rolesScrollPane = null;
private RTableTree managedTeamsTableTree = null;
private RFlowLayoutPane actionsFlowLayoutPane = null;
private RButton okButton = null;
private RButton cancelButton = null;
private RButton addButton = null;
private RButton removeButton = null;
private RGridBagLayoutPane actionsGridBagLayoutPane = null;
/**
   * Create a new instance of RoleSelectPanel
   */
  public ManagedTeamsSelectPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes RoleSelectPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(499,285));
        this.add(getRolesScrollPane(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
        this.add(getActionsFlowLayoutPane(), com.ulcjava.base.application.ULCBorderLayoutPane.SOUTH);
        this.add(getActionsGridBagLayoutPane(), com.ulcjava.base.application.ULCBorderLayoutPane.EAST);
  }

/**
 * This method initializes rolesScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getRolesScrollPane() {
	if (rolesScrollPane == null) {
		rolesScrollPane = new RScrollPane();
		rolesScrollPane.setName("rolesScrollPane");
		rolesScrollPane.setViewPortView(getManagedTeamsTableTree());
	}
	return rolesScrollPane;
}


/**
 * This method initializes managedTeamsTableTree	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTableTree	
 */
private RTableTree getManagedTeamsTableTree() {
	if (managedTeamsTableTree == null) {
		managedTeamsTableTree = new RTableTree();
		managedTeamsTableTree.setName("managedTeamsTableTree");
		managedTeamsTableTree.setModelConfiguration("{/showTableheader true /autoTableheader false /showtooltip false /showIcons true /version \"3.0\"/columns {{/patterns {{/result \"result=value\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/team\\\")\"/field \"\"/patternMode \"ALL\"/patternValue \"default\"}{/result \"result=(entry.get(0) as ch.ivyteam.ivy.security.IRole).getName()\"/version \"3.0\"/tooltip \"\"/icon \"result=ivy.cms.cr(\\\"/ch/ivyteam/ivy/workflow/ui/security/images/role16\\\")\"/patternMode \"INSTANCE\"/patternValue \"List\"}}/version \"3.0\"}{/patterns {{/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/manage\\\")\"/version \"3.0\"/patternMode \"ALL\"/patternValue \"default\"}{/result \"\"/version \"3.0\"/icon \"result=\\\"Yes\\\".equals(entry.get(1))? ivy.cms.cr(\\\"/ch/ivyteam/ivy/workflow/ui/common/images/checkboxChecked16\\\"):\\r\\n\\tivy.cms.cr(\\\"/ch/ivyteam/ivy/workflow/ui/common/images/checkboxUnchecked16\\\")\"/patternMode \"INSTANCE\"/patternValue \"List\"}}/version \"3.0\"}}}");
	}
	return managedTeamsTableTree;
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
		okButton.setName("okButton");
		okButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/ok\")%>");
		okButton.setPreferredSize(new Dimension(100, 25));
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
		cancelButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/cancel\")%>");
		cancelButton.setPreferredSize(new Dimension(100, 25));
	}
	return cancelButton;
}

/**
 * This method initializes addButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getAddButton() {
	if (addButton == null) {
		addButton = new RButton();
		addButton.setText("<%= ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/add\") %>");
		addButton.setStyleProperties("{/fill \"HORIZONTAL\"}");
		addButton.setName("addButton");
	}
	return addButton;
}

/**
 * This method initializes removeButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getRemoveButton() {
	if (removeButton == null) {
		removeButton = new RButton();
		removeButton.setText("<%= ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/remove\") %>");
		removeButton.setStyleProperties("{/fill \"HORIZONTAL\"}");
		removeButton.setName("removeButton");
	}
	return removeButton;
}

/**
 * This method initializes actionsGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getActionsGridBagLayoutPane() {
	if (actionsGridBagLayoutPane == null) {
		RFiller verticalFiller = new RFiller();
		verticalFiller.setStyleProperties("{/fill \"VERTICAL\"/weightY \"1\"}");
		actionsGridBagLayoutPane = new RGridBagLayoutPane();
		actionsGridBagLayoutPane.setName("actionsGridBagLayoutPane");
		actionsGridBagLayoutPane.add(getAddButton(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		actionsGridBagLayoutPane.add(getRemoveButton(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		actionsGridBagLayoutPane.add(verticalFiller, new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return actionsGridBagLayoutPane;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"