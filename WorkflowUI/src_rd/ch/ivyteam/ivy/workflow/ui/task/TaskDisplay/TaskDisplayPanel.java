package ch.ivyteam.ivy.workflow.ui.task.TaskDisplay;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RTabbedPane;
import ch.ivyteam.ivy.richdialog.widgets.displays.RCardDisplay;
import ch.ivyteam.ivy.workflow.ui.utils.UIHelper;

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
private RButton startTaskToggleButton = null;
private RLabel footerLabel = null;
private RButton parkTaskButton = null;
private RButton delegateTaskButton = null;
private RButton exitButton = null;
private RCardDisplay taskExecutionDisplay = null;
private RBoxPane taskActionsBoxPane = null;
private RTabbedPane centerTabbedPane = null;
private RCardDisplay documentsDisplay = null;
private RCardDisplay annotationsDisplay = null;
private RCardDisplay eventLogsDisplay = null;
private RCardDisplay detailsDisplay = null;
/**
   * Create a new instance of TaskInformationDisplayPanel
   */
  public TaskDisplayPanel()
  {
    super();
    initialize();
    
    // prettify ui components
    UIHelper.prettifyComponent(this);     
  }
  
  /**
   * This method initializes TaskInformationDisplayPanel
   * @return void
   */
  public void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(646,600));
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(730,809));
        this.add(getFooterLabel(), com.ulcjava.base.application.ULCBorderLayoutPane.SOUTH);
        this.add(getTaskActionsBoxPane(), com.ulcjava.base.application.ULCBorderLayoutPane.NORTH);
        this.add(getCenterTabbedPane(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
  }

/**
 * This method initializes startTaskToggleButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RToggleButton	
 */
private RButton getStartTaskToggleButton() {
	if (startTaskToggleButton == null) {
		startTaskToggleButton = new RButton();
		startTaskToggleButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/start32\")%>");
		startTaskToggleButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/startTaskLongDesc\")%>");
		startTaskToggleButton.setEnabled(false);
		startTaskToggleButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/startTaskShortDesc\")%>");
		startTaskToggleButton.setStyle("toolBarButton");
		startTaskToggleButton.setName("startTaskToggleButton");
		startTaskToggleButton.setBorderPainted(false);
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
		parkTaskButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/park32\")%>");
		parkTaskButton.setEnabled(false);
		parkTaskButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/parkTaskShortDesc\")%>");
		parkTaskButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/parkTaskLongDesc\")%>");
		parkTaskButton.setBorderPainted(false);
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
		delegateTaskButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/delegate32\")%>");
		delegateTaskButton.setEnabled(false);
		delegateTaskButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/delegateTaskShortDesc\")%>");
		delegateTaskButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/delegateTaskLongDesc\")%>\n");
		delegateTaskButton.setBorderPainted(false);
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
		exitButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/close32\")%>");
		exitButton.setStyle("toolBarButton");
		exitButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/close\")%>");
		exitButton.setName("exitButton");
		exitButton.setBorderPainted(false);
	}
	return exitButton;
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
		taskExecutionDisplay.setMaximumSize(new com.ulcjava.base.application.util.Dimension(1024,768));
	}
	return taskExecutionDisplay;
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
		taskActionsBoxPane.setStyleProperties("{/weightX \"1\"}");
		taskActionsBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getStartTaskToggleButton());
		taskActionsBoxPane.set(1, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getParkTaskButton());
		taskActionsBoxPane.set(2, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getDelegateTaskButton());
		taskActionsBoxPane.set(5, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getExitButton());
		taskActionsBoxPane.set(3, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, hFiller);
	}
	return taskActionsBoxPane;
}

/**
 * This method initializes centerTabbedPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RTabbedPane	
 */
private RTabbedPane getCenterTabbedPane() {
	if (centerTabbedPane == null) {
		centerTabbedPane = new RTabbedPane();
		centerTabbedPane.setName("centerTabbedPane");
		centerTabbedPane.addTab("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/taskExecution\")%>", null, getTaskExecutionDisplay(), null);
		centerTabbedPane.setEnabledAt(0, false);
		centerTabbedPane.addTab("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/documents\")%>", null, getDocumentsDisplay(), null);
		centerTabbedPane.addTab("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/note/plainStrings/annotations\")%>", null, getAnnotationsDisplay(), null);
		centerTabbedPane.addTab("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/eventlog/plainStrings/eventLogs\")%>", null, getEventLogsDisplay(), null);
		centerTabbedPane.addTab("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/details\")%>" + " \u2022", null, getDetailsDisplay(), null);
	}
	return centerTabbedPane;
}

/**
 * This method initializes documentsDisplay	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.displays.RCardDisplay	
 */
private RCardDisplay getDocumentsDisplay() {
	if (documentsDisplay == null) {
		documentsDisplay = new RCardDisplay();
		documentsDisplay.setName("documentsDisplay");
	}
	return documentsDisplay;
}

/**
 * This method initializes annotationsDisplay	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.displays.RCardDisplay	
 */
private RCardDisplay getAnnotationsDisplay() {
	if (annotationsDisplay == null) {
		annotationsDisplay = new RCardDisplay();
		annotationsDisplay.setName("annotationsDisplay");
	}
	return annotationsDisplay;
}

/**
 * This method initializes eventLogsDisplay	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.displays.RCardDisplay	
 */
private RCardDisplay getEventLogsDisplay() {
	if (eventLogsDisplay == null) {
		eventLogsDisplay = new RCardDisplay();
		eventLogsDisplay.setName("eventLogsDisplay");
	}
	return eventLogsDisplay;
}

/**
 * This method initializes detailsDisplay	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.displays.RCardDisplay	
 */
private RCardDisplay getDetailsDisplay() {
	if (detailsDisplay == null) {
		detailsDisplay = new RCardDisplay();
		detailsDisplay.setName("detailsDisplay");
	}
	return detailsDisplay;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"