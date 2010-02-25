package ui.basic.main;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay;
import ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPaneContainer;
import ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink;
import com.ulcjava.base.application.util.Color;
import com.ulcjava.base.application.BorderFactory;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;

/**
 * <p>mainPanel is a rich dialog panel implementation.
 *
 * <p>Please note that a rich dialog panel is not an instance of a Swing 
 * container, but of an ULCContainer. As such it can not be run 
 * or instantiated outside the ULC framework.
 */
public class mainPanel extends RichDialogBorderPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RTabbedDisplay centerTabbedDisplay = null;
private RTaskPaneContainer TaskPaneContainer = null;
private RTaskPane menuTaskPane = null;
private RHyperlink tasklistHyperlink = null;
private RHyperlink processstartlistHyperlink = null;
private RHyperlink loginHyperlink = null;
private RHyperlink exitHyperlink = null;
private RGridBagLayoutPane bottomGridBagLayoutPane = null;
private RLabel statusLabel = null;
  
  /**
   * Create a new instance of mainPanel
   */
  public mainPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes mainPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(651,367));
        this.add(getCenterTabbedDisplay(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
        this.add(getTaskPaneContainer(), com.ulcjava.base.application.ULCBorderLayoutPane.WEST);
        this.add(getBottomGridBagLayoutPane(), com.ulcjava.base.application.ULCBorderLayoutPane.SOUTH);
  }

/**
 * This method initializes centerTabbedDisplay	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay	
 */
private RTabbedDisplay getCenterTabbedDisplay() {
	if (centerTabbedDisplay == null) {
		centerTabbedDisplay = new RTabbedDisplay();
		centerTabbedDisplay.setName("centerTabbedDisplay");
		centerTabbedDisplay.setDisplayId("center_display");
	}
	return centerTabbedDisplay;
}

/**
 * This method initializes TaskPaneContainer	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPaneContainer	
 */
private RTaskPaneContainer getTaskPaneContainer() {
	if (TaskPaneContainer == null) {
		TaskPaneContainer = new RTaskPaneContainer();
		TaskPaneContainer.setName("TaskPaneContainer");
		TaskPaneContainer.add(getMenuTaskPane());
	}
	return TaskPaneContainer;
}

/**
 * This method initializes menuTaskPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPane	
 */
private RTaskPane getMenuTaskPane() {
	if (menuTaskPane == null) {
		menuTaskPane = new RTaskPane();
		menuTaskPane.setName("menuTaskPane");
		menuTaskPane.setTitle("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/main/wfuimenu\")%>");
		menuTaskPane.setSpecial(true);
		menuTaskPane.add(getProcessstartlistHyperlink());
		menuTaskPane.add(getTasklistHyperlink());
		menuTaskPane.add(getLoginHyperlink());
		menuTaskPane.add(getExitHyperlink());
	}
	return menuTaskPane;
}

/**
 * This method initializes tasklistHyperlink	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink	
 */
private RHyperlink getTasklistHyperlink() {
	if (tasklistHyperlink == null) {
		tasklistHyperlink = new RHyperlink();
		tasklistHyperlink.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/main/tasklist\")%>");
		tasklistHyperlink.setUnclickedColor(Color.darkGray);
		tasklistHyperlink.setClickedColor(Color.darkGray);
		tasklistHyperlink.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/basicwfui/images/tasklist\")%>");
		tasklistHyperlink.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/help/taskList\")%>");
		tasklistHyperlink.setName("tasklistHyperlink");
	}
	return tasklistHyperlink;
}

/**
 * This method initializes processstartlistHyperlink	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink	
 */
private RHyperlink getProcessstartlistHyperlink() {
	if (processstartlistHyperlink == null) {
		processstartlistHyperlink = new RHyperlink();
		processstartlistHyperlink.setName("processstartlistHyperlink");
		processstartlistHyperlink.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/main/processstartlist\")%>");
		processstartlistHyperlink.setBackground(new Color(240, 243, 249));
		processstartlistHyperlink.setClickedColor(Color.darkGray);
		processstartlistHyperlink.setForeground(Color.darkGray);
		processstartlistHyperlink.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/basicwfui/images/processstart\")%>");
		processstartlistHyperlink.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/help/processStartList\")%>");
		processstartlistHyperlink.setUnclickedColor(Color.darkGray);
	}
	return processstartlistHyperlink;
}

/**
 * This method initializes loginHyperlink	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink	
 */
private RHyperlink getLoginHyperlink() {
	if (loginHyperlink == null) {
		loginHyperlink = new RHyperlink();
		loginHyperlink.setName("loginHyperlink");
		loginHyperlink.setClickedColor(Color.darkGray);
		loginHyperlink.setUnclickedColor(Color.darkGray);
		loginHyperlink.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/basicwfui/images/login\")%>");
		loginHyperlink.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/help/loginUser\")%>");
		loginHyperlink.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/main/login\")%>");
	}
	return loginHyperlink;
}

/**
 * This method initializes exitHyperlink	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink	
 */
private RHyperlink getExitHyperlink() {
	if (exitHyperlink == null) {
		exitHyperlink = new RHyperlink();
		exitHyperlink.setUnclickedColor(Color.darkGray);
		exitHyperlink.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/common/exit\")%>");
		exitHyperlink.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/basicwfui/images/exit\")%>");
		exitHyperlink.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/help/exitWFUI\")%>");
		exitHyperlink.setName("exitHyperlink");
	}
	return exitHyperlink;
}

/**
 * This method initializes bottomGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getBottomGridBagLayoutPane() {
	if (bottomGridBagLayoutPane == null) {
		bottomGridBagLayoutPane = new RGridBagLayoutPane();
		bottomGridBagLayoutPane.setName("bottomGridBagLayoutPane");
		bottomGridBagLayoutPane.add(getStatusLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return bottomGridBagLayoutPane;
}

/**
 * This method initializes statusLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getStatusLabel() {
	if (statusLabel == null) {
		statusLabel = new RLabel();
		statusLabel.setStyleProperties("{/anchor \"WEST\"/fill \"HORIZONTAL\"/weightX \"1\"}");
		statusLabel.setStyle("basiwfui_errorLabel");
		statusLabel.setName("statusLabel");
	}
	return statusLabel;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"