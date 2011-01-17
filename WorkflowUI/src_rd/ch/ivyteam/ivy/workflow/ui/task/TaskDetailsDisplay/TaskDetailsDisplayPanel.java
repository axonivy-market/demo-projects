package ch.ivyteam.ivy.workflow.ui.task.TaskDetailsDisplay;

import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextArea;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.workflow.ui.common.Separator.SeparatorPanel;

import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.ULCContainer;

/**
 * RichDialog panel implementation for TaskDetailsDisplayPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class TaskDetailsDisplayPanel extends RichDialogGridBagPanel
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RTextField taskIdTextField = null;
private RTextField taskNameTextField = null;
private RLabel taskNameLabel = null;
private RGridBagLayoutPane responsibleRoleUserGridBagLayoutPane = null;
private RLabel taskActivatorLabel = null;
private RTextField taskActivatorTextField = null;
private RGridBagLayoutPane entryInTaskListGridBagLayoutPane = null;
private RLabel taskDescriptionLabel = null;
private RTextArea taskDescriptionTextArea = null;
private RLabel taskKindCodeLabel = null;
private RTextField taskKindTextField = null;
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
private RGridBagLayoutPane customVarcharFieldsGridBagLayoutPane = null;
private RLabel customVarcharField1Label = null;
private RLabel customVarcharField2Label = null;
private RLabel customVarcharField3Label = null;
private RLabel customVarcharField4Label = null;
private RLabel customVarcharField5Label = null;
private RTextField customVarcharField1TextField = null;
private RTextField customVarcharField2TextField = null;
private RTextField customVarcharField3TextField = null;
private RTextField customVarcharField4TextField = null;
private RTextField customVarcharField5TextField = null;
private RGridBagLayoutPane customDecimalFieldsGridBagLayoutPane = null;
private RLabel customDecimalField1Label = null;
private RLabel customDecimalField2Label = null;
private RLabel customDecimalField3Label = null;
private RLabel customDecimalField4Label = null;
private RLabel customDecimalField5Label = null;
private RTextField customDecimalField1TextField = null;
private RTextField customDecimalField2TextField = null;
private RTextField customDecimalField3TextField = null;
private RTextField customDecimalField4TextField = null;
private RTextField customDecimalField5TextField = null;
private RGridBagLayoutPane customTimestampFieldsGridBagLayoutPane = null;
private RLabel customTimestampField1Label = null;
private RLabel customTimestampField2Label = null;
private RLabel customTimestampField3Label = null;
private RLabel customTimestampField4Label = null;
private RLabel customTimestampField5Label = null;
private RTextField customTimestampField1TextField = null;
private RTextField customTimestampField2TextField = null;
private RTextField customTimestampField3TextField = null;
private RTextField customTimestampField4TextField = null;
private RTextField customTimestampField5TextField = null;
@EmbeddedRichDialog(SeparatorPanel.class) private ULCContainer separatorPanel = null;
private RLabel taskPriorityIconLabel = null;
private RLabel taskStateIconLabel = null;
/**
   * Create a new instance of TaskDetailsDisplayPanel
   */
  public TaskDetailsDisplayPanel()
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
        RFiller verticalFiller = new RFiller();
        verticalFiller.setStyleProperties("{/fill \"VERTICAL\"/weightY \"1\"}");
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(575,646));
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(554,304));
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(409,460));
        this.add(getResponsibleRoleUserGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getOtherTaskParametersGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getSeparatorPanel(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getCustomVarcharFieldsGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getCustomDecimalFieldsGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getCustomTimestampFieldsGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 6, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(verticalFiller, new com.ulcjava.base.application.GridBagConstraints(0, 8, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getEntryInTaskListGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
		taskIdTextField.setStyle("displayedLeftAlignedTextField");
		taskIdTextField.setEditable(false);
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
		taskNameTextField.setStyle("displayedLeftAlignedTextField");
		taskNameTextField.setEditable(false);
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
		taskNameLabel.setStyleProperties("{/fill \"HORIZONTAL\"}");
		taskNameLabel.setStyle("rightAlignedLabel");
		taskNameLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/name\")%>\n\n");
	}
	return taskNameLabel;
}

/**
 * This method initializes responsibleRoleUserGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getResponsibleRoleUserGridBagLayoutPane() {
	if (responsibleRoleUserGridBagLayoutPane == null) {
		RFiller hFiller = new RFiller();
		hFiller.setStyleProperties("{/weightX \"1\"}");
		RFiller aFiller = new RFiller();
		aFiller.setStyle("horizontalStrut150");
		responsibleRoleUserGridBagLayoutPane = new RGridBagLayoutPane();
		responsibleRoleUserGridBagLayoutPane.setName("responsibleRoleUserGridBagLayoutPane");
		responsibleRoleUserGridBagLayoutPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		responsibleRoleUserGridBagLayoutPane.setName("responsibleRoleUserGridBagLayoutPane");
		responsibleRoleUserGridBagLayoutPane.setName("responsibleRoleUserGridBagLayoutPane");
		responsibleRoleUserGridBagLayoutPane.add(getTaskActivatorLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		responsibleRoleUserGridBagLayoutPane.add(aFiller, new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		responsibleRoleUserGridBagLayoutPane.add(getTaskActivatorTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		responsibleRoleUserGridBagLayoutPane.add(hFiller, new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
		taskActivatorLabel.setStyle("rightAlignedLabel");
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
		taskActivatorTextField.setEditable(false);
		taskActivatorTextField.setStyle("displayedLeftAlignedTextField");
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
		RFiller hFiller7 = new RFiller();
		hFiller7.setStyleProperties("{/weightX \"1\"}");
		RFiller hFiller6 = new RFiller();
		hFiller6.setStyleProperties("{/weightX \"1\"}");
		RFiller hFiller5 = new RFiller();
		hFiller5.setStyleProperties("{/weightX \"1\"}");
		RFiller hFiller4 = new RFiller();
		hFiller4.setStyleProperties("{/weightX \"1\"}");
		RFiller hFiller3 = new RFiller();
		hFiller3.setStyleProperties("{/weightX \"1\"}");
		RFiller hFiller2 = new RFiller();
		hFiller2.setStyleProperties("{/weightX \"1\"}");
		RFiller hFiller1 = new RFiller();
		hFiller1.setStyleProperties("{/weightX \"1\"}");
		RFiller aFiller1 = new RFiller();
		aFiller1.setStyle("horizontalStrut150");
		entryInTaskListGridBagLayoutPane = new RGridBagLayoutPane();
		entryInTaskListGridBagLayoutPane.setName("entryInTaskListGridBagLayoutPane");
		entryInTaskListGridBagLayoutPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		entryInTaskListGridBagLayoutPane.setName("entryInTaskListGridBagLayoutPane");
		entryInTaskListGridBagLayoutPane.setName("entryInTaskListGridBagLayoutPane");
		entryInTaskListGridBagLayoutPane.add(getTaskNameLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 6, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(getTaskDescriptionLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 8, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(aFiller1, new com.ulcjava.base.application.GridBagConstraints(0, 9, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(getTaskStartTimestampLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(getTaskStateLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(getTaskPriorityLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(getWorkerUserNameLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(getBusinessMilestoneLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(getTaskDescriptionScrollPane(), new com.ulcjava.base.application.GridBagConstraints(1, 8, 9, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(getTaskIdLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(getTaskIdTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(getTaskPriorityTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(getTaskPriorityIconLabel(), new com.ulcjava.base.application.GridBagConstraints(2, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(getTaskStateTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(getTaskStateIconLabel(), new com.ulcjava.base.application.GridBagConstraints(2, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(getTaskStartTimestampTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(getBusinessMilestoneTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 4, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(getWorkerUserNameTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 5, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(getTaskNameTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 6, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(hFiller1, new com.ulcjava.base.application.GridBagConstraints(7, 0, 4, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(hFiller2, new com.ulcjava.base.application.GridBagConstraints(9, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(hFiller3, new com.ulcjava.base.application.GridBagConstraints(9, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(hFiller4, new com.ulcjava.base.application.GridBagConstraints(7, 3, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(hFiller5, new com.ulcjava.base.application.GridBagConstraints(7, 4, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(hFiller6, new com.ulcjava.base.application.GridBagConstraints(7, 5, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		entryInTaskListGridBagLayoutPane.add(hFiller7, new com.ulcjava.base.application.GridBagConstraints(7, 6, 4, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
		taskDescriptionLabel.setStyle("rightAlignedLabel");
		taskDescriptionLabel.setStyleProperties("{/anchor \"NORTHEAST\"}");
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
		taskDescriptionTextArea.setWrapStyleWord(true);
		taskDescriptionTextArea.setColumns(50);
		taskDescriptionTextArea.setStyle("displayedLeftAlignedTextArea");
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
		taskKindCodeLabel.setStyle("rightAlignedLabel");
		taskKindCodeLabel.setName("taskKindCodeLabel");
	}
	return taskKindCodeLabel;
}

/**
 * This method initializes taskKindTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getTaskKindTextField() {
	if (taskKindTextField == null) {
		taskKindTextField = new RTextField();
		taskKindTextField.setText("");
		taskKindTextField.setEditable(false);
		taskKindTextField.setStyle("displayedLeftAlignedTextField");
		taskKindTextField.setName("taskKindTextField");
	}
	return taskKindTextField;
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
		businessMilestoneLabel.setStyle("rightAlignedLabel");
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
		businessMilestoneTextField.setEditable(false);
		businessMilestoneTextField.setStyle("displayedLeftAlignedTextField");
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
		taskBlockingDelayLabel.setStyle("rightAlignedLabel");
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
		taskBlockingDelayTextField.setEditable(false);
		taskBlockingDelayTextField.setStyle("displayedLeftAlignedTextField");
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
		RFiller hFiller715 = new RFiller();
		hFiller715.setStyleProperties("{/weightX \"1\"}");
		RFiller hFiller714 = new RFiller();
		hFiller714.setStyleProperties("{/weightX \"1\"}");
		RFiller hFiller71 = new RFiller();
		hFiller71.setStyleProperties("{/weightX \"1\"}");
		RFiller aFiller311 = new RFiller();
		aFiller311.setStyle("horizontalStrut150");
		otherTaskParametersGridBagLayoutPane = new RGridBagLayoutPane();
		otherTaskParametersGridBagLayoutPane.setName("otherTaskParametersGridBagLayoutPane");
		otherTaskParametersGridBagLayoutPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		otherTaskParametersGridBagLayoutPane.setName("otherTaskParametersGridBagLayoutPane");
		otherTaskParametersGridBagLayoutPane.setName("otherTaskParametersGridBagLayoutPane");
		otherTaskParametersGridBagLayoutPane.add(getTaskExpiryTimestampLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		otherTaskParametersGridBagLayoutPane.add(aFiller311, new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		otherTaskParametersGridBagLayoutPane.add(getTaskBlockingDelayLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		otherTaskParametersGridBagLayoutPane.add(getTaskKindCodeLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		otherTaskParametersGridBagLayoutPane.add(getTaskKindTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		otherTaskParametersGridBagLayoutPane.add(getTaskExpiryTimestampTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		otherTaskParametersGridBagLayoutPane.add(getTaskBlockingDelayTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		otherTaskParametersGridBagLayoutPane.add(hFiller71, new com.ulcjava.base.application.GridBagConstraints(4, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		otherTaskParametersGridBagLayoutPane.add(hFiller714, new com.ulcjava.base.application.GridBagConstraints(4, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		otherTaskParametersGridBagLayoutPane.add(hFiller715, new com.ulcjava.base.application.GridBagConstraints(4, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
		taskExpiryTimestampLabel.setStyle("rightAlignedLabel");
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
		taskExpiryTimestampTextField.setEditable(false);
		taskExpiryTimestampTextField.setStyle("displayedLeftAlignedTextField");
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
		taskStartTimestampLabel.setStyle("rightAlignedLabel");
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
		taskStartTimestampTextField.setEditable(false);
		taskStartTimestampTextField.setStyle("displayedLeftAlignedTextField");
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
		taskDescriptionScrollPane.setName("taskDescriptionScrollPane");
		taskDescriptionScrollPane.setBorder(BorderFactory.createEmptyBorder(0, 0, 0, 0));
		taskDescriptionScrollPane.setViewPortView(getTaskDescriptionTextArea());
		taskDescriptionScrollPane.setName("taskDescriptionScrollPane");
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
		taskStateTextField.setText("");
		taskStateTextField.setStyle("displayedLeftAlignedTextField");
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
		taskStateLabel.setStyle("rightAlignedLabel");
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
		taskPriorityLabel.setStyle("rightAlignedLabel");
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
		taskIdLabel.setStyle("rightAlignedLabel");
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
		taskPriorityTextField.setStyle("displayedLeftAlignedTextField");
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
		workerUserNameLabel.setStyle("rightAlignedLabel");
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
		workerUserNameTextField.setStyle("displayedLeftAlignedTextField");
		workerUserNameTextField.setEditable(false);
	}
	return workerUserNameTextField;
}

/**
 * This method initializes customVarcharFieldsGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getCustomVarcharFieldsGridBagLayoutPane() {
	if (customVarcharFieldsGridBagLayoutPane == null) {
		RFiller hFiller78 = new RFiller();
		hFiller78.setStyleProperties("{/weightX \"1\"}");
		RFiller hFiller77 = new RFiller();
		hFiller77.setStyleProperties("{/weightX \"1\"}");
		RFiller hFiller76 = new RFiller();
		hFiller76.setStyleProperties("{/weightX \"1\"}");
		RFiller hFiller75 = new RFiller();
		hFiller75.setStyleProperties("{/weightX \"1\"}");
		RFiller hFiller74 = new RFiller();
		hFiller74.setStyleProperties("{/weightX \"1\"}");
		RFiller aFiller2 = new RFiller();
		aFiller2.setStyle("horizontalStrut150");
		customVarcharFieldsGridBagLayoutPane = new RGridBagLayoutPane();
		customVarcharFieldsGridBagLayoutPane.setName("customVarcharFieldsGridBagLayoutPane");
		customVarcharFieldsGridBagLayoutPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		customVarcharFieldsGridBagLayoutPane.setName("customVarcharFieldsGridBagLayoutPane");
		customVarcharFieldsGridBagLayoutPane.setName("customVarcharFieldsGridBagLayoutPane");
		customVarcharFieldsGridBagLayoutPane.add(getCustomVarcharField1Label(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customVarcharFieldsGridBagLayoutPane.add(getCustomVarcharField2Label(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customVarcharFieldsGridBagLayoutPane.add(getCustomVarcharField3Label(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customVarcharFieldsGridBagLayoutPane.add(getCustomVarcharField4Label(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customVarcharFieldsGridBagLayoutPane.add(getCustomVarcharField5Label(), new com.ulcjava.base.application.GridBagConstraints(0, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customVarcharFieldsGridBagLayoutPane.add(aFiller2, new com.ulcjava.base.application.GridBagConstraints(0, 6, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customVarcharFieldsGridBagLayoutPane.add(getCustomVarcharField1TextField(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customVarcharFieldsGridBagLayoutPane.add(getCustomVarcharField2TextField(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customVarcharFieldsGridBagLayoutPane.add(getCustomVarcharField3TextField(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customVarcharFieldsGridBagLayoutPane.add(getCustomVarcharField4TextField(), new com.ulcjava.base.application.GridBagConstraints(1, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customVarcharFieldsGridBagLayoutPane.add(getCustomVarcharField5TextField(), new com.ulcjava.base.application.GridBagConstraints(1, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customVarcharFieldsGridBagLayoutPane.add(hFiller74, new com.ulcjava.base.application.GridBagConstraints(2, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customVarcharFieldsGridBagLayoutPane.add(hFiller75, new com.ulcjava.base.application.GridBagConstraints(2, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customVarcharFieldsGridBagLayoutPane.add(hFiller76, new com.ulcjava.base.application.GridBagConstraints(2, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customVarcharFieldsGridBagLayoutPane.add(hFiller77, new com.ulcjava.base.application.GridBagConstraints(2, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customVarcharFieldsGridBagLayoutPane.add(hFiller78, new com.ulcjava.base.application.GridBagConstraints(2, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return customVarcharFieldsGridBagLayoutPane;
}

/**
 * This method initializes customVarcharField1Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCustomVarcharField1Label() {
	if (customVarcharField1Label == null) {
		customVarcharField1Label = new RLabel();
		customVarcharField1Label.setName("customVarcharField1Label");
		customVarcharField1Label.setStyle("rightAlignedLabel");
		customVarcharField1Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/customField/plainStrings/customVarcharField\")%> 1");
	}
	return customVarcharField1Label;
}

/**
 * This method initializes customVarcharField2Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCustomVarcharField2Label() {
	if (customVarcharField2Label == null) {
		customVarcharField2Label = new RLabel();
		customVarcharField2Label.setName("customVarcharField2Label");
		customVarcharField2Label.setStyle("rightAlignedLabel");
		customVarcharField2Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/customField/plainStrings/customVarcharField\")%> 2");
	}
	return customVarcharField2Label;
}

/**
 * This method initializes customVarcharField3Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCustomVarcharField3Label() {
	if (customVarcharField3Label == null) {
		customVarcharField3Label = new RLabel();
		customVarcharField3Label.setName("customVarcharField3Label");
		customVarcharField3Label.setStyle("rightAlignedLabel");
		customVarcharField3Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/customField/plainStrings/customVarcharField\")%> 3");
	}
	return customVarcharField3Label;
}

/**
 * This method initializes customVarcharField4Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCustomVarcharField4Label() {
	if (customVarcharField4Label == null) {
		customVarcharField4Label = new RLabel();
		customVarcharField4Label.setName("customVarcharField4Label");
		customVarcharField4Label.setStyle("rightAlignedLabel");
		customVarcharField4Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/customField/plainStrings/customVarcharField\")%> 4");
	}
	return customVarcharField4Label;
}

/**
 * This method initializes customVarcharField5Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCustomVarcharField5Label() {
	if (customVarcharField5Label == null) {
		customVarcharField5Label = new RLabel();
		customVarcharField5Label.setName("customVarcharField5Label");
		customVarcharField5Label.setStyle("rightAlignedLabel");
		customVarcharField5Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/customField/plainStrings/customVarcharField\")%> 5");
	}
	return customVarcharField5Label;
}

/**
 * This method initializes customVarcharField1TextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getCustomVarcharField1TextField() {
	if (customVarcharField1TextField == null) {
		customVarcharField1TextField = new RTextField();
		customVarcharField1TextField.setName("customVarcharField1TextField");
		customVarcharField1TextField.setText("");
		customVarcharField1TextField.setStyle("displayedLeftAlignedTextField");
		customVarcharField1TextField.setEditable(false);
	}
	return customVarcharField1TextField;
}

/**
 * This method initializes customVarcharField2TextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getCustomVarcharField2TextField() {
	if (customVarcharField2TextField == null) {
		customVarcharField2TextField = new RTextField();
		customVarcharField2TextField.setName("customVarcharField2TextField");
		customVarcharField2TextField.setText("");
		customVarcharField2TextField.setStyle("displayedLeftAlignedTextField");
		customVarcharField2TextField.setEditable(false);
	}
	return customVarcharField2TextField;
}

/**
 * This method initializes customVarcharField3TextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getCustomVarcharField3TextField() {
	if (customVarcharField3TextField == null) {
		customVarcharField3TextField = new RTextField();
		customVarcharField3TextField.setName("customVarcharField3TextField");
		customVarcharField3TextField.setText("");
		customVarcharField3TextField.setStyle("displayedLeftAlignedTextField");
		customVarcharField3TextField.setEditable(false);
	}
	return customVarcharField3TextField;
}

/**
 * This method initializes customVarcharField4TextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getCustomVarcharField4TextField() {
	if (customVarcharField4TextField == null) {
		customVarcharField4TextField = new RTextField();
		customVarcharField4TextField.setName("customVarcharField4TextField");
		customVarcharField4TextField.setText("");
		customVarcharField4TextField.setStyle("displayedLeftAlignedTextField");
		customVarcharField4TextField.setEditable(false);
	}
	return customVarcharField4TextField;
}

/**
 * This method initializes customVarcharField5TextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getCustomVarcharField5TextField() {
	if (customVarcharField5TextField == null) {
		customVarcharField5TextField = new RTextField();
		customVarcharField5TextField.setName("customVarcharField5TextField");
		customVarcharField5TextField.setText("");
		customVarcharField5TextField.setStyle("displayedLeftAlignedTextField");
		customVarcharField5TextField.setEditable(false);
	}
	return customVarcharField5TextField;
}

/**
 * This method initializes customDecimalFieldsGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getCustomDecimalFieldsGridBagLayoutPane() {
	if (customDecimalFieldsGridBagLayoutPane == null) {
		RFiller hFiller713 = new RFiller();
		hFiller713.setStyleProperties("{/weightX \"1\"}");
		RFiller hFiller712 = new RFiller();
		hFiller712.setStyleProperties("{/weightX \"1\"}");
		RFiller hFiller711 = new RFiller();
		hFiller711.setStyleProperties("{/weightX \"1\"}");
		RFiller hFiller710 = new RFiller();
		hFiller710.setStyleProperties("{/weightX \"1\"}");
		RFiller hFiller79 = new RFiller();
		hFiller79.setStyleProperties("{/weightX \"1\"}");
		RFiller aFiller11 = new RFiller();
		aFiller11.setStyle("horizontalStrut150");
		customDecimalFieldsGridBagLayoutPane = new RGridBagLayoutPane();
		customDecimalFieldsGridBagLayoutPane.setName("customDecimalFieldsGridBagLayoutPane");
		customDecimalFieldsGridBagLayoutPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		customDecimalFieldsGridBagLayoutPane.setStyle("fill-horiz");
		customDecimalFieldsGridBagLayoutPane.setName("customDecimalFieldsGridBagLayoutPane");
		customDecimalFieldsGridBagLayoutPane.setName("customDecimalFieldsGridBagLayoutPane");
		customDecimalFieldsGridBagLayoutPane.add(getCustomDecimalField2Label(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customDecimalFieldsGridBagLayoutPane.add(getCustomDecimalField3Label(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customDecimalFieldsGridBagLayoutPane.add(getCustomDecimalField4Label(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customDecimalFieldsGridBagLayoutPane.add(getCustomDecimalField5Label(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customDecimalFieldsGridBagLayoutPane.add(aFiller11, new com.ulcjava.base.application.GridBagConstraints(0, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customDecimalFieldsGridBagLayoutPane.add(getCustomDecimalField1Label(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customDecimalFieldsGridBagLayoutPane.add(getCustomDecimalField1TextField(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customDecimalFieldsGridBagLayoutPane.add(getCustomDecimalField2TextField(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customDecimalFieldsGridBagLayoutPane.add(getCustomDecimalField3TextField(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customDecimalFieldsGridBagLayoutPane.add(getCustomDecimalField4TextField(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customDecimalFieldsGridBagLayoutPane.add(getCustomDecimalField5TextField(), new com.ulcjava.base.application.GridBagConstraints(1, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customDecimalFieldsGridBagLayoutPane.add(hFiller79, new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customDecimalFieldsGridBagLayoutPane.add(hFiller710, new com.ulcjava.base.application.GridBagConstraints(2, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customDecimalFieldsGridBagLayoutPane.add(hFiller711, new com.ulcjava.base.application.GridBagConstraints(2, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customDecimalFieldsGridBagLayoutPane.add(hFiller712, new com.ulcjava.base.application.GridBagConstraints(2, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customDecimalFieldsGridBagLayoutPane.add(hFiller713, new com.ulcjava.base.application.GridBagConstraints(2, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return customDecimalFieldsGridBagLayoutPane;
}

/**
 * This method initializes customDecimalField1Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCustomDecimalField1Label() {
	if (customDecimalField1Label == null) {
		customDecimalField1Label = new RLabel();
		customDecimalField1Label.setName("customDecimalField1Label");
		customDecimalField1Label.setStyle("rightAlignedLabel");
		customDecimalField1Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/customField/plainStrings/customDecimalField\")%> 1");
	}
	return customDecimalField1Label;
}

/**
 * This method initializes customDecimalField2Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCustomDecimalField2Label() {
	if (customDecimalField2Label == null) {
		customDecimalField2Label = new RLabel();
		customDecimalField2Label.setName("customDecimalField2Label");
		customDecimalField2Label.setStyle("rightAlignedLabel");
		customDecimalField2Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/customField/plainStrings/customDecimalField\")%> 2");
	}
	return customDecimalField2Label;
}

/**
 * This method initializes customDecimalField3Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCustomDecimalField3Label() {
	if (customDecimalField3Label == null) {
		customDecimalField3Label = new RLabel();
		customDecimalField3Label.setName("customDecimalField3Label");
		customDecimalField3Label.setStyle("rightAlignedLabel");
		customDecimalField3Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/customField/plainStrings/customDecimalField\")%> 3");
	}
	return customDecimalField3Label;
}

/**
 * This method initializes customDecimalField4Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCustomDecimalField4Label() {
	if (customDecimalField4Label == null) {
		customDecimalField4Label = new RLabel();
		customDecimalField4Label.setName("customDecimalField4Label");
		customDecimalField4Label.setStyle("rightAlignedLabel");
		customDecimalField4Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/customField/plainStrings/customDecimalField\")%> 4");
	}
	return customDecimalField4Label;
}

/**
 * This method initializes customDecimalField5Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCustomDecimalField5Label() {
	if (customDecimalField5Label == null) {
		customDecimalField5Label = new RLabel();
		customDecimalField5Label.setName("customDecimalField5Label");
		customDecimalField5Label.setStyle("rightAlignedLabel");
		customDecimalField5Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/customField/plainStrings/customDecimalField\")%> 5");
	}
	return customDecimalField5Label;
}

/**
 * This method initializes customDecimalField1TextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getCustomDecimalField1TextField() {
	if (customDecimalField1TextField == null) {
		customDecimalField1TextField = new RTextField();
		customDecimalField1TextField.setName("customDecimalField1TextField");
		customDecimalField1TextField.setText("");
		customDecimalField1TextField.setStyle("displayedLeftAlignedTextField");
		customDecimalField1TextField.setEditable(false);
	}
	return customDecimalField1TextField;
}

/**
 * This method initializes customDecimalField2TextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getCustomDecimalField2TextField() {
	if (customDecimalField2TextField == null) {
		customDecimalField2TextField = new RTextField();
		customDecimalField2TextField.setName("customDecimalField2TextField");
		customDecimalField2TextField.setText("");
		customDecimalField2TextField.setStyle("displayedLeftAlignedTextField");
		customDecimalField2TextField.setEditable(false);
	}
	return customDecimalField2TextField;
}

/**
 * This method initializes customDecimalField3TextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getCustomDecimalField3TextField() {
	if (customDecimalField3TextField == null) {
		customDecimalField3TextField = new RTextField();
		customDecimalField3TextField.setName("customDecimalField3TextField");
		customDecimalField3TextField.setText("");
		customDecimalField3TextField.setStyle("displayedLeftAlignedTextField");
		customDecimalField3TextField.setEditable(false);
	}
	return customDecimalField3TextField;
}

/**
 * This method initializes customDecimalField4TextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getCustomDecimalField4TextField() {
	if (customDecimalField4TextField == null) {
		customDecimalField4TextField = new RTextField();
		customDecimalField4TextField.setName("customDecimalField4TextField");
		customDecimalField4TextField.setText("");
		customDecimalField4TextField.setStyle("displayedLeftAlignedTextField");
		customDecimalField4TextField.setEditable(false);
	}
	return customDecimalField4TextField;
}

/**
 * This method initializes customDecimalField5TextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getCustomDecimalField5TextField() {
	if (customDecimalField5TextField == null) {
		customDecimalField5TextField = new RTextField();
		customDecimalField5TextField.setName("customDecimalField5TextField");
		customDecimalField5TextField.setText("");
		customDecimalField5TextField.setStyle("displayedLeftAlignedTextField");
		customDecimalField5TextField.setEditable(false);
	}
	return customDecimalField5TextField;
}

/**
 * This method initializes customTimestampFieldsGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getCustomTimestampFieldsGridBagLayoutPane() {
	if (customTimestampFieldsGridBagLayoutPane == null) {
	RFiller customTimestampH5Filler = new RFiller();
	customTimestampH5Filler.setStyleProperties("{/weightX \"1\"}");
	RFiller customTimestampH4Filler = new RFiller();
	customTimestampH4Filler.setStyleProperties("{/weightX \"1\"}");
	RFiller customTimestampH3Filler = new RFiller();
	customTimestampH3Filler.setStyleProperties("{/weightX \"1\"}");
	RFiller customTimestampH2Filler = new RFiller();
	customTimestampH2Filler.setStyleProperties("{/weightX \"1\"}");
	RFiller customTimestampH1Filler = new RFiller();
	customTimestampH1Filler.setStyleProperties("{/weightX \"1\"}");
	RFiller aFiller111 = new RFiller();
		aFiller111.setStyle("horizontalStrut150");
		customTimestampFieldsGridBagLayoutPane = new RGridBagLayoutPane();
		customTimestampFieldsGridBagLayoutPane.setName("customTimestampFieldsGridBagLayoutPane");
		customTimestampFieldsGridBagLayoutPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		customTimestampFieldsGridBagLayoutPane.setName("customTimestampFieldsGridBagLayoutPane");
		customTimestampFieldsGridBagLayoutPane.add(getCustomTimestampField1Label(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customTimestampFieldsGridBagLayoutPane.add(getCustomTimestampField2Label(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customTimestampFieldsGridBagLayoutPane.add(getCustomTimestampField3Label(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customTimestampFieldsGridBagLayoutPane.add(getCustomTimestampField4Label(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customTimestampFieldsGridBagLayoutPane.add(getCustomTimestampField5Label(), new com.ulcjava.base.application.GridBagConstraints(0, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
			customTimestampFieldsGridBagLayoutPane.add(aFiller111, new com.ulcjava.base.application.GridBagConstraints(0, 7, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
			customTimestampFieldsGridBagLayoutPane.add(getCustomTimestampField1TextField(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
			customTimestampFieldsGridBagLayoutPane.add(getCustomTimestampField2TextField(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
			customTimestampFieldsGridBagLayoutPane.add(getCustomTimestampField3TextField(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
			customTimestampFieldsGridBagLayoutPane.add(getCustomTimestampField4TextField(), new com.ulcjava.base.application.GridBagConstraints(1, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
			customTimestampFieldsGridBagLayoutPane.add(getCustomTimestampField5TextField(), new com.ulcjava.base.application.GridBagConstraints(1, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
			customTimestampFieldsGridBagLayoutPane.add(customTimestampH1Filler, new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
			customTimestampFieldsGridBagLayoutPane.add(customTimestampH2Filler, new com.ulcjava.base.application.GridBagConstraints(2, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
			customTimestampFieldsGridBagLayoutPane.add(customTimestampH3Filler, new com.ulcjava.base.application.GridBagConstraints(2, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
			customTimestampFieldsGridBagLayoutPane.add(customTimestampH4Filler, new com.ulcjava.base.application.GridBagConstraints(2, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
			customTimestampFieldsGridBagLayoutPane.add(customTimestampH5Filler, new com.ulcjava.base.application.GridBagConstraints(2, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	
	return customTimestampFieldsGridBagLayoutPane;
}

/**
 * This method initializes customTimestampField1Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCustomTimestampField1Label() {
	if (customTimestampField1Label == null) {
		customTimestampField1Label = new RLabel();
		customTimestampField1Label.setName("customTimestampField1Label");
		customTimestampField1Label.setStyle("rightAlignedLabel");
		customTimestampField1Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/customField/plainStrings/customTimestampField\")%> 1");
	}
	return customTimestampField1Label;
}

/**
 * This method initializes customTimestampField2Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCustomTimestampField2Label() {
	if (customTimestampField2Label == null) {
		customTimestampField2Label = new RLabel();
		customTimestampField2Label.setName("customTimestampField2Label");
		customTimestampField2Label.setStyle("rightAlignedLabel");
		customTimestampField2Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/customField/plainStrings/customTimestampField\")%> 2");
	}
	return customTimestampField2Label;
}

/**
 * This method initializes customTimestampField3Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCustomTimestampField3Label() {
	if (customTimestampField3Label == null) {
		customTimestampField3Label = new RLabel();
		customTimestampField3Label.setName("customTimestampField3Label");
		customTimestampField3Label.setStyle("rightAlignedLabel");
		customTimestampField3Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/customField/plainStrings/customTimestampField\")%> 3");
	}
	return customTimestampField3Label;
}

/**
 * This method initializes customTimestampField4Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCustomTimestampField4Label() {
	if (customTimestampField4Label == null) {
		customTimestampField4Label = new RLabel();
		customTimestampField4Label.setName("customTimestampField4Label");
		customTimestampField4Label.setStyle("rightAlignedLabel");
		customTimestampField4Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/customField/plainStrings/customTimestampField\")%> 4");
	}
	return customTimestampField4Label;
}

/**
 * This method initializes customTimestampField5Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCustomTimestampField5Label() {
	if (customTimestampField5Label == null) {
		customTimestampField5Label = new RLabel();
		customTimestampField5Label.setName("customTimestampField5Label");
		customTimestampField5Label.setStyle("rightAlignedLabel");
		customTimestampField5Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/customField/plainStrings/customTimestampField\")%> 5");
	}
	return customTimestampField5Label;
}

/**
 * This method initializes customTimestampField1TextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getCustomTimestampField1TextField() {
	if (customTimestampField1TextField == null) {
		customTimestampField1TextField = new RTextField();
		customTimestampField1TextField.setName("customTimestampField1TextField");
		customTimestampField1TextField.setText("");
		customTimestampField1TextField.setStyle("displayedLeftAlignedTextField");
		customTimestampField1TextField.setEditable(false);
	}
	return customTimestampField1TextField;
}

/**
 * This method initializes customTimestampField2TextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getCustomTimestampField2TextField() {
	if (customTimestampField2TextField == null) {
		customTimestampField2TextField = new RTextField();
		customTimestampField2TextField.setName("customTimestampField2TextField");
		customTimestampField2TextField.setText("");
		customTimestampField2TextField.setStyle("displayedLeftAlignedTextField");
		customTimestampField2TextField.setEditable(false);
	}
	return customTimestampField2TextField;
}

/**
 * This method initializes customTimestampField3TextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getCustomTimestampField3TextField() {
	if (customTimestampField3TextField == null) {
		customTimestampField3TextField = new RTextField();
		customTimestampField3TextField.setName("customTimestampField3TextField");
		customTimestampField3TextField.setText("");
		customTimestampField3TextField.setStyle("displayedLeftAlignedTextField");
		customTimestampField3TextField.setEditable(false);
	}
	return customTimestampField3TextField;
}

/**
 * This method initializes customTimestampField4TextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getCustomTimestampField4TextField() {
	if (customTimestampField4TextField == null) {
		customTimestampField4TextField = new RTextField();
		customTimestampField4TextField.setName("customTimestampField4TextField");
		customTimestampField4TextField.setText("");
		customTimestampField4TextField.setStyle("displayedLeftAlignedTextField");
		customTimestampField4TextField.setEditable(false);
	}
	return customTimestampField4TextField;
}

/**
 * This method initializes customTimestampField5TextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getCustomTimestampField5TextField() {
	if (customTimestampField5TextField == null) {
		customTimestampField5TextField = new RTextField();
		customTimestampField5TextField.setName("customTimestampField5TextField");
		customTimestampField5TextField.setText("");
		customTimestampField5TextField.setStyle("displayedLeftAlignedTextField");
		customTimestampField5TextField.setEditable(false);
	}
	return customTimestampField5TextField;
}

/**
 * This method initializes separatorPanel	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.common.Separator.SeparatorPanel	
 */
private ULCContainer getSeparatorPanel()  {
	if (separatorPanel == null) {
		separatorPanel = RichDialogPanelFactory.create(SeparatorPanel.class);
		separatorPanel.setName("separatorPanel");
		separatorPanel.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
	}
	return separatorPanel;
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
		taskPriorityIconLabel.setTextVisible(true);
		taskPriorityIconLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/workflowPriorities/images/2_16\")%>");
		taskPriorityIconLabel.setStyleProperties("{/fill \"NONE\"}");
	}
	return taskPriorityIconLabel;
}

/**
 * This method initializes taskStateIconLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getTaskStateIconLabel() {
	if (taskStateIconLabel == null) {
		taskStateIconLabel = new RLabel();
		taskStateIconLabel.setStyleProperties("{/fill \"NONE\"}");
		taskStateIconLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/taskState/images/SUSPENDED16\")%>");
		taskStateIconLabel.setName("taskStateIconLabel");
	}
	return taskStateIconLabel;
}
}  //  @jve:decl-index=0:visual-constraint="14,15"