package ch.ivyteam.ivy.workflow.ui.task.TaskSearch;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox;
import ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RRadioButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RToggleButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RTree;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RCollapsiblePane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RToolBar;
import ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem;
import ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu;
import ch.ivyteam.ivy.workflow.ui.task.TaskFiltersSelect.TaskFiltersSelectPanel;
import ch.ivyteam.ivy.workflow.ui.task.TaskHierarchyLayoutSelect.TaskHierarchyLayoutSelectPanel;

import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.ULCButtonGroup;
import com.ulcjava.base.application.ULCFlowLayoutPane;
import com.ulcjava.base.application.border.ULCTitledBorder;
import com.ulcjava.base.application.util.Color;
import com.ulcjava.base.application.util.ComponentOrientation;
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
private RToolBar taskActionsToolBar = null;
private RButton refreshTaskListButton = null;
private RButton startTaskButton = null;
private RButton delegateTaskButton = null;
private RButton informOnTaskButton = null;
private RMenuItem refreshTaskListMenuItem = null;
private RMenuItem informOnTaskMenuItem = null;
private RMenuItem startTaskMenuItem = null;
private RMenuItem delegateTaskMenuItem = null;
private RPopupMenu.RSeparator aPopupMenuSeparator1 = null;
private RPopupMenu.RSeparator aPopupMenuSeparator2 = null;
private RPopupMenu.RSeparator aPopupMenuSeparator3 = null;
private TaskHierarchyLayoutSelectPanel taskHierarchyLayoutSelectRDC = null;
private RToggleButton applyFilterToggleButton = null;
private RCollapsiblePane caseBusinessAndFiltersCollapsiblePane = null;
private TaskFiltersSelectPanel taskFiltersSelectRDC = null;
private RButton loadTaskListButton = null;
private RMenuItem loadTaskListMenuItem = null;
private RRadioButton findYourTasksRadioButton = null;
private RRadioButton findTeamTasksRadioButton = null;
private RRadioButton findAllEnvironmentTasksRadioButton = null;
private ULCButtonGroup tasksDisplayModeButtonGroup = null;  //  @jve:decl-index=0:visual-constraint="439,124"
private RHyperlink defineFilterHyperlink = null;
private RButton expandAllButton = null;
private RMenuItem expandAllTasksMenuItem = null;
private RGridBagLayoutPane viewGridBagLayoutPane = null;
private RFlowLayoutPane taskDisplayFlowLayoutPane = null;
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
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(300,600));
        this.setBorder(BorderFactory.createTitledBorder(BorderFactory.createLineBorder(new Color(12, 74, 124), 1), "Task List", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.BOLD, 11), new Color(12, 74, 124)));
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
		viewPrefsAndSearchGridBagLayoutPane.add(getTaskActionsToolBar(), new com.ulcjava.base.application.GridBagConstraints(0, 7, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		viewPrefsAndSearchGridBagLayoutPane.add(getViewGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		viewPrefsAndSearchGridBagLayoutPane.add(getTaskDisplayFlowLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
		filterBoxPane.setBorder(BorderFactory.createTitledBorder(null, "Task Filter", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(12, 74, 124)));
		filterBoxPane.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/defineFilterLongDesc\")%>");
		filterBoxPane.set(1, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getApplyFilterToggleButton());
		filterBoxPane.set(0, 1, 2, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getCaseBusinessAndFiltersCollapsiblePane());
		filterBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getDefineFilterHyperlink());
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
		tasksHierarchyLayoutTree.setModelConfiguration("{/showTableheader true /autoTableheader false /showtooltip true /showIcons true /version \"3.0\"/dynamicTreeLoadMode \"LOAD_ON_EXPAND\"/emptyTableText \"No tasks found\"/columns {{/patterns {{/result \"result=node.value\"/version \"3.0\"/tooltip \"result=\\\"<html>\\\" + \\r\\n\\\"<table border = \\\\\\\"0\\\\\\\">\\\" +\\r\\n\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeValue\\\").toString() + \\\"</th><td>\\\" + node.value + \\\"</td></tr>\\\" +\\r\\n\\r\\n\\\"</table>\\\"\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/task/images/taskHierarchyLayoutRoot16\\\"\"/field \"\"/patternMode \"ALL\"/patternValue \"default\"}{/result \"result=(entry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).categoryName\"/version \"3.0\"/tooltip \"result=\\\"<html>\\\" + \\r\\n\\\"<table border = \\\\\\\"0\\\\\\\">\\\" +\\r\\n\\r\\n\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeType\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).property + \\\"</td></tr>\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeCode\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).categoryCode + \\\"</td></tr>\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeName\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).categoryName + \\\"</td></tr>\\\" +\\r\\n\\r\\n\\\"</table>\\\"\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/case/images/PROCESS_CATEGORY_CODE16\\\"\"/field \"\"/patternMode \"INFO\"/patternValue \"PROCESS_CATEGORY_CODE\"}{/result \"result=(entry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).categoryName\"/version \"3.0\"/tooltip \"result=\\\"<html>\\\" + \\r\\n\\\"<table border = \\\\\\\"0\\\\\\\">\\\" +\\r\\n\\r\\n\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeType\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).property + \\\"</td></tr>\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeCode\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).categoryCode + \\\"</td></tr>\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeName\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).categoryName + \\\"</td></tr>\\\" +\\r\\n\\r\\n\\\"</table>\\\"\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/case/images/PROCESS_CODE16\\\"\"/patternMode \"INFO\"/patternValue \"PROCESS_CODE\"}{/result \"result=(entry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).categoryName\"/version \"3.0\"/tooltip \"result=\\\"<html>\\\" + \\r\\n\\\"<table border = \\\\\\\"0\\\\\\\">\\\" +\\r\\n\\r\\n\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeType\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).property + \\\"</td></tr>\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeCode\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).categoryCode + \\\"</td></tr>\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeName\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).categoryName + \\\"</td></tr>\\\" +\\r\\n\\r\\n\\\"</table>\\\"\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/case/images/TYPE_CODE16\\\"\"/patternMode \"INFO\"/patternValue \"TYPE_CODE\"}{/result \"result=(entry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).categoryName\"/version \"3.0\"/tooltip \"result=\\\"<html>\\\" + \\r\\n\\\"<table border = \\\\\\\"0\\\\\\\">\\\" +\\r\\n\\r\\n\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeType\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).property + \\\"</td></tr>\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeCode\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).categoryCode + \\\"</td></tr>\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeName\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).categoryName + \\\"</td></tr>\\\" +\\r\\n\\r\\n\\\"</table>\\\"\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/case/images/SUB_TYPE_CODE16\\\"\"/patternMode \"INFO\"/patternValue \"SUB_TYPE_CODE\"}{/result \"result=(entry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).categoryName\"/version \"3.0\"/tooltip \"result=\\\"<html>\\\" + \\r\\n\\\"<table border = \\\\\\\"0\\\\\\\">\\\" +\\r\\n\\r\\n\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeType\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).property + \\\"</td></tr>\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeCode\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).categoryCode + \\\"</td></tr>\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeName\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).categoryName + \\\"</td></tr>\\\" +\\r\\n\\r\\n\\\"</table>\\\"\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/task/images/taskPriority\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).categoryCode + \\\"_16\\\"\"/patternMode \"INFO\"/patternValue \"PRIORITY\"}{/result \"result=(entry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).categoryName\"/version \"3.0\"/tooltip \"result=\\\"<html>\\\" + \\r\\n\\\"<table border = \\\\\\\"0\\\\\\\">\\\" +\\r\\n\\r\\n\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeType\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).property + \\\"</td></tr>\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeCode\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).categoryCode + \\\"</td></tr>\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeName\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).categoryName + \\\"</td></tr>\\\" +\\r\\n\\r\\n\\\"</table>\\\"\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/task/images/KIND_CODE16\\\"\"/patternMode \"INFO\"/patternValue \"KIND_CODE\"}{/result \"result=(entry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).categoryName\"/version \"3.0\"/tooltip \"result=\\\"<html>\\\" + \\r\\n\\\"<table border = \\\\\\\"0\\\\\\\">\\\" +\\r\\n\\r\\n\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeType\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).property + \\\"</td></tr>\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeCode\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).categoryCode + \\\"</td></tr>\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeName\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).categoryName + \\\"</td></tr>\\\" +\\r\\n\\r\\n\\\"</table>\\\"\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/case/images/BUSINESS_START_TIMESTAMP16\\\"\"/patternMode \"INFO\"/patternValue \"BUSINESS_START_TIMESTAMP\"}{/result \"result=(entry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).categoryName\"/version \"3.0\"/tooltip \"result=\\\"<html>\\\" + \\r\\n\\\"<table border = \\\\\\\"0\\\\\\\">\\\" +\\r\\n\\r\\n\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeType\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).property + \\\"</td></tr>\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeCode\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).categoryCode + \\\"</td></tr>\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeName\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).categoryName + \\\"</td></tr>\\\" +\\r\\n\\r\\n\\\"</table>\\\"\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/case/images/BUSINESS_MAIN_CONTACT_ID16\\\"\"/patternMode \"INFO\"/patternValue \"BUSINESS_MAIN_CONTACT_ID\"}{/result \"result=(entry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).categoryName\"/version \"3.0\"/tooltip \"result=\\\"<html>\\\" + \\r\\n\\\"<table border = \\\\\\\"0\\\\\\\">\\\" +\\r\\n\\r\\n\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeType\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).property + \\\"</td></tr>\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeCode\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).categoryCode + \\\"</td></tr>\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeName\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.task.TaskHierarchyTreeNodeValue).categoryName + \\\"</td></tr>\\\" +\\r\\n\\r\\n\\\"</table>\\\"\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/case/images/BUSINESS_CREATOR_USER16\\\"\"/columnStyle \"\"/patternMode \"INFO\"/patternValue \"BUSINESS_CREATOR_USER\"}{/result \"result=entry.getName()\"/version \"3.0\"/tooltip \"result=\\\"<html>\\\" + \\r\\n\\\"<h3>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/taskDetails\\\").toString() + \\\"</h3>\\\" +\\r\\n\\r\\n\\\"<table border = \\\\\\\"0\\\\\\\">\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/taskId\\\").toString() + \\\"</th><td>\\\" + entry.getIdentifier() + \\\"</td></tr>\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/taskState\\\").toString() + \\\"</th><td>\\\" + entry.getState().name() + \\\"</td></tr>\\\" +\\r\\n\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/taskPriority\\\").toString() + \\\"</th><td>\\\" + entry.getPriority().name() + \\\"</td></tr>\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/taskName\\\").toString() + \\\"</th><td>\\\" + (entry.#name is initialized? entry.getName(): \\\"n/a\\\") + \\\"</td></tr>\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/taskDescription\\\").toString() + \\\"</th><td>\\\" + (entry.getDescription() is initialized? entry.getDescription(): \\\"n/a\\\") + \\\"</td></tr>\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/taskKindName\\\").toString() + \\\"</th><td>\\\" + (entry.getKindName() is initialized? entry.getKindName(): \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t(entry.getKindCode() is initialized? entry.getKindCode(): \\\"n/a\\\")) + \\\"</td></tr>\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/taskActivator\\\").toString() + \\\"</th><td>\\\" + (entry.#activator is initialized? entry.activator.getMemberName()+ \\\" (\\\" + (entry.activator.isUser()? \\\"User\\\": \\\"Role\\\") + \\\")\\\": \\\"n/a\\\") + \\\"</td></tr>\\\" +\\r\\n\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/taskStartTimestamp\\\").toString() + \\\"</th><td>\\\" + entry.getStartTimestamp().toString() + \\\"</td></tr>\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/taskExpiryTimestamp\\\").toString() + \\\"</th><td>\\\" + (entry.getExpiryTimestamp() is initialized? entry.getExpiryTimestamp().toString(): \\\"n/a\\\") + \\\"</td></tr>\\\" +\\r\\n\\r\\n\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseId\\\").toString() + \\\"</th><td>\\\" + entry.getCase().getIdentifier() + \\\"</td></tr>\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseName\\\").toString() + \\\"</th><td>\\\" + (entry.getCase().getName() is initialized? entry.getCase().getName(): \\\"n/a\\\") + \\\"</td></tr>\\\" +\\r\\n\\r\\n\\\"</table>\\\"\"/icon \"result=entry.getState().name().equals(\\\"DONE\\\") ? \\r\\n\\\"/ch/ivyteam/ivy/workflow/ui/task/images/taskStateDONE16\\\" : \\r\\n(entry.getState().name().equals(\\\"RESUMED\\\") ? \\r\\n\\\"/ch/ivyteam/ivy/workflow/ui/task/images/taskStateRESUMED16\\\" : \\r\\n(entry.getState().name().equals(\\\"PARKED\\\")) ? \\r\\n\\\"/ch/ivyteam/ivy/workflow/ui/task/images/taskStatePARKED16\\\" :\\r\\n(entry.getState().name().equals(\\\"READY_FOR_JOIN\\\")) ? \\r\\n\\\"/ch/ivyteam/ivy/workflow/ui/task/images/taskStateREADY_FOR_JOIN16\\\" :\\r\\n\\\"/ch/ivyteam/ivy/workflow/ui/task/images/taskId16\\\")\"/patternMode \"INSTANCE\"/patternValue \"ch.ivyteam.ivy.workflow.ITask\"}}/version \"3.0\"}}}");
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
		taskHierarchyLayoutsPopupMenu.setName("taskHierarchyLayoutsPopupMenu");
		taskHierarchyLayoutsPopupMenu.setName("taskHierarchyLayoutsPopupMenu");
		taskHierarchyLayoutsPopupMenu.add(getLoadTaskListMenuItem());
		taskHierarchyLayoutsPopupMenu.add(getAPopupMenuSeparator1());
		taskHierarchyLayoutsPopupMenu.add(getRefreshTaskListMenuItem());
		taskHierarchyLayoutsPopupMenu.add(getAPopupMenuSeparator2());
		taskHierarchyLayoutsPopupMenu.add(getInformOnTaskMenuItem());
		taskHierarchyLayoutsPopupMenu.add(getStartTaskMenuItem());
		taskHierarchyLayoutsPopupMenu.add(getAPopupMenuSeparator3());
		taskHierarchyLayoutsPopupMenu.add(getDelegateTaskMenuItem());
		taskHierarchyLayoutsPopupMenu.add(getExpandAllTasksMenuItem());
	}
	return taskHierarchyLayoutsPopupMenu;
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
		taskActionsToolBar.setStyleProperties("{/insetsTop \"2\"/insetsLeft \"1\"}");
		taskActionsToolBar.setName("taskActionsToolBar");
		taskActionsToolBar.add(getLoadTaskListButton());
		taskActionsToolBar.add(getRefreshTaskListButton());
		taskActionsToolBar.add(getInformOnTaskButton());
		taskActionsToolBar.add(getStartTaskButton());
		taskActionsToolBar.add(getDelegateTaskButton());
		taskActionsToolBar.add(getExpandAllButton());
	}
	return taskActionsToolBar;
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
		refreshTaskListButton.setRolloverIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/refreshTaskList32\")%>");
		refreshTaskListButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/refreshTaskListLongDesc\")%>");
		refreshTaskListButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/refreshTaskList24\")%>");
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
		startTaskButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/startTask24\")%>");
		startTaskButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/startTaskLongDesc\")%>");
		startTaskButton.setEnabled(false);
		startTaskButton.setRolloverIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/startTask32\")%>");
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
		delegateTaskButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/delegateTask24\")%>");
		delegateTaskButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/delegateTaskLongDesc\")%>");
		delegateTaskButton.setEnabled(false);
		delegateTaskButton.setRolloverIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/delegateTask32\")%>");
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
		informOnTaskButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/informOnTask24\")%>");
		informOnTaskButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/informOnTaskLongDesc\")%>\n");
		informOnTaskButton.setEnabled(false);
		informOnTaskButton.setRolloverIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/informOnTask32\")%>");
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
		informOnTaskMenuItem.setText("Open task information");
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
		startTaskMenuItem.setText("Start task");
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
		delegateTaskMenuItem.setText("Delegate the task");
	}
	return delegateTaskMenuItem;
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
 * This method initializes aPopupMenuSeparator2	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu.RSeparator	
 */
private RPopupMenu.RSeparator getAPopupMenuSeparator2() {
	if (aPopupMenuSeparator2 == null) {
		aPopupMenuSeparator2 = new RPopupMenu.RSeparator();
		aPopupMenuSeparator2.setName("aPopupMenuSeparator2");
		aPopupMenuSeparator2.setEnabled(false);
	}
	return aPopupMenuSeparator2;
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
 * This method initializes taskHierarchyLayoutSelectRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.task.TaskHierarchyLayoutSelect.TaskHierarchyLayoutSelectPanel	
 */
private TaskHierarchyLayoutSelectPanel getTaskHierarchyLayoutSelectRDC() {
	if (taskHierarchyLayoutSelectRDC == null) {
		taskHierarchyLayoutSelectRDC = new TaskHierarchyLayoutSelectPanel();
		taskHierarchyLayoutSelectRDC.setName("taskHierarchyLayoutSelectRDC");
		taskHierarchyLayoutSelectRDC.setStyleProperties("{/weightX \"1\"}");
	}
	return taskHierarchyLayoutSelectRDC;
}

/**
 * This method initializes applyFilterToggleButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RToggleButton	
 */
private RToggleButton getApplyFilterToggleButton() {
	if (applyFilterToggleButton == null) {
		applyFilterToggleButton = new RToggleButton();
		applyFilterToggleButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/filterDisabledShortDesc\")%>");
		applyFilterToggleButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/filter16\")%>");
		applyFilterToggleButton.setEnabled(false);
		applyFilterToggleButton.setStyleProperties("{/anchor \"NORTHEAST\"/fill \"NONE\"/weightX \"1\"}");
		applyFilterToggleButton.setPreferredSize(new com.ulcjava.base.application.util.Dimension(100,24));
		applyFilterToggleButton.setName("applyFilterToggleButton");
	}
	return applyFilterToggleButton;
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
		caseBusinessAndFiltersCollapsiblePane.setCollapsed(true);
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
private TaskFiltersSelectPanel getTaskFiltersSelectRDC() {
	if (taskFiltersSelectRDC == null) {
		taskFiltersSelectRDC = new TaskFiltersSelectPanel();
		taskFiltersSelectRDC.setName("taskFiltersSelectRDC");
		taskFiltersSelectRDC.setName("taskFiltersSelectRDC");
		taskFiltersSelectRDC.setPreferredSize(new com.ulcjava.base.application.util.Dimension(200,525));
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
		loadTaskListButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/loadTaskList24\")%>");
		loadTaskListButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/loadTaskListLongDesc\")%>");
		loadTaskListButton.setRolloverIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/loadTaskList32\")%>");
		loadTaskListButton.setEnabled(false);
		loadTaskListButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/loadTaskListLongDesc\")%>");
		loadTaskListButton.setName("loadTaskListButton");
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
 * This method initializes defineFilterHyperlink	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink	
 */
private RHyperlink getDefineFilterHyperlink() {
	if (defineFilterHyperlink == null) {
		defineFilterHyperlink = new RHyperlink();
		defineFilterHyperlink.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/defineFilterShortDesc\")%>");
		defineFilterHyperlink.setStyleProperties("{/weightX \"1\"}");
		defineFilterHyperlink.setName("defineFilterHyperlink");
	}
	return defineFilterHyperlink;
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
		expandAllButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/expandAllTasks24\")%>");
		expandAllButton.setRolloverIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/expandAllTasks32\")%>");
		expandAllButton.setStyle("toolBarButton");
		expandAllButton.setName("expandAllButton");
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
		expandAllTasksMenuItem.setText("Expand all tasks.....");
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
		viewGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(null, "Layout Options", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
		viewGridBagLayoutPane.setStyleProperties("{/weightX \"1\"}");
		viewGridBagLayoutPane.add(getTaskHierarchyLayoutSelectRDC(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		viewGridBagLayoutPane.add(getTasksSortedByPriorityCheckBox(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return viewGridBagLayoutPane;
}

/**
 * This method initializes taskDisplayFlowLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane	
 */
private RFlowLayoutPane getTaskDisplayFlowLayoutPane() {
	if (taskDisplayFlowLayoutPane == null) {
		taskDisplayFlowLayoutPane = new RFlowLayoutPane();
		taskDisplayFlowLayoutPane.setName("taskDisplayFlowLayoutPane");
		taskDisplayFlowLayoutPane.setComponentOrientation(ComponentOrientation.LEFT_TO_RIGHT);
		taskDisplayFlowLayoutPane.setAlignment(ULCFlowLayoutPane.LEFT);
		taskDisplayFlowLayoutPane.setHgap(4);
		taskDisplayFlowLayoutPane.setBorder(BorderFactory.createTitledBorder(null, "Task Display Mode", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
		taskDisplayFlowLayoutPane.add(getFindYourTasksRadioButton());
		taskDisplayFlowLayoutPane.add(getFindTeamTasksRadioButton());
		taskDisplayFlowLayoutPane.add(getFindAllEnvironmentTasksRadioButton());
	}
	return taskDisplayFlowLayoutPane;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"