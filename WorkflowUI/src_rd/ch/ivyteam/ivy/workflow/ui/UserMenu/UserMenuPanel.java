package ch.ivyteam.ivy.workflow.ui.UserMenu;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RCardPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPaneContainer;
import ch.ivyteam.ivy.workflow.ui.cases.CaseSearch.CaseSearchPanel;
import ch.ivyteam.ivy.workflow.ui.common.Separator.SeparatorPanel;
import ch.ivyteam.ivy.workflow.ui.process.StartProcessDisplayList.StartProcessDisplayListPanel;
import ch.ivyteam.ivy.workflow.ui.task.TaskSearch.TaskSearchPanel;
import ch.ivyteam.ivy.workflow.ui.utils.UIHelper;

import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.util.Color;
import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import com.ulcjava.base.application.ULCContainer;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;

/**
 * RichDialog panel implementation for UserMenuPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class UserMenuPanel extends RichDialogBorderPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RGridBagLayoutPane userMenuGridBagLayoutPane = null;
private RHyperlink runningTasksHyperlink = null;
private RHyperlink finishedTasksHyperlink = null;
private RTaskPane userMenuTaskPane = null;
private RTaskPaneContainer userMenuTaskPaneContainer = null;
private RCardPane userMenuElementsCardPane = null;
private RBoxPane emptyBoxPane = null;
@EmbeddedRichDialog(TaskSearchPanel.class) private ULCContainer runningTaskSearchRDC = null;
private RHyperlink runningCasesHyperlink = null;
private RHyperlink finishedCasesHyperlink = null;
private RHyperlink startingProcessesHyperlink = null;
private RHyperlink substitutesHyperlink = null;
private RHyperlink absenceHyperlink = null;
private RHyperlink userSecurityHyperlink = null;
private RHyperlink roleSecurityHyperlink = null;
@EmbeddedRichDialog(StartProcessDisplayListPanel.class) private ULCContainer startList = null;
@EmbeddedRichDialog(CaseSearchPanel.class) private ULCContainer runningCaseSearchRDC = null;
@EmbeddedRichDialog(CaseSearchPanel.class) private ULCContainer finishedCaseSearchRDC = null;
@EmbeddedRichDialog(TaskSearchPanel.class) private ULCContainer finishedTaskSearchRDC = null;
private RLabel footerLabel = null;
@EmbeddedRichDialog(SeparatorPanel.class) private ULCContainer tasksSeparatorPanel = null;
@EmbeddedRichDialog(SeparatorPanel.class) private ULCContainer casesSeparatorPanel = null;
@EmbeddedRichDialog(SeparatorPanel.class) private ULCContainer processesSeparatorPanel = null;
@EmbeddedRichDialog(SeparatorPanel.class) private ULCContainer administrationSeparatorPanel = null;
@EmbeddedRichDialog(SeparatorPanel.class) private ULCContainer securitySeparatorPanel = null;
private RHyperlink managedTeamsHyperlink = null;
private RHyperlink emailNotificationHyperlink = null;
/**
   * Create a new instance of UserMenuPanel
   */
  public UserMenuPanel()
  {
    super();
    initialize();
    
    // prettify text fields
    UIHelper.prettifyComponent(this);    
  }
  
  /**
   * This method initializes UserMenuPanel
   * @return void
   */
  public void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(327,587));
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(337,567));
        this.add(getUserMenuTaskPaneContainer(), com.ulcjava.base.application.ULCBorderLayoutPane.NORTH);
        this.add(getUserMenuElementsCardPane(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
        this.add(getFooterLabel(), com.ulcjava.base.application.ULCBorderLayoutPane.SOUTH);
  }

/**
 * This method initializes userMenuGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getUserMenuGridBagLayoutPane() {
	if (userMenuGridBagLayoutPane == null) {
		RFiller verticalFiller = new RFiller();
		verticalFiller.setStyleProperties("{/fill \"VERTICAL\"/weightY \"1\"}");
		RFiller Filler = new RFiller();
		Filler.setStyleProperties("{/preferredSizeHeight \"1\"}");
		Filler.setStyle("separatorFiller");
		Filler.setBorder(BorderFactory.createLineBorder(new Color(102, 102, 255), 1));
		RFiller userMenuFiller111 = new RFiller();
		userMenuFiller111.setStyle("strutW25H10");
		RFiller userMenuFiller11 = new RFiller();
		userMenuFiller11.setStyle("strutW25H10");
		RFiller userMenuFiller1 = new RFiller();
		userMenuFiller1.setStyle("strutW25H10");
		RFiller userMenuFiller = new RFiller();
		userMenuFiller.setStyle("strutW25H10");
		userMenuFiller.setBorder(null);
		userMenuGridBagLayoutPane = new RGridBagLayoutPane();
		userMenuGridBagLayoutPane.setName("userMenuGridBagLayoutPane");
		userMenuGridBagLayoutPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightY \"0\"/weightX \"1\"}");
		userMenuGridBagLayoutPane.add(getRunningTasksHyperlink(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		userMenuGridBagLayoutPane.add(getFinishedTasksHyperlink(), new com.ulcjava.base.application.GridBagConstraints(1, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		userMenuGridBagLayoutPane.add(userMenuFiller, new com.ulcjava.base.application.GridBagConstraints(0, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		userMenuGridBagLayoutPane.add(getRunningCasesHyperlink(), new com.ulcjava.base.application.GridBagConstraints(1, 10, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		userMenuGridBagLayoutPane.add(getFinishedCasesHyperlink(), new com.ulcjava.base.application.GridBagConstraints(1, 11, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		userMenuGridBagLayoutPane.add(userMenuFiller1, new com.ulcjava.base.application.GridBagConstraints(0, 12, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		userMenuGridBagLayoutPane.add(getStartingProcessesHyperlink(), new com.ulcjava.base.application.GridBagConstraints(1, 17, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		userMenuGridBagLayoutPane.add(userMenuFiller11, new com.ulcjava.base.application.GridBagConstraints(0, 18, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		userMenuGridBagLayoutPane.add(getSubstitutesHyperlink(), new com.ulcjava.base.application.GridBagConstraints(1, 26, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		userMenuGridBagLayoutPane.add(getAbsenceHyperlink(), new com.ulcjava.base.application.GridBagConstraints(1, 25, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		userMenuGridBagLayoutPane.add(getUserSecurityHyperlink(), new com.ulcjava.base.application.GridBagConstraints(1, 40, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		userMenuGridBagLayoutPane.add(getRoleSecurityHyperlink(), new com.ulcjava.base.application.GridBagConstraints(1, 41, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		userMenuGridBagLayoutPane.add(userMenuFiller111, new com.ulcjava.base.application.GridBagConstraints(0, 35, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		userMenuGridBagLayoutPane.add(getTasksSeparatorPanel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		userMenuGridBagLayoutPane.add(getCasesSeparatorPanel(), new com.ulcjava.base.application.GridBagConstraints(0, 8, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		userMenuGridBagLayoutPane.add(getProcessesSeparatorPanel(), new com.ulcjava.base.application.GridBagConstraints(0, 16, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		userMenuGridBagLayoutPane.add(getAdministrationSeparatorPanel(), new com.ulcjava.base.application.GridBagConstraints(0, 24, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		userMenuGridBagLayoutPane.add(getSecuritySeparatorPanel(), new com.ulcjava.base.application.GridBagConstraints(0, 39, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		userMenuGridBagLayoutPane.add(getManagedTeamsHyperlink(), new com.ulcjava.base.application.GridBagConstraints(1, 28, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		userMenuGridBagLayoutPane.add(verticalFiller, new com.ulcjava.base.application.GridBagConstraints(0, 43, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		userMenuGridBagLayoutPane.add(getEmailNotificationHyperlink(), new com.ulcjava.base.application.GridBagConstraints(1, 27, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return userMenuGridBagLayoutPane;
}

/**
 * This method initializes runningTasksHyperlink	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink	
 */
private RHyperlink getRunningTasksHyperlink() {
	if (runningTasksHyperlink == null) {
		runningTasksHyperlink = new RHyperlink();
		runningTasksHyperlink.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/running\")%>");
		runningTasksHyperlink.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/runningTasksLongDesc\")%>");
		runningTasksHyperlink.setBorder(BorderFactory.createLineBorder(Color.red, 2));
		runningTasksHyperlink.setUnclickedColor(new Color(0, 0, 0));
		runningTasksHyperlink.setClickedColor(new Color(0, 0, 0));
		runningTasksHyperlink.setName("runningTasksHyperlink");
	}
	return runningTasksHyperlink;
}

/**
 * This method initializes finishedTasksHyperlink	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink	
 */
private RHyperlink getFinishedTasksHyperlink() {
	if (finishedTasksHyperlink == null) {
		finishedTasksHyperlink = new RHyperlink();
		finishedTasksHyperlink.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/finishedTasks\")%>");
		finishedTasksHyperlink.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/finishedTasksLongDesc\")%>");
		finishedTasksHyperlink.setBorder(BorderFactory.createLineBorder(Color.red, 2));
		finishedTasksHyperlink.setName("finishedTasksHyperlink");
		finishedTasksHyperlink.setUnclickedColor(new Color(0, 0, 0));
		finishedTasksHyperlink.setClickedColor(new Color(0, 0, 0));

	}
	return finishedTasksHyperlink;
}

/**
 * This method initializes userMenuTaskPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPane	
 */
private RTaskPane getUserMenuTaskPane() {
	if (userMenuTaskPane == null) {
		userMenuTaskPane = new RTaskPane();
		userMenuTaskPane.setName("userMenuTaskPane");
		userMenuTaskPane.setSpecial(true);
		userMenuTaskPane.setTitle("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/userMenuShortDesc\")%>");
		userMenuTaskPane.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/userMenuShortDesc\")%>");
		userMenuTaskPane.add(getUserMenuGridBagLayoutPane());
	}
	return userMenuTaskPane;
}

/**
 * This method initializes userMenuTaskPaneContainer	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPaneContainer	
 */
private RTaskPaneContainer getUserMenuTaskPaneContainer() {
	if (userMenuTaskPaneContainer == null) {
		userMenuTaskPaneContainer = new RTaskPaneContainer();
		userMenuTaskPaneContainer.setName("userMenuTaskPaneContainer");
		userMenuTaskPaneContainer.setName("userMenuTaskPaneContainer");
		userMenuTaskPaneContainer.add(getUserMenuTaskPane());
	}
	return userMenuTaskPaneContainer;
}

/**
 * This method initializes userMenuElementsCardPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RCardPane	
 */
private RCardPane getUserMenuElementsCardPane() {
	if (userMenuElementsCardPane == null) {
		userMenuElementsCardPane = new RCardPane();
		userMenuElementsCardPane.setName("userMenuElementsCardPane");
		userMenuElementsCardPane.setStyleProperties("{/hgap \"8\"}");
		userMenuElementsCardPane.setPreferredSize(new com.ulcjava.base.application.util.Dimension(100,100));
		userMenuElementsCardPane.addCard("emptyBoxPane", getEmptyBoxPane());
		userMenuElementsCardPane.addCard("runningTaskSearchRDC", getRunningTaskSearchRDC());
		userMenuElementsCardPane.addCard("finishedTaskSearchRDC", getFinishedTaskSearchRDC());		
		userMenuElementsCardPane.addCard("runningCaseSearchRDC", getRunningCaseSearchRDC());
		userMenuElementsCardPane.addCard("finishedCaseSearchRDC", getFinishedCaseSearchRDC());		
		userMenuElementsCardPane.addCard("startList", getStartList());
		
		// define the lazy loading
		userMenuElementsCardPane.setPreloadAt("runningTaskSearchRDC", false);
		userMenuElementsCardPane.setPreloadAt("finishedTaskSearchRDC", false);		
		userMenuElementsCardPane.setPreloadAt("runningCaseSearchRDC", false);
		userMenuElementsCardPane.setPreloadAt("finishedCaseSearchRDC", false);
		userMenuElementsCardPane.setPreloadAt("startList", false);
		
	}
	return userMenuElementsCardPane;
}

/**
 * This method initializes emptyBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getEmptyBoxPane() {
	if (emptyBoxPane == null) {
		emptyBoxPane = new RBoxPane();
		emptyBoxPane.setName("emptyBoxPane");
	}
	return emptyBoxPane;
}

/**
 * This method initializes runningTaskSearchRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.task.TaskSearch.TaskSearchPanel	
 */
private ULCContainer getRunningTaskSearchRDC()  {
	if (runningTaskSearchRDC == null) {
		runningTaskSearchRDC = RichDialogPanelFactory.create(TaskSearchPanel.class);
		runningTaskSearchRDC.setName("runningTaskSearchRDC");
	}
	return runningTaskSearchRDC;
}

/**
 * This method initializes runningCasesHyperlink	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink	
 */
private RHyperlink getRunningCasesHyperlink() {
	if (runningCasesHyperlink == null) {
		runningCasesHyperlink = new RHyperlink();
		runningCasesHyperlink.setName("runningCasesHyperlink");
		runningCasesHyperlink.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/runningCasesLongDesc\")%>");
		runningCasesHyperlink.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/running\")%>");
		runningCasesHyperlink.setUnclickedColor(new Color(0, 0, 0));
		runningCasesHyperlink.setClickedColor(new Color(0, 0, 0));
		
	}
	return runningCasesHyperlink;
}

/**
 * This method initializes finishedCasesHyperlink	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink	
 */
private RHyperlink getFinishedCasesHyperlink() {
	if (finishedCasesHyperlink == null) {
		finishedCasesHyperlink = new RHyperlink();
		finishedCasesHyperlink.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/finishedCases\")%>");
		finishedCasesHyperlink.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/finishedCasesLongDesc\")%>");
		finishedCasesHyperlink.setName("finishedCasesHyperlink");
		finishedCasesHyperlink.setUnclickedColor(new Color(0, 0, 0));
		finishedCasesHyperlink.setClickedColor(new Color(0, 0, 0));
	}
	return finishedCasesHyperlink;
}

/**
 * This method initializes startingProcessesHyperlink	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink	
 */
private RHyperlink getStartingProcessesHyperlink() {
	if (startingProcessesHyperlink == null) {
		startingProcessesHyperlink = new RHyperlink();
		startingProcessesHyperlink.setName("startingProcessesHyperlink");
		startingProcessesHyperlink.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/process/plainStrings/startableProcessesLongDesc\")%>\n");
		startingProcessesHyperlink.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/process/plainStrings/startableProcessesShortDesc\")%>");
		startingProcessesHyperlink.setUnclickedColor(new Color(0, 0, 0));
		startingProcessesHyperlink.setClickedColor(new Color(0, 0, 0));
	}
	return startingProcessesHyperlink;
}

/**
 * This method initializes substitutesHyperlink	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink	
 */
private RHyperlink getSubstitutesHyperlink() {
	if (substitutesHyperlink == null) {
		substitutesHyperlink = new RHyperlink();
		substitutesHyperlink.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/substitutesShortDesc\")%>");
		substitutesHyperlink.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/substitutesLongDesc\")%>");
		substitutesHyperlink.setName("substitutesHyperlink");
		substitutesHyperlink.setUnclickedColor(new Color(0, 0, 0));
		substitutesHyperlink.setClickedColor(new Color(0, 0, 0));
	}
	return substitutesHyperlink;
}

/**
 * This method initializes absenceHyperlink	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink	
 */
private RHyperlink getAbsenceHyperlink() {
	if (absenceHyperlink == null) {
		absenceHyperlink = new RHyperlink();
		absenceHyperlink.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/absenceShortDesc\")%>");
		absenceHyperlink.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/absenceLongDesc\")%>");
		absenceHyperlink.setName("absenceHyperlink");
		absenceHyperlink.setUnclickedColor(new Color(0, 0, 0));
		absenceHyperlink.setClickedColor(new Color(0, 0, 0));
	}
	return absenceHyperlink;
}

/**
 * This method initializes userSecurityHyperlink	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink	
 */
private RHyperlink getUserSecurityHyperlink() {
	if (userSecurityHyperlink == null) {
		userSecurityHyperlink = new RHyperlink();
		userSecurityHyperlink.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/security/plainStrings/usersPermissionsShortDesc\")%>\n\n");
		userSecurityHyperlink.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/security/plainStrings/usersPermissionsShortDesc\")%>\n");
		userSecurityHyperlink.setEnabled(true);
		userSecurityHyperlink.setVisible(false);
		userSecurityHyperlink.setName("userSecurityHyperlink");
		userSecurityHyperlink.setUnclickedColor(new Color(0, 0, 0));
		userSecurityHyperlink.setClickedColor(new Color(0, 0, 0));
	}
	return userSecurityHyperlink;
}

/**
 * This method initializes roleSecurityHyperlink	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink	
 */
private RHyperlink getRoleSecurityHyperlink() {
	if (roleSecurityHyperlink == null) {
		roleSecurityHyperlink = new RHyperlink();
		roleSecurityHyperlink.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/security/plainStrings/rolesPermissionsShortDesc\")%>");
		roleSecurityHyperlink.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/security/plainStrings/rolesPermissionsShortDesc\")%>");
		roleSecurityHyperlink.setEnabled(true);
		roleSecurityHyperlink.setVisible(false);
		roleSecurityHyperlink.setName("roleSecurityHyperlink");
		roleSecurityHyperlink.setUnclickedColor(new Color(0, 0, 0));
		roleSecurityHyperlink.setClickedColor(new Color(0, 0, 0));
	}
	return roleSecurityHyperlink;
}

/**
 * This method initializes startList	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.StartList.StartListPanel	
 */
private ULCContainer getStartList()  {
	if (startList == null) {
		startList = RichDialogPanelFactory.create(StartProcessDisplayListPanel.class);
		startList.setName("startList");
	}
	return startList;
}

/**
 * This method initializes runningCaseSearchRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.cases.CaseSearch.CaseSearchPanel	
 */
private ULCContainer getRunningCaseSearchRDC()  {
	if (runningCaseSearchRDC == null) {
		runningCaseSearchRDC = RichDialogPanelFactory.create(CaseSearchPanel.class);
		runningCaseSearchRDC.setName("runningCaseSearchRDC");
	}
	return runningCaseSearchRDC;
}

/**
 * This method initializes finishedCaseSearchRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.cases.CaseSearch.CaseSearchPanel	
 */
private ULCContainer getFinishedCaseSearchRDC()  {
	if (finishedCaseSearchRDC == null) {
		finishedCaseSearchRDC = RichDialogPanelFactory.create(CaseSearchPanel.class);
		finishedCaseSearchRDC.setName("finishedCaseSearchRDC");
	}
	return finishedCaseSearchRDC;
}

/**
 * This method initializes finishedTaskSearchRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.task.TaskSearch.TaskSearchPanel	
 */
private ULCContainer getFinishedTaskSearchRDC()  {
	if (finishedTaskSearchRDC == null) {
		finishedTaskSearchRDC = RichDialogPanelFactory.create(TaskSearchPanel.class);
		finishedTaskSearchRDC.setName("finishedTaskSearchRDC");
	}
	return finishedTaskSearchRDC;
}

/**
 * This method initializes footerLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getFooterLabel() {
	if (footerLabel == null) {
		footerLabel = new RLabel();
		footerLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/lightBulbOn24\")%>");
		footerLabel.setName("footerLabel");
	}
	return footerLabel;
}

/**
 * This method initializes tasksSeparatorPanel	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.common.Separator.SeparatorPanel	
 */
private ULCContainer getTasksSeparatorPanel()  {
	if (tasksSeparatorPanel == null) {
		tasksSeparatorPanel = RichDialogPanelFactory.create(SeparatorPanel.class);
		tasksSeparatorPanel.setName("tasksSeparatorPanel");
		tasksSeparatorPanel.setStyleProperties("{/weightX \"1\"}");
		tasksSeparatorPanel.setToolTipText("<%= ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/tasks\") %>");
	}
	return tasksSeparatorPanel;
}

/**
 * This method initializes casesSeparatorPanel	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.common.Separator.SeparatorPanel	
 */
private ULCContainer getCasesSeparatorPanel()  {
	if (casesSeparatorPanel == null) {
		casesSeparatorPanel = RichDialogPanelFactory.create(SeparatorPanel.class);
		casesSeparatorPanel.setName("casesSeparatorPanel");
	}
	return casesSeparatorPanel;
}

/**
 * This method initializes processesSeparatorPanel	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.common.Separator.SeparatorPanel	
 */
private ULCContainer getProcessesSeparatorPanel()  {
	if (processesSeparatorPanel == null) {
		processesSeparatorPanel = RichDialogPanelFactory.create(SeparatorPanel.class);
		processesSeparatorPanel.setName("processesSeparatorPanel");
	}
	return processesSeparatorPanel;
}

/**
 * This method initializes administrationSeparatorPanel	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.common.Separator.SeparatorPanel	
 */
private ULCContainer getAdministrationSeparatorPanel()  {
	if (administrationSeparatorPanel == null) {
		administrationSeparatorPanel = RichDialogPanelFactory.create(SeparatorPanel.class);
		administrationSeparatorPanel.setName("administrationSeparatorPanel");
	}
	return administrationSeparatorPanel;
}

/**
 * This method initializes securitySeparatorPanel	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.common.Separator.SeparatorPanel	
 */
private ULCContainer getSecuritySeparatorPanel()  {
	if (securitySeparatorPanel == null) {
		securitySeparatorPanel = RichDialogPanelFactory.create(SeparatorPanel.class);
		securitySeparatorPanel.setName("securitySeparatorPanel");
	}
	return securitySeparatorPanel;
}

/**
 * This method initializes managedTeamsHyperlink	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink	
 */
private RHyperlink getManagedTeamsHyperlink() {
	if (managedTeamsHyperlink == null) {
		managedTeamsHyperlink = new RHyperlink();
		managedTeamsHyperlink.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/managedTeamsShortDesc\")%>");
		managedTeamsHyperlink.setName("managedTeamsHyperlink");
		managedTeamsHyperlink.setUnclickedColor(new Color(0, 0, 0));
		managedTeamsHyperlink.setClickedColor(new Color(0, 0, 0));
	}
	return managedTeamsHyperlink;
}

/**
 * This method initializes emailNotificationHyperlink	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink	
 */
private RHyperlink getEmailNotificationHyperlink() {
	if (emailNotificationHyperlink == null) {
		emailNotificationHyperlink = new RHyperlink();
		emailNotificationHyperlink.setName("emailNotificationHyperlink");
		emailNotificationHyperlink.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/emailNotification/plainStrings/emailNotificationShortDesc\")%>");
		emailNotificationHyperlink.setClickedColor(new Color(0, 0, 0));
		emailNotificationHyperlink.setUnclickedColor(new Color(0, 0, 0));
		emailNotificationHyperlink.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/emailNotification/plainStrings/emailNotificationLongDesc\")%>");
	}
	return emailNotificationHyperlink;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"