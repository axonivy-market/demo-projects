package ch.ivyteam.ivy.workflow.ui.task.TaskDisplay;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RToggleButton;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RSplitPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RTabbedPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPaneContainer;
import ch.ivyteam.ivy.richdialog.widgets.containers.RToolBar;
import ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay;
import ch.ivyteam.ivy.workflow.ui.cases.CaseBusinessDetailsDisplay.CaseBusinessDetailsDisplayPanel;
import ch.ivyteam.ivy.workflow.ui.cases.CaseCategorizationDetailsDisplay.CaseCategorizationDetailsDisplayPanel;
import ch.ivyteam.ivy.workflow.ui.cases.CaseCustomFieldsDisplay.CaseCustomFieldsDisplayPanel;
import ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListPanel;
import ch.ivyteam.ivy.workflow.ui.task.TaskCustomFieldsDisplay.TaskCustomFieldsDisplayPanel;
import ch.ivyteam.ivy.workflow.ui.task.TaskInformationDetailsDisplay.TaskInformationDetailsDisplayPanel;
import ch.ivyteam.ivy.workflow.ui.task.TaskNoteDisplayList.TaskNoteDisplayListPanel;
import ch.ivyteam.ivy.workflow.ui.task.ie.IntermediateEventDisplay.IntermediateEventDisplayPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.containers.RCardPane;
import ch.ivyteam.ivy.richdialog.widgets.displays.RCardDisplay;
import com.ulcjava.base.application.util.Color;

/**
 * RichDialog panel implementation for TaskInformationDisplayPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class TaskDisplayPanel extends RichDialogBorderPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RTaskPane caseNotesTaskPane = null;
private RTaskPaneContainer caseDetailsTaskPaneContainer = null;
private RTaskPane caseGlobalInformationTaskPane = null;
private CaseCategorizationDetailsDisplayPanel caseCategorizationDetailsDisplayRDC = null;
private RTaskPaneContainer caseNotesTaskPaneContainer = null;
private RSplitPane taskDetailsSplitPane = null;
private RSplitPane caseDetailsSplitPane = null;
private RTaskPane caseBusinessInformationTaskPane = null;
private RTaskPane caseCustomFieldsTaskPane = null;
private CaseBusinessDetailsDisplayPanel caseBusinessDetailsDisplayRDC = null;
private RScrollPane caseDetailsScrollPane = null;
private RScrollPane caseNotesScrollPane = null;
private CaseCustomFieldsDisplayPanel caseCustomFieldsDisplayRDC = null;
private CaseNoteDisplayListPanel caseNoteDisplayListRDC = null;
private RTaskPaneContainer taskDetailsTaskPaneContainer = null;
private RTaskPaneContainer taskNotesTaskPaneContainer = null;
private RScrollPane taskDetailsScrollPane = null;
private RScrollPane taskNotesScrollPane = null;
private RTaskPane taskInformationTaskPane = null;
private RTaskPane taskNotesTaskPane = null;
private TaskInformationDetailsDisplayPanel taskInformationDetailsDisplayRDC = null;
private RTaskPane taskCustomFieldsTaskPane = null;
private TaskCustomFieldsDisplayPanel taskCustomFieldsDisplayRDC = null;
private TaskNoteDisplayListPanel taskNoteDisplayListRDC = null;
private RToolBar taskActionsToolBar = null;
private RButton startTaskToggleButton = null;
private RLabel footerLabel = null;
private RButton refreshTaskButton = null;
private RButton parkTaskButton = null;
private RButton delegateTaskButton = null;
private RButton exitButton = null;
private RTaskPane intermediateEventTaskPane = null;
private IntermediateEventDisplayPanel intermediateEventDisplayRDC = null;
private RCardPane taskDisplayCardPane = null;
private RCardDisplay taskExecutionDisplay = null;
private RButton cancelTaskButton = null;
private RButton taskDetailButton = null;
private RTabbedPane taskInformationPane = null;
private RTabbedPane taskExecutionPane = null;
/**
   * Create a new instance of TaskInformationDisplayPanel
   */
  public TaskDisplayPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes TaskInformationDisplayPanel
   * @return void
   */
  public void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(646,796));
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(730,809));
        this.add(getTaskActionsToolBar(), com.ulcjava.base.application.ULCBorderLayoutPane.NORTH);
        this.add(getFooterLabel(), com.ulcjava.base.application.ULCBorderLayoutPane.SOUTH);
        this.add(getTaskDisplayCardPane(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
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
		caseNotesTaskPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		caseNotesTaskPane.setSpecial(false);
		caseNotesTaskPane.setTitle("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/note/plainStrings/annotations\")%>");
		caseNotesTaskPane.setCollapsed(false);
		caseNotesTaskPane.add(getCaseNoteDisplayListRDC());
	}
	return caseNotesTaskPane;
}

/**
 * This method initializes caseDetailsTaskPaneContainer	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPaneContainer	
 */
private RTaskPaneContainer getCaseDetailsTaskPaneContainer() {
	if (caseDetailsTaskPaneContainer == null) {
		caseDetailsTaskPaneContainer = new RTaskPaneContainer();
		caseDetailsTaskPaneContainer.setStyleProperties("{/anchor \"WEST\"/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		caseDetailsTaskPaneContainer.setName("caseDetailsTaskPaneContainer");
		caseDetailsTaskPaneContainer.setSingleTaskPaneOpen(true);
		caseDetailsTaskPaneContainer.setName("taskDetailsTaskPaneContainer");
		caseDetailsTaskPaneContainer.setName("taskDetailsTaskPaneContainer");
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
		caseGlobalInformationTaskPane.setTitle("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseCategorizationDetails\")%>");
		caseGlobalInformationTaskPane.setSpecial(true);
		caseGlobalInformationTaskPane.setCollapsed(false);
		caseGlobalInformationTaskPane.add(getCaseCategorizationDetailsDisplayRDC());
	}
	return caseGlobalInformationTaskPane;
}

/**
 * This method initializes caseCategorizationDetailsDisplayRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.cases.CaseCategorizationDetailsDisplay.TaskHeaderDisplayPanel	
 */
private CaseCategorizationDetailsDisplayPanel getCaseCategorizationDetailsDisplayRDC() {
	if (caseCategorizationDetailsDisplayRDC == null) {
		caseCategorizationDetailsDisplayRDC = new CaseCategorizationDetailsDisplayPanel();
		caseCategorizationDetailsDisplayRDC.setName("caseCategorizationDetailsDisplayRDC");
		caseCategorizationDetailsDisplayRDC.setPreferredSize(new com.ulcjava.base.application.util.Dimension(20,550));
	}
	return caseCategorizationDetailsDisplayRDC;
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
 * This method initializes taskDetailsSplitPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RSplitPane	
 */
private RSplitPane getTaskDetailsSplitPane() {
	if (taskDetailsSplitPane == null) {
		taskDetailsSplitPane = new RSplitPane();
		taskDetailsSplitPane.setName("taskDetailsSplitPane");
		taskDetailsSplitPane.setDividerLocation(450);
		taskDetailsSplitPane.setLeftComponent(getTaskDetailsScrollPane());
		taskDetailsSplitPane.setRightComponent(getTaskNotesScrollPane());
		taskDetailsSplitPane.setStyleProperties("{/dividerLocation \"0.6\"}");
	}
	return taskDetailsSplitPane;
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
		caseDetailsSplitPane.setLeftComponent(getCaseDetailsScrollPane());
		caseDetailsSplitPane.setRightComponent(getCaseNotesScrollPane());
		caseDetailsSplitPane.setStyleProperties("{/dividerLocation \"0.6\"}");
	}
	return caseDetailsSplitPane;
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
		caseBusinessInformationTaskPane.setCollapsed(true);
		caseBusinessInformationTaskPane.add(getCaseBusinessDetailsDisplayRDC());
	}
	return caseBusinessInformationTaskPane;
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
 * This method initializes caseBusinessDetailsDisplayRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.cases.CaseBusinessDetailsDisplay.CaseBusinessDetailsDisplayPanel	
 */
private CaseBusinessDetailsDisplayPanel getCaseBusinessDetailsDisplayRDC() {
	if (caseBusinessDetailsDisplayRDC == null) {
		caseBusinessDetailsDisplayRDC = new CaseBusinessDetailsDisplayPanel();
		caseBusinessDetailsDisplayRDC.setName("caseBusinessDetailsDisplayRDC");
		caseBusinessDetailsDisplayRDC.setPreferredSize(new com.ulcjava.base.application.util.Dimension(20,525));
	}
	return caseBusinessDetailsDisplayRDC;
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
 * This method initializes caseCustomFieldsDisplayRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.cases.CaseCustomFieldsDisplay.CaseCustomFieldsDisplayPanel	
 */
private CaseCustomFieldsDisplayPanel getCaseCustomFieldsDisplayRDC() {
	if (caseCustomFieldsDisplayRDC == null) {
		caseCustomFieldsDisplayRDC = new CaseCustomFieldsDisplayPanel();
		caseCustomFieldsDisplayRDC.setName("caseCustomFieldsDisplayRDC");
		caseCustomFieldsDisplayRDC.setPreferredSize(new com.ulcjava.base.application.util.Dimension(20,440));
	}
	return caseCustomFieldsDisplayRDC;
}

/**
 * This method initializes caseNoteDisplayListRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListPanel	
 */
private CaseNoteDisplayListPanel getCaseNoteDisplayListRDC() {
	if (caseNoteDisplayListRDC == null) {
		caseNoteDisplayListRDC = new CaseNoteDisplayListPanel();
		caseNoteDisplayListRDC.setName("caseNoteDisplayListRDC");
		caseNoteDisplayListRDC.setForeground(Color.darkGray);
		caseNoteDisplayListRDC.setPreferredSize(new com.ulcjava.base.application.util.Dimension(20,550));
	}
	return caseNoteDisplayListRDC;
}

/**
 * This method initializes taskDetailsTaskPaneContainer	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPaneContainer	
 */
private RTaskPaneContainer getTaskDetailsTaskPaneContainer() {
	if (taskDetailsTaskPaneContainer == null) {
		taskDetailsTaskPaneContainer = new RTaskPaneContainer();
		taskDetailsTaskPaneContainer.setName("taskDetailsTaskPaneContainer");
		taskDetailsTaskPaneContainer.setSingleTaskPaneOpen(true);
		taskDetailsTaskPaneContainer.add(getTaskInformationTaskPane());
		taskDetailsTaskPaneContainer.add(getIntermediateEventTaskPane());
		taskDetailsTaskPaneContainer.add(getTaskCustomFieldsTaskPane());

	}
	return taskDetailsTaskPaneContainer;
}

/**
 * This method initializes taskNotesTaskPaneContainer	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPaneContainer	
 */
private RTaskPaneContainer getTaskNotesTaskPaneContainer() {
	if (taskNotesTaskPaneContainer == null) {
		taskNotesTaskPaneContainer = new RTaskPaneContainer();
		taskNotesTaskPaneContainer.setName("taskNotesTaskPaneContainer");
		taskNotesTaskPaneContainer.add(getTaskNotesTaskPane());
	}
	return taskNotesTaskPaneContainer;
}

/**
 * This method initializes taskDetailsScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getTaskDetailsScrollPane() {
	if (taskDetailsScrollPane == null) {
		taskDetailsScrollPane = new RScrollPane();
		taskDetailsScrollPane.setName("taskDetailsScrollPane");
		taskDetailsScrollPane.setViewPortView(getTaskDetailsTaskPaneContainer());
	}
	return taskDetailsScrollPane;
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
		taskNotesScrollPane.setViewPortView(getTaskNotesTaskPaneContainer());
	}
	return taskNotesScrollPane;
}

/**
 * This method initializes taskInformationTaskPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPane	
 */
private RTaskPane getTaskInformationTaskPane() {
	if (taskInformationTaskPane == null) {
		taskInformationTaskPane = new RTaskPane();
		taskInformationTaskPane.setName("taskInformationTaskPane");
		taskInformationTaskPane.setSpecial(true);
		taskInformationTaskPane.setTitle("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/taskParametersShortDesc\")%>");
		taskInformationTaskPane.setCollapsed(false);
		taskInformationTaskPane.add(getTaskInformationDetailsDisplayRDC());
	}
	return taskInformationTaskPane;
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
		taskNotesTaskPane.setTitle("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/note/plainStrings/annotations\")%>");
		taskNotesTaskPane.setCollapsed(false);
		taskNotesTaskPane.add(getTaskNoteDisplayListRDC());
	}
	return taskNotesTaskPane;
}

/**
 * This method initializes taskInformationDetailsDisplayRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.task.TaskInformationDetailsDisplay.TaskInformationDetailsDisplayPanel	
 */
private TaskInformationDetailsDisplayPanel getTaskInformationDetailsDisplayRDC() {
	if (taskInformationDetailsDisplayRDC == null) {
		taskInformationDetailsDisplayRDC = new TaskInformationDetailsDisplayPanel();
		taskInformationDetailsDisplayRDC.setName("taskInformationDetailsDisplayRDC");
		taskInformationDetailsDisplayRDC.setPreferredSize(new com.ulcjava.base.application.util.Dimension(20,550));
	}
	return taskInformationDetailsDisplayRDC;
}

/**
 * This method initializes taskCustomFieldsTaskPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPane	
 */
private RTaskPane getTaskCustomFieldsTaskPane() {
	if (taskCustomFieldsTaskPane == null) {
		taskCustomFieldsTaskPane = new RTaskPane();
		taskCustomFieldsTaskPane.setName("taskCustomFieldsTaskPane");
		taskCustomFieldsTaskPane.setTitle("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/taskCustomFieldsDetails\")%>");
		taskCustomFieldsTaskPane.setCollapsed(true);
		taskCustomFieldsTaskPane.add(getTaskCustomFieldsDisplayRDC());
	}
	return taskCustomFieldsTaskPane;
}

/**
 * This method initializes taskCustomFieldsDisplayRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.task.TaskCustomFieldsDisplay.TaskCustomFieldsDisplayPanel	
 */
private TaskCustomFieldsDisplayPanel getTaskCustomFieldsDisplayRDC() {
	if (taskCustomFieldsDisplayRDC == null) {
		taskCustomFieldsDisplayRDC = new TaskCustomFieldsDisplayPanel();
		taskCustomFieldsDisplayRDC.setName("taskCustomFieldsDisplayRDC");
		taskCustomFieldsDisplayRDC.setPreferredSize(new com.ulcjava.base.application.util.Dimension(20,400));
	}
	return taskCustomFieldsDisplayRDC;
}

/**
 * This method initializes taskNoteDisplayListRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.task.TaskNoteDisplayList.TaskNoteDisplayListPanel	
 */
private TaskNoteDisplayListPanel getTaskNoteDisplayListRDC() {
	if (taskNoteDisplayListRDC == null) {
		taskNoteDisplayListRDC = new TaskNoteDisplayListPanel();
		taskNoteDisplayListRDC.setName("taskNoteDisplayListRDC");
		taskNoteDisplayListRDC.setPreferredSize(new com.ulcjava.base.application.util.Dimension(20,550));
	}
	return taskNoteDisplayListRDC;
}

/**
 * This method initializes taskActionsToolBar	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RToolBar	
 */
private RToolBar getTaskActionsToolBar() {
	if (taskActionsToolBar == null) {
		RFiller Filler1 = new RFiller();
		taskActionsToolBar = new RToolBar();
		taskActionsToolBar.setName("taskActionsToolBar");
		taskActionsToolBar.setFloatable(false);
		taskActionsToolBar.add(getRefreshTaskButton());
		taskActionsToolBar.add(getTaskDetailButton());
		taskActionsToolBar.add(getStartTaskToggleButton());
		taskActionsToolBar.add(getParkTaskButton());
		taskActionsToolBar.add(getDelegateTaskButton());
		taskActionsToolBar.add(getCancelTaskButton());
		taskActionsToolBar.add(Filler1);
		taskActionsToolBar.add(getExitButton());
	}
	return taskActionsToolBar;
}

/**
 * This method initializes startTaskToggleButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RToggleButton	
 */
private RButton getStartTaskToggleButton() {
	if (startTaskToggleButton == null) {
		startTaskToggleButton = new RButton();
		startTaskToggleButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/startTask24\")%>");
		startTaskToggleButton.setRolloverIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/startTask32\")%>");
		startTaskToggleButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/startTaskLongDesc\")%>");
		startTaskToggleButton.setEnabled(false);
		startTaskToggleButton.setName("startTaskToggleButton");
	}
	return startTaskToggleButton;
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
 * This method initializes refreshTaskButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getRefreshTaskButton() {
	if (refreshTaskButton == null) {
		refreshTaskButton = new RButton();
		refreshTaskButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/refreshTaskList24\")%>");
		refreshTaskButton.setRolloverIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/refreshTaskList32\")%>");
		refreshTaskButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/refreshTaskInfo\")%>");
		refreshTaskButton.setName("refreshTaskButton");
	}
	return refreshTaskButton;
}

/**
 * This method initializes parkTaskButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getParkTaskButton() {
	if (parkTaskButton == null) {
		parkTaskButton = new RButton();
		parkTaskButton.setName("parkTaskButton");
		parkTaskButton.setVisible(true);
		parkTaskButton.setStyle("toolBarButton");
		parkTaskButton.setRolloverIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/parkTask32\")%>");
		parkTaskButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/parkTask24\")%>");
		parkTaskButton.setEnabled(false);
		parkTaskButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/parkTaskLongDesc\")%>");
	}
	return parkTaskButton;
}

/**
 * This method initializes delegateTaskButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getDelegateTaskButton() {
	if (delegateTaskButton == null) {
		delegateTaskButton = new RButton();
		delegateTaskButton.setName("delegateTaskButton");
		delegateTaskButton.setStyle("toolBarButton");
		delegateTaskButton.setRolloverIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/delegateTask32\")%>");
		delegateTaskButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/delegateTask24\")%>");
		delegateTaskButton.setEnabled(false);
		delegateTaskButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/delegateTaskLongDesc\")%>");
	}
	return delegateTaskButton;
}

/**
 * This method initializes exitButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getExitButton() {
	if (exitButton == null) {
		exitButton = new RButton();
		exitButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/close24\")%>");
		exitButton.setRolloverIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/close32\")%>");
		exitButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/close\")%>");
		exitButton.setName("exitButton");
	}
	return exitButton;
}

/**
 * This method initializes intermediateEventTaskPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPane	
 */
private RTaskPane getIntermediateEventTaskPane() {
	if (intermediateEventTaskPane == null) {
		intermediateEventTaskPane = new RTaskPane();
		intermediateEventTaskPane.setName("intermediateEventTaskPane");
		intermediateEventTaskPane.setTitle("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/intermediateEventInformation\")%>");
		intermediateEventTaskPane.setCollapsed(true);
		intermediateEventTaskPane.add(getIntermediateEventDisplayRDC());
	}
	return intermediateEventTaskPane;
}

/**
 * This method initializes intermediateEventDisplayRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.task.ie.IntermediateEventDisplay.IntermediateEventDisplayPanel	
 */
private IntermediateEventDisplayPanel getIntermediateEventDisplayRDC() {
	if (intermediateEventDisplayRDC == null) {
		intermediateEventDisplayRDC = new IntermediateEventDisplayPanel();
		intermediateEventDisplayRDC.setName("intermediateEventDisplayRDC");
		intermediateEventDisplayRDC.setPreferredSize(new com.ulcjava.base.application.util.Dimension(20,450));
	}
	return intermediateEventDisplayRDC;
}

/**
 * This method initializes taskDisplayCardPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RCardPane	
 */
private RCardPane getTaskDisplayCardPane() {
	if (taskDisplayCardPane == null) {
		taskDisplayCardPane = new RCardPane();
		taskDisplayCardPane.setName("taskDisplayCardPane");
		taskDisplayCardPane.addCard("taskInformationPane", getTaskInformationPane());
		taskDisplayCardPane.addCard("taskExecutionPane", getTaskExecutionPane());
	}
	return taskDisplayCardPane;
}

/**
 * This method initializes taskExecutionDisplay	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.displays.RCardDisplay	
 */
private RCardDisplay getTaskExecutionDisplay() {
	if (taskExecutionDisplay == null) {
		taskExecutionDisplay = new RCardDisplay();
		taskExecutionDisplay.setName("taskExecutionDisplay");
	}
	return taskExecutionDisplay;
}

/**
 * This method initializes cancelTaskButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getCancelTaskButton() {
	if (cancelTaskButton == null) {
		cancelTaskButton = new RButton();
		cancelTaskButton.setEnabled(false);
		cancelTaskButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/cancelTaskLongDesc\")%>");
		cancelTaskButton.setRolloverIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/cancelTask32\")%>");
		cancelTaskButton.setStyle("toolBarButton");
		cancelTaskButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/cancelTask24\")%>");
		cancelTaskButton.setName("cancelTaskButton");
	}
	return cancelTaskButton;
}

/**
 * This method initializes taskDetailButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getTaskDetailButton() {
	if (taskDetailButton == null) {
		taskDetailButton = new RButton();
		taskDetailButton.setEnabled(true);
		taskDetailButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/informOnTaskLongDesc\")%>");
		taskDetailButton.setVisible(true);
		taskDetailButton.setRolloverIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/informOnTask32\")%>");
		taskDetailButton.setStyle("toolBarButton");
		taskDetailButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/informOnTask24\")%>");
		taskDetailButton.setName("taskDetailButton");
	}
	return taskDetailButton;
}

/**
 * This method initializes taskInformationPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RTabbedPane	
 */
private RTabbedPane getTaskInformationPane() {
	if (taskInformationPane == null) {
		taskInformationPane = new RTabbedPane();
		taskInformationPane.setName("taskInformationPane");
		taskInformationPane.addTab("Task Details", null, getTaskDetailsSplitPane(), null);
		taskInformationPane.addTab("Case Details", null, getCaseDetailsSplitPane(), null);
	}
	return taskInformationPane;
}

/**
 * This method initializes taskExecutionPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RTabbedPane	
 */
private RTabbedPane getTaskExecutionPane() {
	if (taskExecutionPane == null) {
		taskExecutionPane = new RTabbedPane();
		taskExecutionPane.setName("taskExecutionPane");
		taskExecutionPane.addTab("Task Execution", null, getTaskExecutionDisplay(), null);
	}
	return taskExecutionPane;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"