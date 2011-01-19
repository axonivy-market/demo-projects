package ch.ivyteam.ivy.workflow.ui.task.TaskNoteDisplayList;

import ch.ivyteam.ivy.addons.widgets.RTableWithExcelExport;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextArea;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RCollapsiblePane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;

import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.ULCFlowLayoutPane;
import com.ulcjava.base.application.ULCListSelectionModel;
import com.ulcjava.base.application.ULCTable;
import com.ulcjava.base.application.border.ULCTitledBorder;
import com.ulcjava.base.application.util.Color;
import com.ulcjava.base.application.util.Dimension;
import com.ulcjava.base.application.util.Font;

/**
 * RichDialog panel implementation for CaseNoteDisplayListPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class TaskNoteDisplayListPanel extends RichDialogBorderPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RHyperlink addNoteButton = null;
private RHyperlink deleteNoteButton = null;
private RCollapsiblePane addNoteCollapsiblePane = null;
private RFlowLayoutPane addNoteFlowLayoutPane = null;
private RButton okButton = null;
private RButton cancelButton = null;
private RLabel messageLabel = null;
private RScrollPane noteScrollPane = null;
private RTextArea noteTextArea = null;
private RScrollPane taskNotesScrollPane = null;
private RTableWithExcelExport taskNotesTable = null;
private RLabel footerLabel = null;
private RLabel noteIdLabel = null;
private RLabel noteCreationTimestampLabel = null;
private RLabel noteWritterLabel = null;
private RGridBagLayoutPane noteDetailsEditGridBagLayoutPane = null;
private RTextField noteIdTextField = null;
private RTextField noteWritterTextField = null;
private RTextField noteCreationTimestampTextField = null;
private RGridBagLayoutPane noteDetailsIdWritterCreationTimestampGridBagLayoutPane = null;
private RBoxPane notesBoxPane = null;
private RBoxPane noteActionsBoxPane = null;
  
  /**
   * Create a new instance of CaseNoteDisplayListPanel
   */
  public TaskNoteDisplayListPanel()
  {
    super();
    initialize();  
  }
  
  /**
   * This method initializes CaseNoteDisplayListPanel
   * @return void
   */
  public void initialize()
  {
                this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(450,300));
                this.add(getFooterLabel(), com.ulcjava.base.application.ULCBorderLayoutPane.SOUTH);
                this.add(getNotesBoxPane(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
  }

/**
 * This method initializes addNoteButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RHyperlink getAddNoteButton() {
	if (addNoteButton == null) {
		addNoteButton = new RHyperlink();
		addNoteButton.setName("addNoteButton");
		addNoteButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/note/images/add32\")%>");
		addNoteButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/add\")%>");
		addNoteButton.setStyle("toolBarButton");
		addNoteButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/note/plainStrings/addNote\")%>");
	}
	return addNoteButton;
}

/**
 * This method initializes deleteNoteButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RHyperlink getDeleteNoteButton() {
	if (deleteNoteButton == null) {
		deleteNoteButton = new RHyperlink();
		deleteNoteButton.setName("deleteNoteButton");
		deleteNoteButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/note/images/delete32\")%>");
		deleteNoteButton.setStyle("toolBarButton");
		deleteNoteButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/remove\")%>\n");
		deleteNoteButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/note/plainStrings/deleteNote\")%>");
	}
	return deleteNoteButton;
}

/**
 * This method initializes addNoteCollapsiblePane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RCollapsiblePane	
 */
private RCollapsiblePane getAddNoteCollapsiblePane() {
	if (addNoteCollapsiblePane == null) {
		addNoteCollapsiblePane = new RCollapsiblePane();
		addNoteCollapsiblePane.setName("addNoteCollapsiblePane");
		addNoteCollapsiblePane.setCollapsed(true);
		addNoteCollapsiblePane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		addNoteCollapsiblePane.add(getNoteDetailsEditGridBagLayoutPane());
	}
	return addNoteCollapsiblePane;
}

/**
 * This method initializes addNoteFlowLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane	
 */
private RFlowLayoutPane getAddNoteFlowLayoutPane() {
	if (addNoteFlowLayoutPane == null) {
		addNoteFlowLayoutPane = new RFlowLayoutPane();
		addNoteFlowLayoutPane.setName("addNoteFlowLayoutPane");
		addNoteFlowLayoutPane.setAlignment(ULCFlowLayoutPane.RIGHT);
		addNoteFlowLayoutPane.setStyleProperties("{/fill \"HORIZONTAL\"}");
			addNoteFlowLayoutPane.setName("addNoteFlowLayoutPane");
	addNoteFlowLayoutPane.add(getOkButton());
		addNoteFlowLayoutPane.add(getCancelButton());
	}
	return addNoteFlowLayoutPane;
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
 * This method initializes messageLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getMessageLabel() {
	if (messageLabel == null) {
		messageLabel = new RLabel();
		messageLabel.setName("messageLabel");
		messageLabel.setStyle("mandatoryRightAlignedLabel");
		messageLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/note/plainStrings/noteText\")%>");
	}
	return messageLabel;
}

/**
 * This method initializes noteScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getNoteScrollPane() {
	if (noteScrollPane == null) {
		noteScrollPane = new RScrollPane();
		noteScrollPane.setName("noteScrollPane");
		noteScrollPane.setStyleProperties("{/weightY \"1\"/weightX \"1\"}");
		noteScrollPane.setViewPortView(getNoteTextArea());
	}
	return noteScrollPane;
}

/**
 * This method initializes noteTextArea	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextArea	
 */
private RTextArea getNoteTextArea() {
	if (noteTextArea == null) {
		noteTextArea = new RTextArea();
		noteTextArea.setName("noteTextArea");
		noteTextArea.setRows(5);
		noteTextArea.setColumns(20);
		noteTextArea.setStyleProperties("{/anchor \"WEST\"/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		noteTextArea.setStyle("displayedLeftAlignedTextArea");
		noteTextArea.setText("");
	}
	return noteTextArea;
}

/**
 * This method initializes taskNotesScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getTaskNotesScrollPane() {
	if (taskNotesScrollPane == null) {
		taskNotesScrollPane = new RScrollPane();
		taskNotesScrollPane.setName("taskNotesScrollPane");
			taskNotesScrollPane.setStyleProperties("{/weightY \"1\"/weightX \"1\"}");
			taskNotesScrollPane.setName("taskNotesScrollPane");
	taskNotesScrollPane.setViewPortView(getTaskNotesTable());
	}
	return taskNotesScrollPane;
}

/**
 * This method initializes taskNotesTable	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTable	
 */
private RTableWithExcelExport getTaskNotesTable() {
	if (taskNotesTable == null) {
		taskNotesTable = new RTableWithExcelExport();
		taskNotesTable.setName("taskNotesTable");
		taskNotesTable.setAutoResizeMode(ULCTable.AUTO_RESIZE_NEXT_COLUMN);
		taskNotesTable.setPreferredScrollableViewportSize(new com.ulcjava.base.application.util.Dimension(250,200));
		taskNotesTable.setSelectionMode(ULCListSelectionModel.SINGLE_SELECTION);
		taskNotesTable.setSortable(true);
		taskNotesTable.setModelConfiguration("{/showTableheader true /autoTableheader false /showtooltip true /showIcons false /version \"3.0\"/emptyTableText \"\"/columns {{/result \"result=entry.getIdentifier()\"/version \"3.0\"/tooltip \"result=entry.getIdentifier()\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/note/plainStrings/noteId\\\")\"/field \"\"/columnWidth \"100\"}{/result \"result=entry.getMessage()\"/version \"3.0\"/tooltip \"result=entry.getMessage()\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/note/plainStrings/noteText\\\")\"/field \"\"/columnWidth \"450\"}{/result \"result=entry.getWritterName()\"/version \"3.0\"/tooltip \"result=entry.getWritterName()\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/note/plainStrings/noteWritter\\\")\"/field \"\"/columnWidth \"200\"}{/result \"result=entry.getCreationTimestamp().format()\"/version \"3.0\"/tooltip \"result=entry.getCreationTimestamp().format()\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/note/plainStrings/noteCreationTimestamp\\\")\"/field \"\"}}}");
		taskNotesTable.setRowHeight(20);
		taskNotesTable.setPreferredSize(new com.ulcjava.base.application.util.Dimension(250,200));
	}
	return taskNotesTable;
}

/**
 * This method initializes footerLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getFooterLabel() {
	if (footerLabel == null) {
		footerLabel = new RLabel();
		footerLabel.setText("...");
		footerLabel.setName("footerLabel");
	}
	return footerLabel;
}

/**
 * This method initializes noteIdLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getNoteIdLabel() {
	if (noteIdLabel == null) {
		noteIdLabel = new RLabel();
		noteIdLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/note/plainStrings/noteId\")%>");
		noteIdLabel.setStyle("rightAlignedLabel");
		noteIdLabel.setName("noteIdLabel");
	}
	return noteIdLabel;
}

/**
 * This method initializes noteCreationTimestampLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getNoteCreationTimestampLabel() {
	if (noteCreationTimestampLabel == null) {
		noteCreationTimestampLabel = new RLabel();
		noteCreationTimestampLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/note/plainStrings/noteCreationTimestamp\")%>");
		noteCreationTimestampLabel.setStyle("rightAlignedLabel");
		noteCreationTimestampLabel.setName("noteCreationTimestampLabel");
	}
	return noteCreationTimestampLabel;
}

/**
 * This method initializes noteWritterLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getNoteWritterLabel() {
	if (noteWritterLabel == null) {
		noteWritterLabel = new RLabel();
		noteWritterLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/note/plainStrings/noteWritter\")%>");
		noteWritterLabel.setStyle("rightAlignedLabel");
		noteWritterLabel.setName("noteWritterLabel");
	}
	return noteWritterLabel;
}

/**
 * This method initializes noteDetailsEditGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getNoteDetailsEditGridBagLayoutPane() {
	if (noteDetailsEditGridBagLayoutPane == null) {
		RFiller aFiller2 = new RFiller();
		aFiller2.setStyleProperties("{/preferredSizeWidth \"100\"}");
		noteDetailsEditGridBagLayoutPane = new RGridBagLayoutPane();
		noteDetailsEditGridBagLayoutPane.setName("noteDetailsEditGridBagLayoutPane");
		noteDetailsEditGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(null, "Task note details", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
		noteDetailsEditGridBagLayoutPane.add(getNoteDetailsIdWritterCreationTimestampGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		noteDetailsEditGridBagLayoutPane.add(getMessageLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		noteDetailsEditGridBagLayoutPane.add(getNoteScrollPane(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		noteDetailsEditGridBagLayoutPane.add(getAddNoteFlowLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		noteDetailsEditGridBagLayoutPane.add(aFiller2, new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return noteDetailsEditGridBagLayoutPane;
}

/**
 * This method initializes noteIdTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getNoteIdTextField() {
	if (noteIdTextField == null) {
		noteIdTextField = new RTextField();
		noteIdTextField.setText("");
		noteIdTextField.setEditable(false);
		noteIdTextField.setStyleProperties("{/weightX \"1\"}");
		noteIdTextField.setStyle("displayedLeftAlignedTextField");
		noteIdTextField.setName("noteIdTextField");
	}
	return noteIdTextField;
}

/**
 * This method initializes noteWritterTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getNoteWritterTextField() {
	if (noteWritterTextField == null) {
		noteWritterTextField = new RTextField();
		noteWritterTextField.setText("");
		noteWritterTextField.setStyleProperties("{/weightX \"1\"}");
		noteWritterTextField.setEditable(false);
		noteWritterTextField.setStyle("displayedLeftAlignedTextField");
		noteWritterTextField.setName("noteWritterTextField");
	}
	return noteWritterTextField;
}

/**
 * This method initializes noteCreationTimestampTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getNoteCreationTimestampTextField() {
	if (noteCreationTimestampTextField == null) {
		noteCreationTimestampTextField = new RTextField();
		noteCreationTimestampTextField.setText("");
		noteCreationTimestampTextField.setStyleProperties("{/weightX \"1\"}");
		noteCreationTimestampTextField.setEditable(false);
		noteCreationTimestampTextField.setStyle("displayedLeftAlignedTextField");
		noteCreationTimestampTextField.setName("noteCreationTimestampTextField");
	}
	return noteCreationTimestampTextField;
}

/**
 * This method initializes noteDetailsIdWritterCreationTimestampGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getNoteDetailsIdWritterCreationTimestampGridBagLayoutPane() {
	if (noteDetailsIdWritterCreationTimestampGridBagLayoutPane == null) {
		RFiller aFiller = new RFiller();
		aFiller.setStyleProperties("{/usePreferredSizeAsExactSize \"true\"/preferredSizeWidth \"100\"}");
		noteDetailsIdWritterCreationTimestampGridBagLayoutPane = new RGridBagLayoutPane();
		noteDetailsIdWritterCreationTimestampGridBagLayoutPane.setName("noteDetailsIdWritterCreationTimestampGridBagLayoutPane");
		noteDetailsIdWritterCreationTimestampGridBagLayoutPane.setVisible(false);
		noteDetailsIdWritterCreationTimestampGridBagLayoutPane.add(getNoteIdLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		noteDetailsIdWritterCreationTimestampGridBagLayoutPane.add(getNoteIdTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		noteDetailsIdWritterCreationTimestampGridBagLayoutPane.add(getNoteWritterLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		noteDetailsIdWritterCreationTimestampGridBagLayoutPane.add(getNoteWritterTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		noteDetailsIdWritterCreationTimestampGridBagLayoutPane.add(getNoteCreationTimestampLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		noteDetailsIdWritterCreationTimestampGridBagLayoutPane.add(getNoteCreationTimestampTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		noteDetailsIdWritterCreationTimestampGridBagLayoutPane.add(aFiller, new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return noteDetailsIdWritterCreationTimestampGridBagLayoutPane;
}

/**
 * This method initializes notesBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getNotesBoxPane() {
	if (notesBoxPane == null) {
		notesBoxPane = new RBoxPane();
		notesBoxPane.setName("notesBoxPane");
		notesBoxPane.set(0, 1, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getAddNoteCollapsiblePane());
		notesBoxPane.set(0, 2, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getTaskNotesScrollPane());
		notesBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getNoteActionsBoxPane());
	}
	return notesBoxPane;
}

/**
 * This method initializes noteActionsBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getNoteActionsBoxPane() {
	if (noteActionsBoxPane == null) {
		RFiller hFiller = new RFiller();
		hFiller.setStyleProperties("{/weightX \"1\"}");
		noteActionsBoxPane = new RBoxPane();
		noteActionsBoxPane.setName("noteActionsBoxPane");
		noteActionsBoxPane.setStyleProperties("{/weightX \"1\"}");
		noteActionsBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getAddNoteButton());
		noteActionsBoxPane.set(1, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getDeleteNoteButton());
		noteActionsBoxPane.set(2, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, hFiller);
	}
	return noteActionsBoxPane;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"