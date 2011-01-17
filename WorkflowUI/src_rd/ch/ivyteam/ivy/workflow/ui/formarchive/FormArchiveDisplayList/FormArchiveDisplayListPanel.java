package ch.ivyteam.ivy.workflow.ui.formarchive.FormArchiveDisplayList;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RComboBox;
import ch.ivyteam.ivy.richdialog.widgets.components.RTable;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import com.ulcjava.base.application.ULCTable;
import ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu;
import ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem;

/**
 * <p>PageArchiveListPanel is a rich dialog panel implementation.
 *
 * <p>Please note that a rich dialog panel is not an instance of a Swing 
 * container, but of an ULCContainer. As such it can not be run 
 * or instantiated outside the ULC framework.
 */
@SuppressWarnings("all")
public class FormArchiveDisplayListPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RGridBagLayoutPane filterPane = null;
private RScrollPane pageArchiveScrollPane = null;
private RLabel taskFilterLabel = null;
private RComboBox taskFilterComboBox = null;
private RTable pageArchiveTable = null;
private RPopupMenu taskArchiveTablePopupMenu = null;  //  @jve:decl-index=0:visual-constraint="800,201"
private RMenuItem refreshMenuItem = null;
private RPopupMenu.RSeparator taskArchiveTableMenuSeparator1 = null;
private RMenuItem openExternalBlankMenuItem = null;
/**
   * Create a new instance of PageArchiveListPanel
   */
  public FormArchiveDisplayListPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes PageArchiveListPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(522,415));
        this.add(getFilterPane(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getPageArchiveScrollPane(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes filterPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getFilterPane() {
	if (filterPane == null) {
		RFiller taskfilterFiller = new RFiller();
		taskfilterFiller.setStyleProperties("{/weightX \"1\"}");
		filterPane = new RGridBagLayoutPane();
		filterPane.setName("filterPane");
		filterPane.add(getTaskFilterLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		filterPane.add(getTaskFilterComboBox(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		filterPane.add(taskfilterFiller, new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return filterPane;
}

/**
 * This method initializes pageArchiveScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getPageArchiveScrollPane() {
	if (pageArchiveScrollPane == null) {
		pageArchiveScrollPane = new RScrollPane();
		pageArchiveScrollPane.setName("pageArchiveScrollPane");
		pageArchiveScrollPane.setViewPortView(getPageArchiveTable());
	}
	return pageArchiveScrollPane;
}

/**
 * This method initializes taskFilterLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getTaskFilterLabel() {
	if (taskFilterLabel == null) {
		taskFilterLabel = new RLabel();
		taskFilterLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/task\")%>");
		taskFilterLabel.setName("taskFilterLabel");
	}
	return taskFilterLabel;
}

/**
 * This method initializes taskFilterComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getTaskFilterComboBox() {
	if (taskFilterComboBox == null) {
		taskFilterComboBox = new RComboBox();
		taskFilterComboBox.setName("taskFilterComboBox");
		taskFilterComboBox.setModelConfiguration("{/result \"result=entry.name + \\\" - \\\"+ entry.getStartTimestamp() +\\\" (\\\" + entry.getIdentifier() +\\\")\\\"\"/version \"3.0\"/icon \"\"/tooltip \"result=\\\"<html>\\\"+\\r\\nivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/taskStartTimestamp\\\") + entry.getStartTimestamp() + \\\"<br>\\\"+\\r\\nivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/taskEndTimestamp\\\") + entry.getEndTimestamp() +\\r\\n\\\"</html>\\\"\"}");
	}
	return taskFilterComboBox;
}

/**
 * This method initializes pageArchiveTable	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTable	
 */
private RTable getPageArchiveTable() {
	if (pageArchiveTable == null) {
		pageArchiveTable = new RTable();
		pageArchiveTable.setName("pageArchiveTable");
		pageArchiveTable.setModelConfiguration("{/showTableheader true /autoTableheader false /showtooltip false /showIcons false /version \"3.0\"/emptyTableText \"\"/columns {{/result \"result=(entry.getTask().getName() is initialized? entry.getTask().getName() + \\\" - \\\": \\\"\\\") + entry.getTask().getIdentifier()\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/task\\\")\"/field \"\"/editable \"\"/condition \"\"/columnWidth \"350\"/cellWidget \"\"}{/result \"result=entry.getName()\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/name\\\")\"/field \"\"/editable \"\"/condition \"\"/columnWidth \"350\"/cellWidget \"\"}{/result \"result=(entry.getSubmitTimestamp() is initialized ? entry.getSubmitTimestamp().format(ivy.var.xivy_workflow_ui_restricted_dateTimeFormatPattern): \\\"n/a\\\")\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/formArchive/plainStrings/creationDate\\\")\"/field \"\"/editable \"\"/condition \"\"/columnWidth \"125\"/columnStyle \"date\"/cellWidget \"\"}{/result \"result=entry.getUserName()\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/user\\\")\"/field \"\"/editable \"\"/condition \"\"/columnWidth \"350\"/cellWidget \"\"}}}");
		pageArchiveTable.setAutoResizeMode(ULCTable.AUTO_RESIZE_OFF);
		pageArchiveTable.setSortable(true);
		pageArchiveTable.setRowHeight(20);
		pageArchiveTable.setComponentPopupMenu(getTaskArchiveTablePopupMenu());
	}
	return pageArchiveTable;
}

/**
 * This method initializes taskArchiveTablePopupMenu	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu	
 */
private RPopupMenu getTaskArchiveTablePopupMenu() {
	if (taskArchiveTablePopupMenu == null) {
		taskArchiveTablePopupMenu = new RPopupMenu();
		taskArchiveTablePopupMenu.setName("taskArchiveTablePopupMenu");
		taskArchiveTablePopupMenu.add(getRefreshMenuItem());
		taskArchiveTablePopupMenu.add(getTaskArchiveTableMenuSeparator1());
		taskArchiveTablePopupMenu.add(getOpenExternalBlankMenuItem());
	}
	return taskArchiveTablePopupMenu;
}

/**
 * This method initializes refreshMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getRefreshMenuItem() {
	if (refreshMenuItem == null) {
		refreshMenuItem = new RMenuItem();
		refreshMenuItem.setText("refreshMenuItem");
		refreshMenuItem.setName("refreshMenuItem");
	}
	return refreshMenuItem;
}

/**
 * This method initializes taskArchiveTableMenuSeparator1	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu.RSeparator	
 */
private RPopupMenu.RSeparator getTaskArchiveTableMenuSeparator1() {
	if (taskArchiveTableMenuSeparator1 == null) {
		taskArchiveTableMenuSeparator1 = new RPopupMenu.RSeparator();
		taskArchiveTableMenuSeparator1.setName("taskArchiveTableMenuSeparator1");
	}
	return taskArchiveTableMenuSeparator1;
}

/**
 * This method initializes openExternalBlankMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getOpenExternalBlankMenuItem() {
	if (openExternalBlankMenuItem == null) {
		openExternalBlankMenuItem = new RMenuItem();
		openExternalBlankMenuItem.setText("openExternalBlankMenuItem");
		openExternalBlankMenuItem.setName("openExternalBlankMenuItem");
	}
	return openExternalBlankMenuItem;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"