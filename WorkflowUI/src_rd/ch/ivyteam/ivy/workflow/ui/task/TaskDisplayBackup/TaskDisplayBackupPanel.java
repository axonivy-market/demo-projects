package ch.ivyteam.ivy.workflow.ui.task.TaskDisplayBackup;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RToggleButton;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane;
import ch.ivyteam.ivy.richdialog.widgets.displays.RCardDisplay;
import ch.ivyteam.ivy.workflow.ui.utils.UIHelper;

import com.ulcjava.base.application.BorderFactory;

/**
 * RichDialog panel implementation for TaskInformationDisplayPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class TaskDisplayBackupPanel extends RichDialogBorderPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RHyperlink startTaskToggleButton = null;
private RLabel footerLabel = null;
private RHyperlink parkTaskButton = null;
private RHyperlink delegateTaskButton = null;
private RHyperlink exitButton = null;
private RCardDisplay taskExecutionDisplay = null;
private RBoxPane taskActionsBoxPane = null;
private RToggleButton informOnTaskToggleButton = null;
/**
   * Create a new instance of TaskInformationDisplayPanel
   */
  public TaskDisplayBackupPanel()
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
        this.add(getTaskExecutionDisplay(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
  }

/**
 * This method initializes startTaskToggleButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RToggleButton	
 */
private RHyperlink getStartTaskToggleButton() {
	if (startTaskToggleButton == null) {
		startTaskToggleButton = new RHyperlink();
		startTaskToggleButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/startTask32\")%>");
		startTaskToggleButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/startTaskLongDesc\")%>");
		startTaskToggleButton.setEnabled(false);
		startTaskToggleButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/startTaskShortDesc\")%>");
		startTaskToggleButton.setStyle("toolBarButton");
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
 * This method initializes parkTaskButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RHyperlink getParkTaskButton() {
	if (parkTaskButton == null) {
		parkTaskButton = new RHyperlink();
		parkTaskButton.setName("parkTaskButton");
		parkTaskButton.setVisible(true);
		parkTaskButton.setStyle("toolBarButton");
		parkTaskButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/parkTask32\")%>");
		parkTaskButton.setEnabled(false);
		parkTaskButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/parkTaskShortDesc\")%>");
		parkTaskButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/parkTaskLongDesc\")%>");
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
		delegateTaskButton.setStyle("toolBarButton");
		delegateTaskButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/delegateTask32\")%>");
		delegateTaskButton.setEnabled(false);
		delegateTaskButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/delegateTaskShortDesc\")%>");
		delegateTaskButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/delegateTaskLongDesc\")%>\n");
	}
	return delegateTaskButton;
}

/**
 * This method initializes exitButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RHyperlink getExitButton() {
	if (exitButton == null) {
		exitButton = new RHyperlink();
		exitButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/close32\")%>");
		exitButton.setStyle("toolBarButton");
		exitButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/close\")%>");
		exitButton.setName("exitButton");
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
		taskActionsBoxPane.set(6, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getExitButton());
		taskActionsBoxPane.set(4, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, hFiller);
		taskActionsBoxPane.set(3, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getInformOnTaskToggleButton());
	}
	return taskActionsBoxPane;
}

/**
 * This method initializes informOnTaskToggleButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink	
 */
private RToggleButton getInformOnTaskToggleButton() {
	if (informOnTaskToggleButton == null) {
		informOnTaskToggleButton = new RToggleButton();
		informOnTaskToggleButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/informOnTaskShortDesc\")%>");
		informOnTaskToggleButton.setStyle("toolBarButton");
		informOnTaskToggleButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/toggleInformOnTaskLongDesc\")%>");
		informOnTaskToggleButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/informOnTask32\")%>");
		informOnTaskToggleButton.setBorder(BorderFactory.createCompoundBorder(null, null));
		informOnTaskToggleButton.setStyleProperties("{/insetsRight \"3\"}");
		informOnTaskToggleButton.setPreferredSize(new com.ulcjava.base.application.util.Dimension(34,48));
		informOnTaskToggleButton.setName("informOnTaskToggleButton");
	}
	return informOnTaskToggleButton;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"