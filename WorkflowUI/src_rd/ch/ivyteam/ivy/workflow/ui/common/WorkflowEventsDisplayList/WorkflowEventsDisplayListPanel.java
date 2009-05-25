package ch.ivyteam.ivy.workflow.ui.common.WorkflowEventsDisplayList;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RTable;
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
private RTable caseWorkflowEventsTable = null;
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
private RTable getCaseWorkflowEventsTable() {
	if (caseWorkflowEventsTable == null) {
		caseWorkflowEventsTable = new RTable();
		caseWorkflowEventsTable.setName("caseWorkflowEventsTable");
		caseWorkflowEventsTable.setModelConfiguration("{/showTableheader true /autoTableheader false /showtooltip true /showIcons true /version \"2.0\"/columns {{/result \"result=(entry.getEventTimestamp() is initialized? new DateTime(entry.getEventTimestamp()).format(\\\"medium\\\"): \\\"n/a\\\")\"/version \"2.0\"/tooltip \"result=(entry.getEventTimestamp() is initialized? new DateTime(entry.getEventTimestamp()).format(\\\"medium\\\"): \\\"n/a\\\")\"/icon \"\"/header \"Event date\"/field \"\"/columnWidth \"100\"}{/result \"result=entry.getEventKind().name()\"/version \"2.0\"/tooltip \"result=entry.getEventKind().name()\"/icon \"\"/header \"Event kind\"/field \"\"/columnWidth \"250\"}{/result \"result=entry.getUserName()\"/version \"2.0\"/tooltip \"result=entry.getUserName()\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/security/images/user16\\\"\"/header \"Resp. user\"/field \"\"/columnWidth \"150\"}{/result \"result=(entry.isTaskEvent()?\\r\\nentry.getTask().getName() + \\\", Id \\\" + entry.getTask().getIdentifier(): \\r\\n\\\"Event does not belong to the task.\\\")\"/version \"2.0\"/tooltip \"result=(entry.isTaskEvent()?\\r\\nentry.getTask().getName() + \\\", Id \\\" + entry.getTask().getIdentifier(): \\r\\n\\\"Event does not belong to the task.\\\")\"/icon \"\"/header \"Event on the task\"/field \"\"/columnWidth \"200\"}{/result \"result=entry.getAdditionalInfo()\"/version \"2.0\"/tooltip \"result=entry.getAdditionalInfo()\"/icon \"\"/header \"Add. information\"/field \"\"}}}");
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
		caseWorkflowEventsScrollPane.setViewPortView(getCaseWorkflowEventsTable());
	}
	return caseWorkflowEventsScrollPane;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"