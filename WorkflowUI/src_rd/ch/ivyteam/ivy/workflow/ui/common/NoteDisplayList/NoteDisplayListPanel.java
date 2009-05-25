package ch.ivyteam.ivy.workflow.ui.common.NoteDisplayList;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RRadioButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RTable;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextArea;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RCollapsiblePane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RTabbedPane;
import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.ULCButtonGroup;
import com.ulcjava.base.application.ULCFlowLayoutPane;
import com.ulcjava.base.application.ULCListSelectionModel;
import com.ulcjava.base.application.ULCTable;
import com.ulcjava.base.application.border.ULCTitledBorder;
import com.ulcjava.base.application.util.Color;
import com.ulcjava.base.application.util.Font;

/**
 * RichDialog panel implementation for NoteDisplayListPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class NoteDisplayListPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RFlowLayoutPane taskNoteActionsFlowLayoutPane = null;
private RButton deleteNoteButton = null;
private RScrollPane taskNotesScrollPane = null;
private RTable taskNotesTable = null;
private RButton addNoteButton = null;
private RBoxPane addNoteBoxPane = null;
private RLabel messageLabel = null;
private RTextArea messageTextArea = null;
private RBoxPane noteTypeBoxPane = null;
private ULCButtonGroup messageTypeButtonGroup = null;  //  @jve:decl-index=0:visual-constraint="1058,13"
private RRadioButton caseNoteRadioButton = null;
private RRadioButton taskNoteRadioButton = null;
private RFlowLayoutPane addNoteFlowLayoutPane = null;
private RButton okButton = null;
private RButton cancelButton = null;
private RTabbedPane notesTabbedPane = null;
private RScrollPane caseNotesScrollPane = null;
private RTable caseNotesTable = null;
private RCollapsiblePane addNoteCollapsiblePane = null;
private RScrollPane messageScrollPane = null;
/**
   * Create a new instance of NoteDisplayListPanel
   */
  public NoteDisplayListPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes NoteDisplayListPanel
   * @return void
   */
  public void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(500,450));
        this.add(getTaskNoteActionsFlowLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getAddNoteCollapsiblePane(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getNotesTabbedPane(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes taskNoteActionsFlowLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane	
 */
private RFlowLayoutPane getTaskNoteActionsFlowLayoutPane() {
	if (taskNoteActionsFlowLayoutPane == null) {
		taskNoteActionsFlowLayoutPane = new RFlowLayoutPane();
		taskNoteActionsFlowLayoutPane.setName("taskNoteActionsFlowLayoutPane");
		taskNoteActionsFlowLayoutPane.setAlignment(ULCFlowLayoutPane.LEFT);
		taskNoteActionsFlowLayoutPane.add(getAddNoteButton());
		taskNoteActionsFlowLayoutPane.add(getDeleteNoteButton());
	}
	return taskNoteActionsFlowLayoutPane;
}

/**
 * This method initializes deleteNoteButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getDeleteNoteButton() {
	if (deleteNoteButton == null) {
		deleteNoteButton = new RButton();
		deleteNoteButton.setText("");
		deleteNoteButton.setStyle("toolBarButton");
		deleteNoteButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/deleteNote24\")%>");
		deleteNoteButton.setName("deleteNoteButton");
		deleteNoteButton.setToolTipText("Delete selected note");
	}
	return deleteNoteButton;
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
		taskNotesTable.setSelectionMode(ULCListSelectionModel.SINGLE_SELECTION);
		taskNotesTable.setPreferredScrollableViewportSize(new com.ulcjava.base.application.util.Dimension(450,200));
		taskNotesTable.setPreferredSize(new com.ulcjava.base.application.util.Dimension(250,200));
		taskNotesTable.setAutoResizeMode(ULCTable.AUTO_RESIZE_NEXT_COLUMN);
		taskNotesTable.setSortable(true);
		taskNotesTable.setModelConfiguration("{/showTableheader true /autoTableheader false /showtooltip true /showIcons false /version \"2.0\"/emptyTableText \"No task\\'s notes to display...\"/columns {{/result \"result=entry.getIdentifier()\"/version \"2.0\"/tooltip \"result=entry.getIdentifier()\"/icon \"\"/header \"Note Id\"/field \"\"/columnWidth \"100\"}{/result \"result=entry.getMessage()\"/version \"2.0\"/tooltip \"result=entry.getMessage()\"/icon \"\"/header \"Message\"/field \"\"/columnWidth \"400\"}{/result \"result=entry.getWritterName()\"/version \"2.0\"/tooltip \"result=entry.getWritterName()\"/icon \"\"/header \"Writter\"/field \"\"/columnWidth \"200\"}{/result \"result=entry.getCreationTimestamp().toString()\"/version \"2.0\"/tooltip \"result=entry.getCreationTimestamp().toString()\"/icon \"\"/header \"Creation Date\"/field \"\"}}}");
	}
	return taskNotesTable;
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
		addNoteButton.setToolTipText("Add note");
		addNoteButton.setText("");
		addNoteButton.setStyle("toolBarButton");
		addNoteButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/addNote24\")%>");
	}
	return addNoteButton;
}

/**
 * This method initializes addNoteBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getAddNoteBoxPane() {
	if (addNoteBoxPane == null) {
		addNoteBoxPane = new RBoxPane();
		addNoteBoxPane.setName("addNoteBoxPane");
		addNoteBoxPane.setStyleProperties("{/anchor \"WEST\"/fill \"HORIZONTAL\"/weightX \"0\"}");
		addNoteBoxPane.set(0, 3, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_EXPAND_TOP, getAddNoteFlowLayoutPane());
		addNoteBoxPane.set(0, 1, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getMessageLabel());
		addNoteBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getNoteTypeBoxPane());
		addNoteBoxPane.set(0, 2, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getMessageScrollPane());
	}
	return addNoteBoxPane;
}

/**
 * This method initializes messageLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getMessageLabel() {
	if (messageLabel == null) {
		messageLabel = new RLabel();
		messageLabel.setText("Message");
		messageLabel.setName("messageLabel");
	}
	return messageLabel;
}

/**
 * This method initializes messageTextArea	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextArea	
 */
private RTextArea getMessageTextArea() {
	if (messageTextArea == null) {
		messageTextArea = new RTextArea();
		messageTextArea.setText("");
		messageTextArea.setColumns(20);
		messageTextArea.setRows(4);
		messageTextArea.setStyleProperties("{/anchor \"WEST\"/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		messageTextArea.setName("messageTextArea");
	}
	return messageTextArea;
}

/**
 * This method initializes noteTypeBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getNoteTypeBoxPane() {
	if (noteTypeBoxPane == null) {
		RFiller noteTypeFiller = new RFiller();
		noteTypeFiller.setStyleProperties("{/weightX \"1\"}");
		noteTypeBoxPane = new RBoxPane();
		noteTypeBoxPane.setName("noteTypeBoxPane");
		noteTypeBoxPane.setBorder(BorderFactory.createTitledBorder(null, "Note Type", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(12, 74, 124)));
		noteTypeBoxPane.setStyleProperties("{/anchor \"WEST\"/fill \"HORIZONTAL\"/weightX \"0\"}");
		noteTypeBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getCaseNoteRadioButton());
		noteTypeBoxPane.set(1, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getTaskNoteRadioButton());
		noteTypeBoxPane.set(2, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, noteTypeFiller);
	}
	return noteTypeBoxPane;
}

/**
 * This method initializes messageTypeButtonGroup	
 * 	
 * @return com.ulcjava.base.application.ULCButtonGroup	
 */
private ULCButtonGroup getMessageTypeButtonGroup() {
	if (messageTypeButtonGroup == null) {
		messageTypeButtonGroup = new ULCButtonGroup();
	}
	return messageTypeButtonGroup;
}

/**
 * This method initializes caseNoteRadioButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RRadioButton	
 */
private RRadioButton getCaseNoteRadioButton() {
	if (caseNoteRadioButton == null) {
		caseNoteRadioButton = new RRadioButton();
		caseNoteRadioButton.setText("Case Note");
		caseNoteRadioButton.setSelected(true);
		caseNoteRadioButton.setName("caseNoteRadioButton");
		caseNoteRadioButton.setText("Case note");
		caseNoteRadioButton.setGroup(getMessageTypeButtonGroup());
		caseNoteRadioButton.setName("caseNoteRadioButton");
	}
	return caseNoteRadioButton;
}

/**
 * This method initializes taskNoteRadioButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RRadioButton	
 */
private RRadioButton getTaskNoteRadioButton() {
	if (taskNoteRadioButton == null) {
		taskNoteRadioButton = new RRadioButton();
		taskNoteRadioButton.setName("taskNoteRadioButton");
		taskNoteRadioButton.setText("Task note");
		taskNoteRadioButton.setText("Task Note");
		taskNoteRadioButton.setGroup(getMessageTypeButtonGroup());
		taskNoteRadioButton.setName("taskNoteRadioButton");
	}
	return taskNoteRadioButton;
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
		okButton.setText("Ok");
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
		cancelButton.setText("Cancel");
		cancelButton.setPreferredSize(new com.ulcjava.base.application.util.Dimension(100,25));
		cancelButton.setName("cancelButton");
	}
	return cancelButton;
}

/**
 * This method initializes notesTabbedPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RTabbedPane	
 */
private RTabbedPane getNotesTabbedPane() {
	if (notesTabbedPane == null) {
		notesTabbedPane = new RTabbedPane();
		notesTabbedPane.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		notesTabbedPane.addTab("Case Notes", null, getCaseNotesScrollPane(), null);
		notesTabbedPane.addTab("Task Notes", null, getTaskNotesScrollPane(), null);
		notesTabbedPane.setName("notesTabbedPane");
	}
	return notesTabbedPane;
}

/**
 * This method initializes caseNotesScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getCaseNotesScrollPane() {
	if (caseNotesScrollPane == null) {
		caseNotesScrollPane = new RScrollPane();
		caseNotesScrollPane.setName("caseNotesScrollPane");
		caseNotesScrollPane.setName("caseNotesScrollPane");
		caseNotesScrollPane.setViewPortView(getCaseNotesTable());
	}
	return caseNotesScrollPane;
}

/**
 * This method initializes caseNotesTable	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTable	
 */
private RTable getCaseNotesTable() {
	if (caseNotesTable == null) {
		caseNotesTable = new RTable();
		caseNotesTable.setModelConfiguration("{/showTableheader true /autoTableheader false /showtooltip true /showIcons false /version \"2.0\"/emptyTableText \"No case\\'s notes to display\"/columns {{/result \"result=entry.getIdentifier()\"/version \"2.0\"/tooltip \"result=entry.getIdentifier()\"/icon \"\"/header \"Note Id\"/field \"\"/columnWidth \"100\"}{/result \"result=entry.getMessage()\"/version \"2.0\"/tooltip \"result=entry.getMessage()\"/icon \"\"/header \"Message\"/field \"\"/columnWidth \"450\"}{/result \"result=entry.getWritterName()\"/version \"2.0\"/tooltip \"result=entry.getWritterName()\"/icon \"\"/header \"Writter\"/field \"\"/columnWidth \"200\"}{/result \"result=entry.getCreationTimestamp().toString()\"/version \"2.0\"/tooltip \"result=entry.getCreationTimestamp().toString()\"/icon \"\"/header \"Creation date\"/field \"\"}}}");
		caseNotesTable.setSelectionMode(ULCListSelectionModel.SINGLE_SELECTION);
		caseNotesTable.setPreferredScrollableViewportSize(new com.ulcjava.base.application.util.Dimension(450,200));
		caseNotesTable.setPreferredSize(new com.ulcjava.base.application.util.Dimension(250,200));
		caseNotesTable.setAutoResizeMode(ULCTable.AUTO_RESIZE_NEXT_COLUMN);
		caseNotesTable.setSortable(true);
		caseNotesTable.setName("caseNotesTable");
	}
	return caseNotesTable;
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
		addNoteCollapsiblePane.add(getAddNoteBoxPane());
	}
	return addNoteCollapsiblePane;
}

/**
 * This method initializes messageScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getMessageScrollPane() {
	if (messageScrollPane == null) {
		messageScrollPane = new RScrollPane();
		messageScrollPane.setName("messageScrollPane");
		messageScrollPane.setViewPortView(getMessageTextArea());
	}
	return messageScrollPane;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"