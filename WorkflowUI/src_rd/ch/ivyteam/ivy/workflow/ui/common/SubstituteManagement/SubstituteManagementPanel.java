package ch.ivyteam.ivy.workflow.ui.common.SubstituteManagement;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.workflow.ui.common.Header.HeaderPanel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RToolBar;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.containers.RCollapsiblePane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.border.ULCTitledBorder;
import com.ulcjava.base.application.util.Font;
import com.ulcjava.base.application.util.Color;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RTable;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RComboBox;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextArea;
import com.ulcjava.base.application.ULCTable;
import ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu;
import ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem;
import ch.ivyteam.ivy.richdialog.widgets.components.RRadioButton;
import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import com.ulcjava.base.application.ULCContainer;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;

/**
 * RichDialog panel implementation for SubstituteManagementPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class SubstituteManagementPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
@EmbeddedRichDialog(HeaderPanel.class) private ULCContainer header = null;
private RToolBar substituteToolBar = null;
private RButton addButton = null;
private RButton deleteButton = null;
private RCollapsiblePane addCollapsiblePane = null;
private RGridBagLayoutPane addGridBagLayoutPane = null;
private RScrollPane ScrollPane = null;
private RTable substituteTable = null;
private RLabel substituteLabel = null;
private RComboBox substituteComboBox = null;
private RLabel forRoleLabel = null;
private RTextArea remarkTextArea = null;
private RLabel remarkLabel = null;
private RButton saveButton = null;
private RLabel errorLabel = null;
private RPopupMenu tablePopupMenu = null;
private RMenuItem deleteMenuItem = null;
private RBoxPane buttonGroupBoxPane = null;
private RRadioButton personalRadioButton = null;
private RRadioButton personalAllRolesRadioButton = null;
private RRadioButton roleRadioButton = null;
private RComboBox roleComboBox = null;
private RButton exitButton = null;
/**
   * Create a new instance of SubstituteManagementPanel
   */
  public SubstituteManagementPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes SubstituteManagementPanel
   * @return void
   */
  public void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(531,481));
        this.add(getHeader(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getSubstituteToolBar(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getAddCollapsiblePane(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getScrollPane(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getErrorLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes header	
 * 	
 * @return ch.xpertline.common.ria.component.Header.HeaderPanel	
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
 * This method initializes substituteToolBar	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RToolBar	
 */
private RToolBar getSubstituteToolBar() {
	if (substituteToolBar == null) {
		RFiller Filler2 = new RFiller();
		substituteToolBar = new RToolBar();
		substituteToolBar.setName("substituteToolBar");
		substituteToolBar.setFloatable(false);
		substituteToolBar.add(getAddButton());
		substituteToolBar.add(getDeleteButton());
		substituteToolBar.add(Filler2);
		substituteToolBar.add(getExitButton());
	}
	return substituteToolBar;
}

/**
 * This method initializes addButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getAddButton() {
	if (addButton == null) {
		addButton = new RButton();
		addButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/add16\")%>");
		addButton.setToolTipText("<%= ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/addSubstitute\") %>");
		addButton.setName("addButton");
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
		deleteButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/delete16\")%>");
		deleteButton.setToolTipText("<%= ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/removeSubstitute\") %>");
		deleteButton.setName("deleteButton");
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
		RFiller Filler1 = new RFiller();
		Filler1.setStyle("horizontalStrut150");
		Filler1.setStyleProperties("{/preferredSizeWidth \"350\"}");
		RFiller Filler = new RFiller();
		Filler.setStyle("horizontalGlue");
		addGridBagLayoutPane = new RGridBagLayoutPane();
		addGridBagLayoutPane.setName("addGridBagLayoutPane");
		addGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(null, "Add new substitute", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
		addGridBagLayoutPane.setName("addGridBagLayoutPane");
		addGridBagLayoutPane.add(getSubstituteLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		addGridBagLayoutPane.add(getSubstituteComboBox(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		addGridBagLayoutPane.add(getForRoleLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		addGridBagLayoutPane.add(Filler, new com.ulcjava.base.application.GridBagConstraints(2, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		addGridBagLayoutPane.add(Filler1, new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		addGridBagLayoutPane.add(getRemarkTextArea(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		addGridBagLayoutPane.add(getRemarkLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		addGridBagLayoutPane.add(getSaveButton(), new com.ulcjava.base.application.GridBagConstraints(1, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		addGridBagLayoutPane.add(getButtonGroupBoxPane(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
		ScrollPane.setStyleProperties("{/weightY \"1\"/weightX \"1\"}");
		ScrollPane.setBorder(BorderFactory.createTitledBorder(null, "Active Substitutions", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
		ScrollPane.setViewPortView(getSubstituteTable());
	}
	return ScrollPane;
}

/**
 * This method initializes substituteTable	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTable	
 */
private RTable getSubstituteTable() {
	if (substituteTable == null) {
		substituteTable = new RTable();
		substituteTable.setName("substituteTable");
		substituteTable.setModelConfiguration("{/showTableheader \"true\"/autoTableheader \"false\"/showtooltip \"false\"/showIcons \"false\"/version \"2.0\"/emptyTableText \"n/a\"/columns {{/result \"result=entry.getSubstituteUser().getName()\"/version \"2.0\"/tooltip \"\"/icon \"\"/header \"User\"/field \"\"/columnWidth \"100\"}{/result \"result=entry.getSubstituteUser().fullName\"/version \"2.0\"/tooltip \"\"/icon \"\"/header \"Full name\"/field \"\"/columnWidth \"150\"}{/result \"result=IF(entry.isPersonallyOnly(),\\r\\n\\\"for direct usertasks only\\\",\\r\\nentry.getSubstitutionRole().getName() + \\\" \\\" +\\r\\nentry.getSubstitutionRole().getDisplayName())\"/version \"2.0\"/tooltip \"\"/icon \"\"/header \"Role\"/field \"\"/columnWidth \"150\"}{/result \"result=entry.getDescription()\"/version \"2.0\"/tooltip \"\"/icon \"\"/header \"Remark\"/field \"\"/columnWidth \"350\"}}}");
		substituteTable.setAutoResizeMode(ULCTable.AUTO_RESIZE_SUBSEQUENT_COLUMNS);
		substituteTable.setBackground(Color.white);
		substituteTable.setComponentPopupMenu(null);
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
		substituteLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/BUSINESS_MAIN_CONTACT_ID16\")%>");
		substituteLabel.setName("substituteLabel");
	}
	return substituteLabel;
}

/**
 * This method initializes substituteComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getSubstituteComboBox() {
	if (substituteComboBox == null) {
		substituteComboBox = new RComboBox();
		substituteComboBox.setName("substituteComboBox");
		substituteComboBox.setModelConfiguration("{/result \"result=entry.getName() + \\\" [\\\" + entry.getFullName() + \\\"]\\\"\"/version \"2.0\"/icon \"result=ivy.cms.cr(\\\"/ch/ivyteam/ivy/workflow/ui/case/images/BUSINESS_MAIN_CONTACT_ID16\\\")\"/tooltip \"\"/emptyTableText \"no substitutes found\"}");
	}
	return substituteComboBox;
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
		forRoleLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/security/images/securityMember16\")%>");
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
		remarkTextArea.setStyleProperties("{/backgroundColor {/b \"204\"/r \"255\"/g \"255\"}}");
		remarkTextArea.setBorder(BorderFactory.createLineBorder(Color.gray, 1));
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
		remarkLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/CASE_ID16\")%>");
		remarkLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/substituteNote\")%>");
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
		saveButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/ok16\")%>");
		saveButton.setName("saveButton");
	}
	return saveButton;
}

/**
 * This method initializes errorLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getErrorLabel() {
	if (errorLabel == null) {
		errorLabel = new RLabel();
		errorLabel.setText("Label...");
		errorLabel.setStyleProperties("{/foregroundColor {/b \"0\"/r \"153\"/g \"0\"}}");
		errorLabel.setName("errorLabel");
	}
	return errorLabel;
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
		buttonGroupBoxPane.setButtonGroup(true);
		buttonGroupBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getPersonalRadioButton());
		buttonGroupBoxPane.set(0, 1, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getPersonalAllRolesRadioButton());
		buttonGroupBoxPane.set(0, 2, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getRoleRadioButton());
		buttonGroupBoxPane.set(1, 2, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getRoleComboBox());
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
		personalRadioButton.setText("<%= ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/user\") %>");
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
		personalAllRolesRadioButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/andAllRoles\")%>\n");
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
		roleRadioButton.setText("<%= ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/role\") %>");
		roleRadioButton.setName("roleRadioButton");
	}
	return roleRadioButton;
}

/**
 * This method initializes roleComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getRoleComboBox() {
	if (roleComboBox == null) {
		roleComboBox = new RComboBox();
		roleComboBox.setName("roleComboBox");
		roleComboBox.setModelConfiguration("{/result \"result=entry.getName() + \\\" \\\" + \\r\\nentry.getDisplayName()\"/version \"2.0\"/icon \"result=ivy.cms.cr(\\\"/ch/ivyteam/ivy/workflow/ui/case/images/BUSINESS_CREATOR_USER16\\\")\"/tooltip \"\"/emptyTableText \"n/a\"}");
		roleComboBox.setEnabler(getRoleRadioButton());
		roleComboBox.setStyleProperties("{/weightX \"1\"}");
	}
	return roleComboBox; 
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
		exitButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/close\")%>");
	}
	return exitButton;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"