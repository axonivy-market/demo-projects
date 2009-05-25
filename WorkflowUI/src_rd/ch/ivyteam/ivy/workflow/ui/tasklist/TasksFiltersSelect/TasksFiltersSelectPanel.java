package ch.ivyteam.ivy.workflow.ui.tasklist.TasksFiltersSelect;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.border.ULCTitledBorder;
import com.ulcjava.base.application.util.Font;
import com.ulcjava.base.application.util.Color;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RComboBox;
import ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import com.ulcjava.base.application.util.Dimension;
import com.ulcjava.base.application.ULCFlowLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.workflow.ui.common.Header.HeaderPanel;

/**
 * RichDialog panel implementation for TasksFiltersSelectPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class TasksFiltersSelectPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RLabel caseProcessNameLabel = null;
private RLabel caseTypeNameLabel = null;
private RLabel caseSubTypeNameLabel = null;
private RLabel businessStartTimestampLabel = null;
private RLabel businessMainContactNameLabel = null;
private RLabel taskNameLabel = null;
private RLabel taskKindNameLabel = null;
private RLabel businessCreatorUserLabel = null;
private RComboBox caseProcessCategoriesComboBox = null;
private RComboBox caseTypesComboBox = null;
private RComboBox caseSubTypesComboBox = null;
private RComboBox businessStartTimestampsComboBox = null;
private RComboBox businessMainContactsComboBox = null;
private RComboBox taskNamesComboBox = null;
private RComboBox taskKindsComboBox = null;
private RComboBox businessCreatorUsersComboBox = null;
private RFlowLayoutPane actionsFlowLayoutPane = null;
private RButton applyFilterButton = null;
private RButton cancelFilterButton = null;
private RLabel caseProcessCategoryLabel = null;
private RComboBox caseProcessCategoryRelationalOperatorComboBox = null;
private RComboBox caseProcessesComboBox = null;
private RComboBox caseProcessRelationalOperatorComboBox = null;
private RComboBox caseTypeRelationalOperatorComboBox = null;
private RComboBox caseSubTypeRelationalOperatorComboBox = null;
private RComboBox businessStartTimestampRelationalOperatorComboBox = null;
private RComboBox businessMainContactRelationalOperatorComboBox = null;
private RComboBox taskNameRelationalOperatorComboBox = null;
private RComboBox taskKindRelationalOperatorComboBox = null;
private RComboBox businessCreatorUserRelationalOperatorComboBox = null;
private HeaderPanel headerRDC = null;
private RGridBagLayoutPane tasksFiltersGridBagLayoutPane = null;
/**
   * Create a new instance of TasksFiltersSelectPanel
   */
  public TasksFiltersSelectPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes TasksFiltersSelectPanel
   * @return void
   */
  public void initialize()
  {
        RFiller aFiller = new RFiller();
        aFiller.setStyleProperties("{/fill \"VERTICAL\"/weightY \"1\"}");
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(650,450));
        this.setName("taskFilterDetailsGridBagLayoutPane");
        this.add(getActionsFlowLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 11, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.WEST, com.ulcjava.base.application.GridBagConstraints.HORIZONTAL, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(aFiller, new com.ulcjava.base.application.GridBagConstraints(0, 12, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getHeaderRDC(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 4, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getTasksFiltersGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 4, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes caseProcessNameLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCaseProcessNameLabel() {
	if (caseProcessNameLabel == null) {
		caseProcessNameLabel = new RLabel();
		caseProcessNameLabel.setName("caseProcessNameLabel");
		caseProcessNameLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseProcessName\")%>");
		caseProcessNameLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/PROCESS_CODE16\")%>");
	}
	return caseProcessNameLabel;
}

/**
 * This method initializes caseTypeNameLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCaseTypeNameLabel() {
	if (caseTypeNameLabel == null) {
		caseTypeNameLabel = new RLabel();
		caseTypeNameLabel.setName("caseTypeNameLabel");
		caseTypeNameLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/TYPE_CODE16\")%>");
		caseTypeNameLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseTypeName\")%>");
	}
	return caseTypeNameLabel;
}

/**
 * This method initializes caseSubTypeNameLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCaseSubTypeNameLabel() {
	if (caseSubTypeNameLabel == null) {
		caseSubTypeNameLabel = new RLabel();
		caseSubTypeNameLabel.setName("caseSubTypeNameLabel");
		caseSubTypeNameLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseSubTypeName\")%>");
		caseSubTypeNameLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/SUB_TYPE_CODE16\")%>");
	}
	return caseSubTypeNameLabel;
}

/**
 * This method initializes businessStartTimestampLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getBusinessStartTimestampLabel() {
	if (businessStartTimestampLabel == null) {
		businessStartTimestampLabel = new RLabel();
		businessStartTimestampLabel.setName("businessStartTimestampLabel");
		businessStartTimestampLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/BUSINESS_DATETIME_START16\")%>");
		businessStartTimestampLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/businessStartTimeStamp\")%>");
	}
	return businessStartTimestampLabel;
}

/**
 * This method initializes businessMainContactNameLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getBusinessMainContactNameLabel() {
	if (businessMainContactNameLabel == null) {
		businessMainContactNameLabel = new RLabel();
		businessMainContactNameLabel.setName("businessMainContactNameLabel");
		businessMainContactNameLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/BUSINESS_MAIN_CONTACT_ID16\")%>");
		businessMainContactNameLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/businessMainContactName\")%>");
	}
	return businessMainContactNameLabel;
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
		taskNameLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/taskName\")%>");
	}
	return taskNameLabel;
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
		taskKindNameLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/KIND_CODE16\")%>");
		taskKindNameLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/taskKindName\")%>");
	}
	return taskKindNameLabel;
}

/**
 * This method initializes businessCreatorUserLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getBusinessCreatorUserLabel() {
	if (businessCreatorUserLabel == null) {
		businessCreatorUserLabel = new RLabel();
		businessCreatorUserLabel.setName("businessCreatorUserLabel");
		businessCreatorUserLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/BUSINESS_CREATOR_USER16\")%>");
		businessCreatorUserLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/businessCreatorUser\")%>");
	}
	return businessCreatorUserLabel;
}

/**
 * This method initializes caseProcessCategoriesComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getCaseProcessCategoriesComboBox() {
	if (caseProcessCategoriesComboBox == null) {
		caseProcessCategoriesComboBox = new RComboBox();
		caseProcessCategoriesComboBox.setName("caseProcessCategoriesComboBox");
		caseProcessCategoriesComboBox.setStyleProperties("{/weightX \"1\"}");
		caseProcessCategoriesComboBox.setModelConfiguration("{/result \"result=entry.categoryName\"/version \"2.0\"/icon \"\"/tooltip \"result=\\\"<html>Property: \\\" + entry.property + \\\"<br>Category code: \\\" + entry.categoryCode + \\\"<br>Category name: \\\" + entry.categoryName\"}");
	}
	return caseProcessCategoriesComboBox;
}

/**
 * This method initializes caseTypesComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getCaseTypesComboBox() {
	if (caseTypesComboBox == null) {
		caseTypesComboBox = new RComboBox();
		caseTypesComboBox.setName("caseTypesComboBox");
		caseTypesComboBox.setStyleProperties("{/weightX \"1\"}");
		caseTypesComboBox.setModelConfiguration("{/result \"result=entry.categoryName\"/version \"2.0\"/icon \"\"/tooltip \"result=\\\"<html>Property: \\\" + entry.property + \\\"<br>Category code: \\\" + entry.categoryCode + \\\"<br>Category name: \\\" + entry.categoryName\"}");
	}
	return caseTypesComboBox;
}

/**
 * This method initializes caseSubTypesComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getCaseSubTypesComboBox() {
	if (caseSubTypesComboBox == null) {
		caseSubTypesComboBox = new RComboBox();
		caseSubTypesComboBox.setName("caseSubTypesComboBox");
		caseSubTypesComboBox.setStyleProperties("{/weightX \"1\"}");
		caseSubTypesComboBox.setModelConfiguration("{/result \"result=entry.categoryName\"/version \"2.0\"/icon \"\"/tooltip \"result=\\\"<html>Property: \\\" + entry.property + \\\"<br>Category code: \\\" + entry.categoryCode + \\\"<br>Category name: \\\" + entry.categoryName\"}");
	}
	return caseSubTypesComboBox;
}

/**
 * This method initializes businessStartTimestampsComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getBusinessStartTimestampsComboBox() {
	if (businessStartTimestampsComboBox == null) {
		businessStartTimestampsComboBox = new RComboBox();
		businessStartTimestampsComboBox.setName("businessStartTimestampsComboBox");
		businessStartTimestampsComboBox.setStyleProperties("{/weightX \"1\"}");
		businessStartTimestampsComboBox.setModelConfiguration("{/result \"result=entry.categoryName\"/version \"2.0\"/icon \"\"/tooltip \"result=\\\"<html>Property: \\\" + entry.property + \\\"<br>Category code: \\\" + entry.categoryCode + \\\"<br>Category name: \\\" + entry.categoryName\"}");
	}
	return businessStartTimestampsComboBox;
}

/**
 * This method initializes businessMainContactsComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getBusinessMainContactsComboBox() {
	if (businessMainContactsComboBox == null) {
		businessMainContactsComboBox = new RComboBox();
		businessMainContactsComboBox.setName("businessMainContactsComboBox");
		businessMainContactsComboBox.setStyleProperties("{/weightX \"1\"}");
		businessMainContactsComboBox.setModelConfiguration("{/result \"result=entry.categoryName\"/version \"2.0\"/icon \"\"/tooltip \"result=\\\"<html>Property: \\\" + entry.property + \\\"<br>Category code: \\\" + entry.categoryCode + \\\"<br>Category name: \\\" + entry.categoryName\"}");
	}
	return businessMainContactsComboBox;
}

/**
 * This method initializes taskNamesComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getTaskNamesComboBox() {
	if (taskNamesComboBox == null) {
		taskNamesComboBox = new RComboBox();
		taskNamesComboBox.setName("taskNamesComboBox");
		taskNamesComboBox.setStyleProperties("{/weightX \"1\"}");
		taskNamesComboBox.setModelConfiguration("{/result \"result=entry.categoryName\"/version \"2.0\"/icon \"\"/tooltip \"result=\\\"<html>Property: \\\" + entry.property + \\\"<br>Category code: \\\" + entry.categoryCode + \\\"<br>Category name: \\\" + entry.categoryName\"}");
	}
	return taskNamesComboBox;
}

/**
 * This method initializes taskKindsComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getTaskKindsComboBox() {
	if (taskKindsComboBox == null) {
		taskKindsComboBox = new RComboBox();
		taskKindsComboBox.setName("taskKindsComboBox");
		taskKindsComboBox.setStyleProperties("{/weightX \"1\"}");
		taskKindsComboBox.setModelConfiguration("{/result \"result=entry.categoryName\"/version \"2.0\"/icon \"\"/tooltip \"result=\\\"<html>Property: \\\" + entry.property + \\\"<br>Category code: \\\" + entry.categoryCode + \\\"<br>Category name: \\\" + entry.categoryName\"}");
	}
	return taskKindsComboBox;
}

/**
 * This method initializes businessCreatorUsersComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getBusinessCreatorUsersComboBox() {
	if (businessCreatorUsersComboBox == null) {
		businessCreatorUsersComboBox = new RComboBox();
		businessCreatorUsersComboBox.setName("businessCreatorUsersComboBox");
		businessCreatorUsersComboBox.setStyleProperties("{/weightX \"1\"}");
		businessCreatorUsersComboBox.setModelConfiguration("{/result \"result=entry.categoryName\"/version \"2.0\"/icon \"\"/tooltip \"result=\\\"<html>Property: \\\" + entry.property + \\\"<br>Category code: \\\" + entry.categoryCode + \\\"<br>Category name: \\\" + entry.categoryName\"}");
		businessCreatorUsersComboBox.setName("businessCreatorUsersComboBox");
	}
	return businessCreatorUsersComboBox;
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
		actionsFlowLayoutPane.setAlignment(ULCFlowLayoutPane.RIGHT);
		actionsFlowLayoutPane.setHgap(0);
		actionsFlowLayoutPane.setStyle("actionsButtons");
		actionsFlowLayoutPane.add(getApplyFilterButton());
		actionsFlowLayoutPane.add(getCancelFilterButton());
	}
	return actionsFlowLayoutPane;
}

/**
 * This method initializes applyFilterButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getApplyFilterButton() {
	if (applyFilterButton == null) {
		applyFilterButton = new RButton();
		applyFilterButton.setName("applyFilterButton");
		applyFilterButton.setText("Ok");
		applyFilterButton.setPreferredSize(new Dimension(75, 23));
	}
	return applyFilterButton;
}

/**
 * This method initializes cancelFilterButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getCancelFilterButton() {
	if (cancelFilterButton == null) {
		cancelFilterButton = new RButton();
		cancelFilterButton.setName("cancelFilterButton");
		cancelFilterButton.setText("Cancel");
		cancelFilterButton.setPreferredSize(new Dimension(75, 23));
	}
	return cancelFilterButton;
}

/**
 * This method initializes caseProcessCategoryLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCaseProcessCategoryLabel() {
	if (caseProcessCategoryLabel == null) {
		caseProcessCategoryLabel = new RLabel();
		caseProcessCategoryLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseProcessCategoryName\")%>");
		caseProcessCategoryLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/PROCESS_CATEGORY_CODE16\")%>");
		caseProcessCategoryLabel.setToolTipText("Case Process Category Name");
		caseProcessCategoryLabel.setName("caseProcessCategoryLabel");
	}
	return caseProcessCategoryLabel;
}

/**
 * This method initializes caseProcessCategoryRelationalOperatorComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getCaseProcessCategoryRelationalOperatorComboBox() {
	if (caseProcessCategoryRelationalOperatorComboBox == null) {
		caseProcessCategoryRelationalOperatorComboBox = new RComboBox();
		caseProcessCategoryRelationalOperatorComboBox.setName("caseProcessCategoryRelationalOperatorComboBox");
		caseProcessCategoryRelationalOperatorComboBox.setPreferredSize(new com.ulcjava.base.application.util.Dimension(50,22));
		caseProcessCategoryRelationalOperatorComboBox.setModelConfiguration("{/result \"result=entry.name\"/version \"2.0\"/icon \"\"/tooltip \"result=\\\"<html>Code: \\\" + entry.code + \\\"<br>Name: \\\" + entry.name\"}");
	}
	return caseProcessCategoryRelationalOperatorComboBox;
}

/**
 * This method initializes caseProcessesComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getCaseProcessesComboBox() {
	if (caseProcessesComboBox == null) {
		caseProcessesComboBox = new RComboBox();
		caseProcessesComboBox.setName("caseProcessesComboBox");
		caseProcessesComboBox.setStyleProperties("{/weightX \"1\"}");
		caseProcessesComboBox.setModelConfiguration("{/result \"result=entry.categoryName\"/version \"2.0\"/icon \"\"/tooltip \"result=\\\"<html>Property: \\\" + entry.property + \\\"<br>Category code: \\\" + entry.categoryCode + \\\"<br>Category name: \\\" + entry.categoryName\"}");
	}
	return caseProcessesComboBox;
}

/**
 * This method initializes caseProcessRelationalOperatorComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getCaseProcessRelationalOperatorComboBox() {
	if (caseProcessRelationalOperatorComboBox == null) {
		caseProcessRelationalOperatorComboBox = new RComboBox();
		caseProcessRelationalOperatorComboBox.setName("caseProcessRelationalOperatorComboBox");
		caseProcessRelationalOperatorComboBox.setModelConfiguration("{/result \"result=entry.name\"/version \"2.0\"/icon \"\"/tooltip \"result=\\\"<html>Code: \\\" + entry.code + \\\"<br>Name: \\\" + entry.name\"}");
		caseProcessRelationalOperatorComboBox.setName("caseProcessRelationalOperatorComboBox");
	}
	return caseProcessRelationalOperatorComboBox;
}

/**
 * This method initializes caseTypeRelationalOperatorComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getCaseTypeRelationalOperatorComboBox() {
	if (caseTypeRelationalOperatorComboBox == null) {
		caseTypeRelationalOperatorComboBox = new RComboBox();
		caseTypeRelationalOperatorComboBox.setName("caseTypeRelationalOperatorComboBox");
		caseTypeRelationalOperatorComboBox.setModelConfiguration("{/result \"result=entry.name\"/version \"2.0\"/icon \"\"/tooltip \"result=\\\"<html>Code: \\\" + entry.code + \\\"<br>Name: \\\" + entry.name\"}");
		caseTypeRelationalOperatorComboBox.setName("caseTypeRelationalOperatorComboBox");
	}
	return caseTypeRelationalOperatorComboBox;
}

/**
 * This method initializes caseSubTypeRelationalOperatorComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getCaseSubTypeRelationalOperatorComboBox() {
	if (caseSubTypeRelationalOperatorComboBox == null) {
		caseSubTypeRelationalOperatorComboBox = new RComboBox();
		caseSubTypeRelationalOperatorComboBox.setName("caseSubTypeRelationalOperatorComboBox");
		caseSubTypeRelationalOperatorComboBox.setModelConfiguration("{/result \"result=entry.name\"/version \"2.0\"/icon \"\"/tooltip \"result=\\\"<html>Code: \\\" + entry.code + \\\"<br>Name: \\\" + entry.name\"}");
		caseSubTypeRelationalOperatorComboBox.setName("caseSubTypeRelationalOperatorComboBox");
	}
	return caseSubTypeRelationalOperatorComboBox;
}

/**
 * This method initializes businessStartTimestampRelationalOperatorComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getBusinessStartTimestampRelationalOperatorComboBox() {
	if (businessStartTimestampRelationalOperatorComboBox == null) {
		businessStartTimestampRelationalOperatorComboBox = new RComboBox();
		businessStartTimestampRelationalOperatorComboBox.setName("businessStartTimestampRelationalOperatorComboBox");
		businessStartTimestampRelationalOperatorComboBox.setModelConfiguration("{/result \"result=entry.name\"/version \"2.0\"/icon \"\"/tooltip \"result=\\\"<html>Code: \\\" + entry.code + \\\"<br>Name: \\\" + entry.name\"}");
		businessStartTimestampRelationalOperatorComboBox.setName("businessStartTimestampRelationalOperatorComboBox");
	}
	return businessStartTimestampRelationalOperatorComboBox;
}

/**
 * This method initializes businessMainContactRelationalOperatorComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getBusinessMainContactRelationalOperatorComboBox() {
	if (businessMainContactRelationalOperatorComboBox == null) {
		businessMainContactRelationalOperatorComboBox = new RComboBox();
		businessMainContactRelationalOperatorComboBox.setName("businessMainContactRelationalOperatorComboBox");
		businessMainContactRelationalOperatorComboBox.setModelConfiguration("{/result \"result=entry.name\"/version \"2.0\"/icon \"\"/tooltip \"result=\\\"<html>Code: \\\" + entry.code + \\\"<br>Name: \\\" + entry.name\"}");
		businessMainContactRelationalOperatorComboBox.setName("businessMainContactRelationalOperatorComboBox");
	}
	return businessMainContactRelationalOperatorComboBox;
}

/**
 * This method initializes taskNameRelationalOperatorComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getTaskNameRelationalOperatorComboBox() {
	if (taskNameRelationalOperatorComboBox == null) {
		taskNameRelationalOperatorComboBox = new RComboBox();
		taskNameRelationalOperatorComboBox.setName("taskNameRelationalOperatorComboBox");
		taskNameRelationalOperatorComboBox.setModelConfiguration("{/result \"result=entry.name\"/version \"2.0\"/icon \"\"/tooltip \"result=\\\"<html>Code: \\\" + entry.code + \\\"<br>Name: \\\" + entry.name\"}");
		taskNameRelationalOperatorComboBox.setName("taskNameRelationalOperatorComboBox");
	}
	return taskNameRelationalOperatorComboBox;
}

/**
 * This method initializes taskKindRelationalOperatorComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getTaskKindRelationalOperatorComboBox() {
	if (taskKindRelationalOperatorComboBox == null) {
		taskKindRelationalOperatorComboBox = new RComboBox();
		taskKindRelationalOperatorComboBox.setName("taskKindRelationalOperatorComboBox");
		taskKindRelationalOperatorComboBox.setModelConfiguration("{/result \"result=entry.name\"/version \"2.0\"/icon \"\"/tooltip \"result=\\\"<html>Code: \\\" + entry.code + \\\"<br>Name: \\\" + entry.name\"}");
		taskKindRelationalOperatorComboBox.setName("taskKindRelationalOperatorComboBox");
	}
	return taskKindRelationalOperatorComboBox;
}

/**
 * This method initializes businessCreatorUserRelationalOperatorComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getBusinessCreatorUserRelationalOperatorComboBox() {
	if (businessCreatorUserRelationalOperatorComboBox == null) {
		businessCreatorUserRelationalOperatorComboBox = new RComboBox();
		businessCreatorUserRelationalOperatorComboBox.setName("businessCreatorUserRelationalOperatorComboBox");
		businessCreatorUserRelationalOperatorComboBox.setModelConfiguration("{/result \"result=entry.name\"/version \"2.0\"/icon \"\"/tooltip \"result=\\\"<html>Code: \\\" + entry.code + \\\"<br>Name: \\\" + entry.name\"}");
		businessCreatorUserRelationalOperatorComboBox.setName("businessCreatorUserRelationalOperatorComboBox");
	}
	return businessCreatorUserRelationalOperatorComboBox;
}

/**
 * This method initializes headerRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.common.Header.HeaderPanel	
 */
private HeaderPanel getHeaderRDC() {
	if (headerRDC == null) {
		headerRDC = new HeaderPanel();
		headerRDC.setName("headerRDC");
		headerRDC.setPreferredSize(new com.ulcjava.base.application.util.Dimension(20,75));
	}
	return headerRDC;
}

/**
 * This method initializes tasksFiltersGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getTasksFiltersGridBagLayoutPane() {
	if (tasksFiltersGridBagLayoutPane == null) {
		RFiller tasksFiltersFiller = new RFiller();
		tasksFiltersFiller.setStyle("horizontalStrut150");
		tasksFiltersGridBagLayoutPane = new RGridBagLayoutPane();
		tasksFiltersGridBagLayoutPane.setName("tasksFiltersGridBagLayoutPane");
		tasksFiltersGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(null, "Task categories", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(12, 74, 124)));
		tasksFiltersGridBagLayoutPane.add(getCaseProcessCategoryLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		tasksFiltersGridBagLayoutPane.add(getCaseProcessCategoryRelationalOperatorComboBox(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		tasksFiltersGridBagLayoutPane.add(getCaseProcessCategoriesComboBox(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		tasksFiltersGridBagLayoutPane.add(getCaseProcessNameLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		tasksFiltersGridBagLayoutPane.add(getCaseProcessRelationalOperatorComboBox(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		tasksFiltersGridBagLayoutPane.add(getCaseProcessesComboBox(), new com.ulcjava.base.application.GridBagConstraints(2, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		tasksFiltersGridBagLayoutPane.add(getCaseTypeNameLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		tasksFiltersGridBagLayoutPane.add(getCaseTypeRelationalOperatorComboBox(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		tasksFiltersGridBagLayoutPane.add(getCaseTypesComboBox(), new com.ulcjava.base.application.GridBagConstraints(2, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		tasksFiltersGridBagLayoutPane.add(getCaseSubTypeNameLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		tasksFiltersGridBagLayoutPane.add(getCaseSubTypeRelationalOperatorComboBox(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		tasksFiltersGridBagLayoutPane.add(getCaseSubTypesComboBox(), new com.ulcjava.base.application.GridBagConstraints(2, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		tasksFiltersGridBagLayoutPane.add(getBusinessStartTimestampLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		tasksFiltersGridBagLayoutPane.add(getBusinessStartTimestampRelationalOperatorComboBox(), new com.ulcjava.base.application.GridBagConstraints(1, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		tasksFiltersGridBagLayoutPane.add(getBusinessStartTimestampsComboBox(), new com.ulcjava.base.application.GridBagConstraints(2, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		tasksFiltersGridBagLayoutPane.add(getBusinessMainContactNameLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		tasksFiltersGridBagLayoutPane.add(getBusinessMainContactRelationalOperatorComboBox(), new com.ulcjava.base.application.GridBagConstraints(1, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		tasksFiltersGridBagLayoutPane.add(getBusinessMainContactsComboBox(), new com.ulcjava.base.application.GridBagConstraints(2, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		tasksFiltersGridBagLayoutPane.add(getTaskNameLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 6, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		tasksFiltersGridBagLayoutPane.add(getTaskNameRelationalOperatorComboBox(), new com.ulcjava.base.application.GridBagConstraints(1, 6, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		tasksFiltersGridBagLayoutPane.add(getTaskNamesComboBox(), new com.ulcjava.base.application.GridBagConstraints(2, 6, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		tasksFiltersGridBagLayoutPane.add(getTaskKindNameLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 7, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		tasksFiltersGridBagLayoutPane.add(getTaskKindRelationalOperatorComboBox(), new com.ulcjava.base.application.GridBagConstraints(1, 7, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		tasksFiltersGridBagLayoutPane.add(getTaskKindsComboBox(), new com.ulcjava.base.application.GridBagConstraints(2, 7, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		tasksFiltersGridBagLayoutPane.add(getBusinessCreatorUserLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 8, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		tasksFiltersGridBagLayoutPane.add(getBusinessCreatorUserRelationalOperatorComboBox(), new com.ulcjava.base.application.GridBagConstraints(1, 8, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		tasksFiltersGridBagLayoutPane.add(getBusinessCreatorUsersComboBox(), new com.ulcjava.base.application.GridBagConstraints(2, 8, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		tasksFiltersGridBagLayoutPane.add(tasksFiltersFiller, new com.ulcjava.base.application.GridBagConstraints(0, 9, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return tasksFiltersGridBagLayoutPane;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"