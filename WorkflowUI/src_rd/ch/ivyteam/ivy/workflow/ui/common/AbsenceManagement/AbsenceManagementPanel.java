package ch.ivyteam.ivy.workflow.ui.common.AbsenceManagement;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.workflow.ui.common.Header.HeaderPanel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RToolBar;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RTable;
import ch.ivyteam.ivy.richdialog.widgets.containers.RCollapsiblePane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RDatePicker;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.border.ULCTitledBorder;
import com.ulcjava.base.application.util.Font;
import com.ulcjava.base.application.util.Color;
import com.ulcjava.base.application.ULCTable;
import ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu;
import ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem;
import java.awt.event.KeyEvent;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import com.ulcjava.base.application.ULCContainer;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;

/**
 * RichDialog panel implementation for AbsenceManagementPanel.
 * @author <%=author%>
 * @since <%=date%> 
 */
public class AbsenceManagementPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
@EmbeddedRichDialog(HeaderPanel.class) private ULCContainer header = null;
private RToolBar absenceToolBar = null;
private RButton addButton = null;
private RButton deleteButton = null;
private RCollapsiblePane addCollapsiblePane = null;
private RScrollPane absenceScrollPane = null;
private RTable absenceTable = null;
private RGridBagLayoutPane addGridBagLayoutPane = null;
private RLabel startLabel = null;
private RLabel endLabel = null;
private RLabel descLabel = null;
private RDatePicker startDatePicker = null;
private RDatePicker endDatePicker = null;
private RTextField descTextField = null;
private RButton saveButton = null;
private RLabel errorMessageLabel = null;
private RPopupMenu absenceListPopupMenu = null;
private RMenuItem deleteMenuItem = null;
private RButton exitButton = null;
/**
   * Create a new instance of AbsenceManagementPanel
   */
  public AbsenceManagementPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes AbsenceManagementPanel
   * @return void
   */
  public void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(523,469));
        this.add(getHeader(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getAbsenceToolBar(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getAddCollapsiblePane(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getAbsenceScrollPane(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getErrorMessageLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
		header.setToolTipText("\n");
		header.setStyleProperties("{/weightX \"1\"}");
	}
	return header;
}

/**
 * This method initializes absenceToolBar	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RToolBar	
 */
private RToolBar getAbsenceToolBar() {
	if (absenceToolBar == null) {
		RFiller Filler = new RFiller();
		absenceToolBar = new RToolBar();
		absenceToolBar.setName("absenceToolBar");
		absenceToolBar.setFloatable(false);
		absenceToolBar.add(getAddButton());
		absenceToolBar.add(getDeleteButton());
		absenceToolBar.add(Filler);
		absenceToolBar.add(getExitButton());
	}
	return absenceToolBar;
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
		addButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/addAbsence\")%>");
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
		deleteButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/removeAbsence\")%>");
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
 * This method initializes absenceScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getAbsenceScrollPane() {
	if (absenceScrollPane == null) {
		absenceScrollPane = new RScrollPane();
		absenceScrollPane.setName("absenceScrollPane");
		absenceScrollPane.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		absenceScrollPane.setBorder(BorderFactory.createTitledBorder(null, "Your list of absences", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
		absenceScrollPane.setViewPortView(getAbsenceTable());
	}
	return absenceScrollPane;
}

/**
 * This method initializes absenceTable	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTable	
 */
private RTable getAbsenceTable() {
	if (absenceTable == null) {
		absenceTable = new RTable();
		absenceTable.setName("absenceTable");
		absenceTable.setModelConfiguration("{/showTableheader \"true\"/autoTableheader \"false\"/showtooltip \"false\"/showIcons \"true\"/emptyTableText \"n/a\"/version \"2.0\"/columns {{/result \"result=(entry.getStartTimestamp() as Date).format(\\\"short\\\")\"/version \"2.0\"/tooltip \"\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/common/images/calendarUp16\\\"\"/header \"Start\"/field \"\"/columnWidth \"10\"/columnStyle \"\"}{/result \"result=(entry.getStopTimestamp() as Date).format(\\\"short\\\")\"/version \"2.0\"/tooltip \"\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/common/images/calendarDown16\\\"\"/header \"End\"/field \"\"/columnWidth \"10\"}{/result \"result=entry.getDescription()\"/version \"2.0\"/tooltip \"\"/icon \"\"/header \"Description\"/field \"\"}}}");
		absenceTable.setAutoResizeMode(ULCTable.AUTO_RESIZE_SUBSEQUENT_COLUMNS);
		absenceTable.setComponentPopupMenu(null);
		absenceTable.setSortable(true);
	}
	return absenceTable;
}

/**
 * This method initializes addGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getAddGridBagLayoutPane() {
	if (addGridBagLayoutPane == null) {
		RFiller endFiller = new RFiller();
		endFiller.setStyle("horizontalStrut150");
		endFiller.setStyleProperties("{/preferredSizeWidth \"100\"/preferredSizeHeight \"0\"}");
		RFiller startFiller = new RFiller();
		startFiller.setStyle("horizontalStrut150");
		startFiller.setStyleProperties("{/preferredSizeWidth \"100\"/preferredSizeHeight \"0\"}");
		addGridBagLayoutPane = new RGridBagLayoutPane();
		addGridBagLayoutPane.setName("addGridBagLayoutPane");
		addGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(null, "Add new absence", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
		addGridBagLayoutPane.add(getStartLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		addGridBagLayoutPane.add(getEndLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		addGridBagLayoutPane.add(getDescLabel(), new com.ulcjava.base.application.GridBagConstraints(2, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		addGridBagLayoutPane.add(getStartDatePicker(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		addGridBagLayoutPane.add(getEndDatePicker(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		addGridBagLayoutPane.add(getDescTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		addGridBagLayoutPane.add(getSaveButton(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		addGridBagLayoutPane.add(startFiller, new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		addGridBagLayoutPane.add(endFiller, new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return addGridBagLayoutPane;
}

/**
 * This method initializes startLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getStartLabel() {
	if (startLabel == null) {
		startLabel = new RLabel();
		startLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/startDate\")%>");
		startLabel.setDisplayedMnemonic(KeyEvent.VK_S);
		startLabel.setLabelFor(getStartDatePicker());
		startLabel.setName("startLabel");
	}
	return startLabel;
}

/**
 * This method initializes endLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getEndLabel() {
	if (endLabel == null) {
		endLabel = new RLabel();
		endLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/endDate\")%>");
		endLabel.setName("endLabel");
	}
	return endLabel;
}

/**
 * This method initializes descLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getDescLabel() {
	if (descLabel == null) {
		descLabel = new RLabel();
		descLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/description\")%>");
		descLabel.setName("descLabel");
	}
	return descLabel;
}

/**
 * This method initializes startDatePicker	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RDatePicker	
 */
private RDatePicker getStartDatePicker() {
	if (startDatePicker == null) {
		startDatePicker = new RDatePicker();
		startDatePicker.setName("startDatePicker");
		startDatePicker.setStyleProperties("{/fill \"HORIZONTAL\"}");
	}
	return startDatePicker;
}

/**
 * This method initializes endDatePicker	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RDatePicker	
 */
private RDatePicker getEndDatePicker() {
	if (endDatePicker == null) {
		endDatePicker = new RDatePicker();
		endDatePicker.setName("endDatePicker");
	}
	return endDatePicker;
}

/**
 * This method initializes descTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getDescTextField() {
	if (descTextField == null) {
		descTextField = new RTextField();
		descTextField.setText("RTextField");
		descTextField.setStyleProperties("{/weightX \"1\"}");
		descTextField.setName("descTextField");
	}
	return descTextField;
}

/**
 * This method initializes saveButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getSaveButton() {
	if (saveButton == null) {
		saveButton = new RButton();
		saveButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/ok\")%>");
		saveButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/ok16\")%>");
		saveButton.setName("saveButton");
	}
	return saveButton;
}

/**
 * This method initializes errorMessageLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getErrorMessageLabel() {
	if (errorMessageLabel == null) {
		errorMessageLabel = new RLabel();
		errorMessageLabel.setText("RLabel");
		errorMessageLabel.setStyleProperties("{/foregroundColor {/b \"51\"/r \"153\"/g \"0\"}}");
		errorMessageLabel.setName("errorMessageLabel");
	}
	return errorMessageLabel;
}

/**
 * This method initializes absenceListPopupMenu	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu	
 */
private RPopupMenu getAbsenceListPopupMenu() {
	if (absenceListPopupMenu == null) {
		absenceListPopupMenu = new RPopupMenu();
		absenceListPopupMenu.setName("absenceListPopupMenu");
		absenceListPopupMenu.add(getDeleteMenuItem());
	}
	return absenceListPopupMenu;
}

/**
 * This method initializes deleteMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getDeleteMenuItem() {
	if (deleteMenuItem == null) {
		deleteMenuItem = new RMenuItem();
		deleteMenuItem.setIconUri("<%=ivy.cms.cr(\"/ch/xpertline/common/images/Cancel16\")%>");
		deleteMenuItem.setText("<%=ivy.cms.co(\"/Labels/Buttons/delete\")%>");
		deleteMenuItem.setName("deleteMenuItem");
	}
	return deleteMenuItem;
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