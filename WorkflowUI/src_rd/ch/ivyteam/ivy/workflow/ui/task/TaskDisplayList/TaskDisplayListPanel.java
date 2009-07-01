package ch.ivyteam.ivy.workflow.ui.task.TaskDisplayList;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RList;
import ch.ivyteam.ivy.richdialog.widgets.components.RTable;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBorderLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RCollapsiblePane;
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
import com.ulcjava.base.application.ULCTable;
import com.ulcjava.base.application.border.ULCTitledBorder;
import com.ulcjava.base.application.util.Color;
import com.ulcjava.base.application.util.Font;

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
private RButton refreshTaskListButton = null;
private RButton findTaskButton = null;
private RButton startTaskButton = null;
private RButton parkTaskButton = null;
private RButton delegateTaskButton = null;
private RButton informOnTaskButton = null;
private RButton findTaskGoButton = null;
private RBoxPane searchTaskBoxPane = null;
private RCollapsiblePane findTaskCollapsiblePane = null;
private RScrollPane tasksScrollPane = null;
private RTable tasksTable = null;
private RTextField taskActivatorTextField = null;
private RLabel taskActivatorLabel = null;
private RGridBagLayoutPane findTaskCriteriasGridBagLayoutPane = null;
private RFlowLayoutPane findTaskActionsFlowLayoutPane = null;
private RButton findTaskCancelButton = null;
private RLabel footerLabel = null;
private RToolBar taskActionsToolBar = null;
private RBorderLayoutPane taskListBorderLayoutPane = null;
private RSplitPane taskListAndTaskInformationSplitPane = null;
private RTabbedDisplay taskDisplayTabbedDisplay = null;
private RList taskStatesList = null;
private RScrollPane taskStatesScrollPane = null;
private RBorderLayoutPane taskPrioritiesBorderLayoutPane = null;
private RScrollPane taskPrioritiesScrollPane = null;
private RList taskPrioritiesList = null;
private RBorderLayoutPane taskStatesBorderLayoutPane = null;
private RPopupMenu taskListPopupMenu = null;  //  @jve:decl-index=0:visual-constraint="891,388"
private RMenuItem informOnTaskUnderThisTabMenuItem = null;
private RMenuItem informOnTaskOnSiblingTabMenuItem = null;
private RMenuItem startTaskUnderThisTabMenuItem = null;
private RMenuItem startTaskOnSiblingTabMenuItem = null;
private RPopupMenu.RSeparator aPopupMenuSeparator = null;
private RMenuItem refreshTaskListMenuItem = null;
private RPopupMenu.RSeparator aPopupMenuSeparator1 = null;
private RMenuItem findTaskMenuItem = null;
private RPopupMenu.RSeparator aPopupMenuSeparator2 = null;
private RMenuItem parkTaskMenuItem = null;
private RPopupMenu.RSeparator aPopupMenuSeparator3 = null;
private RPopupMenu.RSeparator aPopupMenuSeparator4 = null;
private RMenuItem delegateTaskMenuItem = null;
private RFlowLayoutPane taskDetailsActionsFlowLayoutPane = null;
private RLabel caseBusinessMainContactLabel = null;
private RTextField businessMainContactTextField = null;
private RLabel taskStageLabel = null;
private RTextField taskStageTextField = null;
private RLabel businessCreatorLabel = null;
private RTextField businessCreatorTextField = null;
private RGridBagLayoutPane searchCriteriasGridBagLayoutPane = null;
private RGridBagLayoutPane resultConfigurationGridBagLayoutPane = null;
private RLabel countLabel = null;
private RTextField countTextField = null;
private RCheckBox returnAllFoundTasksCheckBox = null;
private RButton setTaskExpiryDateButton = null;
private RButton setTaskBlockingDelayDateButton = null;
private RButton resetTaskButton = null;
private RButton destroyTaskButton = null;
private RBoxPane findByTaskOrCaseNameBoxPane = null;
private RTextField taskNameOrCaseNameCriteriaTextField = null;
private RMenuItem setTaskExpiryDateMenuItem = null;
private RMenuItem setTaskBlockingDelayDateMenuItem = null;
private RMenuItem resetTaskMenuItem = null;
private RMenuItem destroyTaskMenuItem = null;
private RPopupMenu.RSeparator a2PopupMenuSeparator = null;
private RPopupMenu.RSeparator a3PopupMenuSeparator = null;
private RPopupMenu.RSeparator a4PopupMenuSeparator = null;
private RToolBar findTaskToolBar = null;
private RLabel findTaskByNameLabel = null;
private RButton findButton = null;
private RButton closeButton = null;
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
private RButton getRefreshTaskListButton() {
	if (refreshTaskListButton == null) {
		refreshTaskListButton = new RButton();
		refreshTaskListButton.setName("refreshTaskListButton");
		refreshTaskListButton.setStyle("toolBarButton");
		refreshTaskListButton.setRolloverIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/refreshTaskList32\")%>");
		refreshTaskListButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/refreshTaskListLongDesc\")%>");
		refreshTaskListButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/refreshTaskList24\")%>");
	}
	return refreshTaskListButton;
}

/**
 * This method initializes findTaskButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getFindTaskButton() {
	if (findTaskButton == null) {
		findTaskButton = new RButton();
		findTaskButton.setName("findTaskButton");
		findTaskButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/findTaskLongDesc\")%>");
		findTaskButton.setStyle("toolBarButton");
		findTaskButton.setEnabled(true);
		findTaskButton.setRolloverIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/findTask32\")%>");
		findTaskButton.setVisible(false);
		findTaskButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/findTask24\")%>");
	}
	return findTaskButton;
}

/**
 * This method initializes startTaskButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getStartTaskButton() {
	if (startTaskButton == null) {
		startTaskButton = new RButton();
		startTaskButton.setName("startTaskButton");
		startTaskButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/startTaskLongDesc\")%>");
		startTaskButton.setStyle("toolBarButton");
		startTaskButton.setEnabled(false);
		startTaskButton.setRolloverIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/startTask32\")%>");
		startTaskButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/startTask24\")%>");
	}
	return startTaskButton;
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
		parkTaskButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/parkTaskLongDesc\")%>");
		parkTaskButton.setVisible(true);
		parkTaskButton.setStyle("toolBarButton");
		parkTaskButton.setEnabled(false);
		parkTaskButton.setRolloverIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/parkTask32\")%>");
		parkTaskButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/parkTask24\")%>");
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
		delegateTaskButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/delegateTaskLongDesc\")%>");
		delegateTaskButton.setStyle("toolBarButton");
		delegateTaskButton.setEnabled(false);
		delegateTaskButton.setRolloverIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/delegateTask32\")%>");
		delegateTaskButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/delegateTask24\")%>");
	}
	return delegateTaskButton;
}

/**
 * This method initializes informOnTaskButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getInformOnTaskButton() {
	if (informOnTaskButton == null) {
		informOnTaskButton = new RButton();
		informOnTaskButton.setName("informOnTaskButton");
		informOnTaskButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/informOnTaskLongDesc\")%>");
		informOnTaskButton.setStyle("toolBarButton");
		informOnTaskButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/informOnTask24\")%>");
		informOnTaskButton.setEnabled(false);
		informOnTaskButton.setRolloverIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/informOnTask32\")%>");
		informOnTaskButton.setVisible(true);
	}
	return informOnTaskButton;
}

/**
 * This method initializes findTaskGoButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getFindTaskGoButton() {
	if (findTaskGoButton == null) {
		findTaskGoButton = new RButton();
		findTaskGoButton.setName("findTaskGoButton");
		findTaskGoButton.setPreferredSize(new com.ulcjava.base.application.util.Dimension(100,25));
		findTaskGoButton.setText("Go");
	}
	return findTaskGoButton;
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
		searchTaskBoxPane.set(0, 4, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_EXPAND_TOP, getFindTaskCollapsiblePane());
		searchTaskBoxPane.set(0, 1, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getTaskActionsToolBar());
		searchTaskBoxPane.set(0, 2, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getFindByTaskOrCaseNameBoxPane());
	}
	return searchTaskBoxPane;
}

/**
 * This method initializes findTaskCollapsiblePane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RCollapsiblePane	
 */
private RCollapsiblePane getFindTaskCollapsiblePane() {
	if (findTaskCollapsiblePane == null) {
		findTaskCollapsiblePane = new RCollapsiblePane();
		findTaskCollapsiblePane.setName("findTaskCollapsiblePane");
		findTaskCollapsiblePane.setStyleProperties("{/fill \"HORIZONTAL\"/weightY \"0\"/weightX \"1\"}");
		findTaskCollapsiblePane.setCollapsed(true);
		findTaskCollapsiblePane.add(getFindTaskCriteriasGridBagLayoutPane());
	}
	return findTaskCollapsiblePane;
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
		tasksScrollPane.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		tasksScrollPane.setViewPortView(getTasksTable());
	}
	return tasksScrollPane;
}

/**
 * This method initializes tasksTable	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTable	
 */
private RTable getTasksTable() {
	if (tasksTable == null) {
		tasksTable = new RTable();
		tasksTable.setName("tasksTable");
		tasksTable.setAutoResizeMode(ULCTable.AUTO_RESIZE_NEXT_COLUMN);
		tasksTable.setSortable(true);
		tasksTable.setName("tasksTable");
		tasksTable.setPreferredScrollableViewportSize(new com.ulcjava.base.application.util.Dimension(450,80));
		tasksTable.setSelectionMode(ULCListSelectionModel.SINGLE_SELECTION);
		tasksTable.setComponentPopupMenu(getTaskListPopupMenu());
		tasksTable.setModelConfiguration("{/showTableheader \"true\"/autoTableheader \"false\"/showtooltip \"true\"/showIcons \"true\"/version \"3.0\"/emptyTableText \"n/a\"/columns {{/result \"result=entry.getIdentifier()\"/version \"3.0\"/tooltip \"result=entry.getIdentifier()\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/task/images/taskId16\\\"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/id\\\")\"/field \"\"/columnWidth \"80\"}{/result \"result=entry.getName()\"/version \"3.0\"/tooltip \"result=entry.getName()\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/task\\\")\"/field \"\"/columnWidth \"200\"}{/result \"result=entry.getPriority()\"/version \"3.0\"/tooltip \"result=entry.getPriority()\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/task/images/taskPriority\\\" + entry.getPriority().intValue() + \\\"_16\\\"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/taskPriority\\\")\"/field \"\"/columnWidth \"20\"}{/result \"result=entry.getState()\"/version \"3.0\"/tooltip \"result=entry.getState()\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/task/images/taskState\\\" + entry.getState() + \\\"16\\\"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/taskState\\\")\"/field \"\"/columnWidth \"20\"}{/result \"result=entry.getActivatorName()\"/version \"3.0\"/tooltip \"result=entry.getActivatorName()\"/icon \"result=(entry.getActivator() is initialized?\\r\\n\\t(entry.#activator.isUser() is initialized? (entry.activator.isUser()? \\\"/ch/ivyteam/ivy/workflow/ui/security/images/user16\\\": \\\"/ch/ivyteam/ivy/workflow/ui/security/images/role16\\\"): \\\"\\\"):\\r\\n\\t\\\"\\\")\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/taskActivator\\\")\"/field \"\"}{/result \"result=(entry.getStartTimestamp() is initialized? new DateTime(entry.getStartTimestamp()).format(): \\\"n/a\\\")\"/version \"3.0\"/tooltip \"result=(entry.getStartTimestamp() is initialized? new DateTime(entry.getStartTimestamp()).format(): \\\"n/a\\\")\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/startDate\\\")\"/field \"\"/columnWidth \"120\"}{/result \"result=(entry.getExpiryTimestamp() is initialized? new DateTime(entry.getExpiryTimestamp()).format(): \\\"n/a\\\")\"/version \"3.0\"/tooltip \"result=(entry.getExpiryTimestamp() is initialized? new DateTime(entry.getExpiryTimestamp()).format(): \\\"n/a\\\")\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/taskExpiryTimestamp\\\")\"/field \"\"/columnWidth \"120\"}{/result \"result=entry.getKindName()\"/version \"3.0\"/tooltip \"result=entry.getKindName()\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/enduser/parameters/taskStageShortDesc\\\")\"/field \"\"}{/result \"result=entry.getCase().name\"/version \"3.0\"/tooltip \"result=entry.getCase().getIdentifier().toString() + \\\" - \\\" + entry.getCase().name\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/case\\\")\"/field \"\"/columnWidth \"200\"}{/result \"result=(entry.getCase().getStartTimestamp() is initialized? new DateTime(entry.getCase().getStartTimestamp()).format(\\\"medium\\\"): \\\"n/a\\\")\"/version \"3.0\"/tooltip \"result=(entry.getCase().getStartTimestamp() is initialized? new DateTime(entry.getCase().getStartTimestamp()).format(\\\"medium\\\"): \\\"n/a\\\")\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseStartTimestamp\\\")\"/field \"\"/columnWidth \"100\"}}}");
	}
	return tasksTable;
}

/**
 * This method initializes taskActivatorTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getTaskActivatorTextField() {
	if (taskActivatorTextField == null) {
		taskActivatorTextField = new RTextField();
		taskActivatorTextField.setText("");
		taskActivatorTextField.setColumns(15);
		taskActivatorTextField.setStyleProperties("{/weightX \"1\"}");
		taskActivatorTextField.setName("taskActivatorTextField");
	}
	return taskActivatorTextField;
}

/**
 * This method initializes taskActivatorLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getTaskActivatorLabel() {
	if (taskActivatorLabel == null) {
		taskActivatorLabel = new RLabel();
		taskActivatorLabel.setText("Activator");
		taskActivatorLabel.setName("taskActivatorLabel");
	}
	return taskActivatorLabel;
}

/**
 * This method initializes findTaskCriteriasGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getFindTaskCriteriasGridBagLayoutPane() {
	if (findTaskCriteriasGridBagLayoutPane == null) {
		findTaskCriteriasGridBagLayoutPane = new RGridBagLayoutPane();
		findTaskCriteriasGridBagLayoutPane.setName("findTaskCriteriasGridBagLayoutPane");
		findTaskCriteriasGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(null, "Find task criterias", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
		findTaskCriteriasGridBagLayoutPane.setName("findTaskCriteriasGridBagLayoutPane");
		findTaskCriteriasGridBagLayoutPane.add(getFindTaskActionsFlowLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 4, 1, 1.0, -1, com.ulcjava.base.application.GridBagConstraints.WEST, com.ulcjava.base.application.GridBagConstraints.HORIZONTAL, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		findTaskCriteriasGridBagLayoutPane.add(getTaskPrioritiesBorderLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 2, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		findTaskCriteriasGridBagLayoutPane.add(getTaskStatesBorderLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 2, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		findTaskCriteriasGridBagLayoutPane.add(getSearchCriteriasGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		findTaskCriteriasGridBagLayoutPane.add(getResultConfigurationGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return findTaskCriteriasGridBagLayoutPane;
}

/**
 * This method initializes findTaskActionsFlowLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane	
 */
private RFlowLayoutPane getFindTaskActionsFlowLayoutPane() {
	if (findTaskActionsFlowLayoutPane == null) {
		findTaskActionsFlowLayoutPane = new RFlowLayoutPane();
		findTaskActionsFlowLayoutPane.setName("findTaskActionsFlowLayoutPane");
		findTaskActionsFlowLayoutPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		findTaskActionsFlowLayoutPane.setAlignment(ULCFlowLayoutPane.RIGHT);
		findTaskActionsFlowLayoutPane.add(getFindTaskGoButton());
		findTaskActionsFlowLayoutPane.add(getFindTaskCancelButton());
	}
	return findTaskActionsFlowLayoutPane;
}

/**
 * This method initializes findTaskCancelButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getFindTaskCancelButton() {
	if (findTaskCancelButton == null) {
		findTaskCancelButton = new RButton();
		findTaskCancelButton.setText("Cancel");
		findTaskCancelButton.setPreferredSize(new com.ulcjava.base.application.util.Dimension(100,25));
		findTaskCancelButton.setName("findTaskCancelButton");
	}
	return findTaskCancelButton;
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
		RFiller Filler = new RFiller();
		taskActionsToolBar = new RToolBar();
		taskActionsToolBar.setName("taskActionsToolBar");
		taskActionsToolBar.setFloatable(false);
		taskActionsToolBar.setStyleProperties("{/insetsLeft \"0\"}");
		taskActionsToolBar.add(getRefreshTaskListButton());
		taskActionsToolBar.add(getFindTaskButton());
		taskActionsToolBar.add(getInformOnTaskButton());
		taskActionsToolBar.add(getStartTaskButton());
		taskActionsToolBar.add(getParkTaskButton());
		taskActionsToolBar.add(getDelegateTaskButton());
		taskActionsToolBar.add(getSetTaskExpiryDateButton());
		taskActionsToolBar.add(getSetTaskBlockingDelayDateButton());
		taskActionsToolBar.add(getResetTaskButton());
		taskActionsToolBar.add(getDestroyTaskButton());
		taskActionsToolBar.add(Filler);
		taskActionsToolBar.add(getCloseButton());
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
		taskListAndTaskInformationSplitPane.setDividerLocation(250);
		taskListAndTaskInformationSplitPane.setLeftComponent(getTaskListBorderLayoutPane());
		taskListAndTaskInformationSplitPane.setRightComponent(getTaskDisplayTabbedDisplay());
		taskListAndTaskInformationSplitPane.setStyleProperties("{/orientation \"VERTICAL_SPLIT\"/dividerLocation \"0.45\"}");
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
 * This method initializes taskStatesList	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RList	
 */
private RList getTaskStatesList() {
	if (taskStatesList == null) {
		taskStatesList = new RList();
		taskStatesList.setName("taskStatesList");
		taskStatesList.setVisibleRowCount(10);
		taskStatesList.setPreferredSize(new com.ulcjava.base.application.util.Dimension(100,20));
		taskStatesList.setModelConfiguration("{/result \"result=\\\"\\\" + entry.intValue() + \\\" \\\" + entry.name()\"/version \"2.0\"/icon \"result=ivy.cms.cr(\\\"/ch/ivyteam/ivy/workflow/ui/task/images/taskState\\\" + entry.name() + \\\"16\\\")\"/tooltip \"result=\\\"\\\" + entry.intValue() + \\\" \\\" + entry.name()\"}");
	}
	return taskStatesList;
}

/**
 * This method initializes taskStatesScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getTaskStatesScrollPane() {
	if (taskStatesScrollPane == null) {
		taskStatesScrollPane = new RScrollPane();
		taskStatesScrollPane.setName("taskStatesScrollPane");
		taskStatesScrollPane.setStyleProperties("{/weightY \"1\"/weightX \"1\"}");
		taskStatesScrollPane.setViewPortView(getTaskStatesList());
	}
	return taskStatesScrollPane;
}

/**
 * This method initializes taskPrioritiesBorderLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBorderLayoutPane	
 */
private RBorderLayoutPane getTaskPrioritiesBorderLayoutPane() {
	if (taskPrioritiesBorderLayoutPane == null) {
		taskPrioritiesBorderLayoutPane = new RBorderLayoutPane();
		taskPrioritiesBorderLayoutPane.setName("taskPrioritiesBorderLayoutPane");
		taskPrioritiesBorderLayoutPane.setBorder(BorderFactory.createTitledBorder(null, "Task priorities", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
		taskPrioritiesBorderLayoutPane.add(getTaskPrioritiesScrollPane(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
	}
	return taskPrioritiesBorderLayoutPane;
}

/**
 * This method initializes taskPrioritiesScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getTaskPrioritiesScrollPane() {
	if (taskPrioritiesScrollPane == null) {
		taskPrioritiesScrollPane = new RScrollPane();
		taskPrioritiesScrollPane.setName("taskPrioritiesScrollPane");
		taskPrioritiesScrollPane.setViewPortView(getTaskPrioritiesList());
	}
	return taskPrioritiesScrollPane;
}

/**
 * This method initializes taskPrioritiesList	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RList	
 */
private RList getTaskPrioritiesList() {
	if (taskPrioritiesList == null) {
		taskPrioritiesList = new RList();
		taskPrioritiesList.setName("taskPrioritiesList");
		taskPrioritiesList.setPreferredSize(new com.ulcjava.base.application.util.Dimension(100,20));
		taskPrioritiesList.setModelConfiguration("{/result \"result=entry.name()\"/version \"2.0\"/icon \"result=ivy.cms.cr(\\\"/ch/ivyteam/ivy/workflow/ui/task/images/taskPriority\\\" + entry.intValue() + \\\"_16\\\")\"/tooltip \"result=entry.name()\"}");
		taskPrioritiesList.setVisibleRowCount(5);
	}
	return taskPrioritiesList;
}

/**
 * This method initializes taskStatesBorderLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBorderLayoutPane	
 */
private RBorderLayoutPane getTaskStatesBorderLayoutPane() {
	if (taskStatesBorderLayoutPane == null) {
		taskStatesBorderLayoutPane = new RBorderLayoutPane();
		taskStatesBorderLayoutPane.setName("taskStatesBorderLayoutPane");
		taskStatesBorderLayoutPane.setBorder(BorderFactory.createTitledBorder(null, "Task states", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
		taskStatesBorderLayoutPane.add(getTaskStatesScrollPane(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
	}
	return taskStatesBorderLayoutPane;
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
		taskListPopupMenu.setName("taskListPopupMenu");
		taskListPopupMenu.add(getRefreshTaskListMenuItem());
		taskListPopupMenu.add(getAPopupMenuSeparator1());
		taskListPopupMenu.add(getFindTaskMenuItem());
		taskListPopupMenu.add(getAPopupMenuSeparator2());
		taskListPopupMenu.add(getInformOnTaskOnSiblingTabMenuItem());
		taskListPopupMenu.add(getInformOnTaskUnderThisTabMenuItem());
		taskListPopupMenu.add(getAPopupMenuSeparator());
		taskListPopupMenu.add(getStartTaskOnSiblingTabMenuItem());
		taskListPopupMenu.add(getStartTaskUnderThisTabMenuItem());
		taskListPopupMenu.add(getAPopupMenuSeparator3());
		taskListPopupMenu.add(getParkTaskMenuItem());
		taskListPopupMenu.add(getAPopupMenuSeparator4());
		taskListPopupMenu.add(getDelegateTaskMenuItem());
		taskListPopupMenu.add(getSetTaskExpiryDateMenuItem());
		taskListPopupMenu.add(getA2PopupMenuSeparator());
		taskListPopupMenu.add(getSetTaskBlockingDelayDateMenuItem());
		taskListPopupMenu.add(getA3PopupMenuSeparator());
		taskListPopupMenu.add(getResetTaskMenuItem());
		taskListPopupMenu.add(getA4PopupMenuSeparator());
		taskListPopupMenu.add(getDestroyTaskMenuItem());
	}
	return taskListPopupMenu;
}

/**
 * This method initializes informOnTaskUnderThisTabMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getInformOnTaskUnderThisTabMenuItem() {
	if (informOnTaskUnderThisTabMenuItem == null) {
		informOnTaskUnderThisTabMenuItem = new RMenuItem();
		informOnTaskUnderThisTabMenuItem.setText("Open the task information under this tab");
		informOnTaskUnderThisTabMenuItem.setEnabled(false);
		informOnTaskUnderThisTabMenuItem.setName("informOnTaskUnderThisTabMenuItem");
	}
	return informOnTaskUnderThisTabMenuItem;
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
 * This method initializes startTaskUnderThisTabMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getStartTaskUnderThisTabMenuItem() {
	if (startTaskUnderThisTabMenuItem == null) {
		startTaskUnderThisTabMenuItem = new RMenuItem();
		startTaskUnderThisTabMenuItem.setText("Start task under this tab");
		startTaskUnderThisTabMenuItem.setEnabled(false);
		startTaskUnderThisTabMenuItem.setName("startTaskUnderThisTabMenuItem");
	}
	return startTaskUnderThisTabMenuItem;
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
 * This method initializes aPopupMenuSeparator	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu.RSeparator	
 */
private RPopupMenu.RSeparator getAPopupMenuSeparator() {
	if (aPopupMenuSeparator == null) {
		aPopupMenuSeparator = new RPopupMenu.RSeparator();
		aPopupMenuSeparator.setName("aPopupMenuSeparator");
	}
	return aPopupMenuSeparator;
}

/**
 * This method initializes refreshTaskListMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getRefreshTaskListMenuItem() {
	if (refreshTaskListMenuItem == null) {
		refreshTaskListMenuItem = new RMenuItem();
		refreshTaskListMenuItem.setText("Refresh the task list");
		refreshTaskListMenuItem.setName("refreshTaskListMenuItem");
	}
	return refreshTaskListMenuItem;
}

/**
 * This method initializes aPopupMenuSeparator1	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu.RSeparator	
 */
private RPopupMenu.RSeparator getAPopupMenuSeparator1() {
	if (aPopupMenuSeparator1 == null) {
		aPopupMenuSeparator1 = new RPopupMenu.RSeparator();
		aPopupMenuSeparator1.setName("aPopupMenuSeparator1");
	}
	return aPopupMenuSeparator1;
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
 * This method initializes aPopupMenuSeparator2	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu.RSeparator	
 */
private RPopupMenu.RSeparator getAPopupMenuSeparator2() {
	if (aPopupMenuSeparator2 == null) {
		aPopupMenuSeparator2 = new RPopupMenu.RSeparator();
		aPopupMenuSeparator2.setName("aPopupMenuSeparator2");
	}
	return aPopupMenuSeparator2;
}

/**
 * This method initializes parkTaskMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getParkTaskMenuItem() {
	if (parkTaskMenuItem == null) {
		parkTaskMenuItem = new RMenuItem();
		parkTaskMenuItem.setText("Park task(s)");
		parkTaskMenuItem.setEnabled(false);
		parkTaskMenuItem.setName("parkTaskMenuItem");
	}
	return parkTaskMenuItem;
}

/**
 * This method initializes aPopupMenuSeparator3	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu.RSeparator	
 */
private RPopupMenu.RSeparator getAPopupMenuSeparator3() {
	if (aPopupMenuSeparator3 == null) {
		aPopupMenuSeparator3 = new RPopupMenu.RSeparator();
		aPopupMenuSeparator3.setName("aPopupMenuSeparator3");
	}
	return aPopupMenuSeparator3;
}

/**
 * This method initializes aPopupMenuSeparator4	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu.RSeparator	
 */
private RPopupMenu.RSeparator getAPopupMenuSeparator4() {
	if (aPopupMenuSeparator4 == null) {
		aPopupMenuSeparator4 = new RPopupMenu.RSeparator();
		aPopupMenuSeparator4.setName("aPopupMenuSeparator4");
	}
	return aPopupMenuSeparator4;
}

/**
 * This method initializes delegateTaskMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getDelegateTaskMenuItem() {
	if (delegateTaskMenuItem == null) {
		delegateTaskMenuItem = new RMenuItem();
		delegateTaskMenuItem.setText("Delegate the task(s)");
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
 * This method initializes caseBusinessMainContactLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCaseBusinessMainContactLabel() {
	if (caseBusinessMainContactLabel == null) {
		caseBusinessMainContactLabel = new RLabel();
		caseBusinessMainContactLabel.setText("Business main contact");
		caseBusinessMainContactLabel.setName("caseBusinessMainContactLabel");
	}
	return caseBusinessMainContactLabel;
}

/**
 * This method initializes businessMainContactTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getBusinessMainContactTextField() {
	if (businessMainContactTextField == null) {
		businessMainContactTextField = new RTextField();
		businessMainContactTextField.setText("");
		businessMainContactTextField.setStyleProperties("{/weightX \"1\"}");
		businessMainContactTextField.setName("businessMainContactTextField");
	}
	return businessMainContactTextField;
}

/**
 * This method initializes taskStageLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getTaskStageLabel() {
	if (taskStageLabel == null) {
		taskStageLabel = new RLabel();
		taskStageLabel.setText("Task stage");
		taskStageLabel.setName("taskStageLabel");
	}
	return taskStageLabel;
}

/**
 * This method initializes taskStageTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getTaskStageTextField() {
	if (taskStageTextField == null) {
		taskStageTextField = new RTextField();
		taskStageTextField.setText("");
		taskStageTextField.setName("taskStageTextField");
	}
	return taskStageTextField;
}

/**
 * This method initializes businessCreatorLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getBusinessCreatorLabel() {
	if (businessCreatorLabel == null) {
		businessCreatorLabel = new RLabel();
		businessCreatorLabel.setText("Business creator");
		businessCreatorLabel.setName("businessCreatorLabel");
	}
	return businessCreatorLabel;
}

/**
 * This method initializes businessCreatorTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getBusinessCreatorTextField() {
	if (businessCreatorTextField == null) {
		businessCreatorTextField = new RTextField();
		businessCreatorTextField.setText("");
		businessCreatorTextField.setName("businessCreatorTextField");
	}
	return businessCreatorTextField;
}

/**
 * This method initializes searchCriteriasGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getSearchCriteriasGridBagLayoutPane() {
	if (searchCriteriasGridBagLayoutPane == null) {
		searchCriteriasGridBagLayoutPane = new RGridBagLayoutPane();
		searchCriteriasGridBagLayoutPane.setName("searchCriteriasGridBagLayoutPane");
		searchCriteriasGridBagLayoutPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		searchCriteriasGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(null, "Search criterias", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
		searchCriteriasGridBagLayoutPane.add(getTaskActivatorLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		searchCriteriasGridBagLayoutPane.add(getTaskActivatorTextField(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		searchCriteriasGridBagLayoutPane.add(getCaseBusinessMainContactLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		searchCriteriasGridBagLayoutPane.add(getBusinessMainContactTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		searchCriteriasGridBagLayoutPane.add(getTaskStageLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		searchCriteriasGridBagLayoutPane.add(getTaskStageTextField(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		searchCriteriasGridBagLayoutPane.add(getBusinessCreatorLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		searchCriteriasGridBagLayoutPane.add(getBusinessCreatorTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return searchCriteriasGridBagLayoutPane;
}

/**
 * This method initializes resultConfigurationGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getResultConfigurationGridBagLayoutPane() {
	if (resultConfigurationGridBagLayoutPane == null) {
		RFiller aFiller = new RFiller();
		aFiller.setStyleProperties("{/usePreferredSizeAsExactSize \"true\"/preferredSizeWidth \"375\"}");
		resultConfigurationGridBagLayoutPane = new RGridBagLayoutPane();
		resultConfigurationGridBagLayoutPane.setName("resultConfigurationGridBagLayoutPane");
		resultConfigurationGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(null, "Result configuration", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, null, null));
		resultConfigurationGridBagLayoutPane.add(getCountLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 3, 2, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		resultConfigurationGridBagLayoutPane.add(getCountTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		resultConfigurationGridBagLayoutPane.add(aFiller, new com.ulcjava.base.application.GridBagConstraints(1, 3, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		resultConfigurationGridBagLayoutPane.add(getReturnAllFoundTasksCheckBox(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return resultConfigurationGridBagLayoutPane;
}

/**
 * This method initializes countLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCountLabel() {
	if (countLabel == null) {
		countLabel = new RLabel();
		countLabel.setText("<html>Count <br>(How many tasks found are returned. Select the checkbox for all.)<br></html>");
		countLabel.setToolTipText("How many tasks found are returned. Select the checkbox for all.");
		countLabel.setStyleProperties("{/weightX \"1\"}");
		countLabel.setName("countLabel");
	}
	return countLabel;
}

/**
 * This method initializes countTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getCountTextField() {
	if (countTextField == null) {
		countTextField = new RTextField();
		countTextField.setText("1000");
		countTextField.setValidation("#\n#Mon Jun 09 17:34:19 CEST 2008\nversion=1.0\nvalidationConfigName=NumberInt\nmandatory=false\n");
		countTextField.setEnabled(false);
		countTextField.setColumns(7);
		countTextField.setStyleProperties("{/fill \"NONE\"}");
		countTextField.setName("countTextField");
	}
	return countTextField;
}

/**
 * This method initializes returnAllFoundTasksCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getReturnAllFoundTasksCheckBox() {
	if (returnAllFoundTasksCheckBox == null) {
		returnAllFoundTasksCheckBox = new RCheckBox();
		returnAllFoundTasksCheckBox.setText("All tasks");
		returnAllFoundTasksCheckBox.setSelected(true);
		returnAllFoundTasksCheckBox.setName("returnAllFoundTasksCheckBox");
	}
	return returnAllFoundTasksCheckBox;
}

/**
 * This method initializes setTaskExpiryDateButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getSetTaskExpiryDateButton() {
	if (setTaskExpiryDateButton == null) {
		setTaskExpiryDateButton = new RButton();
		setTaskExpiryDateButton.setEnabled(false);
		setTaskExpiryDateButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/setTaskExpiryTimestampLongDesc\")%>");
		setTaskExpiryDateButton.setStyle("toolBarButton");
		setTaskExpiryDateButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/setTaskExpiryTimestamp24\")%>");
		setTaskExpiryDateButton.setRolloverIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/setTaskExpiryTimestamp32\")%>");
		setTaskExpiryDateButton.setName("setTaskExpiryDateButton");
	}
	return setTaskExpiryDateButton;
}

/**
 * This method initializes setTaskBlockingDelayDateButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getSetTaskBlockingDelayDateButton() {
	if (setTaskBlockingDelayDateButton == null) {
		setTaskBlockingDelayDateButton = new RButton();
		setTaskBlockingDelayDateButton.setEnabled(false);
		setTaskBlockingDelayDateButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/setTaskBlockingDelayTimestampLongDesc\")%>");
		setTaskBlockingDelayDateButton.setStyle("toolBarButton");
		setTaskBlockingDelayDateButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/setTaskBlockingDelayTimestamp24\")%>");
		setTaskBlockingDelayDateButton.setRolloverIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/setTaskBlockingDelayTimestamp32\")%>");
		setTaskBlockingDelayDateButton.setName("setTaskBlockingDelayDateButton");
	}
	return setTaskBlockingDelayDateButton;
}

/**
 * This method initializes resetTaskButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getResetTaskButton() {
	if (resetTaskButton == null) {
		resetTaskButton = new RButton();
		resetTaskButton.setEnabled(false);
		resetTaskButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/cancelTaskLongDesc\")%>");
		resetTaskButton.setStyle("toolBarButton");
		resetTaskButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/cancelTask24\")%>");
		resetTaskButton.setRolloverIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/cancelTask32\")%>");
		resetTaskButton.setName("resetTaskButton");
	}
	return resetTaskButton;
}

/**
 * This method initializes destroyTaskButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getDestroyTaskButton() {
	if (destroyTaskButton == null) {
		destroyTaskButton = new RButton();
		destroyTaskButton.setEnabled(false);
		destroyTaskButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/destroyTaskLongDesc\")%>");
		destroyTaskButton.setStyle("toolBarButton");
		destroyTaskButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/destroyTask24\")%>");
		destroyTaskButton.setRolloverIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/destroyTask32\")%>");
		destroyTaskButton.setName("destroyTaskButton");
	}
	return destroyTaskButton;
}

/**
 * This method initializes findByTaskOrCaseNameBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getFindByTaskOrCaseNameBoxPane() {
	if (findByTaskOrCaseNameBoxPane == null) {
		findByTaskOrCaseNameBoxPane = new RBoxPane();
		findByTaskOrCaseNameBoxPane.setName("findByTaskOrCaseNameBoxPane");
		findByTaskOrCaseNameBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getFindTaskToolBar());
	}
	return findByTaskOrCaseNameBoxPane;
}

/**
 * This method initializes taskNameOrCaseNameCriteriaTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getTaskNameOrCaseNameCriteriaTextField() {
	if (taskNameOrCaseNameCriteriaTextField == null) {
		taskNameOrCaseNameCriteriaTextField = new RTextField();
		taskNameOrCaseNameCriteriaTextField.setText("");
		taskNameOrCaseNameCriteriaTextField.setStyleProperties("{/weightX \"1\"}");
		taskNameOrCaseNameCriteriaTextField.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/findTaskByTaskOrCaseNameLongDesc\")%>");
		taskNameOrCaseNameCriteriaTextField.setName("taskNameOrCaseNameCriteriaTextField");
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
		resetTaskMenuItem.setText("Reset the task");
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
		destroyTaskMenuItem.setText("Destroy the task");
		destroyTaskMenuItem.setName("destroyTaskMenuItem");
	}
	return destroyTaskMenuItem;
}

/**
 * This method initializes a2PopupMenuSeparator	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu.RSeparator	
 */
private RPopupMenu.RSeparator getA2PopupMenuSeparator() {
	if (a2PopupMenuSeparator == null) {
		a2PopupMenuSeparator = new RPopupMenu.RSeparator();
		a2PopupMenuSeparator.setName("a2PopupMenuSeparator");
	}
	return a2PopupMenuSeparator;
}

/**
 * This method initializes a3PopupMenuSeparator	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu.RSeparator	
 */
private RPopupMenu.RSeparator getA3PopupMenuSeparator() {
	if (a3PopupMenuSeparator == null) {
		a3PopupMenuSeparator = new RPopupMenu.RSeparator();
		a3PopupMenuSeparator.setName("a3PopupMenuSeparator");
	}
	return a3PopupMenuSeparator;
}

/**
 * This method initializes a4PopupMenuSeparator	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu.RSeparator	
 */
private RPopupMenu.RSeparator getA4PopupMenuSeparator() {
	if (a4PopupMenuSeparator == null) {
		a4PopupMenuSeparator = new RPopupMenu.RSeparator();
		a4PopupMenuSeparator.setName("a4PopupMenuSeparator");
	}
	return a4PopupMenuSeparator;
}

/**
 * This method initializes findTaskToolBar	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RToolBar	
 */
private RToolBar getFindTaskToolBar() {
	if (findTaskToolBar == null) {
		findTaskToolBar = new RToolBar();
		findTaskToolBar.setName("findTaskToolBar");
		findTaskToolBar.setStyleProperties("{/fill \"HORIZONTAL\"/insetsLeft \"0\"/weightX \"1\"}");
		findTaskToolBar.setFloatable(false);
		findTaskToolBar.add(getFindTaskByNameLabel());
		findTaskToolBar.add(getTaskNameOrCaseNameCriteriaTextField());
		findTaskToolBar.add(getFindButton());
	}
	return findTaskToolBar;
}

/**
 * This method initializes findTaskByNameLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getFindTaskByNameLabel() {
	if (findTaskByNameLabel == null) {
		findTaskByNameLabel = new RLabel();
		findTaskByNameLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/findTaskByTaskOrCaseNameShortDesc\")%>");
		findTaskByNameLabel.setIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/findOnSelection16\") %>");
		findTaskByNameLabel.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/findTaskByTaskOrCaseNameLongDesc\")%>");
		findTaskByNameLabel.setName("findTaskByNameLabel");
	}
	return findTaskByNameLabel;
}

/**
 * This method initializes findButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getFindButton() {
	if (findButton == null) {
		findButton = new RButton();
		findButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/find\")%>");
		findButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/findTaskByTaskOrCaseNameLongDesc\")%>");
		findButton.setEnabler(getTaskNameOrCaseNameCriteriaTextField());
		findButton.setName("findButton");
	}
	return findButton;
}

/**
 * This method initializes closeButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getCloseButton() {
	if (closeButton == null) {
		closeButton = new RButton();
		closeButton.setName("closeButton");
		closeButton.setVisible(true);
		closeButton.setRolloverIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/close32\")%>");
		closeButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/close24\")%>");
		closeButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/close\")%>");
	}
	return closeButton;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"