package ch.ivyteam.ivy.workflow.ui.task.TaskDisplayList;

import ch.ivyteam.ivy.addons.widgets.RTableWithExcelExport;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBorderLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RSplitPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RToolBar;
import ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay;
import ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem;
import ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu;

import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.ULCFlowLayoutPane;
import com.ulcjava.base.application.ULCListSelectionModel;
import com.ulcjava.base.application.ULCSplitPane;
import com.ulcjava.base.application.border.ULCEtchedBorder;

/**
 * RichDialog panel implementation for TaskDisplayListPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class TaskDisplayListPanel extends RichDialogBorderPanel
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RHyperlink refreshTaskListButton = null;
private RHyperlink startTaskButton = null;
private RHyperlink parkTaskButton = null;
private RHyperlink delegateTaskButton = null;
private RHyperlink informOnTaskButton = null;
private RBoxPane searchTaskBoxPane = null;
private RScrollPane tasksScrollPane = null;
private RTableWithExcelExport tasksTable = null;
private RLabel footerLabel = null;
private RToolBar taskActionsToolBar = null;
private RBorderLayoutPane taskListBorderLayoutPane = null;
private RSplitPane taskListAndTaskInformationSplitPane = null;
private RTabbedDisplay taskDisplayTabbedDisplay = null;
private RPopupMenu taskListPopupMenu = null;  //  @jve:decl-index=0:visual-constraint="891,388"
private RMenuItem informOnTaskOnSiblingTabMenuItem = null;
private RMenuItem startTaskOnSiblingTabMenuItem = null;
private RMenuItem refreshTaskListMenuItem = null;
private RMenuItem findTaskMenuItem = null;
private RMenuItem parkTaskMenuItem = null;
private RMenuItem delegateTaskMenuItem = null;
private RFlowLayoutPane taskDetailsActionsFlowLayoutPane = null;
private RHyperlink setTaskExpiryDateButton = null;
private RHyperlink setTaskBlockingDelayDateButton = null;
private RHyperlink resetTaskButton = null;
private RHyperlink destroyTaskButton = null;
private RTextField taskNameOrCaseNameCriteriaTextField = null;
private RMenuItem setTaskExpiryDateMenuItem = null;
private RMenuItem setTaskBlockingDelayDateMenuItem = null;
private RMenuItem resetTaskMenuItem = null;
private RMenuItem destroyTaskMenuItem = null;
private RGridBagLayoutPane findTasksGridBagLayoutPane = null;
private RHyperlink findTasksHyperlink = null;
private RHyperlink automaticTasksExecutionToggleButton = null;
private RPopupMenu.RSeparator aMenuSeparator = null;
private RPopupMenu.RSeparator aMenuSeparator2 = null;
private RBoxPane findBoxPane = null;
private RBoxPane taskActionsBoxPane = null;
/**
   * Create a new instance of TaskDisplayListPanel
   */
  public TaskDisplayListPanel()
  {
    super();
    initialize();   
  }
  
  /**
   * This method initializes TaskDisplayListPanel
   * @return void
   */
  public void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(800,600));

        this.add(getTaskListAndTaskInformationSplitPane(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
        this.add(getTaskDetailsActionsFlowLayoutPane(), com.ulcjava.base.application.ULCBorderLayoutPane.SOUTH);
  }

/**
 * This method initializes refreshTaskListButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RHyperlink getRefreshTaskListButton() {
	if (refreshTaskListButton == null) {
		refreshTaskListButton = new RHyperlink();
		refreshTaskListButton.setName("refreshTaskListButton");
		refreshTaskListButton.setStyle("toolBarButton");
		refreshTaskListButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/refreshTaskListLongDesc\")%>");
		refreshTaskListButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/refreshTaskListShortDesc\")%>");
		refreshTaskListButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/refresh32\")%>");
	}
	return refreshTaskListButton;
}

/**
 * This method initializes startTaskButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RHyperlink getStartTaskButton() {
	if (startTaskButton == null) {
		startTaskButton = new RHyperlink();
		startTaskButton.setName("startTaskButton");
		startTaskButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/startTaskLongDesc\")%>");
		startTaskButton.setStyle("toolBarButton");
		startTaskButton.setEnabled(false);
		startTaskButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/startTaskShortDesc\")%>");
		startTaskButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/start32\")%>");
	}
	return startTaskButton;
}

/**
 * This method initializes parkTaskButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RHyperlink getParkTaskButton() {
	if (parkTaskButton == null) {
		parkTaskButton = new RHyperlink();
		parkTaskButton.setName("parkTaskButton");
		parkTaskButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/parkTaskLongDesc\")%>");
		parkTaskButton.setVisible(true);
		parkTaskButton.setStyle("toolBarButton");
		parkTaskButton.setEnabled(false);
		parkTaskButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/parkTaskShortDesc\")%>");
		parkTaskButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/park32\")%>");
	}
	return parkTaskButton;
}

/**
 * This method initializes delegateTaskButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RHyperlink getDelegateTaskButton() {
	if (delegateTaskButton == null) {
		delegateTaskButton = new RHyperlink();
		delegateTaskButton.setName("delegateTaskButton");
		delegateTaskButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/delegateTaskLongDesc\")%>");
		delegateTaskButton.setStyle("toolBarButton");
		delegateTaskButton.setEnabled(false);
		delegateTaskButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/delegateTaskShortDesc\")%>");
		delegateTaskButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/delegate32\")%>");
	}
	return delegateTaskButton;
}

/**
 * This method initializes informOnTaskButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RHyperlink getInformOnTaskButton() {
	if (informOnTaskButton == null) {
		informOnTaskButton = new RHyperlink();
		informOnTaskButton.setName("informOnTaskButton");
		informOnTaskButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/informOnTaskLongDesc\")%>");
		informOnTaskButton.setStyle("toolBarButton");
		informOnTaskButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/detail32\")%>");
		informOnTaskButton.setEnabled(false);
		informOnTaskButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/informOnTaskShortDesc\")%>");
		informOnTaskButton.setVisible(true);
	}
	return informOnTaskButton;
}

/**
 * This method initializes searchTaskBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getSearchTaskBoxPane() {
	if (searchTaskBoxPane == null) {
		searchTaskBoxPane = new RBoxPane();
		searchTaskBoxPane.setName("searchTaskBoxPane");
		searchTaskBoxPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		searchTaskBoxPane.setName("searchTaskBoxPane");
		searchTaskBoxPane.setName("searchTaskBoxPane");
		searchTaskBoxPane.set(0, 1, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getTaskActionsToolBar());
		searchTaskBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getTaskActionsBoxPane());
	}
	return searchTaskBoxPane;
}

/**
 * This method initializes tasksScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getTasksScrollPane() {
	if (tasksScrollPane == null) {
		tasksScrollPane = new RScrollPane();
		tasksScrollPane.setName("tasksScrollPane");
		tasksScrollPane.setStyleProperties("{/horizontalScrollBarPolicy \"ALWAYS\"/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		tasksScrollPane.setName("tasksScrollPane");
		tasksScrollPane.setViewPortView(getTasksTable());
	}
	return tasksScrollPane;
}

/**
 * This method initializes tasksTable	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTable	
 */
private RTableWithExcelExport getTasksTable() {
	if (tasksTable == null) {
		tasksTable = new RTableWithExcelExport();
		tasksTable.setName("tasksTable");
		tasksTable.setSortable(true);
		tasksTable.setName("tasksTable");
		tasksTable.setPreferredScrollableViewportSize(new com.ulcjava.base.application.util.Dimension(1920,80));
		tasksTable.setSelectionMode(ULCListSelectionModel.SINGLE_SELECTION);
		tasksTable.setRowHeight(20);
		tasksTable.setName("tasksTable");
		tasksTable.setComponentPopupMenu(getTaskListPopupMenu());
		tasksTable.setModelConfiguration("{/showTableheader true /autoTableheader false /showtooltip true /showIcons true /version \"3.0\"/emptyTableText \"\"/columns {{/result \"result=ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/task/taskPriority/plainStrings/\\\" + entry.wfTask.getPriority().intValue())\"/version \"3.0\"/tooltip \"result=ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/task/taskPriority/plainStrings/\\\" + entry.wfTask.getPriority().intValue())\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/common/workflowPriorities/images/\\\" + entry.wfTask.getPriority().intValue() + \\\"_16\\\"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/taskPriorityShort\\\")\"/field \"priority\"/condition \"\"/columnWidth \"100\"/columnStyle \"\"}{/result \"result=ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/task/taskState/plainStrings/\\\" + entry.getState())\"/version \"3.0\"/tooltip \"result=ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/task/taskState/plainStrings/\\\" + entry.wfTask.getState())\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/task/taskState/images/\\\" + entry.wfTask.getState() + \\\"16\\\"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/stateShort\\\")\"/field \"state\"/condition \"\"/columnWidth \"130\"/columnStyle \"\"}{/result \"result=value\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/task\\\")\"/field \"wfTask.name\"/columnWidth \"250\"/columnStyle \"wfTaskWrapper\"/cellWidget \"\"}{/result \"result=entry.wfTask.getCase().name\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/case\\\")\"/field \"\"/condition \"\"/columnWidth \"350\"/columnStyle \"\"}{/result \"result=entry.wfTask.getCase().getBusinessPriority() is initialized? \\r\\nivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/caseRisk/plainStrings/\\\" + Enum.valueOf(ch.ivyteam.ivy.workflow.WorkflowPriority.class,entry.wfTask.getCase().getBusinessPriority()).ordinal() ): \\\"\\\"\"/version \"3.0\"/tooltip \"\"/icon \"result=entry.wfTask.getCase().getBusinessPriority() is initialized? \\r\\n\\t\\t\\\"/ch/ivyteam/ivy/workflow/ui/common/workflowPriorities/images/\\\" + Enum.valueOf(ch.ivyteam.ivy.workflow.WorkflowPriority.class, entry.wfTask.getCase().getBusinessPriority()).ordinal() + \\\"_16\\\"\\r\\n\\t\\t: \\\"\\\"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/otherBusinessData/plainStrings/businessPriorityShort\\\")\"/field \"\"/editable \"\"/condition \"\"/columnWidth \"100\"/columnStyle \"\"/cellWidget \"\"}{/result \"result=entry.wfTask.getCase().getBusinessMainContactType() is initialized? entry.wfTask.getCase().getBusinessMainContactType(): \\\"\\\"\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/businessMainContact/plainStrings/typeLong\\\")\"/field \"\"/editable \"\"/condition \"\"/columnWidth \"80\"/columnStyle \"\"/cellWidget \"\"}{/result \"result=entry.wfTask.getCase().getBusinessMainContactId() is initialized? entry.wfTask.getCase().getBusinessMainContactId(): \\\"\\\"\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/businessMainContact/plainStrings/idLong\\\")\"/field \"\"/editable \"\"/condition \"\"/columnWidth \"80\"/columnStyle \"\"/cellWidget \"\"}{/result \"result=entry.wfTask.getCase().getBusinessMainContactName() is initialized? entry.wfTask.getCase().getBusinessMainContactName(): \\\"\\\"\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/businessMainContact/plainStrings/nameLong\\\")\"/field \"\"/editable \"\"/condition \"\"/columnWidth \"250\"/columnStyle \"\"/cellWidget \"\"}{/result \"result=entry.wfTask.getCase().getBusinessObjectCode() is initialized? entry.wfTask.getCase().getBusinessObjectCode(): \\\"\\\"\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/businessObject/plainStrings/codeShort\\\")\"/field \"\"/editable \"\"/condition \"\"/columnWidth \"80\"/columnStyle \"\"/cellWidget \"\"}{/result \"result=entry.wfTask.getCase().getBusinessObjectName() is initialized? entry.wfTask.getCase().getBusinessObjectName(): \\\"\\\"\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/businessObject/plainStrings/nameShort\\\")\"/field \"\"/editable \"\"/condition \"\"/columnWidth \"200\"/columnStyle \"\"/cellWidget \"\"}{/result \"result=entry.getStartTimestamp().format(ivy.var.xivy_workflow_ui_restricted_dateTimeFormatPattern)\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/startDate\\\")\"/field \"startTimestamp\"/columnWidth \"100\"/columnStyle \"date\"}{/result \"result=entry.getBusinessMilestoneTimestamp() is initialized? entry.getBusinessMilestoneTimestamp().format(ivy.var.xivy_workflow_ui_restricted_dateFormatPattern): \\\"\\\"\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/businessMilestoneTimestampShort\\\")\"/field \"businessMilestoneTimestamp\"/editable \"\"/condition \"\"/columnWidth \"80\"/columnStyle \"date\"/cellWidget \"\"}{/result \"result=entry.getExpiryTimestamp() is initialized? entry.getExpiryTimestamp().format(ivy.var.xivy_workflow_ui_restricted_dateTimeFormatPattern): \\\"\\\"\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/taskExpiryTimestamp\\\")\"/field \"expiryTimestamp\"/condition \"\"/columnWidth \"80\"/columnStyle \"date\"}{/result \"result=entry.getDelayTimestamp() is initialized? entry.delayTimestamp.format(ivy.var.xivy_addons_restricted_dateTimeFormatPattern): \\\"\\\"\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/setTaskBlockingDelayTimestampShortDesc\\\")\"/field \"delayTimestamp\"/editable \"\"/condition \"in.runningTaskMode && in.taskDisplayMode == 2\"/columnWidth \"100\"/cellWidget \"\"}{/result \"result=entry.wfTask.getActivatorName()\"/version \"3.0\"/tooltip \"\"/icon \"result=(entry.wfTask.getActivator() is initialized?\\r\\n\\t(entry.wfTask.#activator.isUser() is initialized? (entry.wfTask.activator.isUser()? \\\"/ch/ivyteam/ivy/workflow/ui/security/images/user16\\\": \\\"/ch/ivyteam/ivy/workflow/ui/security/images/role16\\\"): \\\"\\\"):\\r\\n\\t\\\"\\\")\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/taskActivator\\\")\"/field \"\"/columnWidth \"100\"/columnStyle \"\"}{/result \"result=entry.wfTask.getKindName()\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/enduser/parameters/taskStageShortDesc\\\")\"/field \"\"/columnWidth \"80\"/columnStyle \"\"}{/result \"result=entry.getCaseBusinessStartTimestamp() is initialized? entry.getCaseBusinessStartTimestamp().format(ivy.var.xivy_workflow_ui_restricted_dateTimeFormatPattern): \\\"\\\"\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/otherBusinessData/plainStrings/businessStartDateTimeLong\\\")\"/field \"caseBusinessStartTimestamp\"/editable \"\"/condition \"\"/columnWidth \"100\"/columnStyle \"date\"/cellWidget \"\"}{/result \"result=entry.getCaseBusinessMilestoneTimestamp() is initialized? entry.getCaseBusinessMilestoneTimestamp().format(ivy.var.xivy_workflow_ui_restricted_dateFormatPattern): \\\"\\\"\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/otherBusinessData/plainStrings/businessMilestoneDateTimeShort\\\")\"/field \"caseBusinessMilestoneTimestamp\"/editable \"\"/condition \"\"/columnWidth \"80\"/columnStyle \"date\"/cellWidget \"\"}{/result \"result=entry.wfTask.getCase().getBusinessCreatorUser() is initialized? entry.wfTask.getCase().getBusinessCreatorUser(): \\\"\\\"\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/otherBusinessData/plainStrings/businessCreatorUserShort\\\")\"/field \"\"/editable \"\"/condition \"\"/columnWidth \"100\"/columnStyle \"\"/cellWidget \"\"}{/result \"result=entry.wfTask.getWorkerUserName()\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/workerUserName\\\")\"/field \"\"/editable \"\"/condition \"!in.runningTaskMode\"/columnWidth \"100\"/columnStyle \"\"/cellWidget \"\"}{/result \"result=entry.wfTask.getIdentifier()\"/version \"3.0\"/tooltip \"\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/task/images/taskId16\\\"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/taskId\\\")\"/field \"\"/condition \"\"/columnWidth \"50\"/columnStyle \"\"}{/result \"result=entry.wfTask.getCase().getIdentifier()\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseId\\\")\"/field \"\"/editable \"\"/condition \"\"/columnWidth \"100\"/columnStyle \"\"/cellWidget \"\"}}}");
	}
	return tasksTable;
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
 * This method initializes taskActionsToolBar	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RToolBar	
 */
private RToolBar getTaskActionsToolBar() {
	if (taskActionsToolBar == null) {
		taskActionsToolBar = new RToolBar();
		taskActionsToolBar.setName("taskActionsToolBar");
		taskActionsToolBar.setFloatable(false);
		taskActionsToolBar.setVisible(false);
		taskActionsToolBar.setStyleProperties("{/fill \"HORIZONTAL\"/insetsLeft \"0\"/weightX \"1\"}");
	}
	return taskActionsToolBar;
}

/**
 * This method initializes taskListBorderLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBorderLayoutPane	
 */
private RBorderLayoutPane getTaskListBorderLayoutPane() {
	if (taskListBorderLayoutPane == null) {
		taskListBorderLayoutPane = new RBorderLayoutPane();
		taskListBorderLayoutPane.setName("taskListBorderLayoutPane");
		taskListBorderLayoutPane.add(getFooterLabel(), com.ulcjava.base.application.ULCBorderLayoutPane.SOUTH);
		taskListBorderLayoutPane.add(getTasksScrollPane(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
		taskListBorderLayoutPane.add(getSearchTaskBoxPane(), com.ulcjava.base.application.ULCBorderLayoutPane.NORTH);
	}
	return taskListBorderLayoutPane;
}

/**
 * This method initializes taskListAndTaskInformationSplitPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RSplitPane	
 */
private RSplitPane getTaskListAndTaskInformationSplitPane() {
	if (taskListAndTaskInformationSplitPane == null) {
		taskListAndTaskInformationSplitPane = new RSplitPane();
		taskListAndTaskInformationSplitPane.setName("taskListAndTaskInformationSplitPane");
		taskListAndTaskInformationSplitPane.setOrientation(ULCSplitPane.VERTICAL_SPLIT);
		taskListAndTaskInformationSplitPane.setStyleProperties("{/orientation \"VERTICAL_SPLIT\"/dividerLocation \"1\"}");
		taskListAndTaskInformationSplitPane.setLeftComponent(getTaskListBorderLayoutPane());
		taskListAndTaskInformationSplitPane.setRightComponent(getTaskDisplayTabbedDisplay());
		taskListAndTaskInformationSplitPane.setResizeWeight(1.0);
	}
	return taskListAndTaskInformationSplitPane;
}

/**
 * This method initializes taskDisplayTabbedDisplay	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay	
 */
private RTabbedDisplay getTaskDisplayTabbedDisplay() {
	if (taskDisplayTabbedDisplay == null) {
		taskDisplayTabbedDisplay = new RTabbedDisplay();
		taskDisplayTabbedDisplay.setName("taskDisplayTabbedDisplay");
	}
	return taskDisplayTabbedDisplay;
}

/**
 * This method initializes taskListPopupMenu	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu	
 */
private RPopupMenu getTaskListPopupMenu() {
	if (taskListPopupMenu == null) {
		taskListPopupMenu = new RPopupMenu();
		taskListPopupMenu.setName("taskListPopupMenu");
		taskListPopupMenu.add(getRefreshTaskListMenuItem());
		taskListPopupMenu.add(getFindTaskMenuItem());
		taskListPopupMenu.add(getInformOnTaskOnSiblingTabMenuItem());
		taskListPopupMenu.add(getAMenuSeparator());
		taskListPopupMenu.add(getStartTaskOnSiblingTabMenuItem());
		taskListPopupMenu.add(getAMenuSeparator2());
		taskListPopupMenu.add(getParkTaskMenuItem());
		taskListPopupMenu.add(getDelegateTaskMenuItem());
		taskListPopupMenu.add(getSetTaskExpiryDateMenuItem());
		taskListPopupMenu.add(getSetTaskBlockingDelayDateMenuItem());
		taskListPopupMenu.add(getResetTaskMenuItem());
		taskListPopupMenu.add(getDestroyTaskMenuItem());
	}
	return taskListPopupMenu;
}

/**
 * This method initializes informOnTaskOnSiblingTabMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getInformOnTaskOnSiblingTabMenuItem() {
	if (informOnTaskOnSiblingTabMenuItem == null) {
		informOnTaskOnSiblingTabMenuItem = new RMenuItem();
		informOnTaskOnSiblingTabMenuItem.setText("Open task information on sibling tab");
		informOnTaskOnSiblingTabMenuItem.setEnabled(false);
		informOnTaskOnSiblingTabMenuItem.setName("informOnTaskOnSiblingTabMenuItem");
	}
	return informOnTaskOnSiblingTabMenuItem;
}

/**
 * This method initializes startTaskOnSiblingTabMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getStartTaskOnSiblingTabMenuItem() {
	if (startTaskOnSiblingTabMenuItem == null) {
		startTaskOnSiblingTabMenuItem = new RMenuItem();
		startTaskOnSiblingTabMenuItem.setText("Start task on sibling tab");
		startTaskOnSiblingTabMenuItem.setEnabled(false);
		startTaskOnSiblingTabMenuItem.setName("startTaskOnSiblingTabMenuItem");
	}
	return startTaskOnSiblingTabMenuItem;
}

/**
 * This method initializes refreshTaskListMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getRefreshTaskListMenuItem() {
	if (refreshTaskListMenuItem == null) {
		refreshTaskListMenuItem = new RMenuItem();
		refreshTaskListMenuItem.setText("Refresh");
		refreshTaskListMenuItem.setName("refreshTaskListMenuItem");
	}
	return refreshTaskListMenuItem;
}

/**
 * This method initializes findTaskMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getFindTaskMenuItem() {
	if (findTaskMenuItem == null) {
		findTaskMenuItem = new RMenuItem();
		findTaskMenuItem.setText("Find tasks");
		findTaskMenuItem.setEnabled(true);
		findTaskMenuItem.setVisible(false);
		findTaskMenuItem.setName("findTaskMenuItem");
	}
	return findTaskMenuItem;
}

/**
 * This method initializes parkTaskMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getParkTaskMenuItem() {
	if (parkTaskMenuItem == null) {
		parkTaskMenuItem = new RMenuItem();
		parkTaskMenuItem.setText("Park");
		parkTaskMenuItem.setEnabled(false);
		parkTaskMenuItem.setName("parkTaskMenuItem");
	}
	return parkTaskMenuItem;
}

/**
 * This method initializes delegateTaskMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getDelegateTaskMenuItem() {
	if (delegateTaskMenuItem == null) {
		delegateTaskMenuItem = new RMenuItem();
		delegateTaskMenuItem.setText("Delegate");
		delegateTaskMenuItem.setEnabled(false);
		delegateTaskMenuItem.setName("delegateTaskMenuItem");
	}
	return delegateTaskMenuItem;
}

/**
 * This method initializes taskDetailsActionsFlowLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane	
 */
private RFlowLayoutPane getTaskDetailsActionsFlowLayoutPane() {
	if (taskDetailsActionsFlowLayoutPane == null) {
		taskDetailsActionsFlowLayoutPane = new RFlowLayoutPane();
		taskDetailsActionsFlowLayoutPane.setName("taskDetailsActionsFlowLayoutPane");
		taskDetailsActionsFlowLayoutPane.setAlignment(ULCFlowLayoutPane.RIGHT);
	}
	return taskDetailsActionsFlowLayoutPane;
}

/**
 * This method initializes setTaskExpiryDateButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RHyperlink getSetTaskExpiryDateButton() {
	if (setTaskExpiryDateButton == null) {
		setTaskExpiryDateButton = new RHyperlink();
		setTaskExpiryDateButton.setEnabled(false);
		setTaskExpiryDateButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/setTaskExpiryTimestampLongDesc\")%>");
		setTaskExpiryDateButton.setStyle("toolBarButton");
		setTaskExpiryDateButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/setExpiry32\")%>");
		setTaskExpiryDateButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/setTaskExpiryTimestampShortDesc\")%>");
		setTaskExpiryDateButton.setName("setTaskExpiryDateButton");
	}
	return setTaskExpiryDateButton;
}

/**
 * This method initializes setTaskBlockingDelayDateButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RHyperlink getSetTaskBlockingDelayDateButton() {
	if (setTaskBlockingDelayDateButton == null) {
		setTaskBlockingDelayDateButton = new RHyperlink();
		setTaskBlockingDelayDateButton.setEnabled(false);
		setTaskBlockingDelayDateButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/setTaskBlockingDelayTimestampLongDesc\")%>");
		setTaskBlockingDelayDateButton.setStyle("toolBarButton");
		setTaskBlockingDelayDateButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/setBlockingDelay32\")%>");
		setTaskBlockingDelayDateButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/setTaskBlockingDelayTimestampShortDesc\")%>");
		setTaskBlockingDelayDateButton.setName("setTaskBlockingDelayDateButton");
	}
	return setTaskBlockingDelayDateButton;
}

/**
 * This method initializes resetTaskButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RHyperlink getResetTaskButton() {
	if (resetTaskButton == null) {
		resetTaskButton = new RHyperlink();
		resetTaskButton.setEnabled(false);
		resetTaskButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/cancelTaskLongDesc\")%>");
		resetTaskButton.setStyle("toolBarButton");
		resetTaskButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/reset32\")%>");
		resetTaskButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/cancelTaskShortDesc\")%>\n");
		resetTaskButton.setName("resetTaskButton");
	}
	return resetTaskButton;
}

/**
 * This method initializes destroyTaskButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RHyperlink getDestroyTaskButton() {
	if (destroyTaskButton == null) {
		destroyTaskButton = new RHyperlink();
		destroyTaskButton.setEnabled(false);
		destroyTaskButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/destroyTaskLongDesc\")%>");
		destroyTaskButton.setStyle("toolBarButton");
		destroyTaskButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/destroy32\")%>");
		destroyTaskButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/destroyTaskShortDesc\")%>");
		destroyTaskButton.setName("destroyTaskButton");
	}
	return destroyTaskButton;
}

/**
 * This method initializes taskNameOrCaseNameCriteriaTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getTaskNameOrCaseNameCriteriaTextField() {
	if (taskNameOrCaseNameCriteriaTextField == null) {
		taskNameOrCaseNameCriteriaTextField = new RTextField();
		taskNameOrCaseNameCriteriaTextField.setText("Find tasks");
		taskNameOrCaseNameCriteriaTextField.setStyleProperties("{/backgroundColor {/b \"255\"/r \"255\"/g \"255\"}/insetsTop \"0\"/fill \"BOTH\"/insetsLeft \"0\"/weightY \"0\"/weightX \"1\"}");
		taskNameOrCaseNameCriteriaTextField.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/find\")%>");
		taskNameOrCaseNameCriteriaTextField.setName("taskNameOrCaseNameCriteriaTextField");
		taskNameOrCaseNameCriteriaTextField.setBorder(BorderFactory.createEmptyBorder(0, 0, 0, 0));
		taskNameOrCaseNameCriteriaTextField.setSelectAllOnFocusGained(true);
		taskNameOrCaseNameCriteriaTextField.setColumns(20);
	}
	return taskNameOrCaseNameCriteriaTextField;
}

/**
 * This method initializes setTaskExpiryDateMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getSetTaskExpiryDateMenuItem() {
	if (setTaskExpiryDateMenuItem == null) {
		setTaskExpiryDateMenuItem = new RMenuItem();
		setTaskExpiryDateMenuItem.setEnabled(false);
		setTaskExpiryDateMenuItem.setText("Set task expiry date");
		setTaskExpiryDateMenuItem.setName("setTaskExpiryDateMenuItem");
	}
	return setTaskExpiryDateMenuItem;
}

/**
 * This method initializes setTaskBlockingDelayDateMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getSetTaskBlockingDelayDateMenuItem() {
	if (setTaskBlockingDelayDateMenuItem == null) {
		setTaskBlockingDelayDateMenuItem = new RMenuItem();
		setTaskBlockingDelayDateMenuItem.setEnabled(false);
		setTaskBlockingDelayDateMenuItem.setText("Set task blocking delay date");
		setTaskBlockingDelayDateMenuItem.setName("setTaskBlockingDelayDateMenuItem");
	}
	return setTaskBlockingDelayDateMenuItem;
}

/**
 * This method initializes resetTaskMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getResetTaskMenuItem() {
	if (resetTaskMenuItem == null) {
		resetTaskMenuItem = new RMenuItem();
		resetTaskMenuItem.setEnabled(false);
		resetTaskMenuItem.setText("Reset");
		resetTaskMenuItem.setName("resetTaskMenuItem");
	}
	return resetTaskMenuItem;
}

/**
 * This method initializes destroyTaskMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getDestroyTaskMenuItem() {
	if (destroyTaskMenuItem == null) {
		destroyTaskMenuItem = new RMenuItem();
		destroyTaskMenuItem.setEnabled(false);
		destroyTaskMenuItem.setText("Destroy");
		destroyTaskMenuItem.setName("destroyTaskMenuItem");
	}
	return destroyTaskMenuItem;
}

/**
 * This method initializes findTasksGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getFindTasksGridBagLayoutPane() {
	if (findTasksGridBagLayoutPane == null) {
		findTasksGridBagLayoutPane = new RGridBagLayoutPane();
		findTasksGridBagLayoutPane.setName("findTasksGridBagLayoutPane");
		findTasksGridBagLayoutPane.setBorder(BorderFactory.createEmptyBorder(0, 0, 0, 0));
		findTasksGridBagLayoutPane.setStyleProperties("{/fill \"NONE\"}");
		findTasksGridBagLayoutPane.setOpaque(false);
		findTasksGridBagLayoutPane.add(getFindBoxPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return findTasksGridBagLayoutPane;
}

/**
 * This method initializes findTasksHyperlink	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink	
 */
private RHyperlink getFindTasksHyperlink() {
	if (findTasksHyperlink == null) {
		findTasksHyperlink = new RHyperlink();
		findTasksHyperlink.setIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/view24\") %>");
		findTasksHyperlink.setStyleProperties("{/backgroundColor {/b \"255\"/r \"255\"/g \"255\"}/insetsTop \"0\"/insetsRight \"0\"/insetsLeft \"0\"}");
		findTasksHyperlink.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/find\")%>");
		findTasksHyperlink.setName("findTasksHyperlink");
	}
	return findTasksHyperlink;
}

/**
 * This method initializes automaticTasksExecutionToggleButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RHyperlink getAutomaticTasksExecutionToggleButton() {
	if (automaticTasksExecutionToggleButton == null) {
		automaticTasksExecutionToggleButton = new RHyperlink();
		automaticTasksExecutionToggleButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/autoStartTasksLongDesc\")%>\n");
		automaticTasksExecutionToggleButton.setStyle("toolBarButton");
		automaticTasksExecutionToggleButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/autostart32\")%>");
		automaticTasksExecutionToggleButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/autoStartTasksShortDesc\")%>\n\n");
		automaticTasksExecutionToggleButton.setName("automaticTasksExecutionToggleButton");
	}
	return automaticTasksExecutionToggleButton;
}

/**
 * This method initializes aMenuSeparator	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu.RSeparator	
 */
private RPopupMenu.RSeparator getAMenuSeparator() {
	if (aMenuSeparator == null) {
		aMenuSeparator = new RPopupMenu.RSeparator();
		aMenuSeparator.setName("aMenuSeparator");
	}
	return aMenuSeparator;
}

/**
 * This method initializes aMenuSeparator2	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu.RSeparator	
 */
private RPopupMenu.RSeparator getAMenuSeparator2() {
	if (aMenuSeparator2 == null) {
		aMenuSeparator2 = new RPopupMenu.RSeparator();
		aMenuSeparator2.setName("aMenuSeparator2");
	}
	return aMenuSeparator2;
}

/**
 * This method initializes findBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getFindBoxPane() {
	if (findBoxPane == null) {
		findBoxPane = new RBoxPane();
		findBoxPane.setName("findBoxPane");
		findBoxPane.setStyleProperties("{/fill \"HORIZONTAL\"/insetsRight \"3\"/insetsLeft \"3\"/weightX \"1\"}");
		findBoxPane.setBorder(BorderFactory.createEtchedBorder(ULCEtchedBorder.LOWERED));
		findBoxPane.setOpaque(true);
		findBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getTaskNameOrCaseNameCriteriaTextField());
		findBoxPane.set(1, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getFindTasksHyperlink());
	}
	return findBoxPane;
}

/**
 * This method initializes taskActionsBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getTaskActionsBoxPane() {
	if (taskActionsBoxPane == null) {
		RFiller hFiller = new RFiller();
		hFiller.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		taskActionsBoxPane = new RBoxPane();
		taskActionsBoxPane.setName("taskActionsBoxPane");
		taskActionsBoxPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		taskActionsBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getInformOnTaskButton());
		taskActionsBoxPane.set(1, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getStartTaskButton());
		taskActionsBoxPane.set(2, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getAutomaticTasksExecutionToggleButton());
		taskActionsBoxPane.set(3, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getParkTaskButton());
		taskActionsBoxPane.set(4, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getDelegateTaskButton());
		taskActionsBoxPane.set(5, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getSetTaskExpiryDateButton());
		taskActionsBoxPane.set(6, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getSetTaskBlockingDelayDateButton());
		taskActionsBoxPane.set(7, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getResetTaskButton());
		taskActionsBoxPane.set(8, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getDestroyTaskButton());
		taskActionsBoxPane.set(9, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getRefreshTaskListButton());
		taskActionsBoxPane.set(11, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getFindTasksGridBagLayoutPane());
		taskActionsBoxPane.set(10, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, hFiller);
	}
	return taskActionsBoxPane;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"