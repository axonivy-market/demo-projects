package ch.ivyteam.ivy.workflow.ui.cases.WorkflowEventsDisplayList;

import ch.ivyteam.ivy.addons.widgets.RTableWithExcelExport;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;

/**
 * RichDialog panel implementation for CaseWorkflowEventsDisplayListPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class WorkflowEventsDisplayListPanel extends RichDialogBorderPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RLabel footerLabel = null;
private RTableWithExcelExport caseWorkflowEventsTable = null;
private RScrollPane caseWorkflowEventsScrollPane = null;
/**
   * Create a new instance of CaseWorkflowEventsDisplayListPanel
   */
  public WorkflowEventsDisplayListPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes CaseWorkflowEventsDisplayListPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(609,452));
        this.add(getFooterLabel(), com.ulcjava.base.application.ULCBorderLayoutPane.SOUTH);
        this.add(getCaseWorkflowEventsScrollPane(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
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
 * This method initializes caseWorkflowEventsTable	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTable	
 */
private RTableWithExcelExport getCaseWorkflowEventsTable() {
	if (caseWorkflowEventsTable == null) {
		caseWorkflowEventsTable = new RTableWithExcelExport();
		caseWorkflowEventsTable.setName("caseWorkflowEventsTable");
		caseWorkflowEventsTable.setModelConfiguration("{/showTableheader true /autoTableheader false /showtooltip true /showIcons true /version \"3.0\"/columns {{/result \"result=(entry.getEventTimestamp() is initialized? entry.getEventTimestamp().format(ivy.var.xivy_workflow_ui_restricted_dateTimeFormatPattern): \\\"n/a\\\")\"/version \"3.0\"/tooltip \"result=(entry.getEventTimestamp() is initialized? entry.getEventTimestamp().format(\\\"dd.MM.yyyy HH:mm\\\"): \\\"n/a\\\")\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/workflowEvents/plainStrings/eventDate\\\")\"/field \"\"/columnWidth \"100\"}{/result \"result=entry.getEventKind().name()\"/version \"3.0\"/tooltip \"result=entry.getEventKind().name()\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/workflowEvents/plainStrings/eventKind\\\")\"/field \"\"/columnWidth \"250\"}{/result \"result=entry.getUserName()\"/version \"3.0\"/tooltip \"result=entry.getUserName()\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/security/images/user16\\\"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/workflowEvents/plainStrings/eventUser\\\")\"/field \"\"/columnWidth \"100\"}{/result \"result=(entry.isTaskEvent()? \\\"\\\" + entry.getTask().getIdentifier() + \\\" - \\\" + entry.getTask().getName() : \\\"\\\")\"/version \"3.0\"/tooltip \"result=(entry.isTaskEvent()?\\r\\nentry.getTask().getName() + \\\", Id \\\" + entry.getTask().getIdentifier(): \\r\\n\\\"Event does not belong to the task.\\\")\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/workflowEvents/plainStrings/taskEvent\\\")\"/field \"\"/columnWidth \"350\"}{/result \"result=entry.getAdditionalInfo()\"/version \"3.0\"/tooltip \"result=entry.getAdditionalInfo()\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/workflowEvents/plainStrings/additionalInformation\\\")\"/field \"\"/columnWidth \"300\"}}}");
		caseWorkflowEventsTable.setRowHeight(20);
		caseWorkflowEventsTable.setSortable(true);
	}
	return caseWorkflowEventsTable;
}

/**
 * This method initializes caseWorkflowEventsScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getCaseWorkflowEventsScrollPane() {
	if (caseWorkflowEventsScrollPane == null) {
		caseWorkflowEventsScrollPane = new RScrollPane();
		caseWorkflowEventsScrollPane.setName("caseWorkflowEventsScrollPane");
		caseWorkflowEventsScrollPane.setStyleProperties("{/horizontalScrollBarPolicy \"AS_NEEDED\"}");
		caseWorkflowEventsScrollPane.setViewPortView(getCaseWorkflowEventsTable());
	}
	return caseWorkflowEventsScrollPane;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"