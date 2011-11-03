package ch.ivyteam.ivy.workflow.ui.task.TaskSearch;

import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RRadioButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RTree;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RCollapsiblePane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem;
import ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu;
import ch.ivyteam.ivy.workflow.ui.task.TaskFiltersSelect.TaskFiltersSelectPanel;
import ch.ivyteam.ivy.workflow.ui.task.TaskHierarchyLayoutSelect.TaskHierarchyLayoutSelectPanel;

import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.ULCButtonGroup;
import com.ulcjava.base.application.ULCContainer;
import com.ulcjava.base.application.border.ULCTitledBorder;
import com.ulcjava.base.application.util.Color;
import com.ulcjava.base.application.util.Font;

/**
 * RichDialog panel implementation for TaskSearchPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class TaskSearchPanel extends RichDialogBorderPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RGridBagLayoutPane viewPrefsAndSearchGridBagLayoutPane = null;
private RCheckBox tasksSortedByPriorityCheckBox = null;
private RBoxPane filterBoxPane = null;
private RLabel footerLabel = null;
private RScrollPane tasksHierarchyLayoutScrollPane = null;
private RTree tasksHierarchyLayoutTree = null;
private RPopupMenu taskHierarchyLayoutsPopupMenu = null;  //  @jve:decl-index=0:visual-constraint="438,192"
private RButton refreshTaskListButton = null;
private RButton startTaskButton = null;
private RButton delegateTaskButton = null;
private RButton informOnTaskButton = null;
private RMenuItem refreshTaskListMenuItem = null;
private RMenuItem informOnTaskMenuItem = null;
private RMenuItem startTaskMenuItem = null;
private RMenuItem delegateTaskMenuItem = null;
@EmbeddedRichDialog(TaskHierarchyLayoutSelectPanel.class) private ULCContainer taskHierarchyLayoutSelectRDC = null;
private RCollapsiblePane caseBusinessAndFiltersCollapsiblePane = null;
@EmbeddedRichDialog(TaskFiltersSelectPanel.class) private ULCContainer taskFiltersSelectRDC = null;
private RButton loadTaskListButton = null;
private RMenuItem loadTaskListMenuItem = null;
private RRadioButton findYourTasksRadioButton = null;
private RRadioButton findTeamTasksRadioButton = null;
private RRadioButton findAllEnvironmentTasksRadioButton = null;
private ULCButtonGroup tasksDisplayModeButtonGroup = null;  //  @jve:decl-index=0:visual-constraint="439,124"
private RButton expandAllButton = null;
private RMenuItem expandAllTasksMenuItem = null;
private RGridBagLayoutPane viewGridBagLayoutPane = null;
private RCheckBox taskFiltersToggleButton = null;
private RLabel filterLabel = null;
private RLabel sortByPriorityLabel = null;
private RBoxPane sortByPriorityBoxPane = null;
private RBoxPane filterOnOffBoxPane = null;
private RMenuItem caseDetailsMenuItem = null;
private RPopupMenu.RSeparator aMenuSeparator = null;
private RPopupMenu.RSeparator aMenuSeparator2 = null;
private RBoxPane taskDisplayModeBoxPane = null;
private RBoxPane taskActionsBoxPane = null;
/**
   * Create a new instance of TaskSearchPanel
   */
  public TaskSearchPanel()
  {
    super();
    initialize();     
  }
  
  /**
   * This method initializes TaskSearchPanel
   * @return void
   */
  public void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(310,600));
        this.setBorder(BorderFactory.createTitledBorder(BorderFactory.createLineBorder(Color.lightGray, 1), "Task List", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.BOLD, 11), new Color(12, 74, 124)));
        this.add(getViewPrefsAndSearchGridBagLayoutPane(), com.ulcjava.base.application.ULCBorderLayoutPane.NORTH);
        this.add(getFooterLabel(), com.ulcjava.base.application.ULCBorderLayoutPane.SOUTH);
        this.add(getTasksHierarchyLayoutScrollPane(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
  }

/**
 * This method initializes viewPrefsAndSearchGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getViewPrefsAndSearchGridBagLayoutPane() {
	if (viewPrefsAndSearchGridBagLayoutPane == null) {
		viewPrefsAndSearchGridBagLayoutPane = new RGridBagLayoutPane();
		viewPrefsAndSearchGridBagLayoutPane.setName("viewPrefsAndSearchGridBagLayoutPane");
		viewPrefsAndSearchGridBagLayoutPane.setStyleProperties("{/weightX \"1\"}");
		viewPrefsAndSearchGridBagLayoutPane.add(getFilterBoxPane(), new com.ulcjava.base.application.GridBagConstraints(0, 6, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		viewPrefsAndSearchGridBagLayoutPane.add(getViewGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		viewPrefsAndSearchGridBagLayoutPane.add(getTaskActionsBoxPane(), new com.ulcjava.base.application.GridBagConstraints(0, 7, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return viewPrefsAndSearchGridBagLayoutPane;
}

/**
 * This method initializes tasksSortedByPriorityCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getTasksSortedByPriorityCheckBox() {
	if (tasksSortedByPriorityCheckBox == null) {
		tasksSortedByPriorityCheckBox = new RCheckBox();
		tasksSortedByPriorityCheckBox.setName("tasksSortedByPriorityCheckBox");
		tasksSortedByPriorityCheckBox.setStyleProperties("{/weightX \"1\"}");
//		tasksSortedByPriorityCheckBox.setIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/switchOff_48\") %>");
//		tasksSortedByPriorityCheckBox.setSelectedIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/switchOn_48\") %>");
		tasksSortedByPriorityCheckBox.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/sortByPriority\")%>\n");
	}
	return tasksSortedByPriorityCheckBox;
}

/**
 * This method initializes filterBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getFilterBoxPane() {
	if (filterBoxPane == null) {
		filterBoxPane = new RBoxPane();
		filterBoxPane.setName("filterBoxPane");
		filterBoxPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		filterBoxPane.setName("filterBoxPane");
		filterBoxPane.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/defineFilterLongDesc\")%>");
		filterBoxPane.set(0, 1, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getCaseBusinessAndFiltersCollapsiblePane());
		filterBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getFilterOnOffBoxPane());
	}
	return filterBoxPane;
}

/**
 * This method initializes footerLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getFooterLabel() {
	if (footerLabel == null) {
		footerLabel = new RLabel();
		footerLabel.setName("footerLabel");
		footerLabel.setText("...");
	}
	return footerLabel;
}

/**
 * This method initializes tasksHierarchyLayoutScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getTasksHierarchyLayoutScrollPane() {
	if (tasksHierarchyLayoutScrollPane == null) {
		tasksHierarchyLayoutScrollPane = new RScrollPane();
		tasksHierarchyLayoutScrollPane.setName("tasksHierarchyLayoutScrollPane");
		tasksHierarchyLayoutScrollPane.setViewPortView(getTasksHierarchyLayoutTree());
	}
	return tasksHierarchyLayoutScrollPane;
}

/**
 * This method initializes tasksHierarchyLayoutTree	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTree	
 */
private RTree getTasksHierarchyLayoutTree() {
	if (tasksHierarchyLayoutTree == null) {
		tasksHierarchyLayoutTree = new RTree();
		tasksHierarchyLayoutTree.setName("tasksHierarchyLayoutTree");
		tasksHierarchyLayoutTree.setComponentPopupMenu(getTaskHierarchyLayoutsPopupMenu());
		tasksHierarchyLayoutTree.setModelConfiguration("{/showTableheader \"true\"/autoTableheader \"false\"/showtooltip \"true\"/showIcons \"true\"/version \"3.0\"/dynamicTreeLoadMode \"LOAD_ON_EXPAND\"/emptyTableText \"No tasks found\"/columns {{/patterns {{/result \"result=node.value\"/version \"3.0\"/tooltip \"\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/task/images/taskHierarchyLayoutRoot16\\\"\"/field \"\"/patternMode \"ALL\"/patternValue \"default\"}{/result \"result=(entry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).categoryName\"/version \"3.0\"/tooltip \"\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/case/images/processCategory16\\\"\"/field \"\"/patternMode \"INFO\"/patternValue \"PROCESS_CATEGORY_CODE\"}{/result \"result=(entry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).categoryName\"/version \"3.0\"/tooltip \"\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/case/images/process16\\\"\"/patternMode \"INFO\"/patternValue \"PROCESS_CODE\"}{/result \"result=(entry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).categoryName\"/version \"3.0\"/tooltip \"\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/case/images/type16\\\"\"/patternMode \"INFO\"/patternValue \"TYPE_CODE\"}{/result \"result=(entry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).categoryName\"/version \"3.0\"/tooltip \"\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/case/images/subType16\\\"\"/patternMode \"INFO\"/patternValue \"SUB_TYPE_CODE\"}{/result \"result=ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/task/taskPriority/plainStrings/\\\" + \\r\\n\\tEnum.valueOf(ch.ivyteam.ivy.workflow.WorkflowPriority.class, (entry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).categoryName).ordinal() )\"/version \"3.0\"/tooltip \"\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/common/workflowPriorities/images/\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).categoryCode + \\\"_16\\\"\"/patternMode \"INFO\"/patternValue \"PRIORITY\"}{/result \"result=(entry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).categoryName\"/version \"3.0\"/tooltip \"\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/task/images/stage16\\\"\"/patternMode \"INFO\"/patternValue \"KIND_CODE\"}{/result \"result=(entry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).categoryName\"/version \"3.0\"/tooltip \"\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/case/images/businessStart16\\\"\"/patternMode \"INFO\"/patternValue \"START_TIMESTAMP\"}{/result \"result=(entry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).categoryName\"/version \"3.0\"/tooltip \"\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/case/images/businessContact16\\\"\"/patternMode \"INFO\"/patternValue \"BUSINESS_MAIN_CONTACT_ID\"}{/result \"result=(entry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).categoryName\"/version \"3.0\"/tooltip \"\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/case/images/businessCreatorUser16\\\"\"/columnStyle \"\"/patternMode \"INFO\"/patternValue \"BUSINESS_CREATOR_USER\"}{/result \"result=entry.getName()\"/version \"3.0\"/tooltip \"\"/icon \"result=entry.getState().compareTo(ch.ivyteam.ivy.workflow.TaskState.SUSPENDED) == 0? \\r\\n\\t\\\"/ch/ivyteam/ivy/workflow/ui/task/images/taskId16\\\":\\r\\n\\t\\\"/ch/ivyteam/ivy/workflow/ui/task/taskState/images/\\\" + entry.getState() + \\\"16\\\"\"/header \"\"/columnStyle \"wfTask\"/patternMode \"INSTANCE\"/patternValue \"ch.ivyteam.ivy.workflow.ITask\"}}/version \"3.0\"}}}");
	}
	return tasksHierarchyLayoutTree;
}

/**
 * This method initializes taskHierarchyLayoutsPopupMenu	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu	
 */
private RPopupMenu getTaskHierarchyLayoutsPopupMenu() {
	if (taskHierarchyLayoutsPopupMenu == null) {
		taskHierarchyLayoutsPopupMenu = new RPopupMenu();
		taskHierarchyLayoutsPopupMenu.setName("taskHierarchyLayoutsPopupMenu");
		taskHierarchyLayoutsPopupMenu.add(getLoadTaskListMenuItem());
		taskHierarchyLayoutsPopupMenu.add(getInformOnTaskMenuItem());
		taskHierarchyLayoutsPopupMenu.add(getCaseDetailsMenuItem());
		taskHierarchyLayoutsPopupMenu.add(getAMenuSeparator());
		taskHierarchyLayoutsPopupMenu.add(getStartTaskMenuItem());
		taskHierarchyLayoutsPopupMenu.add(getAMenuSeparator2());
		taskHierarchyLayoutsPopupMenu.add(getDelegateTaskMenuItem());
		taskHierarchyLayoutsPopupMenu.add(getRefreshTaskListMenuItem());
		taskHierarchyLayoutsPopupMenu.add(getExpandAllTasksMenuItem());
	}
	return taskHierarchyLayoutsPopupMenu;
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
		refreshTaskListButton.setEnabled(true);
		refreshTaskListButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/refreshTaskListLongDesc\")%>");
		refreshTaskListButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/refreshTaskListShortDesc\")%>");
		refreshTaskListButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/refresh32\")%>");
		refreshTaskListButton.setBorderPainted(false);
	}
	return refreshTaskListButton;
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
		startTaskButton.setStyle("toolBarButton");
		startTaskButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/start32\")%>");
		startTaskButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/startTaskLongDesc\")%>");
		startTaskButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/startTaskShortDesc\")%>");
		startTaskButton.setEnabled(false);
		startTaskButton.setBorderPainted(false);
	}
	return startTaskButton;
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
		delegateTaskButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/delegate32\")%>");
		delegateTaskButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/delegateTaskLongDesc\")%>");
		delegateTaskButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/delegateTaskShortDesc\")%>");
		delegateTaskButton.setEnabled(false);
		delegateTaskButton.setBorderPainted(false);
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
		informOnTaskButton.setVisible(true);
		informOnTaskButton.setStyle("toolBarButton");
		informOnTaskButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/detail32\")%>");
		informOnTaskButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/informOnTaskLongDesc\")%>\n");
		informOnTaskButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/informOnTaskShortDesc\")%>");
		informOnTaskButton.setEnabled(false);
		informOnTaskButton.setBorderPainted(false);
	}
	return informOnTaskButton;
}

/**
 * This method initializes refreshTaskListMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getRefreshTaskListMenuItem() {
	if (refreshTaskListMenuItem == null) {
		refreshTaskListMenuItem = new RMenuItem();
		refreshTaskListMenuItem.setName("refreshTaskListMenuItem");
		refreshTaskListMenuItem.setEnabled(false);
		refreshTaskListMenuItem.setText("Refresh");
	}
	return refreshTaskListMenuItem;
}

/**
 * This method initializes informOnTaskMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getInformOnTaskMenuItem() {
	if (informOnTaskMenuItem == null) {
		informOnTaskMenuItem = new RMenuItem();
		informOnTaskMenuItem.setName("informOnTaskMenuItem");
		informOnTaskMenuItem.setEnabled(false);
		informOnTaskMenuItem.setText("Details");
	}
	return informOnTaskMenuItem;
}

/**
 * This method initializes startTaskMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getStartTaskMenuItem() {
	if (startTaskMenuItem == null) {
		startTaskMenuItem = new RMenuItem();
		startTaskMenuItem.setName("startTaskMenuItem");
		startTaskMenuItem.setEnabled(false);
		startTaskMenuItem.setText("Start");
	}
	return startTaskMenuItem;
}

/**
 * This method initializes delegateTaskMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getDelegateTaskMenuItem() {
	if (delegateTaskMenuItem == null) {
		delegateTaskMenuItem = new RMenuItem();
		delegateTaskMenuItem.setName("delegateTaskMenuItem");
		delegateTaskMenuItem.setEnabled(false);
		delegateTaskMenuItem.setText("Delegate");
	}
	return delegateTaskMenuItem;
}

/**
 * This method initializes taskHierarchyLayoutSelectRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.task.TaskHierarchyLayoutSelect.TaskHierarchyLayoutSelectPanel	
 */
private ULCContainer getTaskHierarchyLayoutSelectRDC()  {
	if (taskHierarchyLayoutSelectRDC == null) {
		taskHierarchyLayoutSelectRDC = RichDialogPanelFactory.create(TaskHierarchyLayoutSelectPanel.class);
		taskHierarchyLayoutSelectRDC.setName("taskHierarchyLayoutSelectRDC");
		taskHierarchyLayoutSelectRDC.setName("taskHierarchyLayoutSelectRDC");
		taskHierarchyLayoutSelectRDC.setStyleProperties("{/weightX \"1\"}");
	}
	return taskHierarchyLayoutSelectRDC;
}

/**
 * This method initializes caseBusinessAndFiltersCollapsiblePane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RCollapsiblePane	
 */
private RCollapsiblePane getCaseBusinessAndFiltersCollapsiblePane() {
	if (caseBusinessAndFiltersCollapsiblePane == null) {
		caseBusinessAndFiltersCollapsiblePane = new RCollapsiblePane();
		caseBusinessAndFiltersCollapsiblePane.setName("caseBusinessAndFiltersCollapsiblePane");
		caseBusinessAndFiltersCollapsiblePane.setStyleProperties("{/weightY \"1\"/weightX \"1\"}");
		caseBusinessAndFiltersCollapsiblePane.setCollapsed(true);
		caseBusinessAndFiltersCollapsiblePane.setName("caseBusinessAndFiltersCollapsiblePane");
		caseBusinessAndFiltersCollapsiblePane.setName("caseBusinessAndFiltersCollapsiblePane");
		caseBusinessAndFiltersCollapsiblePane.add(getTaskFiltersSelectRDC());
	}
	return caseBusinessAndFiltersCollapsiblePane;
}

/**
 * This method initializes taskFiltersSelectRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.task.TaskFiltersSelect.CaseBusinessAndTaskFiltersSelectPanel	
 */
private ULCContainer getTaskFiltersSelectRDC()  {
	if (taskFiltersSelectRDC == null) {
		taskFiltersSelectRDC = RichDialogPanelFactory.create(TaskFiltersSelectPanel.class);
		taskFiltersSelectRDC.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		taskFiltersSelectRDC.setPreferredSize(new com.ulcjava.base.application.util.Dimension(305,347));
		taskFiltersSelectRDC.setName("taskFiltersSelectRDC");
		taskFiltersSelectRDC.setName("taskFiltersSelectRDC");
	}
	return taskFiltersSelectRDC;
}

/**
 * This method initializes loadTaskListButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getLoadTaskListButton() {
	if (loadTaskListButton == null) {
		loadTaskListButton = new RButton();
		loadTaskListButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/showList32\")%>");
		loadTaskListButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/loadTaskListLongDesc\")%>");
		loadTaskListButton.setEnabled(false);
		loadTaskListButton.setStyle("toolBarButton");
		loadTaskListButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/loadTaskListShortDesc\")%>");
		loadTaskListButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/loadTaskListLongDesc\")%>");
		loadTaskListButton.setName("loadTaskListButton");
		loadTaskListButton.setBorderPainted(false);
	}
	return loadTaskListButton;
}

/**
 * This method initializes loadTaskListMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getLoadTaskListMenuItem() {
	if (loadTaskListMenuItem == null) {
		loadTaskListMenuItem = new RMenuItem();
		loadTaskListMenuItem.setText("Load tasks");
		loadTaskListMenuItem.setEnabled(false);
		loadTaskListMenuItem.setName("loadTaskListMenuItem");
	}
	return loadTaskListMenuItem;
}

/**
 * This method initializes findYourTasksRadioButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RRadioButton	
 */
private RRadioButton getFindYourTasksRadioButton() {
	if (findYourTasksRadioButton == null) {
		findYourTasksRadioButton = new RRadioButton();
		findYourTasksRadioButton.setName("findYourTasksRadioButton");
		findYourTasksRadioButton.setSelected(false);
		findYourTasksRadioButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/taskDisplayMode0ShortDesc\")%>");
		findYourTasksRadioButton.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		findYourTasksRadioButton.setVisible(true);
		findYourTasksRadioButton.setStyle("mandatoryLeftAlignedRadioButton");
		findYourTasksRadioButton.setGroup(getTasksDisplayModeButtonGroup());
		findYourTasksRadioButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/taskDisplayMode0LongDesc\")%>");
	}
	return findYourTasksRadioButton;
}

/**
 * This method initializes findTeamTasksRadioButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RRadioButton	
 */
private RRadioButton getFindTeamTasksRadioButton() {
	if (findTeamTasksRadioButton == null) {
		findTeamTasksRadioButton = new RRadioButton();
		findTeamTasksRadioButton.setName("findTeamTasksRadioButton");
		findTeamTasksRadioButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/taskDisplayMode1ShortDesc\")%>");
		findTeamTasksRadioButton.setStyleProperties("{/weightX \"1\"}");
		findTeamTasksRadioButton.setSelected(true);
		findTeamTasksRadioButton.setStyle("mandatoryLeftAlignedRadioButton");
		findTeamTasksRadioButton.setGroup(getTasksDisplayModeButtonGroup());
		findTeamTasksRadioButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/taskDisplayMode1LongDesc\")%>");
	}
	return findTeamTasksRadioButton;
}

/**
 * This method initializes findAllEnvironmentTasksRadioButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RRadioButton	
 */
private RRadioButton getFindAllEnvironmentTasksRadioButton() {
	if (findAllEnvironmentTasksRadioButton == null) {
		findAllEnvironmentTasksRadioButton = new RRadioButton();
		findAllEnvironmentTasksRadioButton.setName("findAllEnvironmentTasksRadioButton");
		findAllEnvironmentTasksRadioButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/taskDisplayMode2ShortDesc\")%>\n");
		findAllEnvironmentTasksRadioButton.setStyleProperties("{/weightX \"1\"}");
		findAllEnvironmentTasksRadioButton.setStyle("mandatoryLeftAlignedRadioButton");
		findAllEnvironmentTasksRadioButton.setGroup(getTasksDisplayModeButtonGroup());
		findAllEnvironmentTasksRadioButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/taskDisplayMode2LongDesc\")%>");
	}
	return findAllEnvironmentTasksRadioButton;
}

/**
 * This method initializes tasksDisplayModeButtonGroup	
 * 	
 * @return com.ulcjava.base.application.ULCButtonGroup	
 */
private ULCButtonGroup getTasksDisplayModeButtonGroup() {
	if (tasksDisplayModeButtonGroup == null) {
		tasksDisplayModeButtonGroup = new ULCButtonGroup();
	}
	return tasksDisplayModeButtonGroup;
}

/**
 * This method initializes expandAllButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getExpandAllButton() {
	if (expandAllButton == null) {
		expandAllButton = new RButton();
		expandAllButton.setVisible(true);
		expandAllButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/expandAllTasksLongDesc\")%>");
		expandAllButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/expandAll32\")%>");
		expandAllButton.setStyle("toolBarButton");
		expandAllButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/expandAllTasksShortDesc\")%>");
		expandAllButton.setName("expandAllButton");
		expandAllButton.setBorderPainted(false);
	}
	return expandAllButton;
}

/**
 * This method initializes expandAllTasksMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getExpandAllTasksMenuItem() {
	if (expandAllTasksMenuItem == null) {
		expandAllTasksMenuItem = new RMenuItem();
		expandAllTasksMenuItem.setText("Expand all");
		expandAllTasksMenuItem.setName("expandAllTasksMenuItem");
	}
	return expandAllTasksMenuItem;
}

/**
 * This method initializes viewGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getViewGridBagLayoutPane() {
	if (viewGridBagLayoutPane == null) {
		viewGridBagLayoutPane = new RGridBagLayoutPane();
		viewGridBagLayoutPane.setName("viewGridBagLayoutPane");
		viewGridBagLayoutPane.setStyleProperties("{/weightX \"1\"}");
		viewGridBagLayoutPane.setName("viewGridBagLayoutPane");
		viewGridBagLayoutPane.add(getTaskHierarchyLayoutSelectRDC(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		viewGridBagLayoutPane.add(getSortByPriorityBoxPane(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		viewGridBagLayoutPane.add(getTaskDisplayModeBoxPane(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return viewGridBagLayoutPane;
}

/**
 * This method initializes taskFiltersToggleButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RToggleButton	
 */
private RCheckBox getTaskFiltersToggleButton() {
	if (taskFiltersToggleButton == null) {
		taskFiltersToggleButton = new RCheckBox();
		taskFiltersToggleButton.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
//		taskFiltersToggleButton.setIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/switchOff_48\") %>");
//		taskFiltersToggleButton.setSelectedIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/switchOn_48\") %>");
		taskFiltersToggleButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/filter\")%>");
		taskFiltersToggleButton.setName("taskFiltersToggleButton");
	}
	return taskFiltersToggleButton;
}

/**
 * This method initializes filterLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getFilterLabel() {
	if (filterLabel == null) {
		filterLabel = new RLabel();
		filterLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/filter\")%>");
		filterLabel.setVisible(false);
		filterLabel.setName("filterLabel");
	}
	return filterLabel;
}

/**
 * This method initializes sortByPriorityLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getSortByPriorityLabel() {
	if (sortByPriorityLabel == null) {
		sortByPriorityLabel = new RLabel();
		sortByPriorityLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/sortByPriority\")%>\n");
		sortByPriorityLabel.setVisible(false);
		sortByPriorityLabel.setName("sortByPriorityLabel");
	}
	return sortByPriorityLabel;
}

/**
 * This method initializes sortByPriorityBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getSortByPriorityBoxPane() {
	if (sortByPriorityBoxPane == null) {
		RFiller horizFiller = new RFiller();
		horizFiller.setStyle("horizontalStrut100");
		horizFiller.setVisible(false);
		sortByPriorityBoxPane = new RBoxPane();
		sortByPriorityBoxPane.setName("sortByPriorityBoxPane");
		sortByPriorityBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getSortByPriorityLabel());
		sortByPriorityBoxPane.set(1, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getTasksSortedByPriorityCheckBox());
		sortByPriorityBoxPane.set(0, 1, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, horizFiller);
	}
	return sortByPriorityBoxPane;
}

/**
 * This method initializes filterOnOffBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getFilterOnOffBoxPane() {
	if (filterOnOffBoxPane == null) {
		RFiller horizFiller1 = new RFiller();
		horizFiller1.setStyle("horizontalStrut100");
		horizFiller1.setVisible(false);
		filterOnOffBoxPane = new RBoxPane();
		filterOnOffBoxPane.setName("filterOnOffBoxPane");
		filterOnOffBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getFilterLabel());
		filterOnOffBoxPane.set(1, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getTaskFiltersToggleButton());
		filterOnOffBoxPane.set(0, 1, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, horizFiller1);
	}
	return filterOnOffBoxPane;
}

/**
 * This method initializes caseDetailsMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getCaseDetailsMenuItem() {
	if (caseDetailsMenuItem == null) {
		caseDetailsMenuItem = new RMenuItem();
		caseDetailsMenuItem.setText("Case details");
		caseDetailsMenuItem.setEnabled(false);
		caseDetailsMenuItem.setName("caseDetailsMenuItem");
	}
	return caseDetailsMenuItem;
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
 * This method initializes taskDisplayModeBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getTaskDisplayModeBoxPane() {
	if (taskDisplayModeBoxPane == null) {
		taskDisplayModeBoxPane = new RBoxPane();
		taskDisplayModeBoxPane.setName("taskDisplayModeBoxPane");
		taskDisplayModeBoxPane.setBorder(BorderFactory.createTitledBorder(null, "", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
		taskDisplayModeBoxPane.setStyleProperties("{/insetsTop \"3\"}");
		taskDisplayModeBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getFindYourTasksRadioButton());
		taskDisplayModeBoxPane.set(1, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getFindTeamTasksRadioButton());
		taskDisplayModeBoxPane.set(2, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getFindAllEnvironmentTasksRadioButton());
	}
	return taskDisplayModeBoxPane;
}

/**
 * This method initializes taskActionsBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getTaskActionsBoxPane() {
	if (taskActionsBoxPane == null) {
		RFiller hFiller = new RFiller();
		hFiller.setStyleProperties("{/weightX \"1\"}");
		taskActionsBoxPane = new RBoxPane();
		taskActionsBoxPane.setName("taskActionsBoxPane");
		taskActionsBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getLoadTaskListButton());
		taskActionsBoxPane.set(1, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getInformOnTaskButton());
		taskActionsBoxPane.set(2, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getStartTaskButton());
		taskActionsBoxPane.set(3, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getDelegateTaskButton());
		taskActionsBoxPane.set(4, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getRefreshTaskListButton());
		taskActionsBoxPane.set(5, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getExpandAllButton());
		taskActionsBoxPane.set(6, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, hFiller);
	}
	return taskActionsBoxPane;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"