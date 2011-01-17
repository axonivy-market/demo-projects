package ch.ivyteam.ivy.workflow.ui.Application;

import java.lang.reflect.InvocationTargetException;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBorderLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RSplitPane;
import ch.ivyteam.ivy.richdialog.widgets.displays.RCardDisplay;
import ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay;
import ch.ivyteam.ivy.workflow.ui.utils.UIHelper;

/**
 * RichDialog panel implementation for ApplicationDynamicWayPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class ApplicationPanel extends RichDialogBorderPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RCardDisplay westCardDisplay = null;
private RTabbedDisplay centerTabbedDisplay = null;
private RSplitPane applicationSplitPane = null;
private RBorderLayoutPane taskListBorderLayoutPane = null;
/**
   * Create a new instance of ApplicationDynamicWayPanel
   */
  public ApplicationPanel()
  {
    super();
    initialize();
    
    // prettify text fields
    UIHelper.prettifyComponent(this);
  }
  
  /**
   * This method initializes ApplicationDynamicWayPanel
   * @return void
   */
  public void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(700,246));
        this.add(getApplicationSplitPane(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
  }

/**
 * This method initializes westCardDisplay	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay	
 */
private RCardDisplay getWestCardDisplay() {
	if (westCardDisplay == null) {
		westCardDisplay = new RCardDisplay();
		westCardDisplay.setName("westCardDisplay");
		westCardDisplay.setPreferredSize(new com.ulcjava.base.application.util.Dimension(200,20));
		westCardDisplay.setMinimumSize(new com.ulcjava.base.application.util.Dimension(200,20));
		westCardDisplay.setMaximumSize(new com.ulcjava.base.application.util.Dimension(400,20));
		westCardDisplay.setDisplayId("workflowUiWestDisplay");
		westCardDisplay.setName("westCardDisplay");
	}
	return westCardDisplay;
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
		centerTabbedDisplay.setDisplayId("workflowUiCenterDisplay");
		centerTabbedDisplay.setName("centerTabbedDisplay");
	}
	return centerTabbedDisplay;
}

/**
 * This method initializes applicationSplitPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RSplitPane	
 */
private RSplitPane getApplicationSplitPane() {
	if (applicationSplitPane == null) {
		applicationSplitPane = new RSplitPane();
		applicationSplitPane.setName("applicationSplitPane");
		applicationSplitPane.setStyleProperties("{/dividerLocation \"0.275\"/weightY \"1\"/weightX \"1\"}");
		applicationSplitPane.setRightComponent(getTaskListBorderLayoutPane());
		applicationSplitPane.setLeftComponent(getWestCardDisplay());
		applicationSplitPane.setResizeWeight(0.0);
	}
	return applicationSplitPane;
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
		taskListBorderLayoutPane.setStyleProperties("{/insetsTop \"6\"/weightY \"1\"/weightX \"1\"}");
		taskListBorderLayoutPane.setPreferredSize(new com.ulcjava.base.application.util.Dimension(20,20));
		taskListBorderLayoutPane.setName("taskListBorderLayoutPane");
		taskListBorderLayoutPane.add(getCenterTabbedDisplay(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
	}
	return taskListBorderLayoutPane;
}

public void fire_loadRunningTaskDisplayList()
{
	try {
		getPanelAPI().callMethod("_loadRunningTaskDisplayList", new Object[0]);
		
	} catch (InvocationTargetException e) {
		e.printStackTrace();
	} catch (NoSuchMethodException e) {
		e.printStackTrace();
	}
}

}  //  @jve:decl-index=0:visual-constraint="10,10"