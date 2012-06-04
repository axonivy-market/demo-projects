package ch.ivyteam.ivy.workflow.ui.Application;

import java.lang.reflect.InvocationTargetException;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBorderLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RSplitPane;
import ch.ivyteam.ivy.richdialog.widgets.displays.RCardDisplay;
import ch.ivyteam.ivy.richdialog.widgets.displays.RCloseableTabbedDisplay;
import ch.ivyteam.ivy.workflow.ui.utils.UIHelper;
import com.ulcjava.base.application.ULCTabbedPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.displays.RListDisplay;
import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.util.Color;

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
private RCardDisplay westTopCardDisplay = null;
private RCloseableTabbedDisplay centerTabbedDisplay = null;
private RSplitPane applicationSplitPane = null;
private RBorderLayoutPane taskListBorderLayoutPane = null;
private RGridBagLayoutPane westGridBagLayoutPane = null;
private RCardDisplay westBottomCardDisplay = null;
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
 * This method initializes westTopCardDisplay	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay	
 */
private RCardDisplay getWestTopCardDisplay() {
	if (westTopCardDisplay == null) {
		westTopCardDisplay = new RCardDisplay();
		westTopCardDisplay.setName("westTopCardDisplay");
		westTopCardDisplay.setMinimumSize(new com.ulcjava.base.application.util.Dimension(200,20));
		westTopCardDisplay.setMaximumSize(new com.ulcjava.base.application.util.Dimension(400,20));
		westTopCardDisplay.setStyleProperties("{/weightY \"1\"/weightX \"1\"}");
		westTopCardDisplay.setDisplayId("workflowUiWestTopDisplay");
	}
	return westTopCardDisplay;
}

/**
 * This method initializes centerTabbedDisplay	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay	
 */
private RCloseableTabbedDisplay getCenterTabbedDisplay() {
	if (centerTabbedDisplay == null) {
		centerTabbedDisplay = new RCloseableTabbedDisplay();
		centerTabbedDisplay.setName("centerTabbedDisplay");
		centerTabbedDisplay.setDisplayId("workflowUiCenterDisplay");
		centerTabbedDisplay.setTabLayoutPolicy(ULCTabbedPane.SCROLL_TAB_LAYOUT);
		centerTabbedDisplay.setName("centerTabbedDisplay");
		centerTabbedDisplay.setTabCloseIconUri("/ch/ivyteam/ivy/workflow/ui/common/images/close16");
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
		applicationSplitPane.setLeftComponent(getWestGridBagLayoutPane());
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

/**
 * This method initializes westGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getWestGridBagLayoutPane() {
	if (westGridBagLayoutPane == null) {
		westGridBagLayoutPane = new RGridBagLayoutPane();
		westGridBagLayoutPane.setName("westGridBagLayoutPane");
		westGridBagLayoutPane.add(getWestTopCardDisplay(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		westGridBagLayoutPane.add(getWestBottomCardDisplay(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return westGridBagLayoutPane;
}

/**
 * This method initializes westBottonCardDisplay	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.displays.RCardDisplay	
 */
private RCardDisplay getWestBottomCardDisplay() {
	if (westBottomCardDisplay == null) {
		westBottomCardDisplay = new RCardDisplay();
		westBottomCardDisplay.setName("westBottomCardDisplay");
		westBottomCardDisplay.setDisplayId("workflowUiWestBottomDisplay");
		westBottomCardDisplay.setStyleProperties("{/weightY \"0.33\"/weightX \"1\"}");
	}
	return westBottomCardDisplay;
}

}  //  @jve:decl-index=0:visual-constraint="10,10"