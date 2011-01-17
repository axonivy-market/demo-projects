package ch.ivyteam.ivy.workflow.ui.task.TaskInformationDetailsDisplay;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextArea;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;

/**
 * RichDialog panel implementation for TaskDetailsDisplayPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class TaskInformationDetailsDisplayPanel extends RichDialogGridBagPanel
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RTextField taskIdTextField = null;
private RTextField taskNameTextField = null;
private RLabel taskNameLabel = null;
private RTextField taskKindNameTextField = null;
private RGridBagLayoutPane responsibleRoleUserGridBagLayoutPane = null;
private RLabel taskActivatorLabel = null;
private RTextField taskActivatorTextField = null;
private RGridBagLayoutPane entryInTaskListGridBagLayoutPane = null;
private RLabel taskDescriptionLabel = null;
private RTextArea taskDescriptionTextArea = null;
private RLabel taskKindCodeLabel = null;
private RTextField taskKindCodeTextField = null;
private RLabel businessMilestoneLabel = null;
private RTextField businessMilestoneTextField = null;
private RLabel taskBlockingDelayLabel = null;
private RTextField taskBlockingDelayTextField = null;
private RGridBagLayoutPane otherTaskParametersGridBagLayoutPane = null;
private RLabel taskExpiryTimestampLabel = null;
private RTextField taskExpiryTimestampTextField = null;
private RLabel taskStartTimestampLabel = null;
private RTextField taskStartTimestampTextField = null;
private RScrollPane taskDescriptionScrollPane = null;
private RTextField taskStateTextField = null;
private RLabel taskStateLabel = null;
private RLabel taskPriorityLabel = null;
private RLabel taskIdLabel = null;
private RTextField taskPriorityTextField = null;
private RLabel workerUserNameLabel = null;
private RTextField workerUserNameTextField = null;
/**
   * Create a new instance of TaskDetailsDisplayPanel
   */
  public TaskInformationDetailsDisplayPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes TaskDetailsDisplayPanel
   * @return void
   */
  public void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(472,352));
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(554,304));
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(409,460));
        this.add(getResponsibleRoleUserGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getEntryInTaskListGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getOtherTaskParametersGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes taskIdTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getTaskIdTextField() {
	if (taskIdTextField == null) {
		taskIdTextField = new RTextField();
		taskIdTextField.setName("taskIdTextField");
		taskIdTextField.setText("");
		taskIdTextField.setStyleProperties("{/anchor \"WEST\"/fill \"HORIZONTAL\"/weightX \"1\"}");
		taskIdTextField.setEditable(false);
		taskIdTextField.setColumns(4);
	}
	return taskIdTextField;
}

/**
 * This method initializes taskNameTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getTaskNameTextField() {
	if (taskNameTextField == null) {
		taskNameTextField = new RTextField();
		taskNameTextField.setName("taskNameTextField");
		taskNameTextField.setText("");
		taskNameTextField.setStyleProperties("{/fill \"HORIZONTAL\"}");
		taskNameTextField.setEditable(false);
		taskNameTextField.setColumns(15);
	}
	return taskNameTextField;
}

/**
 * This method initializes taskNameLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getTaskNameLabel() {
	if (taskNameLabel == null) {
		taskNameLabel = new RLabel();
		taskNameLabel.setName("taskNameLabel");
		taskNameLabel.setStyleProperties("{/anchor \"WEST\"/fill \"HORIZONTAL\"}");
		taskNameLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/name\")%>\n\n");
	}
	return taskNameLabel;
}

/**
 * This method initializes taskKindNameTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getTaskKindNameTextField() {
	if (taskKindNameTextField == null) {
		taskKindNameTextField = new RTextField();
		taskKindNameTextField.setName("taskKindNameTextField");
		taskKindNameTextField.setStyleProperties("{/weightX \"1\"}");
		taskKindNameTextField.setEditable(false);
		taskKindNameTextField.setText("");
	}
	return taskKindNameTextField;
}

/**
 * This method initializes responsibleRoleUserGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getResponsibleRoleUserGridBagLayoutPane() {
	if (responsibleRoleUserGridBagLayoutPane == null) {
		RFiller aFiller = new RFiller();
		aFiller.setStyle("horizontalStrut150");
		responsibleRoleUserGridBagLayoutPane = new RGridBagLayoutPane();
		responsibleRoleUserGridBagLayoutPane.setName("responsibleRoleUserGridBagLayoutPane");
		responsibleRoleUserGridBagLayoutPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		responsibleRoleUserGridBagLayoutPane.add(getTaskActivatorLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		responsibleRoleUserGridBagLayoutPane.add(getTaskActivatorTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		responsibleRoleUserGridBagLayoutPane.add(aFiller, new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return responsibleRoleUserGridBagLayoutPane;
}

/**
 * This method initializes taskActivatorLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getTaskActivatorLabel() {
	if (taskActivatorLabel == null) {
		taskActivatorLabel = new RLabel();
		taskActivatorLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/taskActivator\")%>\n");
		taskActivatorLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/security/images/role16\")%>");
		taskActivatorLabel.setName("taskActivatorLabel");
	}
	return taskActivatorLabel;
}

/**
 * This method initializes taskActivatorTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getTaskActivatorTextField() {
	if (taskActivatorTextField == null) {
		taskActivatorTextField = new RTextField();
		taskActivatorTextField.setText("");
		taskActivatorTextField.setStyleProperties("{/weightX \"1\"}");
		taskActivatorTextField.setEditable(false);
		taskActivatorTextField.setName("taskActivatorTextField");
	}
	return taskActivatorTextField;
}

/**
 * This method initializes entryInTaskListGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getEntryInTaskListGridBagLayoutPane() {
	if (entryInTaskListGridBagLayoutPane == null) {
		RFiller aFiller1 = new RFiller();
		aFiller1.setStyle("horizontalStrut150");
		entryInTaskListGridBagLayoutPane = new RGridBagLayoutPane();
		entryInTaskListGridBagLayoutPane.setName("entryInTaskListGridBagLayoutPane");
		entryInTaskListGridBagLayoutPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		entryInTaskListGridBagLayoutPane.add(getTaskIdTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(getTaskNameLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 6, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(getTaskNameTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 6, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(getTaskDescriptionLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 7, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(aFiller1, new com.ulcjava.base.application.GridBagConstraints(0, 8, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(getTaskStateTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(getTaskStartTimestampLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(getTaskStartTimestampTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(getTaskStateLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(getTaskPriorityLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(getTaskIdLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(getTaskPriorityTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(getWorkerUserNameLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(getWorkerUserNameTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(getBusinessMilestoneLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(getBusinessMilestoneTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(getTaskDescriptionScrollPane(), new com.ulcjava.base.application.GridBagConstraints(1, 7, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return entryInTaskListGridBagLayoutPane;
}

/**
 * This method initializes taskDescriptionLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getTaskDescriptionLabel() {
	if (taskDescriptionLabel == null) {
		taskDescriptionLabel = new RLabel();
		taskDescriptionLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/description\")%>");
		taskDescriptionLabel.setName("taskDescriptionLabel");
	}
	return taskDescriptionLabel;
}

/**
 * This method initializes taskDescriptionTextArea	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextArea getTaskDescriptionTextArea() {
	if (taskDescriptionTextArea == null) {
		taskDescriptionTextArea = new RTextArea();
		taskDescriptionTextArea.setText("");
		taskDescriptionTextArea.setEditable(false);
		taskDescriptionTextArea.setRows(4);
		taskDescriptionTextArea.setLineWrap(true);
		taskDescriptionTextArea.setName("taskDescriptionTextArea");
	}
	return taskDescriptionTextArea;
}

/**
 * This method initializes taskKindCodeLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getTaskKindCodeLabel() {
	if (taskKindCodeLabel == null) {
		taskKindCodeLabel = new RLabel();
		taskKindCodeLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/taskKindName\")%>");
		taskKindCodeLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/KIND_CODE16\")%>");
		taskKindCodeLabel.setName("taskKindCodeLabel");
	}
	return taskKindCodeLabel;
}

/**
 * This method initializes taskKindCodeTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getTaskKindCodeTextField() {
	if (taskKindCodeTextField == null) {
		taskKindCodeTextField = new RTextField();
		taskKindCodeTextField.setText("");
		taskKindCodeTextField.setEditable(false);
		taskKindCodeTextField.setColumns(15);
		taskKindCodeTextField.setName("taskKindCodeTextField");
	}
	return taskKindCodeTextField;
}

/**
 * This method initializes businessMilestoneLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getBusinessMilestoneLabel() {
	if (businessMilestoneLabel == null) {
		businessMilestoneLabel = new RLabel();
		businessMilestoneLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/businessMilestoneTimestamp\")%>\n");
		businessMilestoneLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/BUSINESS_START_TIMESTAMP16\")%>");
		businessMilestoneLabel.setName("businessMilestoneLabel");
	}
	return businessMilestoneLabel;
}

/**
 * This method initializes businessMilestoneTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getBusinessMilestoneTextField() {
	if (businessMilestoneTextField == null) {
		businessMilestoneTextField = new RTextField();
		businessMilestoneTextField.setText("");
		businessMilestoneTextField.setStyleProperties("{/weightX \"1\"}");
		businessMilestoneTextField.setEditable(false);
		businessMilestoneTextField.setName("businessMilestoneTextField");
	}
	return businessMilestoneTextField;
}

/**
 * This method initializes taskBlockingDelayLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getTaskBlockingDelayLabel() {
	if (taskBlockingDelayLabel == null) {
		taskBlockingDelayLabel = new RLabel();
		taskBlockingDelayLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/taskBlockedUntilTimestamp\")%>\n\n");
		taskBlockingDelayLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/BUSINESS_START_TIMESTAMP16\")%>");
		taskBlockingDelayLabel.setName("taskBlockingDelayLabel");
	}
	return taskBlockingDelayLabel;
}

/**
 * This method initializes taskBlockingDelayTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getTaskBlockingDelayTextField() {
	if (taskBlockingDelayTextField == null) {
		taskBlockingDelayTextField = new RTextField();
		taskBlockingDelayTextField.setText("");
		taskBlockingDelayTextField.setStyleProperties("{/weightX \"1\"}");
		taskBlockingDelayTextField.setEditable(false);
		taskBlockingDelayTextField.setName("taskBlockingDelayTextField");
	}
	return taskBlockingDelayTextField;
}

/**
 * This method initializes otherTaskParametersGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getOtherTaskParametersGridBagLayoutPane() {
	if (otherTaskParametersGridBagLayoutPane == null) {
		RFiller aFiller311 = new RFiller();
		aFiller311.setStyle("horizontalStrut150");
		otherTaskParametersGridBagLayoutPane = new RGridBagLayoutPane();
		otherTaskParametersGridBagLayoutPane.setName("otherTaskParametersGridBagLayoutPane");
		otherTaskParametersGridBagLayoutPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		otherTaskParametersGridBagLayoutPane.add(getTaskExpiryTimestampLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		otherTaskParametersGridBagLayoutPane.add(getTaskExpiryTimestampTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		otherTaskParametersGridBagLayoutPane.add(aFiller311, new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		otherTaskParametersGridBagLayoutPane.add(getTaskBlockingDelayLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		otherTaskParametersGridBagLayoutPane.add(getTaskBlockingDelayTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		otherTaskParametersGridBagLayoutPane.add(getTaskKindCodeLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		otherTaskParametersGridBagLayoutPane.add(getTaskKindCodeTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		otherTaskParametersGridBagLayoutPane.add(getTaskKindNameTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return otherTaskParametersGridBagLayoutPane;
}

/**
 * This method initializes taskExpiryTimestampLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getTaskExpiryTimestampLabel() {
	if (taskExpiryTimestampLabel == null) {
		taskExpiryTimestampLabel = new RLabel();
		taskExpiryTimestampLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/taskExpiryTimestamp\")%>");
		taskExpiryTimestampLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/BUSINESS_START_TIMESTAMP16\")%>");
		taskExpiryTimestampLabel.setName("taskExpiryTimestampLabel");
	}
	return taskExpiryTimestampLabel;
}

/**
 * This method initializes taskExpiryTimestampTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getTaskExpiryTimestampTextField() {
	if (taskExpiryTimestampTextField == null) {
		taskExpiryTimestampTextField = new RTextField();
		taskExpiryTimestampTextField.setText("");
		taskExpiryTimestampTextField.setStyleProperties("{/weightX \"1\"}");
		taskExpiryTimestampTextField.setEditable(false);
		taskExpiryTimestampTextField.setName("taskExpiryTimestampTextField");
	}
	return taskExpiryTimestampTextField;
}

/**
 * This method initializes taskStartTimestampLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getTaskStartTimestampLabel() {
	if (taskStartTimestampLabel == null) {
		taskStartTimestampLabel = new RLabel();
		taskStartTimestampLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/startedAt\")%>\n");
		taskStartTimestampLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/BUSINESS_START_TIMESTAMP16\")%>");
		taskStartTimestampLabel.setName("taskStartTimestampLabel");
	}
	return taskStartTimestampLabel;
}

/**
 * This method initializes taskStartTimestampTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getTaskStartTimestampTextField() {
	if (taskStartTimestampTextField == null) {
		taskStartTimestampTextField = new RTextField();
		taskStartTimestampTextField.setText("");
		taskStartTimestampTextField.setStyleProperties("{/weightX \"1\"}");
		taskStartTimestampTextField.setEditable(false);
		taskStartTimestampTextField.setName("taskStartTimestampTextField");
	}
	return taskStartTimestampTextField;
}

/**
 * This method initializes taskDescriptionScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getTaskDescriptionScrollPane() {
	if (taskDescriptionScrollPane == null) {
		taskDescriptionScrollPane = new RScrollPane();
		taskDescriptionScrollPane.setName("taskDescriptionScrollPane");
		taskDescriptionScrollPane.setViewPortView(getTaskDescriptionTextArea());
	}
	return taskDescriptionScrollPane;
}

/**
 * This method initializes taskStateTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getTaskStateTextField() {
	if (taskStateTextField == null) {
		taskStateTextField = new RTextField();
		taskStateTextField.setName("taskStateTextField");
		taskStateTextField.setColumns(15);
		taskStateTextField.setText("");
		taskStateTextField.setStyleProperties("{/fill \"HORIZONTAL\"}");
		taskStateTextField.setEditable(false);
	}
	return taskStateTextField;
}

/**
 * This method initializes taskStateLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getTaskStateLabel() {
	if (taskStateLabel == null) {
		taskStateLabel = new RLabel();
		taskStateLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/state\")%>");
		taskStateLabel.setName("taskStateLabel");
	}
	return taskStateLabel;
}

/**
 * This method initializes taskPriorityLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getTaskPriorityLabel() {
	if (taskPriorityLabel == null) {
		taskPriorityLabel = new RLabel();
		taskPriorityLabel.setName("taskPriorityLabel");
		taskPriorityLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/taskPriority\")%>");
	}
	return taskPriorityLabel;
}

/**
 * This method initializes taskIdLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getTaskIdLabel() {
	if (taskIdLabel == null) {
		taskIdLabel = new RLabel();
		taskIdLabel.setName("taskIdLabel");
		taskIdLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/taskId16\")%>");
		taskIdLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/id\")%>");
	}
	return taskIdLabel;
}

/**
 * This method initializes taskPriorityTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getTaskPriorityTextField() {
	if (taskPriorityTextField == null) {
		taskPriorityTextField = new RTextField();
		taskPriorityTextField.setEditable(false);
		taskPriorityTextField.setText("");
		taskPriorityTextField.setStyleProperties("{/anchor \"WEST\"/fill \"HORIZONTAL\"/weightX \"1\"}");
		taskPriorityTextField.setColumns(4);
	}
	return taskPriorityTextField;
}

/**
 * This method initializes workerUserNameLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getWorkerUserNameLabel() {
	if (workerUserNameLabel == null) {
		workerUserNameLabel = new RLabel();
		workerUserNameLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/workerUserName\")%>");
		workerUserNameLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/security/images/user16\")%>");
		workerUserNameLabel.setName("workerUserNameLabel");
	}
	return workerUserNameLabel;
}

/**
 * This method initializes workerUserNameTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getWorkerUserNameTextField() {
	if (workerUserNameTextField == null) {
		workerUserNameTextField = new RTextField();
		workerUserNameTextField.setName("workerUserNameTextField");
		workerUserNameTextField.setText("");
		workerUserNameTextField.setStyleProperties("{/weightX \"1\"}");
		workerUserNameTextField.setEditable(false);
	}
	return workerUserNameTextField;
}
}  //  @jve:decl-index=0:visual-constraint="14,15"