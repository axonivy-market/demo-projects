package ch.ivyteam.ivy.workflow.ui.task.TaskGlobalDetailsDisplayBackup;

import ch.ivyteam.ivy.addons.eventlog.EventLogDisplayList.EventLogDisplayListPanel;
import ch.ivyteam.ivy.addons.filemanager.FileManager.FileManagerPanel;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RTree;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBorderLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RCardPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RTabbedPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPaneContainer;
import ch.ivyteam.ivy.workflow.ui.cases.CaseDetailsDisplay.CaseDetailsDisplayPanel;
import ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListPanel;
import ch.ivyteam.ivy.workflow.ui.cases.WorkflowEventsDisplayList.WorkflowEventsDisplayListPanel;
import ch.ivyteam.ivy.workflow.ui.task.TaskDetailsDisplay.TaskDetailsDisplayPanel;
import ch.ivyteam.ivy.workflow.ui.task.TaskNoteDisplayList.TaskNoteDisplayListPanel;
import ch.ivyteam.ivy.workflow.ui.task.ie.IntermediateEventDisplay.IntermediateEventDisplayPanel;
import ch.ivyteam.ivy.workflow.ui.utils.UIHelper;

import com.ulcjava.base.application.ULCTabbedPane;
import com.ulcjava.base.application.util.Color;
import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import com.ulcjava.base.application.ULCContainer;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;

/**
 * RichDialog panel implementation for TaskInformationDisplayPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class TaskGlobalDetailsDisplayBackupPanel extends RichDialogBorderPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
@EmbeddedRichDialog(CaseNoteDisplayListPanel.class) private ULCContainer caseNoteDisplayListRDC = null;
@EmbeddedRichDialog(TaskNoteDisplayListPanel.class) private ULCContainer taskNoteDisplayListRDC = null;
private RTabbedPane taskInformationTabbedPane = null;
private FileManagerPanel fileManagerRDC = null;
private EventLogDisplayListPanel eventLogDisplayListRDC = null;
@EmbeddedRichDialog(WorkflowEventsDisplayListPanel.class) private ULCContainer workflowEventsDisplayListRDC = null;
private RTaskPane caseNotesTaskPane = null;
private RTaskPaneContainer notesTaskPaneContainer = null;
private RTaskPane taskNotesTaskPane = null;
@EmbeddedRichDialog(CaseDetailsDisplayPanel.class) private ULCContainer caseDetailsDisplayRDC = null;
private RBorderLayoutPane detailsBorderLayoutPane = null;
private RBoxPane detailsActionsBoxPane = null;
private RCardPane detailsCardPane = null;
@EmbeddedRichDialog(TaskDetailsDisplayPanel.class) private ULCContainer taskDetailsDisplayRDC = null;
private RScrollPane detailsScrollPane = null;
private RScrollPane detailTreeScrollPane = null;
private RTree detailTree = null;
@EmbeddedRichDialog(IntermediateEventDisplayPanel.class) private ULCContainer intermediateEventDisplayRDC = null;
/**
   * Create a new instance of TaskInformationDisplayPanel
   */
  public TaskGlobalDetailsDisplayBackupPanel()
  {
    super();
    initialize();
    
    // prettify ui components
    UIHelper.prettifyComponent(this);     
  }
  
  /**
   * This method initializes TaskInformationDisplayPanel
   * @return void
   */
  public void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(646,600));
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(730,809));
        this.add(getTaskInformationTabbedPane(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
  }

/**
 * This method initializes caseNoteDisplayListRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListPanel	
 */
private ULCContainer getCaseNoteDisplayListRDC()  {
	if (caseNoteDisplayListRDC == null) {
		caseNoteDisplayListRDC = RichDialogPanelFactory.create(CaseNoteDisplayListPanel.class);
		caseNoteDisplayListRDC.setName("caseNoteDisplayListRDC");
		caseNoteDisplayListRDC.setStyleProperties("{/weightY \"1\"/weightX \"1\"}");
		caseNoteDisplayListRDC.setPreferredSize(new com.ulcjava.base.application.util.Dimension(450,425));
		caseNoteDisplayListRDC.setForeground(Color.darkGray);
	}
	return caseNoteDisplayListRDC;
}

/**
 * This method initializes taskNoteDisplayListRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.task.TaskNoteDisplayList.TaskNoteDisplayListPanel	
 */
private ULCContainer getTaskNoteDisplayListRDC()  {
	if (taskNoteDisplayListRDC == null) {
		taskNoteDisplayListRDC = RichDialogPanelFactory.create(TaskNoteDisplayListPanel.class);
		taskNoteDisplayListRDC.setName("taskNoteDisplayListRDC");
		taskNoteDisplayListRDC.setPreferredSize(new com.ulcjava.base.application.util.Dimension(450,425));
		taskNoteDisplayListRDC.setStyleProperties("{/weightY \"1\"/weightX \"1\"}");
	}
	return taskNoteDisplayListRDC;
}


/**
 * This method initializes taskInformationTabbedPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RTabbedPane	
 */
private RTabbedPane getTaskInformationTabbedPane() {
	if (taskInformationTabbedPane == null) {
		taskInformationTabbedPane = new RTabbedPane();
		taskInformationTabbedPane.setName("taskInformationTabbedPane");
		taskInformationTabbedPane.setTabPlacement(ULCTabbedPane.TOP);

		taskInformationTabbedPane.addTab("Documents", null, getFileManagerRDC(), null);
		taskInformationTabbedPane.addTab("Annotations", null, getNotesTaskPaneContainer(), null);
		taskInformationTabbedPane.addTab("Events", null, getEventLogDisplayListRDC(), null);
		taskInformationTabbedPane.addTab("Details", null, getDetailsBorderLayoutPane(), null);
		
		taskInformationTabbedPane.setPreloadAt(0, false);
		taskInformationTabbedPane.setPreloadAt(1, false);
		taskInformationTabbedPane.setPreloadAt(2, false);
		
		taskInformationTabbedPane.setSelectedIndex(3);
	
	}
	return taskInformationTabbedPane;
}

/**
 * This method initializes fileManagerRDC	
 * 	
 * @return ch.ivyteam.ivy.addons.filemanager.FileManager.FileManagerPanel	
 */
private FileManagerPanel getFileManagerRDC() {
	if (fileManagerRDC == null) {
		fileManagerRDC = new FileManagerPanel();
		fileManagerRDC.setName("fileManagerRDC");
		fileManagerRDC.setName("fileManagerRDC");
		
	}
	return fileManagerRDC;
}

/**
 * This method initializes eventLogDisplayListRDC	
 * 	
 * @return ch.ivyteam.ivy.addons.eventlog.ria.EventLogDisplayList.EventLogDisplayListPanel	
 */
private EventLogDisplayListPanel getEventLogDisplayListRDC() {
	if (eventLogDisplayListRDC == null) {
		eventLogDisplayListRDC = new EventLogDisplayListPanel();
		eventLogDisplayListRDC.setName("eventLogDisplayListRDC");
		eventLogDisplayListRDC.setName("eventLogDisplayListRDC");
	}
	return eventLogDisplayListRDC;
}

/**
 * This method initializes workflowEventsDisplayListRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.common.WorkflowEventsDisplayList.WorkflowEventsDisplayListPanel	
 */
private ULCContainer getWorkflowEventsDisplayListRDC()  {
	if (workflowEventsDisplayListRDC == null) {
		workflowEventsDisplayListRDC = RichDialogPanelFactory.create(WorkflowEventsDisplayListPanel.class);
		workflowEventsDisplayListRDC.setName("workflowEventsDisplayListRDC");
	}
	return workflowEventsDisplayListRDC;
}

/**
 * This method initializes caseNotesTaskPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPane	
 */
private RTaskPane getCaseNotesTaskPane() {
	if (caseNotesTaskPane == null) {
		caseNotesTaskPane = new RTaskPane();
		caseNotesTaskPane.setName("caseNotesTaskPane");
		caseNotesTaskPane.setTitle("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/case\")%>");
		caseNotesTaskPane.add(getCaseNoteDisplayListRDC());
	}
	return caseNotesTaskPane;
}

/**
 * This method initializes notesTaskPaneContainer	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPaneContainer	
 */
private RTaskPaneContainer getNotesTaskPaneContainer() {
	if (notesTaskPaneContainer == null) {
		notesTaskPaneContainer = new RTaskPaneContainer();
		notesTaskPaneContainer.setName("notesTaskPaneContainer");
		notesTaskPaneContainer.add(getCaseNotesTaskPane());
		notesTaskPaneContainer.add(getTaskNotesTaskPane());
	}
	return notesTaskPaneContainer;
}

/**
 * This method initializes taskNotesTaskPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPane	
 */
private RTaskPane getTaskNotesTaskPane() {
	if (taskNotesTaskPane == null) {
		taskNotesTaskPane = new RTaskPane();
		taskNotesTaskPane.setName("taskNotesTaskPane");
		taskNotesTaskPane.setTitle("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/task\")%>");
		taskNotesTaskPane.add(getTaskNoteDisplayListRDC());
	}
	return taskNotesTaskPane;
}

/**
 * This method initializes caseDetailsDisplayRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.cases.CaseDetailsDisplay.CaseDetailsDisplayPanel	
 */
private ULCContainer getCaseDetailsDisplayRDC()  {
	if (caseDetailsDisplayRDC == null) {
		caseDetailsDisplayRDC = RichDialogPanelFactory.create(CaseDetailsDisplayPanel.class);
		caseDetailsDisplayRDC.setName("caseDetailsDisplayRDC");
	}
	return caseDetailsDisplayRDC;
}

/**
 * This method initializes detailsBorderLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBorderLayoutPane	
 */
private RBorderLayoutPane getDetailsBorderLayoutPane() {
	if (detailsBorderLayoutPane == null) {
		detailsBorderLayoutPane = new RBorderLayoutPane();
		detailsBorderLayoutPane.setName("detailsBorderLayoutPane");
		detailsBorderLayoutPane.add(getDetailsScrollPane(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
		detailsBorderLayoutPane.add(getDetailsActionsBoxPane(), com.ulcjava.base.application.ULCBorderLayoutPane.WEST);
	}
	return detailsBorderLayoutPane;
}

/**
 * This method initializes detailsActionsBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getDetailsActionsBoxPane() {
	if (detailsActionsBoxPane == null) {
		RFiller verticalFiller = new RFiller();
		verticalFiller.setStyleProperties("{/preferredSizeWidth \"200\"/fill \"VERTICAL\"/weightY \"1\"/weightX \"0\"}");
		verticalFiller.setPreferredSize(new com.ulcjava.base.application.util.Dimension(50,30));
		detailsActionsBoxPane = new RBoxPane();
		detailsActionsBoxPane.setOpaque(false);
		detailsActionsBoxPane.setStyleProperties("{/insetsBottom \"5\"/weightY \"1\"/weightX \"1\"}");
		detailsActionsBoxPane.setName("detailsActionsBoxPane");
		detailsActionsBoxPane.set(0, 1, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, verticalFiller);
		detailsActionsBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getDetailTreeScrollPane());
	}
	return detailsActionsBoxPane;
}

/**
 * This method initializes detailsCardPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RCardPane	
 */
private RCardPane getDetailsCardPane() {
	if (detailsCardPane == null) {
		detailsCardPane = new RCardPane();
		detailsCardPane.setName("detailsCardPane");
		detailsCardPane.addCard("workflowEventsDisplayListRDC", getWorkflowEventsDisplayListRDC());
		detailsCardPane.addCard("caseDetailsDisplayRDC", getCaseDetailsDisplayRDC());
		detailsCardPane.addCard("taskDetailsDisplayRDC", getTaskDetailsDisplayRDC());
		detailsCardPane.addCard("intermediateEventDisplayRDC", getIntermediateEventDisplayRDC());
		detailsCardPane.setSelectedComponent(getTaskDetailsDisplayRDC());
		
		
		detailsCardPane.setPreloadAt("caseDetailsDisplayRDC", false);
		detailsCardPane.setPreloadAt("workflowEventsDisplayListRDC", false);
		detailsCardPane.setPreloadAt("intermediateEventDisplayRDC", false);
	}
	return detailsCardPane;
}

/**
 * This method initializes taskDetailsDisplayRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.task.TaskDetailsDisplay.TaskDetailsDisplayPanel	
 */
private ULCContainer getTaskDetailsDisplayRDC()  {
	if (taskDetailsDisplayRDC == null) {
		taskDetailsDisplayRDC = RichDialogPanelFactory.create(TaskDetailsDisplayPanel.class);
		taskDetailsDisplayRDC.setName("taskDetailsDisplayRDC");
	}
	return taskDetailsDisplayRDC;
}

/**
 * This method initializes detailsScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getDetailsScrollPane() {
	if (detailsScrollPane == null) {
		detailsScrollPane = new RScrollPane();
		detailsScrollPane.setName("detailsScrollPane");
		detailsScrollPane.setViewPortView(getDetailsCardPane());
	}
	return detailsScrollPane;
}

/**
 * This method initializes detailTreeScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getDetailTreeScrollPane() {
	if (detailTreeScrollPane == null) {
		detailTreeScrollPane = new RScrollPane();
		detailTreeScrollPane.setName("detailTreeScrollPane");
		detailTreeScrollPane.setStyleProperties("{/insetsTop \"0\"/fill \"HORIZONTAL\"/insetsRight \"10\"/insetsLeft \"10\"/weightY \"0\"}");
		detailTreeScrollPane.setViewPortView(getDetailTree());
	}
	return detailTreeScrollPane;
}

/**
 * This method initializes detailTree	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTree	
 */
private RTree getDetailTree() {
	if (detailTree == null) {
		detailTree = new RTree();
		detailTree.setName("detailTree");
		detailTree.setVisibleRowCount(10);
		detailTree.setStyleProperties("{/insetsTop \"0\"}");
		detailTree.setModelConfiguration("{/dynamicTreeLoadMode \"LOAD_FOR_RENDER_PARENT\"/version \"3.0\"/columns {{/patterns {{/result \"result=value\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"\"/field \"\"/patternMode \"ALL\"/patternValue \"default\"}}}}/showTableheader true /autoTableheader false /showtooltip false /showIcons false }");
	}
	return detailTree;
}

/**
 * This method initializes intermediateEventDisplayRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.task.ie.IntermediateEventDisplay.IntermediateEventDisplayPanel	
 */
private ULCContainer getIntermediateEventDisplayRDC()  {
	if (intermediateEventDisplayRDC == null) {
		intermediateEventDisplayRDC = RichDialogPanelFactory.create(IntermediateEventDisplayPanel.class);
		intermediateEventDisplayRDC.setName("intermediateEventDisplayRDC");
	}
	return intermediateEventDisplayRDC;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"