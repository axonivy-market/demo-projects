package ch.ivyteam.ivy.workflow.ui.UserMenu;

import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RCardPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPaneContainer;
import ch.ivyteam.ivy.workflow.ui.StartList.StartListPanel;
import ch.ivyteam.ivy.workflow.ui.cases.CaseSearch.CaseSearchPanel;
import ch.ivyteam.ivy.workflow.ui.task.TaskSearch.TaskSearchPanel;

import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.ULCContainer;
import com.ulcjava.base.application.border.ULCTitledBorder;
import com.ulcjava.base.application.util.Color;
import com.ulcjava.base.application.util.Font;

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
private RHyperlink settingsHyperlink = null;
private RHyperlink substitutesHyperlink = null;
private RHyperlink absenceHyperlink = null;
private RHyperlink userSecurityHyperlink = null;
private RHyperlink roleSecurityHyperlink = null;
private RHyperlink cleanHyperlink = null;
private RHyperlink calendarHyperlink = null;
private RLabel tasksLabel = null;
private RLabel casesLabel = null;
private RLabel administrationLabel = null;
private RLabel securityLabel = null;
private RLabel processesLabel = null;
@EmbeddedRichDialog(StartListPanel.class) private ULCContainer startList = null;
@EmbeddedRichDialog(CaseSearchPanel.class) private ULCContainer runningCaseSearchRDC = null;
@EmbeddedRichDialog(CaseSearchPanel.class) private ULCContainer finishedCaseSearchRDC = null;
@EmbeddedRichDialog(TaskSearchPanel.class) private ULCContainer finishedTaskSearchRDC = null;
private RLabel footerLabel = null;
/**
   * Create a new instance of UserMenuPanel
   */
  public UserMenuPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes UserMenuPanel
   * @return void
   */
  public void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(353,587));
        this.setBorder(BorderFactory.createTitledBorder(null, "Here the Title", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
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
		RFiller Filler3 = new RFiller();
		Filler3.setBorder(BorderFactory.createLineBorder(new Color(12, 74, 124), 1));
		Filler3.setStyleProperties("{/preferredSizeHeight \"1\"}");
		RFiller Filler2 = new RFiller();
		Filler2.setBorder(BorderFactory.createLineBorder(new Color(12, 74, 124), 1));
		Filler2.setStyleProperties("{/preferredSizeHeight \"1\"}");
		RFiller Filler1 = new RFiller();
		Filler1.setBorder(BorderFactory.createLineBorder(new Color(12, 74, 124), 1));
		Filler1.setStyleProperties("{/preferredSizeHeight \"1\"}");
		RFiller Filler = new RFiller();
		Filler.setStyleProperties("{/preferredSizeHeight \"1\"}");
		Filler.setBorder(BorderFactory.createLineBorder(new Color(12, 74, 124), 1));
		RFiller userMenuFiller111 = new RFiller();
		userMenuFiller111.setStyle("strutW25H10");
		userMenuFiller111.setStyleProperties("{/preferredSizeHeight \"1\"}");
		RFiller userMenuFiller11 = new RFiller();
		userMenuFiller11.setStyle("strutW25H10");
		userMenuFiller11.setStyleProperties("{/preferredSizeHeight \"1\"}");
		RFiller userMenuFiller1 = new RFiller();
		userMenuFiller1.setStyle("strutW25H10");
		userMenuFiller1.setStyleProperties("{/preferredSizeHeight \"1\"}");
		RFiller userMenuFiller = new RFiller();
		userMenuFiller.setStyle("strutW25H10");
		userMenuFiller.setBorder(null);
		userMenuFiller.setStyleProperties("{/preferredSizeHeight \"1\"}");
		userMenuGridBagLayoutPane = new RGridBagLayoutPane();
		userMenuGridBagLayoutPane.setName("userMenuGridBagLayoutPane");
		userMenuGridBagLayoutPane.setName("userMenuGridBagLayoutPane");
		userMenuGridBagLayoutPane.add(getRunningTasksHyperlink(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		userMenuGridBagLayoutPane.add(getFinishedTasksHyperlink(), new com.ulcjava.base.application.GridBagConstraints(1, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		userMenuGridBagLayoutPane.add(userMenuFiller, new com.ulcjava.base.application.GridBagConstraints(0, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		userMenuGridBagLayoutPane.add(getRunningCasesHyperlink(), new com.ulcjava.base.application.GridBagConstraints(1, 8, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		userMenuGridBagLayoutPane.add(getFinishedCasesHyperlink(), new com.ulcjava.base.application.GridBagConstraints(1, 9, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		userMenuGridBagLayoutPane.add(userMenuFiller1, new com.ulcjava.base.application.GridBagConstraints(0, 10, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		userMenuGridBagLayoutPane.add(getStartingProcessesHyperlink(), new com.ulcjava.base.application.GridBagConstraints(1, 13, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		userMenuGridBagLayoutPane.add(userMenuFiller11, new com.ulcjava.base.application.GridBagConstraints(0, 14, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		userMenuGridBagLayoutPane.add(getSettingsHyperlink(), new com.ulcjava.base.application.GridBagConstraints(1, 21, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		userMenuGridBagLayoutPane.add(getSubstitutesHyperlink(), new com.ulcjava.base.application.GridBagConstraints(1, 20, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		userMenuGridBagLayoutPane.add(getAbsenceHyperlink(), new com.ulcjava.base.application.GridBagConstraints(1, 19, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		userMenuGridBagLayoutPane.add(getUserSecurityHyperlink(), new com.ulcjava.base.application.GridBagConstraints(1, 31, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		userMenuGridBagLayoutPane.add(getRoleSecurityHyperlink(), new com.ulcjava.base.application.GridBagConstraints(1, 32, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		userMenuGridBagLayoutPane.add(getCleanHyperlink(), new com.ulcjava.base.application.GridBagConstraints(1, 25, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		userMenuGridBagLayoutPane.add(getCalendarHyperlink(), new com.ulcjava.base.application.GridBagConstraints(1, 23, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		userMenuGridBagLayoutPane.add(userMenuFiller111, new com.ulcjava.base.application.GridBagConstraints(0, 27, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		userMenuGridBagLayoutPane.add(getTasksLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		userMenuGridBagLayoutPane.add(getCasesLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 6, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		userMenuGridBagLayoutPane.add(getAdministrationLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 17, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		userMenuGridBagLayoutPane.add(getSecurityLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 29, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		userMenuGridBagLayoutPane.add(getProcessesLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 11, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		userMenuGridBagLayoutPane.add(Filler, new com.ulcjava.base.application.GridBagConstraints(0, 2, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		userMenuGridBagLayoutPane.add(Filler1, new com.ulcjava.base.application.GridBagConstraints(0, 7, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		userMenuGridBagLayoutPane.add(Filler2, new com.ulcjava.base.application.GridBagConstraints(0, 12, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		userMenuGridBagLayoutPane.add(Filler3, new com.ulcjava.base.application.GridBagConstraints(0, 18, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
		runningTasksHyperlink.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/runningTasksShortDesc\")%>");
		runningTasksHyperlink.setStyleProperties("{/weightX \"1\"}");
		runningTasksHyperlink.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/runningTasksLongDesc\")%>");
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
		finishedTasksHyperlink.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/finishedTasksShortDesc\")%>");
		finishedTasksHyperlink.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/finishedTasksLongDesc\")%>");
		finishedTasksHyperlink.setName("finishedTasksHyperlink");
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
		userMenuElementsCardPane.addCard("startList", getStartList());
		userMenuElementsCardPane.addCard("runningCaseSearchRDC", getRunningCaseSearchRDC());
		userMenuElementsCardPane.addCard("finishedCaseSearchRDC", getFinishedCaseSearchRDC());
		userMenuElementsCardPane.addCard("finishedTaskSearchRDC", getFinishedTaskSearchRDC());
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
		runningCasesHyperlink.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/runningCasesShortDesc\")%>");
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
		finishedCasesHyperlink.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/finishedCasesShortDesc\")%>");
		finishedCasesHyperlink.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/finishedCasesLongDesc\")%>");
		finishedCasesHyperlink.setName("finishedCasesHyperlink");
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
	}
	return startingProcessesHyperlink;
}

/**
 * This method initializes settingsHyperlink	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink	
 */
private RHyperlink getSettingsHyperlink() {
	if (settingsHyperlink == null) {
		settingsHyperlink = new RHyperlink();
		settingsHyperlink.setName("settingsHyperlink");
		settingsHyperlink.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/settingsLongDesc\")%>");
		settingsHyperlink.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/settingsShortDesc\")%>");
	}
	return settingsHyperlink;
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
	}
	return roleSecurityHyperlink;
}

/**
 * This method initializes cleanHyperlink	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink	
 */
private RHyperlink getCleanHyperlink() {
	if (cleanHyperlink == null) {
		cleanHyperlink = new RHyperlink();
		cleanHyperlink.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/cleanShortDesc\")%>");
		cleanHyperlink.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/cleanLongDesc\")%>");
		cleanHyperlink.setEnabled(false);
		cleanHyperlink.setVisible(false);
		cleanHyperlink.setName("cleanHyperlink");
	}
	return cleanHyperlink;
}

/**
 * This method initializes calendarHyperlink	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink	
 */
private RHyperlink getCalendarHyperlink() {
	if (calendarHyperlink == null) {
		calendarHyperlink = new RHyperlink();
		calendarHyperlink.setName("calendarHyperlink");
		calendarHyperlink.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/calendarShortDesc\")%>");
		calendarHyperlink.setEnabled(false);
		calendarHyperlink.setVisible(false);
		calendarHyperlink.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/calendarShortDesc\")%>");
	}
	return calendarHyperlink;
}

/**
 * This method initializes tasksLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getTasksLabel() {
	if (tasksLabel == null) {
		tasksLabel = new RLabel();
		tasksLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/tasks\")%>");
		tasksLabel.setStyle("smallTitle");
		tasksLabel.setBorder(null);
		tasksLabel.setStyleProperties("{/foregroundColor {/b \"124\"/r \"12\"/g \"74\"}}");
		tasksLabel.setName("tasksLabel");
	}
	return tasksLabel;
}

/**
 * This method initializes casesLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCasesLabel() {
	if (casesLabel == null) {
		casesLabel = new RLabel();
		casesLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/cases\")%>");
		casesLabel.setStyle("smallTitle");
		casesLabel.setBorder(null);
		casesLabel.setStyleProperties("{/foregroundColor {/b \"124\"/r \"12\"/g \"74\"}}");		
		casesLabel.setName("casesLabel");
	}
	return casesLabel;
}

/**
 * This method initializes administrationLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getAdministrationLabel() {
	if (administrationLabel == null) {
		administrationLabel = new RLabel();
		administrationLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/administration\")%>");
		administrationLabel.setStyle("smallTitle");
		administrationLabel.setBorder(null);
		administrationLabel.setStyleProperties("{/foregroundColor {/b \"124\"/r \"12\"/g \"74\"}}");
		administrationLabel.setName("administrationLabel");
	}
	return administrationLabel;
}

/**
 * This method initializes securityLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getSecurityLabel() {
	if (securityLabel == null) {
		securityLabel = new RLabel();
		securityLabel.setName("securityLabel");
		securityLabel.setVisible(false);
		securityLabel.setStyle("smallTitle");
		securityLabel.setBorder(null);
		securityLabel.setStyleProperties("{/foregroundColor {/b \"124\"/r \"12\"/g \"74\"}}");
		securityLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/security/plainStrings/security\")%>");
	}
	return securityLabel;
}

/**
 * This method initializes processesLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getProcessesLabel() {
	if (processesLabel == null) {
		processesLabel = new RLabel();
		processesLabel.setName("processesLabel");
		processesLabel.setStyle("smallTitle");
		processesLabel.setBorder(null);
		processesLabel.setStyleProperties("{/foregroundColor {/b \"124\"/r \"12\"/g \"74\"}}");
		processesLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/process/plainStrings/processes\")%>");
	}
	return processesLabel;
}

/**
 * This method initializes startList	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.StartList.StartListPanel	
 */
private ULCContainer getStartList()  {
	if (startList == null) {
		startList = RichDialogPanelFactory.create(StartListPanel.class);
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
}  //  @jve:decl-index=0:visual-constraint="10,10"