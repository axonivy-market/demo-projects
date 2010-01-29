package ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RSplitPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RTabbedPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPaneContainer;
import ch.ivyteam.ivy.richdialog.widgets.containers.RToolBar;
import ch.ivyteam.ivy.workflow.ui.cases.CaseBusinessDetailsDisplay.CaseBusinessDetailsDisplayPanel;
import ch.ivyteam.ivy.workflow.ui.cases.CaseCategorizationDetailsDisplay.CaseCategorizationDetailsDisplayPanel;
import ch.ivyteam.ivy.workflow.ui.cases.CaseCustomFieldsDisplay.CaseCustomFieldsDisplayPanel;
import ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListPanel;
import ch.ivyteam.ivy.workflow.ui.common.WorkflowEventsDisplayList.WorkflowEventsDisplayListPanel;

import com.ulcjava.base.application.util.Dimension;
import ch.ivyteam.ivy.workflow.ui.task.TaskDisplayList.TaskDisplayListPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import com.ulcjava.base.application.ULCContainer;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;


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
private RSplitPane caseDetailsSplitPane = null;
private RScrollPane caseDetailsScrollPane = null;
private RTaskPaneContainer caseDetailsTaskPaneContainer = null;
private RTaskPane caseGlobalInformationTaskPane = null;
@EmbeddedRichDialog(CaseCategorizationDetailsDisplayPanel.class) private ULCContainer caseCategorizationDetailsDisplayRDC = null;
private RTaskPane caseBusinessInformationTaskPane = null;
@EmbeddedRichDialog(CaseBusinessDetailsDisplayPanel.class) private ULCContainer caseBusinessDetailsDisplayRDC = null;
private RTaskPane caseCustomFieldsTaskPane = null;
@EmbeddedRichDialog(CaseCustomFieldsDisplayPanel.class) private ULCContainer caseCustomFieldsDisplayRDC = null;
private RScrollPane caseNotesScrollPane = null;
private RTaskPaneContainer caseNotesTaskPaneContainer = null;
private RTaskPane caseNotesTaskPane = null;
@EmbeddedRichDialog(CaseNoteDisplayListPanel.class) private ULCContainer caseNoteDisplayListRDC = null;
@EmbeddedRichDialog(WorkflowEventsDisplayListPanel.class) private ULCContainer workflowEventsDisplayListRDC = null;
private RToolBar actionsToolBar = null;
private RButton refreshButton = null;
private RButton exitButton = null;
@EmbeddedRichDialog(TaskDisplayListPanel.class) private ULCContainer taskDisplayListRDC = null;

/**
   * Create a new instance of CaseDisplayPanel
   */
  public CaseDisplayPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes CaseDisplayPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(696,625));
        this.add(getCaseDisplayTabbedPane(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
        this.add(getActionsToolBar(), com.ulcjava.base.application.ULCBorderLayoutPane.NORTH);
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
		caseDisplayTabbedPane.setName("caseDisplayTabbedPane");
		caseDisplayTabbedPane.addTab("Case details", null, getCaseDetailsSplitPane(), null);
		caseDisplayTabbedPane.addTab("Case workflow events", null, getWorkflowEventsDisplayListRDC(), null);
		caseDisplayTabbedPane.addTab("Tasks", null, getTaskDisplayListRDC(), null);
	}
	return caseDisplayTabbedPane;
}

/**
 * This method initializes caseDetailsSplitPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RSplitPane	
 */
private RSplitPane getCaseDetailsSplitPane() {
	if (caseDetailsSplitPane == null) {
		caseDetailsSplitPane = new RSplitPane();
		caseDetailsSplitPane.setName("caseDetailsSplitPane");
		caseDetailsSplitPane.setDividerLocation(450);
		caseDetailsSplitPane.setStyleProperties("{/dividerLocation \"0.65\"}");
		caseDetailsSplitPane.setName("caseDetailsSplitPane");
		caseDetailsSplitPane.setRightComponent(getCaseNotesScrollPane());
		caseDetailsSplitPane.setLeftComponent(getCaseDetailsScrollPane());
	}
	return caseDetailsSplitPane;
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
		caseDetailsScrollPane.setViewPortView(getCaseDetailsTaskPaneContainer());
	}
	return caseDetailsScrollPane;
}

/**
 * This method initializes caseDetailsTaskPaneContainer	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPaneContainer	
 */
private RTaskPaneContainer getCaseDetailsTaskPaneContainer() {
	if (caseDetailsTaskPaneContainer == null) {
		caseDetailsTaskPaneContainer = new RTaskPaneContainer();
		caseDetailsTaskPaneContainer.setName("caseDetailsTaskPaneContainer");
		caseDetailsTaskPaneContainer.setSingleTaskPaneOpen(true);
		caseDetailsTaskPaneContainer.setStyleProperties("{/anchor \"WEST\"/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		caseDetailsTaskPaneContainer.add(getCaseGlobalInformationTaskPane());
		caseDetailsTaskPaneContainer.add(getCaseBusinessInformationTaskPane());
		caseDetailsTaskPaneContainer.add(getCaseCustomFieldsTaskPane());
	}
	return caseDetailsTaskPaneContainer;
}

/**
 * This method initializes caseGlobalInformationTaskPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPane	
 */
private RTaskPane getCaseGlobalInformationTaskPane() {
	if (caseGlobalInformationTaskPane == null) {
		caseGlobalInformationTaskPane = new RTaskPane();
		caseGlobalInformationTaskPane.setName("caseGlobalInformationTaskPane");
		caseGlobalInformationTaskPane.setSpecial(true);
		caseGlobalInformationTaskPane.setTitle("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseCategorizationDetails\")%>");
		caseGlobalInformationTaskPane.setCollapsed(false);
		caseGlobalInformationTaskPane.add(getCaseCategorizationDetailsDisplayRDC());
	}
	return caseGlobalInformationTaskPane;
}

/**
 * This method initializes caseCategorizationDetailsDisplayRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.cases.CaseCategorizationDetailsDisplay.CaseCategorizationDetailsDisplayPanel	
 */
private ULCContainer getCaseCategorizationDetailsDisplayRDC()  {
	if (caseCategorizationDetailsDisplayRDC == null) {
		caseCategorizationDetailsDisplayRDC = RichDialogPanelFactory.create(CaseCategorizationDetailsDisplayPanel.class);
		caseCategorizationDetailsDisplayRDC.setName("caseCategorizationDetailsDisplayRDC");
		caseCategorizationDetailsDisplayRDC.setPreferredSize(new com.ulcjava.base.application.util.Dimension(20,540));
	}
	return caseCategorizationDetailsDisplayRDC;
}

/**
 * This method initializes caseBusinessInformationTaskPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPane	
 */
private RTaskPane getCaseBusinessInformationTaskPane() {
	if (caseBusinessInformationTaskPane == null) {
		caseBusinessInformationTaskPane = new RTaskPane();
		caseBusinessInformationTaskPane.setName("caseBusinessInformationTaskPane");
		caseBusinessInformationTaskPane.setTitle("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseBusinessDetails\")%>");
		caseBusinessInformationTaskPane.setCollapsed(false);
		caseBusinessInformationTaskPane.add(getCaseBusinessDetailsDisplayRDC());
	}
	return caseBusinessInformationTaskPane;
}

/**
 * This method initializes caseBusinessDetailsDisplayRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.cases.CaseBusinessDetailsDisplay.CaseBusinessDetailsDisplayPanel	
 */
private ULCContainer getCaseBusinessDetailsDisplayRDC()  {
	if (caseBusinessDetailsDisplayRDC == null) {
		caseBusinessDetailsDisplayRDC = RichDialogPanelFactory.create(CaseBusinessDetailsDisplayPanel.class);
		caseBusinessDetailsDisplayRDC.setName("caseBusinessDetailsDisplayRDC");
		caseBusinessDetailsDisplayRDC.setPreferredSize(new Dimension(20, 525));
	}
	return caseBusinessDetailsDisplayRDC;
}

/**
 * This method initializes caseCustomFieldsTaskPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPane	
 */
private RTaskPane getCaseCustomFieldsTaskPane() {
	if (caseCustomFieldsTaskPane == null) {
		caseCustomFieldsTaskPane = new RTaskPane();
		caseCustomFieldsTaskPane.setName("caseCustomFieldsTaskPane");
		caseCustomFieldsTaskPane.setTitle("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseCustomFieldsDetails\")%>");
		caseCustomFieldsTaskPane.setCollapsed(true);
		caseCustomFieldsTaskPane.add(getCaseCustomFieldsDisplayRDC());
	}
	return caseCustomFieldsTaskPane;
}

/**
 * This method initializes caseCustomFieldsDisplayRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.cases.CaseCustomFieldsDisplay.CaseCustomFieldsDisplayPanel	
 */
private ULCContainer getCaseCustomFieldsDisplayRDC()  {
	if (caseCustomFieldsDisplayRDC == null) {
		caseCustomFieldsDisplayRDC = RichDialogPanelFactory.create(CaseCustomFieldsDisplayPanel.class);
		caseCustomFieldsDisplayRDC.setName("caseCustomFieldsDisplayRDC");
		caseCustomFieldsDisplayRDC.setPreferredSize(new Dimension(20, 440));
	}
	return caseCustomFieldsDisplayRDC;
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
		caseNotesScrollPane.setViewPortView(getCaseNotesTaskPaneContainer());
	}
	return caseNotesScrollPane;
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
		caseNoteDisplayListRDC.setPreferredSize(new com.ulcjava.base.application.util.Dimension(20,540));
	}
	return caseNoteDisplayListRDC;
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
 * This method initializes actionsToolBar	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RToolBar	
 */
private RToolBar getActionsToolBar() {
	if (actionsToolBar == null) {
		RFiller Filler = new RFiller();
		actionsToolBar = new RToolBar();
		actionsToolBar.setName("actionsToolBar");
		actionsToolBar.setFloatable(false);
		actionsToolBar.setName("actionsToolBar");
		actionsToolBar.add(getRefreshButton());
		actionsToolBar.add(Filler);
		actionsToolBar.add(getExitButton());
	}
	return actionsToolBar;
}

/**
 * This method initializes refreshButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getRefreshButton() {
	if (refreshButton == null) {
		refreshButton = new RButton();
		refreshButton.setName("refreshButton");
		refreshButton.setStyle("toolBarButton");
		refreshButton.setIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/refreshCaseList24\") %>");
		refreshButton.setRolloverIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/refreshCaseList32\") %>");
		refreshButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/refreshCaseListLongDesc\")%>");
	}
	return refreshButton;
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
		exitButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/close24\")%>");
		exitButton.setRolloverIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/close32\")%>");
		exitButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/close\")%>");
	}
	return exitButton;
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


}  //  @jve:decl-index=0:visual-constraint="10,10"