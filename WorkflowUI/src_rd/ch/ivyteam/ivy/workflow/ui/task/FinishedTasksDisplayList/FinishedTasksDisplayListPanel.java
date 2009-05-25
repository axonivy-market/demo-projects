package ch.ivyteam.ivy.workflow.ui.task.FinishedTasksDisplayList;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RRadioButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RTable;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RToolBar;
import ch.ivyteam.ivy.workflow.ui.common.Header.HeaderPanel;

import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.ULCButtonGroup;
import com.ulcjava.base.application.border.ULCTitledBorder;
import com.ulcjava.base.application.util.Color;
import com.ulcjava.base.application.util.Font;

/**
 * RichDialog panel implementation for FinishedTasksDisplayListPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class FinishedTasksDisplayListPanel extends RichDialogBorderPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RLabel footerLabel = null;
private RBoxPane searchTaskBoxPane = null;
private HeaderPanel headerRDC = null;
private RToolBar taskActionsToolBar = null;
private RButton refreshTaskButton = null;
private RButton findTaskButton = null;
private RButton informOnTaskButton = null;
private RButton closeButton = null;
private RScrollPane tasksScrollPane = null;
private RTable tasksTable = null;
private ULCButtonGroup finishedTasksDisplayModeButtonGroup = null;   //  @jve:decl-index=0:visual-constraint=""
private RBoxPane finishedTasksDisplayModeBoxPane = null;
private RRadioButton findWorkedOnTasksRadioButton = null;
private RRadioButton findWorkedOnTasksByRoleRadioButton = null;
  
  /**
   * Create a new instance of FinishedTasksDisplayListPanel
   */
  public FinishedTasksDisplayListPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes FinishedTasksDisplayListPanel
   * @return void
   */
  public void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(800,600));
        this.add(getFooterLabel(), com.ulcjava.base.application.ULCBorderLayoutPane.SOUTH);
        this.add(getSearchTaskBoxPane(), com.ulcjava.base.application.ULCBorderLayoutPane.NORTH);
        this.add(getTasksScrollPane(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
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
 * This method initializes searchTaskBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getSearchTaskBoxPane() {
	if (searchTaskBoxPane == null) {
		searchTaskBoxPane = new RBoxPane();
		searchTaskBoxPane.setName("searchTaskBoxPane");
		searchTaskBoxPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		searchTaskBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getHeaderRDC());
		searchTaskBoxPane.set(0, 2, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getTaskActionsToolBar());
		searchTaskBoxPane.set(0, 1, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getFinishedTasksDisplayModeBoxPane());
	}
	return searchTaskBoxPane;
}

/**
 * This method initializes headerRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.common.Header.HeaderPanel	
 */
private HeaderPanel getHeaderRDC() {
	if (headerRDC == null) {
		headerRDC = new HeaderPanel();
		headerRDC.setName("headerRDC");
		headerRDC.setPreferredSize(new com.ulcjava.base.application.util.Dimension(20,100));
	}
	return headerRDC;
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
		taskActionsToolBar.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		taskActionsToolBar.add(getRefreshTaskButton());
		taskActionsToolBar.add(getFindTaskButton());
		taskActionsToolBar.add(getInformOnTaskButton());
		taskActionsToolBar.add(getCloseButton());
	}
	return taskActionsToolBar;
}

/**
 * This method initializes refreshTaskButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getRefreshTaskButton() {
	if (refreshTaskButton == null) {
		refreshTaskButton = new RButton();
		refreshTaskButton.setName("refreshTaskButton");
		refreshTaskButton.setStyle("toolBarButton");
		refreshTaskButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/refreshTaskList24\")%>");
		refreshTaskButton.setToolTipText("Refresh the task list with original filter\'s data");
	}
	return refreshTaskButton;
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
		findTaskButton.setText("");
		findTaskButton.setStyle("toolBarButton");
		findTaskButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/findTasks24\")%>");
		findTaskButton.setVisible(false);
		findTaskButton.setToolTipText("Find tasks");
	}
	return findTaskButton;
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
		informOnTaskButton.setVisible(false);
		informOnTaskButton.setStyle("toolBarButton");
		informOnTaskButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/informOnTask24\")%>");
		informOnTaskButton.setToolTipText("Get information on selected task under this tab");
	}
	return informOnTaskButton;
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
		closeButton.setText("");
		closeButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/close24\")%>");
		closeButton.setToolTipText("Close this task list");
	}
	return closeButton;
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
		tasksTable.setSortable(true);
		tasksTable.setModelConfiguration("{/showTableheader true /autoTableheader false /showtooltip true /showIcons true /version \"2.0\"/emptyTableText \"No tasks to display...\"/columns {{/result \"result=entry.getIdentifier()\"/version \"2.0\"/tooltip \"result=entry.getIdentifier()\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/task/images/taskId16\\\"\"/header \"Id\"/field \"\"/columnWidth \"60\"}{/result \"result=entry.getName()\"/version \"2.0\"/tooltip \"result=entry.getName()\"/icon \"\"/header \"Name\"/field \"\"/columnWidth \"200\"}{/result \"result=entry.getPriority()\"/version \"2.0\"/tooltip \"result=entry.getPriority()\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/task/images/taskPriority\\\" + entry.getPriority().intValue() + \\\"_16\\\"\"/header \"Priority\"/field \"\"/columnWidth \"20\"}{/result \"result=entry.getState()\"/version \"2.0\"/tooltip \"result=entry.getState()\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/task/images/taskState\\\" + entry.getState() + \\\"16\\\"\"/header \"State\"/field \"\"/columnWidth \"20\"}{/result \"result=entry.getActivatorName()\"/version \"2.0\"/tooltip \"result=entry.getActivatorName()\"/icon \"result=(entry.#activator is initialized? (entry.activator.isUser()? \\\"/ch/ivyteam/ivy/workflow/ui/security/images/user16\\\": \\\"/ch/ivyteam/ivy/workflow/ui/security/images/role16\\\"): \\\"\\\")\"/header \"Activator\"/field \"\"}{/result \"result=(entry.getStartTimestamp() is initialized? new DateTime(entry.getStartTimestamp()).format(\\\"medium\\\"): \\\"n/a\\\")\"/version \"2.0\"/tooltip \"result=(entry.getStartTimestamp() is initialized? new DateTime(entry.getStartTimestamp()).format(\\\"medium\\\"): \\\"n/a\\\")\"/icon \"\"/header \"Start date\"/field \"\"}{/result \"result=(entry.getExpiryTimestamp() is initialized? new DateTime(entry.getExpiryTimestamp()).format(\\\"medium\\\"): \\\"n/a\\\")\"/version \"2.0\"/tooltip \"result=(entry.getExpiryTimestamp() is initialized? new DateTime(entry.getExpiryTimestamp()).format(\\\"medium\\\"): \\\"n/a\\\")\"/icon \"\"/header \"Expiry\"/field \"\"}{/result \"result=(entry.getDelayTimestamp() is initialized? new DateTime(entry.getDelayTimestamp()).format(\\\"medium\\\"): \\\"n/a\\\")\"/version \"2.0\"/tooltip \"result=(entry.getDelayTimestamp() is initialized? new DateTime(entry.getDelayTimestamp()).format(\\\"medium\\\"): \\\"n/a\\\")\"/icon \"\"/header \"Blocking delay\"/field \"\"}{/result \"result=entry.getCase().name + \\\", id \\\" + entry.getCase().getIdentifier()\"/version \"2.0\"/tooltip \"result=entry.getCase().name + \\\", id \\\" + entry.getCase().getIdentifier()\"/icon \"\"/header \"Case name/id\"/field \"\"}{/result \"result=(entry.getCase().getStartTimestamp() is initialized? new DateTime(entry.getCase().getStartTimestamp()).format(\\\"medium\\\"): \\\"n/a\\\")\"/version \"2.0\"/tooltip \"result=(entry.getCase().getStartTimestamp() is initialized? new DateTime(entry.getCase().getStartTimestamp()).format(\\\"medium\\\"): \\\"n/a\\\")\"/icon \"\"/header \"Case start date\"/field \"\"}{/result \"result=entry.getCase().getState()\"/version \"2.0\"/tooltip \"result=entry.getCase().getState()\"/icon \"\"/header \"Case state\"/field \"\"}{/result \"result=entry.getBusinessCreatorUser()\"/version \"2.0\"/tooltip \"result=entry.getBusinessCreatorUser()\"/icon \"\"/header \"Busines creator\"/field \"\"}{/result \"result=entry.getKindName()\"/version \"2.0\"/tooltip \"result=entry.getKindName()\"/icon \"\"/header \"Task stage\"/field \"\"}{/result \"result=entry.getBusinessMainContactName()\"/version \"2.0\"/tooltip \"result=entry.getBusinessMainContactName()\"/icon \"\"/header \"Business main contact\"/field \"\"}}}");
	}
	return tasksTable;
}

/**
 * This method initializes finishedTasksDisplayModeButtonGroup	
 * 	
 * @return com.ulcjava.base.application.ULCButtonGroup	
 */
private ULCButtonGroup getFinishedTasksDisplayModeButtonGroup() {
	if (finishedTasksDisplayModeButtonGroup == null) {
		finishedTasksDisplayModeButtonGroup = new ULCButtonGroup();
	}
	return finishedTasksDisplayModeButtonGroup;
}

/**
 * This method initializes finishedTasksDisplayModeBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getFinishedTasksDisplayModeBoxPane() {
	if (finishedTasksDisplayModeBoxPane == null) {
		finishedTasksDisplayModeBoxPane = new RBoxPane();
		finishedTasksDisplayModeBoxPane.setName("finishedTasksDisplayModeBoxPane");
		finishedTasksDisplayModeBoxPane.setBorder(BorderFactory.createTitledBorder(null, "Finished tasks display mode", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
		finishedTasksDisplayModeBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getFindWorkedOnTasksRadioButton());
		finishedTasksDisplayModeBoxPane.set(0, 1, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getFindWorkedOnTasksByRoleRadioButton());
	}
	return finishedTasksDisplayModeBoxPane;
}

/**
 * This method initializes findWorkedOnTasksRadioButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RRadioButton	
 */
private RRadioButton getFindWorkedOnTasksRadioButton() {
	if (findWorkedOnTasksRadioButton == null) {
		findWorkedOnTasksRadioButton = new RRadioButton();
		findWorkedOnTasksRadioButton.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		findWorkedOnTasksRadioButton.setToolTipText("<html><b>Display all tasks that you worked on.</b><br>Finds all tasks that you as a session users has ever worked on.</html>");
		findWorkedOnTasksRadioButton.setText("<html><b>Display all tasks that you worked on.</b><br>Finds all tasks that you as a session users has ever worked on.</html>");
		findWorkedOnTasksRadioButton.setSelected(true);
		findWorkedOnTasksRadioButton.setGroup(getFinishedTasksDisplayModeButtonGroup());
		findWorkedOnTasksRadioButton.setName("findWorkedOnTasksRadioButton");
	}
	return findWorkedOnTasksRadioButton;
}

/**
 * This method initializes findWorkedOnTasksByRoleRadioButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RRadioButton	
 */
private RRadioButton getFindWorkedOnTasksByRoleRadioButton() {
	if (findWorkedOnTasksByRoleRadioButton == null) {
		findWorkedOnTasksByRoleRadioButton = new RRadioButton();
		findWorkedOnTasksByRoleRadioButton.setStyleProperties("{/weightX \"1\"}");
		findWorkedOnTasksByRoleRadioButton.setText("<html><b>Display all tasks done by some member of role(s) that you belong.</b><br>Finds all tasks somebody has worked on who needs a role which you, as the current session user also own.</html>");
		findWorkedOnTasksByRoleRadioButton.setToolTipText("<html><b>Display all tasks done by some member of role(s) that you belong.</b><br>Finds all tasks somebody has worked on who needs a role which you, as the current session user also own.</html>");
		findWorkedOnTasksByRoleRadioButton.setGroup(getFinishedTasksDisplayModeButtonGroup());
		findWorkedOnTasksByRoleRadioButton.setName("findWorkedOnTasksByRoleRadioButton");
	}
	return findWorkedOnTasksByRoleRadioButton;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"