package ch.ivyteam.ivy.workflow.ui.administration.UserAbsenceDisplayList;

import java.awt.event.KeyEvent;

import ch.ivyteam.ivy.addons.widgets.RTableWithExcelExport;
import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RDatePicker;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RCollapsiblePane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RToolBar;
import ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem;
import ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu;
import ch.ivyteam.ivy.workflow.ui.common.Header.HeaderPanel;
import ch.ivyteam.ivy.workflow.ui.utils.UIHelper;

import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.ULCContainer;
import com.ulcjava.base.application.ULCFlowLayoutPane;
import com.ulcjava.base.application.ULCListSelectionModel;
import com.ulcjava.base.application.ULCTable;

/**
 * RichDialog panel implementation for AbsenceManagementPanel.
 * @author <%=author%>
 * @since <%=date%> 
 */
public class UserAbsenceDisplayListPanel extends RichDialogGridBagPanel 
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
private RTableWithExcelExport absenceTable = null;
private RGridBagLayoutPane addGridBagLayoutPane = null;
private RLabel startLabel = null;
private RLabel endLabel = null;
private RLabel descLabel = null;
private RDatePicker startDatePicker = null;
private RDatePicker endDatePicker = null;
private RTextField descTextField = null;
private RButton okButton = null;
private RLabel errorMessageLabel = null;
private RPopupMenu absenceListPopupMenu = null;
private RMenuItem deleteMenuItem = null;
private RFlowLayoutPane actionsFlowLayoutPane = null;
private RButton cancelButton = null;
private RBoxPane headerBoxPane = null;
private RBoxPane absenceActionsBoxPane = null;
/**
   * Create a new instance of AbsenceManagementPanel
   */
  public UserAbsenceDisplayListPanel()
  {
    super();
    initialize();
    
    // prettify text fields
    UIHelper.prettifyComponent(this);    
  }
  
  /**
   * This method initializes AbsenceManagementPanel
   * @return void
   */
  public void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(523,469));
        this.add(getAbsenceToolBar(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getAddCollapsiblePane(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getAbsenceScrollPane(), new com.ulcjava.base.application.GridBagConstraints(0, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getErrorMessageLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getHeaderBoxPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getAbsenceActionsBoxPane(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
		header.setPreferredSize(new com.ulcjava.base.application.util.Dimension(20,75));
		header.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
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
		absenceToolBar.setVisible(false);
		absenceToolBar.add(Filler);
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
		addButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/add32\")%>");
		addButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/addAbsence\")%>");
		addButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/add\")%>\n");
		addButton.setStyle("toolBarButton");
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
		deleteButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/removeAbsence\")%>");
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
		absenceScrollPane.setViewPortView(getAbsenceTable());
	}
	return absenceScrollPane;
}

/**
 * This method initializes absenceTable	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTable	
 */
private RTableWithExcelExport getAbsenceTable() {
	if (absenceTable == null) {
		absenceTable = new RTableWithExcelExport();
		absenceTable.setName("absenceTable");
		absenceTable.setModelConfiguration("{/showTableheader true /autoTableheader false /showtooltip false /showIcons false /emptyTableText \"\"/version \"3.0\"/columns {{/result \"result=entry.getStartTimestamp().format(ivy.var.xivy_workflow_ui_restricted_dateFormatPattern)\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/from\\\")\"/field \"\"/columnWidth \"100\"/columnStyle \"\"}{/result \"result=entry.getStopTimestamp().format(ivy.var.xivy_workflow_ui_restricted_dateFormatPattern)\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/until\\\")\"/field \"\"/columnWidth \"100\"}{/result \"result=entry.getDescription()\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/description\\\")\"/field \"\"/columnWidth \"550\"}}}");
		absenceTable.setAutoResizeMode(ULCTable.AUTO_RESIZE_LAST_COLUMN);
		absenceTable.setSelectionMode(ULCListSelectionModel.MULTIPLE_INTERVAL_SELECTION);
		absenceTable.setRowHeight(20);
		absenceTable.setComponentPopupMenu(getAbsenceListPopupMenu());
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
		RFiller horizFiller1 = new RFiller();
		horizFiller1.setStyleProperties("{/weightX \"0.25\"}");
		RFiller endFiller = new RFiller();
		endFiller.setStyle("horizontalStrut150");
		endFiller.setStyleProperties("{/preferredSizeWidth \"100\"/preferredSizeHeight \"0\"}");
		RFiller startFiller = new RFiller();
		startFiller.setStyle("horizontalStrut150");
		startFiller.setStyleProperties("{/preferredSizeWidth \"100\"/preferredSizeHeight \"0\"}");
		addGridBagLayoutPane = new RGridBagLayoutPane();
		addGridBagLayoutPane.setName("addGridBagLayoutPane");
		addGridBagLayoutPane.add(getStartLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		addGridBagLayoutPane.add(getEndLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		addGridBagLayoutPane.add(getDescLabel(), new com.ulcjava.base.application.GridBagConstraints(2, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		addGridBagLayoutPane.add(getStartDatePicker(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		addGridBagLayoutPane.add(getEndDatePicker(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		addGridBagLayoutPane.add(getDescTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		addGridBagLayoutPane.add(startFiller, new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		addGridBagLayoutPane.add(endFiller, new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		addGridBagLayoutPane.add(getActionsFlowLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		addGridBagLayoutPane.add(horizFiller1, new com.ulcjava.base.application.GridBagConstraints(3, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
		startLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/from\")%>\n");
		startLabel.setDisplayedMnemonic(KeyEvent.VK_S);
		startLabel.setStyle("mandatoryLeftAlignedLabel");
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
		endLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/until\")%>");
		endLabel.setStyle("mandatoryLeftAlignedLabel");
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
		descLabel.setStyle("mandatoryLeftAlignedLabel");
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
		startDatePicker.setStyle("mandatoryLeftAlignedDatePicker");
		startDatePicker.setBorder(BorderFactory.createEmptyBorder(0, 0, 0, 0));
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
		endDatePicker.setBorder(BorderFactory.createEmptyBorder(0, 0, 0, 0));
		endDatePicker.setStyle("mandatoryLeftAlignedDatePicker");
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
		descTextField.setText("");
		descTextField.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		descTextField.setStyle("displayedLeftAlignedTextField");
		descTextField.setMandatory(true);
		descTextField.setName("descTextField");
	}
	return descTextField;
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
		okButton.setEnabler(getDescTextField());
		okButton.setName("okButton");
	}
	return okButton;
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
 * This method initializes headerBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getHeaderBoxPane() {
	if (headerBoxPane == null) {
		headerBoxPane = new RBoxPane();
		headerBoxPane.setName("headerBoxPane");
		headerBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getHeader());
	}
	return headerBoxPane;
}

/**
 * This method initializes absenceActionsBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getAbsenceActionsBoxPane() {
	if (absenceActionsBoxPane == null) {
		RFiller hFiller1 = new RFiller();
		hFiller1.setStyleProperties("{/weightX \"1\"}");
		absenceActionsBoxPane = new RBoxPane();
		absenceActionsBoxPane.setName("absenceActionsBoxPane");
		absenceActionsBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getAddButton());
		absenceActionsBoxPane.set(1, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getDeleteButton());
		absenceActionsBoxPane.set(2, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, hFiller1);
	}
	return absenceActionsBoxPane;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"