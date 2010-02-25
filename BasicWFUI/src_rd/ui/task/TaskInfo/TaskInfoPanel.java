package ui.task.TaskInfo;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RTabbedPane;
import ui.task.TaskInfoDetails.TaskInfoDetailsPanel;
import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;
import com.ulcjava.base.application.ULCContainer;
import com.ulcjava.base.application.ULCTabbedPane;
import ui.task.TaskInfoCustomFields.TaskInfoCustomFieldsPanel;
import ui.cases.CaseInfoCategorization.CaseInfoCategorizationPanel;
import ui.cases.CaseInfoBusinessDetails.CaseInfoBusinessDetailsPanel;
import ui.cases.CaseInfoCustomFields.CaseInfoCustomFieldsPanel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import com.ulcjava.base.application.util.ComponentOrientation;
import com.ulcjava.base.application.event.KeyEvent;
import com.ulcjava.base.application.ULCTextField;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import com.ulcjava.base.application.ULCFlowLayoutPane;
import com.ulcjava.base.application.util.Color;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane;
import com.ulcjava.base.application.ULCAbstractButton;

/**
 * <p>TaskInfoPanel is a rich dialog panel implementation.
 *
 * <p>Please note that a rich dialog panel is not an instance of a Swing 
 * container, but of an ULCContainer. As such it can not be run 
 * or instantiated outside the ULC framework.
 */
@SuppressWarnings("all")
public class TaskInfoPanel extends RichDialogBorderPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RTabbedPane TabbedPane = null;
private @EmbeddedRichDialog(TaskInfoDetailsPanel.class) ULCContainer taskInfoDetailsPanel = null;
private @EmbeddedRichDialog(TaskInfoCustomFieldsPanel.class) ULCContainer taskInfoCustomFieldsPanel = null;
private @EmbeddedRichDialog(CaseInfoCategorizationPanel.class) ULCContainer caseInfoCategorizationPanel = null;
private @EmbeddedRichDialog(CaseInfoBusinessDetailsPanel.class) ULCContainer caseInfoBusinessDetailsPanel = null;
private @EmbeddedRichDialog(CaseInfoCustomFieldsPanel.class) ULCContainer caseInfoCustomFieldsPanel = null;
private RFlowLayoutPane FlowLayoutPane = null;
private RLabel Label = null;
private RButton closeButton = null;
private RFlowLayoutPane FlowLayoutPane1 = null;
/**
   * Create a new instance of TaskInfoPanel
   */
  public TaskInfoPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes TaskInfoPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(554,445));
        this.add(getTabbedPane(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
        this.add(getFlowLayoutPane(), com.ulcjava.base.application.ULCBorderLayoutPane.NORTH);
        this.add(getFlowLayoutPane1(), com.ulcjava.base.application.ULCBorderLayoutPane.SOUTH);
  }

/**
 * This method initializes TabbedPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RTabbedPane	
 */
private RTabbedPane getTabbedPane() {
	if (TabbedPane == null) {
		TabbedPane = new RTabbedPane();
		TabbedPane.setName("TabbedPane");
		TabbedPane.setTabPlacement(ULCTabbedPane.RIGHT);
		TabbedPane.setTabLayoutPolicy(ULCTabbedPane.SCROLL_TAB_LAYOUT);
		TabbedPane.addTab("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/task/info\")%>", null, getTaskInfoDetailsPanel(), null);
		TabbedPane.addTab("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/info/taskCustomFields\")%>", null, getTaskInfoCustomFieldsPanel(), null);
		TabbedPane.addTab("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/info/caseCategorization\")%>", null, getCaseInfoCategorizationPanel(), null);
		TabbedPane.addTab("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/info/caseBusinessDetails\")%>", null, getCaseInfoBusinessDetailsPanel(), null);
		TabbedPane.addTab("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/info/caseCustomFields\")%>", null, getCaseInfoCustomFieldsPanel(), null);
	}
	return TabbedPane;
}

/**
 * This method initializes taskInfoDetailsPanel, an embedded RichDialog.
 * The created object might have a different type than the declared
 * class due to overriding.
 * @returns com.ulcjava.base.application.ULCContainer 
 */
private ULCContainer getTaskInfoDetailsPanel() {
	if (taskInfoDetailsPanel == null) {
		taskInfoDetailsPanel = RichDialogPanelFactory
				.create(TaskInfoDetailsPanel.class);
		taskInfoDetailsPanel.setName("taskInfoDetailsPanel");
	}
	return taskInfoDetailsPanel;
}

/**
 * This method initializes taskInfoCustomFieldsPanel, an embedded RichDialog.
 * The created object might have a different type than the declared
 * class due to overriding.
 * @returns com.ulcjava.base.application.ULCContainer 
 */
private ULCContainer getTaskInfoCustomFieldsPanel() {
	if (taskInfoCustomFieldsPanel == null) {
		taskInfoCustomFieldsPanel = RichDialogPanelFactory
				.create(TaskInfoCustomFieldsPanel.class);
		taskInfoCustomFieldsPanel.setName("taskInfoCustomFieldsPanel");
	}
	return taskInfoCustomFieldsPanel;
}

/**
 * This method initializes caseInfoCategorizationPanel, an embedded RichDialog.
 * The created object might have a different type than the declared
 * class due to overriding.
 * @returns com.ulcjava.base.application.ULCContainer 
 */
private ULCContainer getCaseInfoCategorizationPanel() {
	if (caseInfoCategorizationPanel == null) {
		caseInfoCategorizationPanel = RichDialogPanelFactory
				.create(CaseInfoCategorizationPanel.class);
		caseInfoCategorizationPanel.setName("caseInfoCategorizationPanel");
	}
	return caseInfoCategorizationPanel;
}

/**
 * This method initializes caseInfoBusinessDetailsPanel, an embedded RichDialog.
 * The created object might have a different type than the declared
 * class due to overriding.
 * @returns com.ulcjava.base.application.ULCContainer 
 */
private ULCContainer getCaseInfoBusinessDetailsPanel() {
	if (caseInfoBusinessDetailsPanel == null) {
		caseInfoBusinessDetailsPanel = RichDialogPanelFactory
				.create(CaseInfoBusinessDetailsPanel.class);
		caseInfoBusinessDetailsPanel.setName("caseInfoBusinessDetailsPanel");
	}
	return caseInfoBusinessDetailsPanel;
}

/**
 * This method initializes caseInfoCustomFieldsPanel, an embedded RichDialog.
 * The created object might have a different type than the declared
 * class due to overriding.
 * @returns com.ulcjava.base.application.ULCContainer 
 */
private ULCContainer getCaseInfoCustomFieldsPanel() {
	if (caseInfoCustomFieldsPanel == null) {
		caseInfoCustomFieldsPanel = RichDialogPanelFactory
				.create(CaseInfoCustomFieldsPanel.class);
		caseInfoCustomFieldsPanel.setName("caseInfoCustomFieldsPanel");
	}
	return caseInfoCustomFieldsPanel;
}

/**
 * This method initializes FlowLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane	
 */
private RFlowLayoutPane getFlowLayoutPane() {
	if (FlowLayoutPane == null) {
		FlowLayoutPane = new RFlowLayoutPane();
		FlowLayoutPane.setName("FlowLayoutPane");
		FlowLayoutPane.setBackground(new Color(244, 247, 255));
		FlowLayoutPane.setAlignment(ULCFlowLayoutPane.LEFT);
		FlowLayoutPane.add(getLabel());
	}
	return FlowLayoutPane;
}

/**
 * This method initializes Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getLabel() {
	if (Label == null) {
		Label = new RLabel();
		Label.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/basicwfui/images/task_48\")%>");
		Label.setStyle("basicwfui_caption");
		Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/info/taskDetails\")%>");
		Label.setName("Label");
	}
	return Label;
}

/**
 * This method initializes closeButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getCloseButton() {
	if (closeButton == null) {
		closeButton = new RButton();
		closeButton.setHorizontalAlignment(ULCAbstractButton.CENTER);
		closeButton.setStyle("basicwfui_actionbutton");
		closeButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/common/closeTab\")%>");
		closeButton.setName("closeButton");
	}
	return closeButton;
}

/**
 * This method initializes FlowLayoutPane1	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane	
 */
private RFlowLayoutPane getFlowLayoutPane1() {
	if (FlowLayoutPane1 == null) {
		FlowLayoutPane1 = new RFlowLayoutPane();
		FlowLayoutPane1.setName("FlowLayoutPane1");
		FlowLayoutPane1.setAlignment(ULCFlowLayoutPane.RIGHT);
		FlowLayoutPane1.add(getCloseButton());
	}
	return FlowLayoutPane1;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"