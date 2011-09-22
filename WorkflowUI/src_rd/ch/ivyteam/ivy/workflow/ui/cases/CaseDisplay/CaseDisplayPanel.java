package ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay;

import ch.ivyteam.ivy.addons.eventlog.EventLogDisplayList.EventLogDisplayListPanel;
import ch.ivyteam.ivy.addons.filemanager.FileManager.FileManagerPanel;
import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RTabbedPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPaneContainer;
import ch.ivyteam.ivy.workflow.ui.cases.CaseDetailsDisplay.CaseDetailsDisplayPanel;
import ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListPanel;
import ch.ivyteam.ivy.workflow.ui.cases.WorkflowEventsDisplayList.WorkflowEventsDisplayListPanel;
import ch.ivyteam.ivy.workflow.ui.formarchive.FormArchiveDisplayList.FormArchiveDisplayListPanel;
import ch.ivyteam.ivy.workflow.ui.task.TaskDisplayList.TaskDisplayListPanel;
import ch.ivyteam.ivy.workflow.ui.utils.UIHelper;

import com.ulcjava.base.application.ULCContainer;


/**
 * RichDialog panel implementation for CaseDisplayPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class CaseDisplayPanel extends RichDialogBorderPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RTabbedPane caseDisplayTabbedPane = null;
private RTaskPaneContainer caseNotesTaskPaneContainer = null;
private RTaskPane caseNotesTaskPane = null;
@EmbeddedRichDialog(CaseNoteDisplayListPanel.class) private ULCContainer caseNoteDisplayListRDC = null;
@EmbeddedRichDialog(TaskDisplayListPanel.class) private ULCContainer taskDisplayListRDC = null;
private FileManagerPanel fileManagerRDC = null;
private EventLogDisplayListPanel eventLogDisplayListRDC = null;
@EmbeddedRichDialog(WorkflowEventsDisplayListPanel.class) private ULCContainer workflowEventsDisplayListRDC = null;
@EmbeddedRichDialog(CaseDetailsDisplayPanel.class) private ULCContainer caseDetailsDisplayRDC = null;
private RScrollPane caseDetailsScrollPane = null;
private RBoxPane casActionsBoxPane = null;
private @EmbeddedRichDialog(FormArchiveDisplayListPanel.class) ULCContainer formArchiveDisplayListRDC = null;
/**
   * Create a new instance of CaseDisplayPanel
   */
  public CaseDisplayPanel()
  {
    super();
    initialize();
    
    // prettify ui components
    UIHelper.prettifyComponent(this);    
  }
  
  /**
   * This method initializes CaseDisplayPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(696,625));
        this.add(getCaseDisplayTabbedPane(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
        this.add(getCasActionsBoxPane(), com.ulcjava.base.application.ULCBorderLayoutPane.NORTH);
  }

/**
 * This method initializes caseDisplayTabbedPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RTabbedPane	
 */
private RTabbedPane getCaseDisplayTabbedPane() {
	if (caseDisplayTabbedPane == null) {
		caseDisplayTabbedPane = new RTabbedPane();
		caseDisplayTabbedPane.setName("caseDisplayTabbedPane");
		caseDisplayTabbedPane.addTab("Details", null, getCaseDetailsScrollPane(), null);
		caseDisplayTabbedPane.addTab("Documents", null, getFileManagerRDC(), null);
		caseDisplayTabbedPane.addTab("Notes", null, getCaseNotesTaskPaneContainer(), null);
		caseDisplayTabbedPane.addTab("Events", null, getEventLogDisplayListRDC(), null);
		caseDisplayTabbedPane.addTab("Tasks", null, getTaskDisplayListRDC(), null);
		caseDisplayTabbedPane.addTab("History", null, getWorkflowEventsDisplayListRDC(), null);		
		caseDisplayTabbedPane.addTab("Form archives", null, getFormArchiveDisplayListRDC(), null);
		caseDisplayTabbedPane.setPreloadAt(1, false);
		caseDisplayTabbedPane.setPreloadAt(2, false);
		caseDisplayTabbedPane.setPreloadAt(3, false);
		caseDisplayTabbedPane.setPreloadAt(4, false);
		caseDisplayTabbedPane.setPreloadAt(5, false);
	}
	return caseDisplayTabbedPane;
}

/**
 * This method initializes caseNotesTaskPaneContainer	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPaneContainer	
 */
private RTaskPaneContainer getCaseNotesTaskPaneContainer() {
	if (caseNotesTaskPaneContainer == null) {
		caseNotesTaskPaneContainer = new RTaskPaneContainer();
		caseNotesTaskPaneContainer.setName("caseNotesTaskPaneContainer");
		caseNotesTaskPaneContainer.add(getCaseNotesTaskPane());
	}
	return caseNotesTaskPaneContainer;
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
		caseNotesTaskPane.setSpecial(false);
		caseNotesTaskPane.setTitle("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/note/plainStrings/annotations\")%>");
		caseNotesTaskPane.setCollapsed(false);
		caseNotesTaskPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		caseNotesTaskPane.add(getCaseNoteDisplayListRDC());
	}
	return caseNotesTaskPane;
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
		caseNoteDisplayListRDC.setPreferredSize(new com.ulcjava.base.application.util.Dimension(500,425));
	}
	return caseNoteDisplayListRDC;
}

/**
 * This method initializes taskDisplayListRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.task.TaskDisplayList.TaskDisplayListPanel	
 */
private ULCContainer getTaskDisplayListRDC()  {
	if (taskDisplayListRDC == null) {
		taskDisplayListRDC = RichDialogPanelFactory.create(TaskDisplayListPanel.class);
		taskDisplayListRDC.setName("taskDisplayListRDC");
	}
	return taskDisplayListRDC;
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
 * This method initializes caseDetailsScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getCaseDetailsScrollPane() {
	if (caseDetailsScrollPane == null) {
		caseDetailsScrollPane = new RScrollPane();
		caseDetailsScrollPane.setName("caseDetailsScrollPane");
		caseDetailsScrollPane.setViewPortView(getCaseDetailsDisplayRDC());
	}
	return caseDetailsScrollPane;
}

/**
 * This method initializes casActionsBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getCasActionsBoxPane() {
	if (casActionsBoxPane == null) {
		RFiller hFiller = new RFiller();
		hFiller.setStyleProperties("{/weightX \"1\"}");
		casActionsBoxPane = new RBoxPane();
		casActionsBoxPane.setName("casActionsBoxPane");
		casActionsBoxPane.setStyleProperties("{/weightX \"1\"}");
		casActionsBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, hFiller);
	}
	return casActionsBoxPane;
}

/**
 * This method initializes formArchiveDisplayListRDC, an embedded RichDialog.
 * The created object might have a different type than the declared
 * class due to overriding.
 * @returns com.ulcjava.base.application.ULCContainer 
 */
private ULCContainer getFormArchiveDisplayListRDC() {
	if (formArchiveDisplayListRDC == null) {
		formArchiveDisplayListRDC = RichDialogPanelFactory
				.create(FormArchiveDisplayListPanel.class);
		formArchiveDisplayListRDC.setName("formArchiveDisplayListRDC");
	}
	return formArchiveDisplayListRDC;
}


}  //  @jve:decl-index=0:visual-constraint="10,10"