package ch.ivyteam.ivy.workflow.ui.task.TaskFiltersSelect;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RComboBox;
import ch.ivyteam.ivy.richdialog.widgets.components.RDatePicker;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;

import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.ULCFlowLayoutPane;
import com.ulcjava.base.application.border.ULCTitledBorder;
import com.ulcjava.base.application.util.Color;
import com.ulcjava.base.application.util.Dimension;
import com.ulcjava.base.application.util.Font;

/**
 * RichDialog panel implementation for CaseBusinessAndTaskFiltersSelectPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class TaskFiltersSelectPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RGridBagLayoutPane businessFiltersGridBagLayoutPane = null;
private RFlowLayoutPane actionsFlowLayoutPane = null;
private RButton defineFilterButton = null;
private RButton cancelDefineFilterButton = null;
private RGridBagLayoutPane caseCategorizationFiltersGridBagLayoutPane = null;
private RLabel caseProcessCategoryLabel = null;
private RComboBox caseProcessCategoryRelationalOperatorComboBox = null;
private RComboBox caseProcessCategoriesComboBox = null;
private RLabel caseProcessNameLabel = null;
private RComboBox caseProcessRelationalOperatorComboBox = null;
private RComboBox caseProcessesComboBox = null;
private RLabel caseTypeNameLabel = null;
private RComboBox caseTypeRelationalOperatorComboBox = null;
private RComboBox caseTypesComboBox = null;
private RLabel caseSubTypeNameLabel = null;
private RComboBox caseSubTypeRelationalOperatorComboBox = null;
private RComboBox caseSubTypesComboBox = null;
private RLabel businessMilestoneTimestampLabel = null;
private RLabel taskKindCodeLabel = null;
private RLabel businessCreatorUserLabel = null;
private RLabel businessMainContactIdLabel = null;
private RTextField businessMainContactIdTextField = null;
private RTextField businessCreatorUserTextField = null;
private RDatePicker businessMilestoneTimestampDatePicker = null;
private RTextField taskKindCodeTextField = null;
private RLabel businessMainContactNameLabel = null;
private RTextField businessMainContactNameTextField = null;
private RComboBox businessMainContactIdRelationalOperatorsComboBox = null;
private RComboBox businessMainContactNameRelationalOperatorsComboBox = null;
private RComboBox businessCreatorUserRelationalOperatorsComboBox = null;
private RComboBox taskKindCodeRelationalOperatorsComboBox = null;
private RLabel businessObjectCodeLabel = null;
private RComboBox businessObjectCodeRelationalOperatorsComboBox = null;
private RTextField businessObjectCodeTextField = null;
private RGridBagLayoutPane taskFiltersGridBagLayoutPane = null;
private RLabel taskNameLabel = null;
private RTextField taskNameTextField = null;
private RComboBox taskNameRelationalOperatorsComboBox = null;
private RLabel taskStartTimestampFromLabel = null;
private RDatePicker taskStartTimestampUntilDatePicker = null;
private RGridBagLayoutPane taskStageGridBagLayoutPane = null;
/**
   * Create a new instance of CaseBusinessAndTaskFiltersSelectPanel
   */
  public TaskFiltersSelectPanel()
  {
    super();
    initialize();    
  }
  
  /**
   * This method initializes CaseBusinessAndTaskFiltersSelectPanel
   * @return void
   */
  private void initialize()
  {
        RFiller verticalFiller = new RFiller();
        verticalFiller.setStyleProperties("{/fill \"VERTICAL\"/weightY \"1\"}");
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(305,370));
        this.add(getBusinessFiltersGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getActionsFlowLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 6, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(verticalFiller, new com.ulcjava.base.application.GridBagConstraints(0, 8, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getCaseCategorizationFiltersGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getTaskFiltersGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getTaskStageGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes businessFiltersGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getBusinessFiltersGridBagLayoutPane() {
	if (businessFiltersGridBagLayoutPane == null) {
		RFiller aFiller = new RFiller();
		aFiller.setStyle("horizontalStrut100");
		businessFiltersGridBagLayoutPane = new RGridBagLayoutPane();
		businessFiltersGridBagLayoutPane.setName("businessFiltersGridBagLayoutPane");
		businessFiltersGridBagLayoutPane.add(getBusinessMainContactIdTextField(), new com.ulcjava.base.application.GridBagConstraints(3, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessFiltersGridBagLayoutPane.add(getBusinessMainContactNameLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessFiltersGridBagLayoutPane.add(getBusinessMainContactNameTextField(), new com.ulcjava.base.application.GridBagConstraints(3, 1, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessFiltersGridBagLayoutPane.add(aFiller, new com.ulcjava.base.application.GridBagConstraints(0, 7, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessFiltersGridBagLayoutPane.add(getBusinessObjectCodeLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessFiltersGridBagLayoutPane.add(getBusinessObjectCodeTextField(), new com.ulcjava.base.application.GridBagConstraints(3, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessFiltersGridBagLayoutPane.add(getBusinessMainContactIdLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessFiltersGridBagLayoutPane.add(getBusinessMainContactIdRelationalOperatorsComboBox(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessFiltersGridBagLayoutPane.add(getBusinessMainContactNameRelationalOperatorsComboBox(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessFiltersGridBagLayoutPane.add(getBusinessObjectCodeRelationalOperatorsComboBox(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
}
	return businessFiltersGridBagLayoutPane;
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
		actionsFlowLayoutPane.setStyleProperties("{/insetsRight \"4\"}");
		actionsFlowLayoutPane.add(getDefineFilterButton());
		actionsFlowLayoutPane.add(getCancelDefineFilterButton());
	}
	return actionsFlowLayoutPane;
}

/**
 * This method initializes defineFilterButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getDefineFilterButton() {
	if (defineFilterButton == null) {
		defineFilterButton = new RButton();
		defineFilterButton.setName("defineFilterButton");
		defineFilterButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/ok\")%>");
		defineFilterButton.setPreferredSize(new Dimension(75, 23));
	}
	return defineFilterButton;
}

/**
 * This method initializes cancelDefineFilterButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getCancelDefineFilterButton() {
	if (cancelDefineFilterButton == null) {
		cancelDefineFilterButton = new RButton();
		cancelDefineFilterButton.setName("cancelDefineFilterButton");
		cancelDefineFilterButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/cancel\")%>");
		cancelDefineFilterButton.setPreferredSize(new Dimension(75, 23));
	}
	return cancelDefineFilterButton;
}

/**
 * This method initializes caseCategorizationFiltersGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getCaseCategorizationFiltersGridBagLayoutPane() {
	if (caseCategorizationFiltersGridBagLayoutPane == null) {
		RFiller tasksFiltersFiller = new RFiller();
		tasksFiltersFiller.setStyle("horizontalStrut100");
		tasksFiltersFiller.setStyleProperties("{/preferredSizeWidth \"88\"}");
		caseCategorizationFiltersGridBagLayoutPane = new RGridBagLayoutPane();
		caseCategorizationFiltersGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(null, "", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(12, 74, 124)));
		caseCategorizationFiltersGridBagLayoutPane.setName("caseCategorizationFiltersGridBagLayoutPane");
		caseCategorizationFiltersGridBagLayoutPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
			caseCategorizationFiltersGridBagLayoutPane.setName("caseCategorizationFiltersGridBagLayoutPane");
	caseCategorizationFiltersGridBagLayoutPane.add(getCaseProcessCategoryLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseCategorizationFiltersGridBagLayoutPane.add(getCaseProcessCategoryRelationalOperatorComboBox(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseCategorizationFiltersGridBagLayoutPane.add(getCaseProcessCategoriesComboBox(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseCategorizationFiltersGridBagLayoutPane.add(getCaseProcessNameLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseCategorizationFiltersGridBagLayoutPane.add(getCaseProcessRelationalOperatorComboBox(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseCategorizationFiltersGridBagLayoutPane.add(getCaseProcessesComboBox(), new com.ulcjava.base.application.GridBagConstraints(2, 1, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseCategorizationFiltersGridBagLayoutPane.add(getCaseTypeNameLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseCategorizationFiltersGridBagLayoutPane.add(getCaseTypeRelationalOperatorComboBox(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseCategorizationFiltersGridBagLayoutPane.add(getCaseTypesComboBox(), new com.ulcjava.base.application.GridBagConstraints(2, 2, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseCategorizationFiltersGridBagLayoutPane.add(getCaseSubTypeNameLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseCategorizationFiltersGridBagLayoutPane.add(getCaseSubTypeRelationalOperatorComboBox(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseCategorizationFiltersGridBagLayoutPane.add(getCaseSubTypesComboBox(), new com.ulcjava.base.application.GridBagConstraints(2, 3, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseCategorizationFiltersGridBagLayoutPane.add(tasksFiltersFiller, new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return caseCategorizationFiltersGridBagLayoutPane;
}

/**
 * This method initializes caseProcessCategoryLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCaseProcessCategoryLabel() {
	if (caseProcessCategoryLabel == null) {
		caseProcessCategoryLabel = new RLabel();
		caseProcessCategoryLabel.setName("caseProcessCategoryLabel");
		caseProcessCategoryLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseProcessCategoryName\")%>");
		caseProcessCategoryLabel.setStyle("rightAlignedLabel");
		caseProcessCategoryLabel.setToolTipText("Case Process Category Name");
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
		caseProcessCategoryRelationalOperatorComboBox.setModelConfiguration("{/result \"result=entry.compareTo(ch.ivyteam.logicalexpression.RelationalOperator.EQUAL) == 0? \\\"=\\\":\\r\\n\\t(entry.compareTo(ch.ivyteam.logicalexpression.RelationalOperator.UNEQUAL) == 0? \\\"<>\\\": entry.toString())\"/version \"3.0\"/icon \"\"/tooltip \"\"/emptyTableText \"\"}");
		caseProcessCategoryRelationalOperatorComboBox.setPreferredSize(new com.ulcjava.base.application.util.Dimension(50,20));
	}
	return caseProcessCategoryRelationalOperatorComboBox;
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
		caseProcessCategoriesComboBox.setModelConfiguration("{/result \"result=entry.categoryName\"/version \"2.0\"/icon \"\"/tooltip \"result=\\\"<html>Property: \\\" + entry.property + \\\"<br>Category code: \\\" + entry.categoryCode + \\\"<br>Category name: \\\" + entry.categoryName\"/emptyTableText \"\"}");
		caseProcessCategoriesComboBox.setPreferredSize(new com.ulcjava.base.application.util.Dimension(0,20));
		caseProcessCategoriesComboBox.setStyleProperties("{/weightX \"1\"}");
	}
	return caseProcessCategoriesComboBox;
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
		caseProcessNameLabel.setStyle("rightAlignedLabel");
		caseProcessNameLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseProcessName\")%>");
	}
	return caseProcessNameLabel;
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
		caseProcessRelationalOperatorComboBox.setPreferredSize(new com.ulcjava.base.application.util.Dimension(50,20));
		caseProcessRelationalOperatorComboBox.setModelConfiguration("{/result \"result=entry.compareTo(ch.ivyteam.logicalexpression.RelationalOperator.EQUAL) == 0? \\\"=\\\":\\r\\n\\t(entry.compareTo(ch.ivyteam.logicalexpression.RelationalOperator.UNEQUAL) == 0? \\\"<>\\\": entry.toString())\"/version \"3.0\"/icon \"\"/tooltip \"\"}");
	}
	return caseProcessRelationalOperatorComboBox;
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
		caseProcessesComboBox.setModelConfiguration("{/result \"result=entry.categoryName\"/version \"2.0\"/icon \"\"/tooltip \"result=\\\"<html>Property: \\\" + entry.property + \\\"<br>Category code: \\\" + entry.categoryCode + \\\"<br>Category name: \\\" + entry.categoryName\"}");
		caseProcessesComboBox.setPreferredSize(new com.ulcjava.base.application.util.Dimension(0,20));
		caseProcessesComboBox.setStyleProperties("{/weightX \"1\"}");
	}
	return caseProcessesComboBox;
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
		caseTypeNameLabel.setStyle("rightAlignedLabel");
		caseTypeNameLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseTypeName\")%>");
	}
	return caseTypeNameLabel;
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
		caseTypeRelationalOperatorComboBox.setPreferredSize(new com.ulcjava.base.application.util.Dimension(50,20));
		caseTypeRelationalOperatorComboBox.setModelConfiguration("{/result \"result=entry.compareTo(ch.ivyteam.logicalexpression.RelationalOperator.EQUAL) == 0? \\\"=\\\":\\r\\n\\t(entry.compareTo(ch.ivyteam.logicalexpression.RelationalOperator.UNEQUAL) == 0? \\\"<>\\\": entry.toString())\"/version \"3.0\"/icon \"\"/tooltip \"\"}");
	}
	return caseTypeRelationalOperatorComboBox;
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
		caseTypesComboBox.setModelConfiguration("{/result \"result=entry.categoryName\"/version \"2.0\"/icon \"\"/tooltip \"result=\\\"<html>Property: \\\" + entry.property + \\\"<br>Category code: \\\" + entry.categoryCode + \\\"<br>Category name: \\\" + entry.categoryName\"}");
		caseTypesComboBox.setPreferredSize(new com.ulcjava.base.application.util.Dimension(0,20));
		caseTypesComboBox.setStyleProperties("{/weightX \"1\"}");
	}
	return caseTypesComboBox;
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
		caseSubTypeNameLabel.setStyle("rightAlignedLabel");
		caseSubTypeNameLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseSubTypeName\")%>");
	}
	return caseSubTypeNameLabel;
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
		caseSubTypeRelationalOperatorComboBox.setPreferredSize(new com.ulcjava.base.application.util.Dimension(50,20));
		caseSubTypeRelationalOperatorComboBox.setModelConfiguration("{/result \"result=entry.compareTo(ch.ivyteam.logicalexpression.RelationalOperator.EQUAL) == 0? \\\"=\\\":\\r\\n\\t(entry.compareTo(ch.ivyteam.logicalexpression.RelationalOperator.UNEQUAL) == 0? \\\"<>\\\": entry.toString())\"/version \"3.0\"/icon \"\"/tooltip \"\"}");
	}
	return caseSubTypeRelationalOperatorComboBox;
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
		caseSubTypesComboBox.setModelConfiguration("{/result \"result=entry.categoryName\"/version \"2.0\"/icon \"\"/tooltip \"result=\\\"<html>Property: \\\" + entry.property + \\\"<br>Category code: \\\" + entry.categoryCode + \\\"<br>Category name: \\\" + entry.categoryName\"}");
		caseSubTypesComboBox.setPreferredSize(new com.ulcjava.base.application.util.Dimension(0,20));
		caseSubTypesComboBox.setStyleProperties("{/weightX \"1\"}");
	}
	return caseSubTypesComboBox;
}

/**
 * This method initializes businessMilestoneTimestampLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getBusinessMilestoneTimestampLabel() {
	if (businessMilestoneTimestampLabel == null) {
		businessMilestoneTimestampLabel = new RLabel();
		businessMilestoneTimestampLabel.setName("businessMilestoneTimestampLabel");
		businessMilestoneTimestampLabel.setStyle("rightAlignedLabel");
		businessMilestoneTimestampLabel.setName("businessMilestoneTimestampLabel");
		businessMilestoneTimestampLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/businessMilestoneTimestamp\")%>\n");
	}
	return businessMilestoneTimestampLabel;
}

/**
 * This method initializes taskKindCodeLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getTaskKindCodeLabel() {
	if (taskKindCodeLabel == null) {
		taskKindCodeLabel = new RLabel();
		taskKindCodeLabel.setName("taskKindCodeLabel");
		taskKindCodeLabel.setStyle("rightAlignedLabel");
		taskKindCodeLabel.setText("<%= ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/taskKindCode\") %>");
	}
	return taskKindCodeLabel;
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
		businessCreatorUserLabel.setStyle("rightAlignedLabel");
		businessCreatorUserLabel.setText("<%= ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/otherBusinessData/plainStrings/businessCreatorUserShort\") %>");
	}
	return businessCreatorUserLabel;
}

/**
 * This method initializes businessMainContactIdLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getBusinessMainContactIdLabel() {
	if (businessMainContactIdLabel == null) {
		businessMainContactIdLabel = new RLabel();
		businessMainContactIdLabel.setText("<%= ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/businessMainContact/plainStrings/idLong\") %>");
		businessMainContactIdLabel.setStyle("rightAlignedLabel");
		businessMainContactIdLabel.setName("businessMainContactIdLabel");
	}
	return businessMainContactIdLabel;
}

/**
 * This method initializes businessMainContactIdTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getBusinessMainContactIdTextField() {
	if (businessMainContactIdTextField == null) {
		businessMainContactIdTextField = new RTextField();
		businessMainContactIdTextField.setName("businessMainContactIdTextField");
		businessMainContactIdTextField.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		businessMainContactIdTextField.setText("");
	}
	return businessMainContactIdTextField;
}

/**
 * This method initializes businessCreatorUserTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getBusinessCreatorUserTextField() {
	if (businessCreatorUserTextField == null) {
		businessCreatorUserTextField = new RTextField();
		businessCreatorUserTextField.setText("");
		businessCreatorUserTextField.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		businessCreatorUserTextField.setName("businessCreatorUserTextField");
	}
	return businessCreatorUserTextField;
}

/**
 * This method initializes businessMilestoneTimestampDatePicker	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RDatePicker	
 */
private RDatePicker getBusinessMilestoneTimestampDatePicker() {
	if (businessMilestoneTimestampDatePicker == null) {
		businessMilestoneTimestampDatePicker = new RDatePicker();
		businessMilestoneTimestampDatePicker.setName("businessMilestoneTimestampDatePicker");
		businessMilestoneTimestampDatePicker.setStyleProperties("{/weightX \"1\"}");
		businessMilestoneTimestampDatePicker.setEnabled(true);
	}
	return businessMilestoneTimestampDatePicker;
}

/**
 * This method initializes taskKindCodeTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getTaskKindCodeTextField() {
	if (taskKindCodeTextField == null) {
		taskKindCodeTextField = new RTextField();
		taskKindCodeTextField.setName("taskKindCodeTextField");
		taskKindCodeTextField.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		taskKindCodeTextField.setText("");
	}
	return taskKindCodeTextField;
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
		businessMainContactNameLabel.setStyle("rightAlignedLabel");
		businessMainContactNameLabel.setText("<%= ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/businessMainContact/plainStrings/nameLong\") %>");
	}
	return businessMainContactNameLabel;
}

/**
 * This method initializes businessMainContactNameTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getBusinessMainContactNameTextField() {
	if (businessMainContactNameTextField == null) {
		businessMainContactNameTextField = new RTextField();
		businessMainContactNameTextField.setName("businessMainContactNameTextField");
		businessMainContactNameTextField.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		businessMainContactNameTextField.setText("");
	}
	return businessMainContactNameTextField;
}

/**
 * This method initializes businessMainContactIdRelationalOperatorsComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getBusinessMainContactIdRelationalOperatorsComboBox() {
	if (businessMainContactIdRelationalOperatorsComboBox == null) {
		businessMainContactIdRelationalOperatorsComboBox = new RComboBox();
		businessMainContactIdRelationalOperatorsComboBox.setName("businessMainContactIdRelationalOperatorsComboBox");
		businessMainContactIdRelationalOperatorsComboBox.setPreferredSize(new com.ulcjava.base.application.util.Dimension(50,20));
			businessMainContactIdRelationalOperatorsComboBox.setModelConfiguration("{/result \"result=entry.compareTo(ch.ivyteam.logicalexpression.RelationalOperator.LIKE) == 0? \\\"=\\\":\\r\\n\\t(entry.compareTo(ch.ivyteam.logicalexpression.RelationalOperator.UNEQUAL) == 0? \\\"<>\\\": entry.toString())\"/version \"3.0\"/icon \"\"/tooltip \"\"}");
		businessMainContactIdRelationalOperatorsComboBox.setName("businessMainContactIdRelationalOperatorsComboBox");
}
	return businessMainContactIdRelationalOperatorsComboBox;
}

/**
 * This method initializes businessMainContactNameRelationalOperatorsComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getBusinessMainContactNameRelationalOperatorsComboBox() {
	if (businessMainContactNameRelationalOperatorsComboBox == null) {
		businessMainContactNameRelationalOperatorsComboBox = new RComboBox();
		businessMainContactNameRelationalOperatorsComboBox.setName("businessMainContactNameRelationalOperatorsComboBox");
		businessMainContactNameRelationalOperatorsComboBox.setPreferredSize(new com.ulcjava.base.application.util.Dimension(50,20));
			businessMainContactNameRelationalOperatorsComboBox.setModelConfiguration("{/result \"result=entry.compareTo(ch.ivyteam.logicalexpression.RelationalOperator.LIKE) == 0? \\\"=\\\":\\r\\n\\t(entry.compareTo(ch.ivyteam.logicalexpression.RelationalOperator.UNEQUAL) == 0? \\\"<>\\\": entry.toString())\"/version \"3.0\"/icon \"\"/tooltip \"\"}");
		businessMainContactNameRelationalOperatorsComboBox.setName("businessMainContactNameRelationalOperatorsComboBox");
}
	return businessMainContactNameRelationalOperatorsComboBox;
}

/**
 * This method initializes businessCreatorUserRelationalOperatorsComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getBusinessCreatorUserRelationalOperatorsComboBox() {
	if (businessCreatorUserRelationalOperatorsComboBox == null) {
		businessCreatorUserRelationalOperatorsComboBox = new RComboBox();
		businessCreatorUserRelationalOperatorsComboBox.setName("businessCreatorUserRelationalOperatorsComboBox");
		businessCreatorUserRelationalOperatorsComboBox.setPreferredSize(new com.ulcjava.base.application.util.Dimension(50,20));
			businessCreatorUserRelationalOperatorsComboBox.setModelConfiguration("{/result \"result=entry.compareTo(ch.ivyteam.logicalexpression.RelationalOperator.LIKE) == 0? \\\"=\\\":\\r\\n\\t(entry.compareTo(ch.ivyteam.logicalexpression.RelationalOperator.UNEQUAL) == 0? \\\"<>\\\": entry.toString())\"/version \"3.0\"/icon \"\"/tooltip \"\"}");
		businessCreatorUserRelationalOperatorsComboBox.setName("businessCreatorUserRelationalOperatorsComboBox");
}
	return businessCreatorUserRelationalOperatorsComboBox;
}

/**
 * This method initializes taskKindCodeRelationalOperatorsComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getTaskKindCodeRelationalOperatorsComboBox() {
	if (taskKindCodeRelationalOperatorsComboBox == null) {
		taskKindCodeRelationalOperatorsComboBox = new RComboBox();
		taskKindCodeRelationalOperatorsComboBox.setName("taskKindCodeRelationalOperatorsComboBox");
		taskKindCodeRelationalOperatorsComboBox.setPreferredSize(new com.ulcjava.base.application.util.Dimension(50,20));
			taskKindCodeRelationalOperatorsComboBox.setModelConfiguration("{/result \"result=entry.compareTo(ch.ivyteam.logicalexpression.RelationalOperator.LIKE) == 0? \\\"=\\\":\\r\\n\\t(entry.compareTo(ch.ivyteam.logicalexpression.RelationalOperator.UNEQUAL) == 0? \\\"<>\\\": entry.toString())\"/version \"3.0\"/icon \"\"/tooltip \"\"}");
}
	return taskKindCodeRelationalOperatorsComboBox;
}


/**
 * This method initializes businessObjectCodeLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getBusinessObjectCodeLabel() {
	if (businessObjectCodeLabel == null) {
		businessObjectCodeLabel = new RLabel();
		businessObjectCodeLabel.setName("businessObjectCodeLabel");
		businessObjectCodeLabel.setVisible(false);
		businessObjectCodeLabel.setStyle("rightAlignedLabel");
		businessObjectCodeLabel.setText("<%= ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/businessObject/plainStrings/codeShort\") %>");
	}
	return businessObjectCodeLabel;
}

/**
 * This method initializes businessObjectCodeRelationalOperatorsComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getBusinessObjectCodeRelationalOperatorsComboBox() {
	if (businessObjectCodeRelationalOperatorsComboBox == null) {
		businessObjectCodeRelationalOperatorsComboBox = new RComboBox();
		businessObjectCodeRelationalOperatorsComboBox.setName("businessObjectCodeRelationalOperatorsComboBox");
		businessObjectCodeRelationalOperatorsComboBox.setModelConfiguration("{/result \"result=entry.compareTo(ch.ivyteam.logicalexpression.RelationalOperator.LIKE) == 0? \\\"=\\\":\\r\\n\\t(entry.compareTo(ch.ivyteam.logicalexpression.RelationalOperator.UNEQUAL) == 0? \\\"<>\\\": entry.toString())\"/version \"3.0\"/icon \"\"/tooltip \"\"}");
		businessObjectCodeRelationalOperatorsComboBox.setPreferredSize(new com.ulcjava.base.application.util.Dimension(50,20));
		businessObjectCodeRelationalOperatorsComboBox.setVisible(false);
	}
	return businessObjectCodeRelationalOperatorsComboBox;
}

/**
 * This method initializes businessObjectCodeTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getBusinessObjectCodeTextField() {
	if (businessObjectCodeTextField == null) {
		businessObjectCodeTextField = new RTextField();
		businessObjectCodeTextField.setName("businessObjectCodeTextField");
		businessObjectCodeTextField.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		businessObjectCodeTextField.setVisible(false);
		businessObjectCodeTextField.setText("");
	}
	return businessObjectCodeTextField;
}

/**
 * This method initializes taskFiltersGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getTaskFiltersGridBagLayoutPane() {
	if (taskFiltersGridBagLayoutPane == null) {
		RFiller taskFiltersFiller = new RFiller();
		taskFiltersFiller.setStyle("horizontalStrut100");
		taskFiltersGridBagLayoutPane = new RGridBagLayoutPane();
		taskFiltersGridBagLayoutPane.setName("taskFiltersGridBagLayoutPane");
		taskFiltersGridBagLayoutPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		taskFiltersGridBagLayoutPane.add(getTaskNameLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		taskFiltersGridBagLayoutPane.add(getTaskNameTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		taskFiltersGridBagLayoutPane.add(taskFiltersFiller, new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		taskFiltersGridBagLayoutPane.add(getTaskStartTimestampFromLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		taskFiltersGridBagLayoutPane.add(getTaskStartTimestampUntilDatePicker(), new com.ulcjava.base.application.GridBagConstraints(2, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		taskFiltersGridBagLayoutPane.add(getBusinessCreatorUserLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		taskFiltersGridBagLayoutPane.add(getBusinessCreatorUserTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		taskFiltersGridBagLayoutPane.add(getBusinessMilestoneTimestampLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		taskFiltersGridBagLayoutPane.add(getBusinessMilestoneTimestampDatePicker(), new com.ulcjava.base.application.GridBagConstraints(2, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		taskFiltersGridBagLayoutPane.add(getTaskNameRelationalOperatorsComboBox(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		taskFiltersGridBagLayoutPane.add(getBusinessCreatorUserRelationalOperatorsComboBox(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return taskFiltersGridBagLayoutPane;
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
		taskNameLabel.setStyle("rightAlignedLabel");
		taskNameLabel.setText("<%= ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/name\") %>");
	}
	return taskNameLabel;
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
		taskNameTextField.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		taskNameTextField.setText("");
	}
	return taskNameTextField;
}

/**
 * This method initializes taskNameRelationalOperatorsComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getTaskNameRelationalOperatorsComboBox() {
	if (taskNameRelationalOperatorsComboBox == null) {
		taskNameRelationalOperatorsComboBox = new RComboBox();
		taskNameRelationalOperatorsComboBox.setName("taskNameRelationalOperatorsComboBox");
		taskNameRelationalOperatorsComboBox.setPreferredSize(new com.ulcjava.base.application.util.Dimension(50,20));
		taskNameRelationalOperatorsComboBox.setModelConfiguration("{/result \"result=entry.compareTo(ch.ivyteam.logicalexpression.RelationalOperator.LIKE) == 0? \\\"=\\\":\\r\\n\\t(entry.compareTo(ch.ivyteam.logicalexpression.RelationalOperator.UNEQUAL) == 0? \\\"<>\\\": entry.toString())\"/version \"3.0\"/icon \"\"/tooltip \"\"}");
	}
	return taskNameRelationalOperatorsComboBox;
}

/**
 * This method initializes taskStartTimestampFromLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getTaskStartTimestampFromLabel() {
	if (taskStartTimestampFromLabel == null) {
		taskStartTimestampFromLabel = new RLabel();
		taskStartTimestampFromLabel.setName("taskStartTimestampFromLabel");
		taskStartTimestampFromLabel.setStyle("rightAlignedLabel");
		taskStartTimestampFromLabel.setText("<%= ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/startedAt\") %>");
	}
	return taskStartTimestampFromLabel;
}

/**
 * This method initializes taskStartTimestampUntilDatePicker	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RDatePicker	
 */
private RDatePicker getTaskStartTimestampUntilDatePicker() {
	if (taskStartTimestampUntilDatePicker == null) {
		taskStartTimestampUntilDatePicker = new RDatePicker();
		taskStartTimestampUntilDatePicker.setEnabled(true);
		taskStartTimestampUntilDatePicker.setStyleProperties("{/weightX \"1\"}");
		taskStartTimestampUntilDatePicker.setName("taskStartTimestampUntilDatePicker");
	}
	return taskStartTimestampUntilDatePicker;
}

/**
 * This method initializes taskStageGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getTaskStageGridBagLayoutPane() {
	if (taskStageGridBagLayoutPane == null) {
		RFiller taskStageFiller = new RFiller();
		taskStageFiller.setStyle("horizontalStrut100");
		taskStageGridBagLayoutPane = new RGridBagLayoutPane();
		taskStageGridBagLayoutPane.setName("taskStageGridBagLayoutPane");
		taskStageGridBagLayoutPane.add(getTaskKindCodeLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		taskStageGridBagLayoutPane.add(getTaskKindCodeRelationalOperatorsComboBox(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		taskStageGridBagLayoutPane.add(getTaskKindCodeTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		taskStageGridBagLayoutPane.add(taskStageFiller, new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return taskStageGridBagLayoutPane;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"