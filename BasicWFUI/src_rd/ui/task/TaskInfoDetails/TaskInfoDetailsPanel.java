package ui.task.TaskInfoDetails;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextArea;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;

import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.border.ULCTitledBorder;
import com.ulcjava.base.application.util.Color;
import com.ulcjava.base.application.util.Font;

/**
 * RichDialog panel implementation for TaskDetailsDisplayPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class TaskInfoDetailsPanel extends RichDialogGridBagPanel
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RTextField taskIdTextField = null;
private RTextField taskNameTextField = null;
private RLabel taskKindNameLabel = null;
private RLabel taskNameLabel = null;
private RTextField taskKindNameTextField = null;
private RLabel taskPriorityIconLabel = null;
private RLabel taskIdIconLabel = null;
private RLabel taskStateIconLabel = null;
private RGridBagLayoutPane responsibleRoleUserGridBagLayoutPane = null;
private RLabel taskActivatorLabel = null;
private RTextField taskActivatorTextField = null;
private RGridBagLayoutPane entryInTaskListGridBagLayoutPane = null;
private RLabel taskDescriptionLabel = null;
private RTextArea taskDescriptionTextArea = null;
private RGridBagLayoutPane taskStageGridBagLayoutPane = null;
private RLabel taskKindCodeLabel = null;
private RLabel taskKindLabel = null;
private RTextField taskKindCodeTextField = null;
private RGridBagLayoutPane businessMilestoneGridBagLayoutPane = null;
private RLabel businessMilestoneLabel = null;
private RTextField businessMilestoneTextField = null;
private RGridBagLayoutPane blockingDelayGridBagLayoutPane = null;
private RLabel taskBlockingDelayLabel = null;
private RTextField taskBlockingDelayTextField = null;
private RGridBagLayoutPane processingDelayGridBagLayoutPane = null;
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
/**
   * Create a new instance of TaskDetailsDisplayPanel
   */
  public TaskInfoDetailsPanel()
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
        RFiller verticalGlueFiller = new RFiller();
        verticalGlueFiller.setStyleProperties("{/fill \"VERTICAL\"/weightY \"1\"}");
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(472,557));
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(554,304));
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(409,460));
        this.add(getResponsibleRoleUserGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getEntryInTaskListGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getProcessingDelayGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getBlockingDelayGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 6, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getTaskStageGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 7, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getBusinessMilestoneGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 8, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(verticalGlueFiller, new com.ulcjava.base.application.GridBagConstraints(0, 9, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
 * This method initializes taskKindNameLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getTaskKindNameLabel() {
	if (taskKindNameLabel == null) {
		taskKindNameLabel = new RLabel();
		taskKindNameLabel.setName("taskKindNameLabel");
		taskKindNameLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/task/taskKindName\")%> <%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/common/name\")%>");
	}
	return taskKindNameLabel;
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
		taskNameLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/task/taskName\")%>\n");
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
 * This method initializes taskPriorityIconLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getTaskPriorityIconLabel() {
	if (taskPriorityIconLabel == null) {
		taskPriorityIconLabel = new RLabel();
		taskPriorityIconLabel.setName("taskPriorityIconLabel");
	}
	return taskPriorityIconLabel;
}

/**
 * This method initializes taskIdIconLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getTaskIdIconLabel() {
	if (taskIdIconLabel == null) {
		taskIdIconLabel = new RLabel();
		taskIdIconLabel.setName("taskIdIconLabel");
		taskIdIconLabel.setTextVisible(true);
		taskIdIconLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/basicwfui/images/task/taskId16\")%>");
		taskIdIconLabel.setText("");
	}
	return taskIdIconLabel;
}

/**
 * This method initializes taskStateIconLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getTaskStateIconLabel() {
	if (taskStateIconLabel == null) {
		taskStateIconLabel = new RLabel();
		taskStateIconLabel.setName("taskStateIconLabel");
	}
	return taskStateIconLabel;
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
		responsibleRoleUserGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(null, "Responsible Role/User", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
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
		taskActivatorLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/basicwfui/images/security/role16\")%>");
		taskActivatorLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/task/taskActivator\")%>");
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
		entryInTaskListGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(null, "Task", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
		entryInTaskListGridBagLayoutPane.add(getTaskIdIconLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(getTaskPriorityIconLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(getTaskStateIconLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(getTaskIdTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(getTaskNameLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(getTaskNameTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(getTaskDescriptionLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(aFiller1, new com.ulcjava.base.application.GridBagConstraints(0, 6, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(getTaskDescriptionScrollPane(), new com.ulcjava.base.application.GridBagConstraints(2, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(getTaskStateTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(getTaskStartTimestampLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(getTaskStartTimestampTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(getTaskStateLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(getTaskPriorityLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(getTaskIdLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(getTaskPriorityTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
		taskDescriptionLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/task/taskDescription\")%>");
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
		taskDescriptionTextArea.setRows(3);
		taskDescriptionTextArea.setLineWrap(true);
		taskDescriptionTextArea.setName("taskDescriptionTextArea");
	}
	return taskDescriptionTextArea;
}

/**
 * This method initializes taskStageGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getTaskStageGridBagLayoutPane() {
	if (taskStageGridBagLayoutPane == null) {
		RFiller aFiller2 = new RFiller();
		aFiller2.setStyle("horizontalStrut150");
		taskStageGridBagLayoutPane = new RGridBagLayoutPane();
		taskStageGridBagLayoutPane.setName("taskStageGridBagLayoutPane");
		taskStageGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(null, "Task stage", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
		taskStageGridBagLayoutPane.add(getTaskKindNameLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		taskStageGridBagLayoutPane.add(getTaskKindNameTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		taskStageGridBagLayoutPane.add(getTaskKindCodeLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		taskStageGridBagLayoutPane.add(getTaskKindLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		taskStageGridBagLayoutPane.add(getTaskKindCodeTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		taskStageGridBagLayoutPane.add(aFiller2, new com.ulcjava.base.application.GridBagConstraints(0, 2, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return taskStageGridBagLayoutPane;
}

/**
 * This method initializes taskKindCodeLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getTaskKindCodeLabel() {
	if (taskKindCodeLabel == null) {
		taskKindCodeLabel = new RLabel();
		taskKindCodeLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/task/taskKindName\")%> <%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/common/code\")%>");
		taskKindCodeLabel.setName("taskKindCodeLabel");
	}
	return taskKindCodeLabel;
}

/**
 * This method initializes taskKindLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getTaskKindLabel() {
	if (taskKindLabel == null) {
		taskKindLabel = new RLabel();
		taskKindLabel.setName("taskKindLabel");
		taskKindLabel.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/task/taskKindName\")%>");
		taskKindLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/basicwfui/images/task/KIND_CODE16\")%>");
	}
	return taskKindLabel;
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
		taskKindCodeTextField.setName("taskKindCodeTextField");
	}
	return taskKindCodeTextField;
}

/**
 * This method initializes businessMilestoneGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getBusinessMilestoneGridBagLayoutPane() {
	if (businessMilestoneGridBagLayoutPane == null) {
		RFiller aFiller3 = new RFiller();
		aFiller3.setStyle("horizontalStrut150");
		businessMilestoneGridBagLayoutPane = new RGridBagLayoutPane();
		businessMilestoneGridBagLayoutPane.setName("businessMilestoneGridBagLayoutPane");
		businessMilestoneGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(null, "Business milestone", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
		businessMilestoneGridBagLayoutPane.add(getBusinessMilestoneLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessMilestoneGridBagLayoutPane.add(getBusinessMilestoneTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessMilestoneGridBagLayoutPane.add(aFiller3, new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return businessMilestoneGridBagLayoutPane;
}

/**
 * This method initializes businessMilestoneLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getBusinessMilestoneLabel() {
	if (businessMilestoneLabel == null) {
		businessMilestoneLabel = new RLabel();
		businessMilestoneLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/task/taskMilestone\")%>\n");
		businessMilestoneLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/basicwfui/images/case/BUSINESS_START_TIMESTAMP16\")%>");
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
 * This method initializes blockingDelayGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getBlockingDelayGridBagLayoutPane() {
	if (blockingDelayGridBagLayoutPane == null) {
		RFiller aFiller31 = new RFiller();
		aFiller31.setStyle("horizontalStrut150");
		blockingDelayGridBagLayoutPane = new RGridBagLayoutPane();
		blockingDelayGridBagLayoutPane.setName("blockingDelayGridBagLayoutPane");
		blockingDelayGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(null, "Blocking delay (blocking period)", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
		blockingDelayGridBagLayoutPane.add(getTaskBlockingDelayLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		blockingDelayGridBagLayoutPane.add(getTaskBlockingDelayTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		blockingDelayGridBagLayoutPane.add(aFiller31, new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return blockingDelayGridBagLayoutPane;
}

/**
 * This method initializes taskBlockingDelayLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getTaskBlockingDelayLabel() {
	if (taskBlockingDelayLabel == null) {
		taskBlockingDelayLabel = new RLabel();
		taskBlockingDelayLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/task/taskBlockedUntilTimestamp\")%>");
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
 * This method initializes processingDelayGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getProcessingDelayGridBagLayoutPane() {
	if (processingDelayGridBagLayoutPane == null) {
		RFiller aFiller311 = new RFiller();
		aFiller311.setStyle("horizontalStrut150");
		processingDelayGridBagLayoutPane = new RGridBagLayoutPane();
		processingDelayGridBagLayoutPane.setName("processingDelayGridBagLayoutPane");
		processingDelayGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(null, "Processing expiry", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
		processingDelayGridBagLayoutPane.add(getTaskExpiryTimestampLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		processingDelayGridBagLayoutPane.add(getTaskExpiryTimestampTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		processingDelayGridBagLayoutPane.add(aFiller311, new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return processingDelayGridBagLayoutPane;
}

/**
 * This method initializes taskExpiryTimestampLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getTaskExpiryTimestampLabel() {
	if (taskExpiryTimestampLabel == null) {
		taskExpiryTimestampLabel = new RLabel();
		taskExpiryTimestampLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/task/taskExpiryTimestamp\")%>");
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
		taskStartTimestampLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/task/taskStartTimestamp\")%>");
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
		taskDescriptionScrollPane.setStyleProperties("{/fill \"BOTH\"}");
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
		taskStateLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/task/taskState\")%>");
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
		taskPriorityLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/task/taskPriority\")%>");
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
		taskIdLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/task/taskId\")%>");
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
}  //  @jve:decl-index=0:visual-constraint="10,10"