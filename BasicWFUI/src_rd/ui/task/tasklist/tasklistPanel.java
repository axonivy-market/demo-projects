package ui.task.tasklist;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RTable;
import com.ulcjava.base.application.ULCTable;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RToolBar;
import ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu;
import ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem;
import ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink;

/**
 * RichDialog panel implementation for PendenzenListePanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class tasklistPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RScrollPane ScrollPane = null;
private RTable Table = null;
private RButton Button = null;
private RLabel captionLabel = null;
private RToolBar ToolBar = null;
private RButton resumeButton = null;
private RPopupMenu doPopupMenu = null;  //  @jve:decl-index=0:visual-constraint="669,13"
private RMenuItem resumeMenuItem = null;
private RHyperlink Hyperlink = null;
private RButton taskdetailsButton = null;
private RButton taskNotesButton = null;
private RButton resetButton = null;
private RButton parkButton = null;
  
  /**
   * Create a new instance of PendenzenListePanel
   */
  public tasklistPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes PendenzenListePanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(632,408));
        this.add(getScrollPane(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getButton(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getCaptionLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getToolBar(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getHyperlink(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes ScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getScrollPane() {
	if (ScrollPane == null) {
		ScrollPane = new RScrollPane();
		ScrollPane.setName("ScrollPane");
		ScrollPane.setStyle("fill-horiz-north-border");
		ScrollPane.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		ScrollPane.setViewPortView(getTable());
	}
	return ScrollPane;
}

/**
 * This method initializes Table	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTable	
 */
private RTable getTable() {
	if (Table == null) {
		Table = new RTable();
		Table.setName("Table");
		Table.setSortable(true);
		Table.setModelConfiguration("{/showTableheader true /autoTableheader false /showtooltip false /showIcons false /emptyTableText \"---\"/version \"3.0\"/columns {{/result \"result=entry.getIdentifier()\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/basicwfui/labels/common/id\\\")\"/field \"\"/editable \"\"/condition \"\"/columnWidth \"50\"/cellWidget \"\"}{/result \"result=entry.getName()\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/basicwfui/labels/common/name\\\")\"/field \"\"/editable \"\"/condition \"\"/columnWidth \"300\"/cellWidget \"\"}{/result \"result=entry.getPriority()\"/version \"3.0\"/tooltip \"\"/icon \"result=ivy.cms.cr(\\\"/icons/prio/\\\"+entry.getPriority())\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/basicwfui/labels/common/prio\\\")\"/field \"\"/editable \"\"/condition \"\"/cellWidget \"\"}{/result \"result=entry.getStartTimestamp().format()\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/basicwfui/labels/common/date\\\")\"/field \"\"/editable \"\"/condition \"\"/cellWidget \"\"}{/result \"result=entry.getActivatorName()\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/basicwfui/labels/task/taskActivator\\\")\"/field \"\"/editable \"\"/condition \"\"/cellWidget \"\"}{/result \"result=entry.getState()\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/basicwfui/labels/task/taskState\\\")\"/field \"\"/editable \"\"/condition \"\"/cellWidget \"\"}}}");
		Table.setAutoResizeMode(ULCTable.AUTO_RESIZE_LAST_COLUMN);
		Table.setComponentPopupMenu(getDoPopupMenu());
		Table.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
	}
	return Table;
}

/**
 * This method initializes Button	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getButton() {
	if (Button == null) {
		Button = new RButton();
		Button.setStyleProperties("{/anchor \"NORTHEAST\"}");
		Button.setStyle("basicwfui_actionbutton");
		Button.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/common/closeTab\")%>");
		Button.setName("Button");
	}
	return Button;
}

/**
 * This method initializes captionLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCaptionLabel() {
	if (captionLabel == null) {
		captionLabel = new RLabel();
		captionLabel.setStyle("basicwfui_caption");
		captionLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/main/tasklist\")%>");
		captionLabel.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/help/taskList\")%>");
		captionLabel.setName("captionLabel");
	}
	return captionLabel;
}

/**
 * This method initializes ToolBar	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RToolBar	
 */
private RToolBar getToolBar() {
	if (ToolBar == null) {
		ToolBar = new RToolBar();
		ToolBar.setName("ToolBar");
		ToolBar.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		ToolBar.add(getTaskdetailsButton());
		ToolBar.add(getTaskNotesButton());
		ToolBar.add(getResumeButton());
		ToolBar.add(getParkButton());
		ToolBar.add(getResetButton());
	}
	return ToolBar;
}

/**
 * This method initializes resumeButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getResumeButton() {
	if (resumeButton == null) {
		resumeButton = new RButton();
		resumeButton.setStyle("basicwfui_toolbarbutton");
		resumeButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/task/resume\")%>");
		resumeButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/basicwfui/images/tasklist\")%>");
		resumeButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/help/taskResume\")%>");
		resumeButton.setName("resumeButton");
	}
	return resumeButton;
}

/**
 * This method initializes doPopupMenu	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu	
 */
private RPopupMenu getDoPopupMenu() {
	if (doPopupMenu == null) {
		doPopupMenu = new RPopupMenu();
		doPopupMenu.setName("doPopupMenu");
		doPopupMenu.add(getResumeMenuItem());
	}
	return doPopupMenu;
}

/**
 * This method initializes resumeMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getResumeMenuItem() {
	if (resumeMenuItem == null) {
		resumeMenuItem = new RMenuItem();
		resumeMenuItem.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/task/resume\")%>");
		resumeMenuItem.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/basicwfui/images/tasklist\")%>");
		resumeMenuItem.setName("resumeMenuItem");
	}
	return resumeMenuItem;
}

/**
 * This method initializes Hyperlink	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink	
 */
private RHyperlink getHyperlink() {
	if (Hyperlink == null) {
		Hyperlink = new RHyperlink();
		Hyperlink.setName("Hyperlink");
		Hyperlink.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/task/refresh\")%>");
		Hyperlink.setStyleProperties("{/anchor \"CENTER\"}");
		Hyperlink.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/basicwfui/images/tasklist_48\")%>");
	}
	return Hyperlink;
}

/**
 * This method initializes taskdetailsButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getTaskdetailsButton() {
	if (taskdetailsButton == null) {
		taskdetailsButton = new RButton();
		taskdetailsButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/basicwfui/images/details\")%>");
		taskdetailsButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/task/info\")%>");
		taskdetailsButton.setStyle("basicwfui_toolbarbutton");
		taskdetailsButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/help/taskDetails\")%>");
		taskdetailsButton.setName("taskdetailsButton");
	}
	return taskdetailsButton;
}

/**
 * This method initializes taskNotesButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getTaskNotesButton() {
	if (taskNotesButton == null) {
		taskNotesButton = new RButton();
		taskNotesButton.setStyle("basicwfui_toolbarbutton");
		taskNotesButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/task/notes\")%> (0)");
		taskNotesButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/basicwfui/images/notes\")%>");
		taskNotesButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/help/taskNotes\")%>");
		taskNotesButton.setName("taskNotesButton");
	}
	return taskNotesButton;
}

/**
 * This method initializes resetButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getResetButton() {
	if (resetButton == null) {
		resetButton = new RButton();
		resetButton.setName("resetButton");
		resetButton.setStyle("basicwfui_toolbarbutton");
		resetButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/basicwfui/images/reset\")%>");
		resetButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/help/taskReset\")%>");
		resetButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/task/reset\")%>");
	}
	return resetButton;
}

/**
 * This method initializes parkButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getParkButton() {
	if (parkButton == null) {
		parkButton = new RButton();
		parkButton.setName("parkButton");
		parkButton.setStyle("basicwfui_toolbarbutton");
		parkButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/basicwfui/images/park\")%>");
		parkButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/help/taskPark\")%>");
		parkButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/task/park\")%>");
	}
	return parkButton;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"