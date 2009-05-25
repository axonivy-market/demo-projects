package ch.ivyteam.ivy.workflow.ui.Application;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBorderLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RSplitPane;
import ch.ivyteam.ivy.richdialog.widgets.displays.RCardDisplay;
import ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay;

import com.ulcjava.base.application.ULCFlowLayoutPane;

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
private RFlowLayoutPane actionsFlowLayoutPane = null;
private RButton closeButton = null;
private RSplitPane taskSearchAndTaskListSplitPane = null;
private RBorderLayoutPane taskListBorderLayoutPane = null;
private RLabel headerLabel = null;
private RBoxPane headerBoxPane = null;
private RLabel currentlyAuthentificatedUserLabel = null;
private RLabel aLabel = null;
private RHyperlink logoutHyperlink = null;
private RLabel welcomeLabel = null;
private RLabel environmentLabel = null;
private RLabel onLabel = null;
private RHyperlink helpHyperlink = null;
private RLabel aLabel1 = null;
/**
   * Create a new instance of ApplicationDynamicWayPanel
   */
  public ApplicationPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes ApplicationDynamicWayPanel
   * @return void
   */
  public void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(700,246));
        this.add(getTaskSearchAndTaskListSplitPane(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
        this.add(getHeaderBoxPane(), com.ulcjava.base.application.ULCBorderLayoutPane.NORTH);
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
 * This method initializes actionsFlowLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane	
 */
private RFlowLayoutPane getActionsFlowLayoutPane() {
	if (actionsFlowLayoutPane == null) {
		actionsFlowLayoutPane = new RFlowLayoutPane();
		actionsFlowLayoutPane.setName("actionsFlowLayoutPane");
		actionsFlowLayoutPane.setPreferredSize(null);
		actionsFlowLayoutPane.setAlignment(ULCFlowLayoutPane.RIGHT);
		actionsFlowLayoutPane.add(getCloseButton());
		actionsFlowLayoutPane.setName("actionsFlowLayoutPane");
	}
	return actionsFlowLayoutPane;
}

/**
 * This method initializes closeButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getCloseButton() {
	if (closeButton == null) {
		closeButton = new RButton();
		closeButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/closeLongDesc\")%>");
		closeButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/delete16\")%>");
		closeButton.setStyleProperties("{/anchor \"CENTER\"/insetsRight \"2\"}");
		closeButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/close\")%>");
		closeButton.setName("closeButton");
	}
	return closeButton;
}

/**
 * This method initializes taskSearchAndTaskListSplitPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RSplitPane	
 */
private RSplitPane getTaskSearchAndTaskListSplitPane() {
	if (taskSearchAndTaskListSplitPane == null) {
		taskSearchAndTaskListSplitPane = new RSplitPane();
		taskSearchAndTaskListSplitPane.setName("taskSearchAndTaskListSplitPane");
		taskSearchAndTaskListSplitPane.setStyleProperties("{/dividerLocation \"0.3\"/weightY \"1\"/weightX \"1\"}");
		taskSearchAndTaskListSplitPane.setDividerLocation(358);
		taskSearchAndTaskListSplitPane.setName("taskSearchAndTaskListSplitPane");
		taskSearchAndTaskListSplitPane.setRightComponent(getTaskListBorderLayoutPane());
		taskSearchAndTaskListSplitPane.setLeftComponent(getWestCardDisplay());
	}
	return taskSearchAndTaskListSplitPane;
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
		taskListBorderLayoutPane.setName("taskListBorderLayoutPane");
		taskListBorderLayoutPane.add(getActionsFlowLayoutPane(), com.ulcjava.base.application.ULCBorderLayoutPane.SOUTH);
		taskListBorderLayoutPane.add(getCenterTabbedDisplay(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
	}
	return taskListBorderLayoutPane;
}

/**
 * This method initializes headerLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getHeaderLabel() {
	if (headerLabel == null) {
		headerLabel = new RLabel();
		headerLabel.setIconUri("<%= ivy.cms.cr(\"/Images/xpertLine\") %>");
		headerLabel.setName("headerLabel");
	}
	return headerLabel;
}

/**
 * This method initializes headerBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getHeaderBoxPane() {
	if (headerBoxPane == null) {
		RFiller headerFiller = new RFiller();
		headerFiller.setStyleProperties("{/weightX \"1\"}");
		headerBoxPane = new RBoxPane();
		headerBoxPane.setName("headerBoxPane");
		headerBoxPane.setStyleProperties("{/insetsTop \"6\"/insetsBottom \"6\"}");
		headerBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getHeaderLabel());
		headerBoxPane.set(3, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getCurrentlyAuthentificatedUserLabel());
		headerBoxPane.set(7, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getALabel());
		headerBoxPane.set(8, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getLogoutHyperlink());
		headerBoxPane.set(1, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, headerFiller);
		headerBoxPane.set(2, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getWelcomeLabel());
		headerBoxPane.set(5, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getEnvironmentLabel());
		headerBoxPane.set(4, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getOnLabel());
		headerBoxPane.set(10, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getHelpHyperlink());
		headerBoxPane.set(9, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getALabel1());
	}
	return headerBoxPane;
}

/**
 * This method initializes currentlyAuthentificatedUserLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCurrentlyAuthentificatedUserLabel() {
	if (currentlyAuthentificatedUserLabel == null) {
		currentlyAuthentificatedUserLabel = new RLabel();
		currentlyAuthentificatedUserLabel.setText("<html><b><%= ivy.session.getSessionUserName() %> </b>");
		currentlyAuthentificatedUserLabel.setStyleProperties("{/anchor \"CENTER\"}");
		currentlyAuthentificatedUserLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/security/images/user24\")%>");
		currentlyAuthentificatedUserLabel.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/security/plainStrings/yourSessionUserNameIs\")%> <%= ivy.session.getSessionUserName() %>");
		currentlyAuthentificatedUserLabel.setName("currentlyAuthentificatedUserLabel");
	}
	return currentlyAuthentificatedUserLabel;
}

/**
 * This method initializes aLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getALabel() {
	if (aLabel == null) {
		aLabel = new RLabel();
		aLabel.setText(" | ");
		aLabel.setStyleProperties("{/anchor \"CENTER\"/insetsRight \"5\"/insetsLeft \"5\"}");
		aLabel.setName("aLabel");
	}
	return aLabel;
}

/**
 * This method initializes logoutHyperlink	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink	
 */
private RHyperlink getLogoutHyperlink() {
	if (logoutHyperlink == null) {
		logoutHyperlink = new RHyperlink();
		logoutHyperlink.setText(" <%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/logoutShortDesc\")%> ");
		logoutHyperlink.setStyleProperties("{/anchor \"CENTER\"/insetsTop \"0\"/insetsLeft \"0\"}");
		logoutHyperlink.setName("logoutHyperlink");
		logoutHyperlink.setToolTipText(" <%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/logoutLongDesc\")%> ");
		logoutHyperlink.setName("logoutHyperlink");
	}
	return logoutHyperlink;
}

/**
 * This method initializes welcomeLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getWelcomeLabel() {
	if (welcomeLabel == null) {
		welcomeLabel = new RLabel();
		welcomeLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/welcome\")%>");
		welcomeLabel.setStyleProperties("{/anchor \"CENTER\"}");
		welcomeLabel.setName("welcomeLabel");
	}
	return welcomeLabel;
}

/**
 * This method initializes environmentLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getEnvironmentLabel() {
	if (environmentLabel == null) {
		environmentLabel = new RLabel();
		environmentLabel.setText("<%= ivy.request.getApplication().getName() %>");
		environmentLabel.setStyleProperties("{/anchor \"CENTER\"}");
		environmentLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/security/images/environment24\")%>");
		environmentLabel.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/security/plainStrings/currentEnvironment\")%> <%= ivy.request.getApplication().getName() %>");
		environmentLabel.setName("environmentLabel");
	}
	return environmentLabel;
}

/**
 * This method initializes onLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getOnLabel() {
	if (onLabel == null) {
		onLabel = new RLabel();
		onLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/security/plainStrings/on\")%>");
		onLabel.setStyleProperties("{/anchor \"CENTER\"}");
		onLabel.setName("onLabel");
	}
	return onLabel;
}

/**
 * This method initializes helpHyperlink	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink	
 */
private RHyperlink getHelpHyperlink() {
	if (helpHyperlink == null) {
		helpHyperlink = new RHyperlink();
		helpHyperlink.setStyleProperties("{/anchor \"CENTER\"/insetsTop \"0\"/insetsRight \"5\"/insetsLeft \"5\"}");
		helpHyperlink.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/help/images/help24\")%>");
		helpHyperlink.setRolloverIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/help/images/help32\")%>");
		helpHyperlink.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/help/plainStrings/downloadAndOpenUserGuide\")%>");
		helpHyperlink.setName("helpHyperlink");
	}
	return helpHyperlink;
}

/**
 * This method initializes aLabel1	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getALabel1() {
	if (aLabel1 == null) {
		aLabel1 = new RLabel();
		aLabel1.setName("aLabel1");
		aLabel1.setStyleProperties("{/anchor \"CENTER\"/insetsRight \"5\"/insetsLeft \"5\"}");
		aLabel1.setText(" | ");
	}
	return aLabel1;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"