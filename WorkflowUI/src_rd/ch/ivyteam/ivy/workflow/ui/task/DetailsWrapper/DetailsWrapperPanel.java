package ch.ivyteam.ivy.workflow.ui.task.DetailsWrapper;

import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RTree;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBorderLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RCardPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.workflow.ui.cases.CaseDetailsDisplay.CaseDetailsDisplayPanel;
import ch.ivyteam.ivy.workflow.ui.cases.WorkflowEventsDisplayList.WorkflowEventsDisplayListPanel;
import ch.ivyteam.ivy.workflow.ui.task.TaskDetailsDisplay.TaskDetailsDisplayPanel;
import ch.ivyteam.ivy.workflow.ui.task.ie.IntermediateEventDisplay.IntermediateEventDisplayPanel;
import ch.ivyteam.ivy.workflow.ui.utils.UIHelper;

import com.ulcjava.base.application.ULCContainer;

/**
 * RichDialog panel implementation for TaskInformationDisplayPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class DetailsWrapperPanel extends RichDialogBorderPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
@EmbeddedRichDialog(WorkflowEventsDisplayListPanel.class) private ULCContainer workflowEventsDisplayListRDC = null;
@EmbeddedRichDialog(CaseDetailsDisplayPanel.class) private ULCContainer caseDetailsDisplayRDC = null;
private RBorderLayoutPane detailsBorderLayoutPane = null;
private RBoxPane detailsActionsBoxPane = null;
private RCardPane detailsCardPane = null;
@EmbeddedRichDialog(TaskDetailsDisplayPanel.class) private ULCContainer taskDetailsDisplayRDC = null;
private RScrollPane detailsScrollPane = null;
private RScrollPane detailTreeScrollPane = null;
private RTree detailTree = null;
@EmbeddedRichDialog(IntermediateEventDisplayPanel.class) private ULCContainer intermediateEventDisplayRDC = null;
/**
   * Create a new instance of TaskInformationDisplayPanel
   */
  public DetailsWrapperPanel()
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
        this.add(getDetailsBorderLayoutPane(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(730,809));
  }

/**
 * This method initializes workflowEventsDisplayListRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.common.WorkflowEventsDisplayList.WorkflowEventsDisplayListPanel	
 */
private ULCContainer getWorkflowEventsDisplayListRDC()  {
	if (workflowEventsDisplayListRDC == null) {
		workflowEventsDisplayListRDC = RichDialogPanelFactory.create(WorkflowEventsDisplayListPanel.class);
		workflowEventsDisplayListRDC.setName("workflowEventsDisplayListRDC");
	}
	return workflowEventsDisplayListRDC;
}

/**
 * This method initializes caseDetailsDisplayRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.cases.CaseDetailsDisplay.CaseDetailsDisplayPanel	
 */
private ULCContainer getCaseDetailsDisplayRDC()  {
	if (caseDetailsDisplayRDC == null) {
		caseDetailsDisplayRDC = RichDialogPanelFactory.create(CaseDetailsDisplayPanel.class);
		caseDetailsDisplayRDC.setName("caseDetailsDisplayRDC");
	}
	return caseDetailsDisplayRDC;
}

/**
 * This method initializes detailsBorderLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBorderLayoutPane	
 */
private RBorderLayoutPane getDetailsBorderLayoutPane() {
	if (detailsBorderLayoutPane == null) {
		detailsBorderLayoutPane = new RBorderLayoutPane();
		detailsBorderLayoutPane.setName("detailsBorderLayoutPane");
		detailsBorderLayoutPane.add(getDetailsScrollPane(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
		detailsBorderLayoutPane.add(getDetailsActionsBoxPane(), com.ulcjava.base.application.ULCBorderLayoutPane.WEST);
	}
	return detailsBorderLayoutPane;
}

/**
 * This method initializes detailsActionsBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getDetailsActionsBoxPane() {
	if (detailsActionsBoxPane == null) {
		RFiller verticalFiller = new RFiller();
		verticalFiller.setStyleProperties("{/preferredSizeWidth \"200\"/fill \"VERTICAL\"/weightY \"1\"/weightX \"0\"}");
		verticalFiller.setPreferredSize(new com.ulcjava.base.application.util.Dimension(50,30));
		detailsActionsBoxPane = new RBoxPane();
		detailsActionsBoxPane.setOpaque(false);
		detailsActionsBoxPane.setStyleProperties("{/insetsBottom \"5\"/weightY \"1\"/weightX \"1\"}");
		detailsActionsBoxPane.setName("detailsActionsBoxPane");
		detailsActionsBoxPane.set(0, 1, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, verticalFiller);
		detailsActionsBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getDetailTreeScrollPane());
	}
	return detailsActionsBoxPane;
}

/**
 * This method initializes detailsCardPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RCardPane	
 */
private RCardPane getDetailsCardPane() {
	if (detailsCardPane == null) {
		detailsCardPane = new RCardPane();
		detailsCardPane.setName("detailsCardPane");
		
		detailsCardPane.addCard("workflowEventsDisplayListRDC", getWorkflowEventsDisplayListRDC());
		detailsCardPane.addCard("caseDetailsDisplayRDC", getCaseDetailsDisplayRDC());
		detailsCardPane.addCard("taskDetailsDisplayRDC", getTaskDetailsDisplayRDC());
		detailsCardPane.addCard("intermediateEventDisplayRDC", getIntermediateEventDisplayRDC());
		detailsCardPane.setSelectedComponent(getTaskDetailsDisplayRDC());
		
		detailsCardPane.setPreloadAt("caseDetailsDisplayRDC", false);
		detailsCardPane.setPreloadAt("workflowEventsDisplayListRDC", false);
		detailsCardPane.setPreloadAt("intermediateEventDisplayRDC", false);

	}
	return detailsCardPane;
}

/**
 * This method initializes taskDetailsDisplayRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.task.TaskDetailsDisplay.TaskDetailsDisplayPanel	
 */
private ULCContainer getTaskDetailsDisplayRDC()  {
	if (taskDetailsDisplayRDC == null) {
		taskDetailsDisplayRDC = RichDialogPanelFactory.create(TaskDetailsDisplayPanel.class);
		taskDetailsDisplayRDC.setName("taskDetailsDisplayRDC");
	}
	return taskDetailsDisplayRDC;
}

/**
 * This method initializes detailsScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getDetailsScrollPane() {
	if (detailsScrollPane == null) {
		detailsScrollPane = new RScrollPane();
		detailsScrollPane.setName("detailsScrollPane");
		detailsScrollPane.setViewPortView(getDetailsCardPane());
	}
	return detailsScrollPane;
}

/**
 * This method initializes detailTreeScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getDetailTreeScrollPane() {
	if (detailTreeScrollPane == null) {
		detailTreeScrollPane = new RScrollPane();
		detailTreeScrollPane.setName("detailTreeScrollPane");
		detailTreeScrollPane.setStyleProperties("{/insetsTop \"0\"/fill \"HORIZONTAL\"/insetsRight \"10\"/insetsLeft \"10\"/weightY \"0\"}");
		detailTreeScrollPane.setViewPortView(getDetailTree());
	}
	return detailTreeScrollPane;
}

/**
 * This method initializes detailTree	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTree	
 */
private RTree getDetailTree() {
	if (detailTree == null) {
		detailTree = new RTree();
		detailTree.setName("detailTree");
		detailTree.setVisibleRowCount(10);
		detailTree.setStyleProperties("{/insetsTop \"0\"}");
		detailTree.setModelConfiguration("{/dynamicTreeLoadMode \"LOAD_FOR_RENDER_PARENT\"/version \"3.0\"/columns {{/patterns {{/result \"result=value\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"\"/field \"\"/patternMode \"ALL\"/patternValue \"default\"}}}}/showTableheader true /autoTableheader false /showtooltip false /showIcons false }");
	}
	return detailTree;
}

/**
 * This method initializes intermediateEventDisplayRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.task.ie.IntermediateEventDisplay.IntermediateEventDisplayPanel	
 */
private ULCContainer getIntermediateEventDisplayRDC()  {
	if (intermediateEventDisplayRDC == null) {
		intermediateEventDisplayRDC = RichDialogPanelFactory.create(IntermediateEventDisplayPanel.class);
		intermediateEventDisplayRDC.setName("intermediateEventDisplayRDC");
	}
	return intermediateEventDisplayRDC;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"