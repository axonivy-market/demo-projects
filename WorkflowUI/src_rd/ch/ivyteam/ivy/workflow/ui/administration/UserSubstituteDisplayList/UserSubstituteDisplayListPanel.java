package ch.ivyteam.ivy.workflow.ui.administration.UserSubstituteDisplayList;

import java.net.URL;

import ch.ivyteam.ivy.addons.widgets.RTableWithExcelExport;
import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RLookupTextField;
import ch.ivyteam.ivy.richdialog.widgets.components.RRadioButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextArea;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RCollapsiblePane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem;
import ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu;
import ch.ivyteam.ivy.workflow.ui.common.Header.HeaderPanel;
import ch.ivyteam.ivy.workflow.ui.utils.UIHelper;

import com.ulcjava.base.application.ULCButtonGroup;
import com.ulcjava.base.application.ULCContainer;
import com.ulcjava.base.application.ULCTable;
import com.ulcjava.base.application.util.Color;
import com.ulcjava.base.application.util.Dimension;
import com.ulcjava.base.application.util.ULCIcon;

/**
 * RichDialog panel implementation for SubstituteManagementPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class UserSubstituteDisplayListPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RButton addButton = null;
private RButton deleteButton = null;
private RCollapsiblePane addCollapsiblePane = null;
private RGridBagLayoutPane addGridBagLayoutPane = null;
private RScrollPane ScrollPane = null;
private RTableWithExcelExport substituteTable = null;
private RLabel substituteLabel = null;
private RLabel forRoleLabel = null;
private RTextArea remarkTextArea = null;
private RLabel remarkLabel = null;
private RButton saveButton = null;
private RPopupMenu tablePopupMenu = null;
private RMenuItem deleteMenuItem = null;
private RBoxPane buttonGroupBoxPane = null;
private RRadioButton personalRadioButton = null;
private RRadioButton personalAllRolesRadioButton = null;
private RRadioButton roleRadioButton = null;
private ULCButtonGroup ulcButtonGroup = null;  //  @jve:decl-index=0:visual-constraint="561,72"
private RFlowLayoutPane actionsFlowLayoutPane = null;
private RButton cancelButton = null;
private RLookupTextField substituteLookupTextField = null;
private RLookupTextField roleLookupTextField = null;
private RBoxPane roleBoxPane = null;
private RBoxPane substituteActionsBoxPane = null;
private RScrollPane remarkScrollPane = null;
private String iconPath = "/ch/ivyteam/ivy/workflow/ui/administration/UserSubstituteDisplayList/zoom16.png";
private RBoxPane headerBoxPane = null;
private @EmbeddedRichDialog(HeaderPanel.class) ULCContainer header = null;
/**
   * Create a new instance of SubstituteManagementPanel
   */
  public UserSubstituteDisplayListPanel()
  {
    super();
    initialize();
    
    // prettify text fields
    UIHelper.prettifyComponent(this);    
  }
  
  /**
   * This method initializes SubstituteManagementPanel
   * @return void
   */
  public void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(558,509));
        this.setStyleProperties("{/weightX \"1\"}");
        this.add(getAddCollapsiblePane(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getScrollPane(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getSubstituteActionsBoxPane(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getHeaderBoxPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }


/**
 * This method initializes addButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getAddButton() {
	if (addButton == null) {
		addButton = new RButton();
		addButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/add32\")%>");
		addButton.setToolTipText("<%= ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/addSubstitute\") %>");
		addButton.setStyle("toolBarButton");
		addButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/add\")%>");
		addButton.setName("addButton");
		addButton.setBorderPainted(false);
	}
	return addButton;
}

/**
 * This method initializes deleteButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getDeleteButton() {
	if (deleteButton == null) {
		deleteButton = new RButton();
		deleteButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/delete32\")%>");
		deleteButton.setToolTipText("<%= ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/removeSubstitute\") %>");
		deleteButton.setStyle("toolBarButton");
		deleteButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/remove\")%>");
		deleteButton.setName("deleteButton");
		deleteButton.setBorderPainted(false);
	}
	return deleteButton;
}

/**
 * This method initializes addCollapsiblePane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RCollapsiblePane	
 */
private RCollapsiblePane getAddCollapsiblePane() {
	if (addCollapsiblePane == null) {
		addCollapsiblePane = new RCollapsiblePane();
		addCollapsiblePane.setName("addCollapsiblePane");
		addCollapsiblePane.setStyleProperties("{/weightX \"1\"}");
		addCollapsiblePane.add(getAddGridBagLayoutPane());
	}
	return addCollapsiblePane;
}

/**
 * This method initializes addGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getAddGridBagLayoutPane() {
	if (addGridBagLayoutPane == null) {
		RFiller Filler = new RFiller();
		Filler.setStyle("horizontalGlue");
		Filler.setStyleProperties("{/weightX \"0.25\"}");
		addGridBagLayoutPane = new RGridBagLayoutPane();
		addGridBagLayoutPane.setName("addGridBagLayoutPane");
		addGridBagLayoutPane.setStyleProperties("{/fill \"BOTH\"/weightX \"1\"}");
		addGridBagLayoutPane.setName("addGridBagLayoutPane");
		addGridBagLayoutPane.add(getSubstituteLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		addGridBagLayoutPane.add(getForRoleLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		addGridBagLayoutPane.add(Filler, new com.ulcjava.base.application.GridBagConstraints(3, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		addGridBagLayoutPane.add(getRemarkLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		addGridBagLayoutPane.add(getButtonGroupBoxPane(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		addGridBagLayoutPane.add(getActionsFlowLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(1, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		addGridBagLayoutPane.add(getSubstituteLookupTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		addGridBagLayoutPane.add(getRemarkScrollPane(), new com.ulcjava.base.application.GridBagConstraints(1, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return addGridBagLayoutPane;
}

/**
 * This method initializes ScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getScrollPane() {
	if (ScrollPane == null) {
		ScrollPane = new RScrollPane();
		ScrollPane.setName("ScrollPane");
		ScrollPane.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		ScrollPane.setViewPortView(getSubstituteTable());
	}
	return ScrollPane;
}

/**
 * This method initializes substituteTable	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTable	
 */
private RTableWithExcelExport getSubstituteTable() {
	if (substituteTable == null) {
		substituteTable = new RTableWithExcelExport();
		substituteTable.setName("substituteTable");
		substituteTable.setName("substituteTable");
		substituteTable.setModelConfiguration("{/showTableheader true /autoTableheader false /showtooltip false /showIcons true /version \"3.0\"/emptyTableText \"\"/columns {{/result \"result=\\\"<html><b>\\\" + entry.getSubstituteUser().getName() + \\\"</b>\\\" +  + (entry.getSubstituteUser().getFullName() is initialized? \\\" (\\\" + entry.getSubstituteUser().getFullName() +\\\")\\\": \\\"\\\")\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/substitute\\\")\"/field \"\"/columnWidth \"250\"}{/result \"result=IF(entry.isPersonallyOnly(),\\r\\n\\tivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/substituteForPersonalTasks\\\"),\\r\\n\\t\\\"<html><b>\\\" + entry.getSubstitutionRole().getName() + \\\"</b>\\\" + (entry.getSubstitutionRole().getDisplayName().length() > 0? \\\" (\\\" + entry.getSubstitutionRole().getDisplayName() + \\\")\\\": \\\"\\\")\\r\\n)\"/version \"3.0\"/tooltip \"\"/icon \"result=(!entry.isPersonallyOnly()? ivy.cms.cr(\\\"/ch/ivyteam/ivy/workflow/ui/security/images/role16\\\"): \\\"\\\")\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/for\\\")\"/field \"\"/columnWidth \"250\"}{/result \"result=entry.getDescription()\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/substituteNote\\\")\"/field \"\"/columnWidth \"350\"}}}");
		substituteTable.setAutoResizeMode(ULCTable.AUTO_RESIZE_LAST_COLUMN);
		substituteTable.setBackground(Color.white);
		substituteTable.setRowHeight(20);
		substituteTable.setComponentPopupMenu(getTablePopupMenu());
		substituteTable.setSortable(true);
	}
	return substituteTable;
}

/**
 * This method initializes substituteLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getSubstituteLabel() {
	if (substituteLabel == null) {
		substituteLabel = new RLabel();
		substituteLabel.setText("<%= ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/substitute\") %>");
		substituteLabel.setStyle("mandatoryRightAlignedLabel");
		substituteLabel.setName("substituteLabel");
	}
	return substituteLabel;
}

/**
 * This method initializes forRoleLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getForRoleLabel() {
	if (forRoleLabel == null) {
		forRoleLabel = new RLabel();
		forRoleLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/for\")%>");
		forRoleLabel.setStyle("mandatoryRightAlignedLabel");
		forRoleLabel.setName("forRoleLabel");
	}
	return forRoleLabel;
}

/**
 * This method initializes remarkTextArea	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextArea	
 */
private RTextArea getRemarkTextArea() {
	if (remarkTextArea == null) {
		remarkTextArea = new RTextArea();
		remarkTextArea.setText("");
		remarkTextArea.setRows(5);
		remarkTextArea.setName("remarkTextArea");
	}
	return remarkTextArea;
}

/**
 * This method initializes remarkLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getRemarkLabel() {
	if (remarkLabel == null) {
		remarkLabel = new RLabel();
		remarkLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/substituteNote\")%>");
		remarkLabel.setStyle("rightAlignedLabel");
		remarkLabel.setStyleProperties("{/anchor \"NORTHWEST\"}");
		remarkLabel.setName("remarkLabel");
	}
	return remarkLabel;
}

/**
 * This method initializes saveButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getSaveButton() {
	if (saveButton == null) {
		saveButton = new RButton();
		saveButton.setText("<%= ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/ok\") %>");
		saveButton.setPreferredSize(new com.ulcjava.base.application.util.Dimension(100,25));
		saveButton.setName("saveButton");
		saveButton.setEnabler(getSubstituteLookupTextField());
	}
	return saveButton;
}

/**
 * This method initializes tablePopupMenu	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu	
 */
private RPopupMenu getTablePopupMenu() {
	if (tablePopupMenu == null) {
		tablePopupMenu = new RPopupMenu();
		tablePopupMenu.setName("tablePopupMenu");
		tablePopupMenu.setName("tablePopupMenu");
		tablePopupMenu.setName("tablePopupMenu");
		tablePopupMenu.add(getDeleteMenuItem());
	}
	return tablePopupMenu;
}

/**
 * This method initializes deleteMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getDeleteMenuItem() {
	if (deleteMenuItem == null) {
		deleteMenuItem = new RMenuItem();
		deleteMenuItem.setText("<%=ivy.cms.co(\"/Labels/Buttons/delete\")%>");
		deleteMenuItem.setIconUri("<%=ivy.cms.cr(\"/ch/xpertline/common/images/Delete16\")%>");
		deleteMenuItem.setName("deleteMenuItem");
	}
	return deleteMenuItem;
}

/**
 * This method initializes buttonGroupBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getButtonGroupBoxPane() {
	if (buttonGroupBoxPane == null) {
		buttonGroupBoxPane = new RBoxPane();
		buttonGroupBoxPane.setName("buttonGroupBoxPane");
		buttonGroupBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getPersonalRadioButton());
		buttonGroupBoxPane.set(0, 2, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getPersonalAllRolesRadioButton());
		buttonGroupBoxPane.set(0, 1, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getRoleBoxPane());
	}
	return buttonGroupBoxPane;
}

/**
 * This method initializes personalRadioButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RRadioButton	
 */
private RRadioButton getPersonalRadioButton() {
	if (personalRadioButton == null) {
		personalRadioButton = new RRadioButton();
		personalRadioButton.setName("personalRadioButton");
		personalRadioButton.setSelected(true);
		personalRadioButton.setStyleProperties("{/weightX \"1\"}");
		personalRadioButton.setStyle("mandatoryLeftAlignedRadioButton");
		personalRadioButton.setGroup(getUlcButtonGroup());
		personalRadioButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/substituteForPersonalTasks\")%>");
	}
	return personalRadioButton;
}

/**
 * This method initializes personalAllRolesRadioButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RRadioButton	
 */
private RRadioButton getPersonalAllRolesRadioButton() {
	if (personalAllRolesRadioButton == null) {
		personalAllRolesRadioButton = new RRadioButton();
		personalAllRolesRadioButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/substituteForAllMyTasks\")%>\n");
		personalAllRolesRadioButton.setVisible(false);
		personalAllRolesRadioButton.setStyle("mandatoryLeftAlignedRadioButton");
		personalAllRolesRadioButton.setGroup(getUlcButtonGroup());
		personalAllRolesRadioButton.setName("personalAllRolesRadioButton");
	}
	return personalAllRolesRadioButton;
}

/**
 * This method initializes roleRadioButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RRadioButton	
 */
private RRadioButton getRoleRadioButton() {
	if (roleRadioButton == null) {
		roleRadioButton = new RRadioButton();
		roleRadioButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/substituteForRole\")%>");
		roleRadioButton.setStyle("mandatoryLeftAlignedRadioButton");
		roleRadioButton.setGroup(getUlcButtonGroup());
		roleRadioButton.setName("roleRadioButton");
	}
	return roleRadioButton;
}

/**
 * This method initializes ulcButtonGroup	
 * 	
 * @return com.ulcjava.base.application.ULCButtonGroup	
 */
private ULCButtonGroup getUlcButtonGroup() {
	if (ulcButtonGroup == null) {
		ulcButtonGroup = new ULCButtonGroup();
	}
	return ulcButtonGroup;
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
		actionsFlowLayoutPane.setStyleProperties("{/alignment \"RIGHT\"}");
		actionsFlowLayoutPane.add(getSaveButton());
		actionsFlowLayoutPane.add(getCancelButton());
	}
	return actionsFlowLayoutPane;
}

/**
 * This method initializes cancelButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getCancelButton() {
	if (cancelButton == null) {
		cancelButton = new RButton();
		cancelButton.setText("<%= ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/cancel\") %>");
		cancelButton.setPreferredSize(new com.ulcjava.base.application.util.Dimension(100,25));
		cancelButton.setName("cancelButton");
	}
	return cancelButton;
}

/**
 * This method initializes substituteLookupTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLookupTextField	
 */
private RLookupTextField getSubstituteLookupTextField() {
	if (substituteLookupTextField == null) {
		substituteLookupTextField = new RLookupTextField();
		substituteLookupTextField.setText("");
		substituteLookupTextField.setModelConfiguration("{/result \"result=entry.getName() + (entry.getFullName() is initialized? \\\" (\\\" + entry.getFullName() + \\\")\\\": \\\"\\\")\"/version \"3.0\"}");
		substituteLookupTextField.setStyleProperties("{/weightX \"1\"}");
		substituteLookupTextField.setStyle("mandatoryLeftAlignedLookupTextField");
		
		URL iconUrl = getClass().getResource(iconPath);
		if (iconUrl != null)
		{
			ULCIcon indicatorIcon = new ULCIcon(iconUrl);
			substituteLookupTextField.setIndicatorIcon(indicatorIcon);
		}

		substituteLookupTextField.setName("substituteLookupTextField");
	}
	return substituteLookupTextField;
}

/**
 * This method initializes roleLookupTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLookupTextField	
 */
private RLookupTextField getRoleLookupTextField() {
	if (roleLookupTextField == null) {
		roleLookupTextField = new RLookupTextField();
		roleLookupTextField.setText("");
		roleLookupTextField.setModelConfiguration("{/result \"result=entry.getName() + (entry.getDisplayName() is initialized? \\\" (\\\" + entry.getDisplayName() + \\\")\\\": \\\"\\\")\"/version \"3.0\"}");
		roleLookupTextField.setForcedSelection(true);
		roleLookupTextField.setName("roleLookupTextField");
		roleLookupTextField.setStyleProperties("{/weightX \"1\"}");
		roleLookupTextField.setStyle("mandatoryLeftAlignedLookupTextField");
		roleLookupTextField.setEnabler(getRoleRadioButton());
		
		URL iconUrl = getClass().getResource(iconPath);
		if (iconUrl != null)
		{
			ULCIcon indicatorIcon = new ULCIcon(iconUrl);
			roleLookupTextField.setIndicatorIcon(indicatorIcon);
		}
	}
	return roleLookupTextField;
}

/**
 * This method initializes roleBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getRoleBoxPane() {
	if (roleBoxPane == null) {
		roleBoxPane = new RBoxPane();
		roleBoxPane.setName("roleBoxPane");
		roleBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getRoleRadioButton());
		roleBoxPane.set(1, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getRoleLookupTextField());
	}
	return roleBoxPane;
}

/**
 * This method initializes substituteActionsBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getSubstituteActionsBoxPane() {
	if (substituteActionsBoxPane == null) {
		RFiller hFiller = new RFiller();
		hFiller.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		substituteActionsBoxPane = new RBoxPane();
		substituteActionsBoxPane.setName("substituteActionsBoxPane");
		substituteActionsBoxPane.setStyleProperties("{/weightX \"1\"}");
		substituteActionsBoxPane.setStyleProperties("{/weightX \"1\"}");
		substituteActionsBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getAddButton());
		substituteActionsBoxPane.set(1, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getDeleteButton());
		substituteActionsBoxPane.set(2, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, hFiller);
	}
	return substituteActionsBoxPane;
}

/**
 * This method initializes remarkScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getRemarkScrollPane() {
	if (remarkScrollPane == null) {
		remarkScrollPane = new RScrollPane();
		remarkScrollPane.setName("remarkScrollPane");
		remarkScrollPane.setStyleProperties("{/insetsLeft \"0\"}");
		remarkScrollPane.setViewPortView(getRemarkTextArea());
	}
	return remarkScrollPane;
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
		headerBoxPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		headerBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getHeader());
	}
	return headerBoxPane;
}

/**
 * This method initializes header, an embedded RichDialog.
 * The created object might have a different type than the declared
 * class due to overriding.
 * @returns com.ulcjava.base.application.ULCContainer 
 */
private ULCContainer getHeader() {
	if (header == null) {
		header = RichDialogPanelFactory.create(HeaderPanel.class);
		header.setName("header");
		header.setStyleProperties("{/weightX \"1\"}");
		header.setPreferredSize(new Dimension(20, 75));
	}
	return header;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"