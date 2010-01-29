package ui.task.TaskNotes;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RTable;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextArea;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.containers.RCollapsiblePane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RToolBar;
import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.ULCFlowLayoutPane;
import com.ulcjava.base.application.ULCListSelectionModel;
import com.ulcjava.base.application.ULCTable;
import com.ulcjava.base.application.border.ULCTitledBorder;
import com.ulcjava.base.application.util.Color;
import com.ulcjava.base.application.util.Dimension;
import com.ulcjava.base.application.util.Font;
import com.ulcjava.base.application.util.ComponentOrientation;
import ch.ivyteam.ivy.richdialog.widgets.components.RRadioButton;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane;

/**
 * RichDialog panel implementation for CaseNoteDisplayListPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class TaskNotesPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RButton addNoteButton = null;
private RButton deleteNoteButton = null;
private RToolBar caseNoteActionsToolBar = null;
private RCollapsiblePane addNoteCollapsiblePane = null;
private RFlowLayoutPane addNoteFlowLayoutPane = null;
private RButton okButton = null;
private RButton cancelButton = null;
private RLabel messageLabel = null;
private RScrollPane noteScrollPane = null;
private RTextArea noteTextArea = null;
private RScrollPane taskNotesScrollPane = null;
private RTable taskNotesTable = null;
private RLabel footerLabel = null;
private RLabel noteIdLabel = null;
private RLabel noteCreationTimestampLabel = null;
private RLabel noteWritterLabel = null;
private RGridBagLayoutPane noteDetailsEditGridBagLayoutPane = null;
private RTextField noteIdTextField = null;
private RTextField noteWritterTextField = null;
private RTextField noteCreationTimestampTextField = null;
private RGridBagLayoutPane noteDetailsIdWritterCreationTimestampGridBagLayoutPane = null;
private RRadioButton taskNoteRadioButton = null;
private RRadioButton caseNoteRadioButton = null;
private RBoxPane radioBoxPane = null;
private RLabel visibilityLabel = null;
private RTextField visibilityTextField = null;
private RButton closeButton = null;

  
  /**
   * Create a new instance of CaseNoteDisplayListPanel
   */
  public TaskNotesPanel()
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
                this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(788,500));
                this.add(getCaseNoteActionsToolBar(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getTaskNotesScrollPane(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 4, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getFooterLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getAddNoteCollapsiblePane(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getCloseButton(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
 this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(529,511));
  }

/**
 * This method initializes addNoteButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getAddNoteButton() {
	if (addNoteButton == null) {
		addNoteButton = new RButton();
		addNoteButton.setName("addNoteButton");
		addNoteButton.setIconUri("<%=ivy.cms.cr(\"/basicwfui/images/addNote\")%>");
		addNoteButton.setStyle("toolBarButton");
		addNoteButton.setToolTipText("Add Task Note");
	}
	return addNoteButton;
}

/**
 * This method initializes deleteNoteButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getDeleteNoteButton() {
	if (deleteNoteButton == null) {
		deleteNoteButton = new RButton();
		deleteNoteButton.setName("deleteNoteButton");
		deleteNoteButton.setIconUri("<%=ivy.cms.cr(\"/basicwfui/images/deleteNote\")%>");
		deleteNoteButton.setStyle("toolBarButton");
		deleteNoteButton.setToolTipText("Delete Task Note");
	}
	return deleteNoteButton;
}

/**
 * This method initializes caseNoteActionsToolBar	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RToolBar	
 */
private RToolBar getCaseNoteActionsToolBar() {
	if (caseNoteActionsToolBar == null) {
		caseNoteActionsToolBar = new RToolBar();
		caseNoteActionsToolBar.setName("caseNoteActionsToolBar");
		caseNoteActionsToolBar.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		caseNoteActionsToolBar.setFloatable(false);
			caseNoteActionsToolBar.setName("caseNoteActionsToolBar");
	caseNoteActionsToolBar.add(getAddNoteButton());
		caseNoteActionsToolBar.add(getDeleteNoteButton());
	}
	return caseNoteActionsToolBar;
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
		addNoteCollapsiblePane.setStyleProperties("{/anchor \"WEST\"/fill \"HORIZONTAL\"/weightX \"1\"}");
		addNoteCollapsiblePane.setComponentOrientation(ComponentOrientation.LEFT_TO_RIGHT);
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
		okButton.setText("Ok");
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
		cancelButton.setText("Cancel");
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
		noteScrollPane.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
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
			taskNotesScrollPane.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		taskNotesScrollPane.setBorder(BorderFactory.createTitledBorder(null, "Notes on the task", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
	taskNotesScrollPane.setViewPortView(getTaskNotesTable());
	}
	return taskNotesScrollPane;
}

/**
 * This method initializes taskNotesTable	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTable	
 */
private RTable getTaskNotesTable() {
	if (taskNotesTable == null) {
		taskNotesTable = new RTable();
		taskNotesTable.setName("taskNotesTable");
		taskNotesTable.setAutoResizeMode(ULCTable.AUTO_RESIZE_SUBSEQUENT_COLUMNS);
		taskNotesTable.setPreferredScrollableViewportSize(new Dimension(450, 200));
		taskNotesTable.setSelectionMode(ULCListSelectionModel.SINGLE_SELECTION);
		taskNotesTable.setSortable(true);
		taskNotesTable.setModelConfiguration("{/showTableheader true /autoTableheader false /showtooltip true /showIcons false /version \"3.0\"/emptyTableText \"\"/columns {{/result \"result=entry.value.getIdentifier()\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"\\\"Note Id\\\"\"/field \"\"/columnWidth \"50\"}{/result \"result=(entry as Tree).info\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"\\\"Visibility\\\"\"/field \"\"/editable \"\"/condition \"\"/columnWidth \"50\"/cellWidget \"\"}{/result \"result=entry.value.getMessage()\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"\\\"Message\\\"\"/field \"\"/columnWidth \"400\"}{/result \"result=entry.value.getWritterName()\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"\\\"Writter\\\"\"/field \"\"/columnWidth \"50\"}{/result \"result=entry.value.getCreationTimestamp().toString()\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"\\\"Creation date\\\"\"/field \"\"/columnWidth \"100\"}}}");
		taskNotesTable.setPreferredSize(new com.ulcjava.base.application.util.Dimension(250,175));
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
		noteDetailsEditGridBagLayoutPane.add(getAddNoteFlowLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 6, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		noteDetailsEditGridBagLayoutPane.add(aFiller2, new com.ulcjava.base.application.GridBagConstraints(0, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		noteDetailsEditGridBagLayoutPane.add(getRadioBoxPane(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
		noteDetailsIdWritterCreationTimestampGridBagLayoutPane.setStyleProperties("{/fill \"HORIZONTAL\"}");
		noteDetailsIdWritterCreationTimestampGridBagLayoutPane.add(getNoteIdLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		noteDetailsIdWritterCreationTimestampGridBagLayoutPane.add(getNoteIdTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		noteDetailsIdWritterCreationTimestampGridBagLayoutPane.add(getNoteWritterLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		noteDetailsIdWritterCreationTimestampGridBagLayoutPane.add(getNoteWritterTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		noteDetailsIdWritterCreationTimestampGridBagLayoutPane.add(getNoteCreationTimestampLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		noteDetailsIdWritterCreationTimestampGridBagLayoutPane.add(getNoteCreationTimestampTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		noteDetailsIdWritterCreationTimestampGridBagLayoutPane.add(aFiller, new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		noteDetailsIdWritterCreationTimestampGridBagLayoutPane.add(getVisibilityLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		noteDetailsIdWritterCreationTimestampGridBagLayoutPane.add(getVisibilityTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return noteDetailsIdWritterCreationTimestampGridBagLayoutPane;
}

/**
 * This method initializes taskNoteRadioButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RRadioButton	
 */
private RRadioButton getTaskNoteRadioButton() {
	if (taskNoteRadioButton == null) {
		taskNoteRadioButton = new RRadioButton();
		taskNoteRadioButton.setText("visible on task");
		taskNoteRadioButton.setSelected(true);
		taskNoteRadioButton.setName("taskNoteRadioButton");
	}
	return taskNoteRadioButton;
}

/**
 * This method initializes caseNoteRadioButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RRadioButton	
 */
private RRadioButton getCaseNoteRadioButton() {
	if (caseNoteRadioButton == null) {
		caseNoteRadioButton = new RRadioButton();
		caseNoteRadioButton.setText("visible on case");
		caseNoteRadioButton.setName("caseNoteRadioButton");
	}
	return caseNoteRadioButton;
}

/**
 * This method initializes radioBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getRadioBoxPane() {
	if (radioBoxPane == null) {
		radioBoxPane = new RBoxPane();
		radioBoxPane.setName("radioBoxPane");
		radioBoxPane.setStyleProperties("{/fill \"HORIZONTAL\"}");
		radioBoxPane.setButtonGroup(true);
		radioBoxPane.setComponentOrientation(ComponentOrientation.UNKNOWN);
		radioBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_EXPAND_CENTER, getTaskNoteRadioButton());
		radioBoxPane.set(1, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_EXPAND_CENTER, getCaseNoteRadioButton());
	}
	return radioBoxPane;
}

/**
 * This method initializes visibilityLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getVisibilityLabel() {
	if (visibilityLabel == null) {
		visibilityLabel = new RLabel();
		visibilityLabel.setText("Visibility");
		visibilityLabel.setName("visibilityLabel");
	}
	return visibilityLabel;
}

/**
 * This method initializes visibilityTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getVisibilityTextField() {
	if (visibilityTextField == null) {
		visibilityTextField = new RTextField();
		visibilityTextField.setText("");
		visibilityTextField.setEditable(false);
		visibilityTextField.setName("visibilityTextField");
	}
	return visibilityTextField;
}

/**
 * This method initializes closeButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getCloseButton() {
	if (closeButton == null) {
		closeButton = new RButton();
		closeButton.setStyle("basicwfui_actionbutton");
		closeButton.setText("<%=ivy.cms.co(\"/basicwfui/labels/common/done\")%>");
		closeButton.setName("closeButton");
	}
	return closeButton;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"