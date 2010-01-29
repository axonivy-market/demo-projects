package ui.basic.main;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay;
import ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPaneContainer;
import ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink;
import com.ulcjava.base.application.util.Color;

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
		menuTaskPane.setTitle("<%=ivy.cms.co(\"/basicwfui/labels/main/wfuimenu\")%>");
		menuTaskPane.setSpecial(true);
		menuTaskPane.add(getProcessstartlistHyperlink());
		menuTaskPane.add(getTasklistHyperlink());
		menuTaskPane.add(getLoginHyperlink());
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
		tasklistHyperlink.setText("<%=ivy.cms.co(\"/basicwfui/labels/main/tasklist\")%>");
		tasklistHyperlink.setUnclickedColor(Color.darkGray);
		tasklistHyperlink.setClickedColor(Color.darkGray);
		tasklistHyperlink.setIconUri("<%=ivy.cms.cr(\"/basicwfui/images/tasklist\")%>");
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
		processstartlistHyperlink.setText("<%=ivy.cms.co(\"/basicwfui/labels/main/processstartlist\")%>");
		processstartlistHyperlink.setBackground(new Color(240, 243, 249));
		processstartlistHyperlink.setClickedColor(Color.darkGray);
		processstartlistHyperlink.setForeground(Color.darkGray);
		processstartlistHyperlink.setIconUri("<%=ivy.cms.cr(\"/basicwfui/images/processstart\")%>");
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
		loginHyperlink.setIconUri("<%=ivy.cms.cr(\"/basicwfui/images/login\")%>");
		loginHyperlink.setText("<%=ivy.cms.co(\"/basicwfui/labels/main/login\")%>");
	}
	return loginHyperlink;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"