package ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox;
import ch.ivyteam.ivy.richdialog.widgets.components.RComboBox;
import ch.ivyteam.ivy.richdialog.widgets.components.RDatePicker;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane;
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
public class CaseFiltersSelectPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RGridBagLayoutPane caseFiltersGridBagLayoutPane = null;
private RGridBagLayoutPane businessFiltersGridBagLayoutPane = null;
private RFlowLayoutPane actionsFlowLayoutPane = null;
private RButton defineFilterButton = null;
private RButton cancelDefineFilterButton = null;
private RLabel caseNameLabel = null;
private RTextField caseNameTextField = null;
private RLabel caseDescriptionLabel = null;
private RTextField caseDescriptionTextField = null;
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
private RLabel businessStartTimestampLabel = null;
private RLabel businessCreatorUserLabel = null;
private RLabel businessMainContactIdLabel = null;
private RTextField businessMainContactIdTextField = null;
private RTextField businessCreatorUserTextField = null;
private RDatePicker businessStartTimestampFromDatePicker = null;
private RDatePicker businessStartTimestampToDatePicker = null;
private RCheckBox businessStartTimestampFromCheckBox = null;
private RCheckBox businessStartTimestampToCheckBox = null;
private RButton refreshTaskCategorizationHierarchyButton = null;
private RLabel businessMainContactNameLabel = null;
private RTextField businessMainContactNameTextField = null;
private RLabel businessMainContactLabel = null;
private RComboBox businessMainContactIdRelationalOperatorsComboBox = null;
private RComboBox businessMainContactNameRelationalOperatorsComboBox = null;
private RComboBox businessCreatorUserRelationalOperatorsComboBox = null;
private RComboBox caseNameRelationalOperatorsComboBox = null;
private RComboBox caseDescriptionRelationalOperatorsComboBox = null;
private RBoxPane businessStartTimeBoxPane = null;
private RLabel caseStartTimestampFromLabel = null;
private RCheckBox caseStartTimestampFromCheckBox = null;
private RDatePicker caseStartTimestampFromDatePicker = null;
/**
   * Create a new instance of CaseBusinessAndTaskFiltersSelectPanel
   */
  public CaseFiltersSelectPanel()
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
        this.add(getCaseFiltersGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getBusinessFiltersGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getActionsFlowLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(verticalFiller, new com.ulcjava.base.application.GridBagConstraints(0, 6, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getCaseCategorizationFiltersGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes caseFiltersGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getCaseFiltersGridBagLayoutPane() {
	if (caseFiltersGridBagLayoutPane == null) {
		RFiller CaseFiltersFiller = new RFiller();
		CaseFiltersFiller.setStyle("horizontalStrut150");
		CaseFiltersFiller.setStyleProperties("{/preferredSizeWidth \"140\"}");
		caseFiltersGridBagLayoutPane = new RGridBagLayoutPane();
		caseFiltersGridBagLayoutPane.setName("caseFiltersGridBagLayoutPane");
		caseFiltersGridBagLayoutPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		caseFiltersGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(null, "Case filters", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(12, 74, 124)));
		caseFiltersGridBagLayoutPane.setName("caseFiltersGridBagLayoutPane");
		caseFiltersGridBagLayoutPane.add(getCaseNameLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseFiltersGridBagLayoutPane.add(getCaseNameTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseFiltersGridBagLayoutPane.add(getCaseDescriptionLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseFiltersGridBagLayoutPane.add(getCaseDescriptionTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseFiltersGridBagLayoutPane.add(CaseFiltersFiller, new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseFiltersGridBagLayoutPane.add(getCaseNameRelationalOperatorsComboBox(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseFiltersGridBagLayoutPane.add(getCaseDescriptionRelationalOperatorsComboBox(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseFiltersGridBagLayoutPane.add(getCaseStartTimestampFromLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseFiltersGridBagLayoutPane.add(getCaseStartTimestampFromCheckBox(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseFiltersGridBagLayoutPane.add(getCaseStartTimestampFromDatePicker(), new com.ulcjava.base.application.GridBagConstraints(2, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return caseFiltersGridBagLayoutPane;
}

/**
 * This method initializes businessFiltersGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getBusinessFiltersGridBagLayoutPane() {
	if (businessFiltersGridBagLayoutPane == null) {
		RFiller aFiller = new RFiller();
		aFiller.setStyle("horizontalStrut150");
		aFiller.setStyleProperties("{/preferredSizeWidth \"140\"}");
		businessFiltersGridBagLayoutPane = new RGridBagLayoutPane();
		businessFiltersGridBagLayoutPane.setName("businessFiltersGridBagLayoutPane");
		businessFiltersGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(null, "Business filters", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(12, 74, 124)));
			businessFiltersGridBagLayoutPane.add(getBusinessMainContactIdLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessFiltersGridBagLayoutPane.add(getBusinessMainContactIdTextField(), new com.ulcjava.base.application.GridBagConstraints(3, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	businessFiltersGridBagLayoutPane.add(getBusinessCreatorUserLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessFiltersGridBagLayoutPane.add(getBusinessCreatorUserTextField(), new com.ulcjava.base.application.GridBagConstraints(3, 3, 4, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessFiltersGridBagLayoutPane.add(getBusinessStartTimestampLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessFiltersGridBagLayoutPane.add(getBusinessMainContactNameLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessFiltersGridBagLayoutPane.add(getBusinessMainContactNameTextField(), new com.ulcjava.base.application.GridBagConstraints(3, 1, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessFiltersGridBagLayoutPane.add(getBusinessMainContactLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessFiltersGridBagLayoutPane.add(aFiller, new com.ulcjava.base.application.GridBagConstraints(0, 6, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessFiltersGridBagLayoutPane.add(getBusinessMainContactIdRelationalOperatorsComboBox(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessFiltersGridBagLayoutPane.add(getBusinessMainContactNameRelationalOperatorsComboBox(), new com.ulcjava.base.application.GridBagConstraints(2, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessFiltersGridBagLayoutPane.add(getBusinessCreatorUserRelationalOperatorsComboBox(), new com.ulcjava.base.application.GridBagConstraints(2, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessFiltersGridBagLayoutPane.add(getBusinessStartTimeBoxPane(), new com.ulcjava.base.application.GridBagConstraints(2, 4, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
 * This method initializes caseNameLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCaseNameLabel() {
	if (caseNameLabel == null) {
		caseNameLabel = new RLabel();
		caseNameLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseName\")%>");
		caseNameLabel.setName("caseNameLabel");
	}
	return caseNameLabel;
}

/**
 * This method initializes caseNameTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getCaseNameTextField() {
	if (caseNameTextField == null) {
		caseNameTextField = new RTextField();
		caseNameTextField.setText("");
		caseNameTextField.setStyleProperties("{/weightX \"1\"}");
		caseNameTextField.setName("caseNameTextField");
	}
	return caseNameTextField;
}

/**
 * This method initializes caseDescriptionLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCaseDescriptionLabel() {
	if (caseDescriptionLabel == null) {
		caseDescriptionLabel = new RLabel();
		caseDescriptionLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseDescription\")%>");
		caseDescriptionLabel.setEnabled(false);
		caseDescriptionLabel.setName("caseDescriptionLabel");
	}
	return caseDescriptionLabel;
}

/**
 * This method initializes caseDescriptionTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getCaseDescriptionTextField() {
	if (caseDescriptionTextField == null) {
		caseDescriptionTextField = new RTextField();
		caseDescriptionTextField.setText("");
		caseDescriptionTextField.setEnabled(false);
		caseDescriptionTextField.setName("caseDescriptionTextField");
	}
	return caseDescriptionTextField;
}

/**
 * This method initializes caseCategorizationFiltersGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getCaseCategorizationFiltersGridBagLayoutPane() {
	if (caseCategorizationFiltersGridBagLayoutPane == null) {
		RFiller tasksFiltersFiller = new RFiller();
		tasksFiltersFiller.setStyle("horizontalStrut150");
		tasksFiltersFiller.setStyleProperties("{/preferredSizeWidth \"135\"}");
		caseCategorizationFiltersGridBagLayoutPane = new RGridBagLayoutPane();
		caseCategorizationFiltersGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(null, "Case categorization hierarchy", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(12, 74, 124)));
		caseCategorizationFiltersGridBagLayoutPane.setName("caseCategorizationFiltersGridBagLayoutPane");
			caseCategorizationFiltersGridBagLayoutPane.setName("caseCategorizationFiltersGridBagLayoutPane");
	caseCategorizationFiltersGridBagLayoutPane.add(getCaseProcessCategoryLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseCategorizationFiltersGridBagLayoutPane.add(getCaseProcessCategoryRelationalOperatorComboBox(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseCategorizationFiltersGridBagLayoutPane.add(getCaseProcessCategoriesComboBox(), new com.ulcjava.base.application.GridBagConstraints(2, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseCategorizationFiltersGridBagLayoutPane.add(getCaseProcessNameLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseCategorizationFiltersGridBagLayoutPane.add(getCaseProcessRelationalOperatorComboBox(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseCategorizationFiltersGridBagLayoutPane.add(getCaseProcessesComboBox(), new com.ulcjava.base.application.GridBagConstraints(2, 2, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseCategorizationFiltersGridBagLayoutPane.add(getCaseTypeNameLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseCategorizationFiltersGridBagLayoutPane.add(getCaseTypeRelationalOperatorComboBox(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseCategorizationFiltersGridBagLayoutPane.add(getCaseTypesComboBox(), new com.ulcjava.base.application.GridBagConstraints(2, 3, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseCategorizationFiltersGridBagLayoutPane.add(getCaseSubTypeNameLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseCategorizationFiltersGridBagLayoutPane.add(getCaseSubTypeRelationalOperatorComboBox(), new com.ulcjava.base.application.GridBagConstraints(1, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseCategorizationFiltersGridBagLayoutPane.add(getCaseSubTypesComboBox(), new com.ulcjava.base.application.GridBagConstraints(2, 4, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseCategorizationFiltersGridBagLayoutPane.add(tasksFiltersFiller, new com.ulcjava.base.application.GridBagConstraints(0, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseCategorizationFiltersGridBagLayoutPane.add(getRefreshTaskCategorizationHierarchyButton(), new com.ulcjava.base.application.GridBagConstraints(3, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
		caseProcessCategoryLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/PROCESS_CATEGORY_CODE16\")%>");
		caseProcessCategoryLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseProcessCategoryName\")%>\n");
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
		caseProcessCategoryRelationalOperatorComboBox.setModelConfiguration("{/result \"result=entry.toString()\"/version \"2.0\"/icon \"\"/tooltip \"result=entry.name()\"/emptyTableText \"\"}");
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
		caseProcessCategoriesComboBox.setPreferredSize(new com.ulcjava.base.application.util.Dimension(0,25));
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
		caseProcessNameLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/PROCESS_CODE16\")%>");
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
		caseProcessRelationalOperatorComboBox.setModelConfiguration("{/result \"result=entry.toString()\"/version \"2.0\"/icon \"\"/tooltip \"result=entry.name()\"}");
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
		caseProcessesComboBox.setPreferredSize(new com.ulcjava.base.application.util.Dimension(0,25));
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
		caseTypeNameLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/TYPE_CODE16\")%>");
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
		caseTypeRelationalOperatorComboBox.setModelConfiguration("{/result \"result=entry.toString()\"/version \"2.0\"/icon \"\"/tooltip \"result=entry.name()\"}");
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
		caseTypesComboBox.setPreferredSize(new com.ulcjava.base.application.util.Dimension(0,25));
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
		caseSubTypeNameLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/SUB_TYPE_CODE16\")%>");
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
		caseSubTypeRelationalOperatorComboBox.setModelConfiguration("{/result \"result=entry.toString()\"/version \"2.0\"/icon \"\"/tooltip \"result=entry.name()\"}");
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
		caseSubTypesComboBox.setPreferredSize(new com.ulcjava.base.application.util.Dimension(0,25));
		caseSubTypesComboBox.setStyleProperties("{/weightX \"1\"}");
	}
	return caseSubTypesComboBox;
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
		businessStartTimestampLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/BUSINESS_START_TIMESTAMP16\")%>");
		businessStartTimestampLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/businessStartTimeStamp\")%>");
	}
	return businessStartTimestampLabel;
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
		businessCreatorUserLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/businessCreatorUser\")%>");
		businessCreatorUserLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/BUSINESS_CREATOR_USER16\")%>");
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
		businessMainContactIdLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/businessMainContactId\")%>");
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
		businessMainContactIdTextField.setStyleProperties("{/weightX \"1\"}");
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
		businessCreatorUserTextField.setName("businessCreatorUserTextField");
	}
	return businessCreatorUserTextField;
}

/**
 * This method initializes businessStartTimestampFromDatePicker	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RDatePicker	
 */
private RDatePicker getBusinessStartTimestampFromDatePicker() {
	if (businessStartTimestampFromDatePicker == null) {
		businessStartTimestampFromDatePicker = new RDatePicker();
		businessStartTimestampFromDatePicker.setName("businessStartTimestampFromDatePicker");
		businessStartTimestampFromDatePicker.setStyleProperties("{/weightX \"1\"}");
		businessStartTimestampFromDatePicker.setEnabled(false);
	}
	return businessStartTimestampFromDatePicker;
}

/**
 * This method initializes businessStartTimestampToDatePicker	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RDatePicker	
 */
private RDatePicker getBusinessStartTimestampToDatePicker() {
	if (businessStartTimestampToDatePicker == null) {
		businessStartTimestampToDatePicker = new RDatePicker();
		businessStartTimestampToDatePicker.setName("businessStartTimestampToDatePicker");
		businessStartTimestampToDatePicker.setStyleProperties("{/weightX \"1\"}");
		businessStartTimestampToDatePicker.setEnabled(false);
	}
	return businessStartTimestampToDatePicker;
}

/**
 * This method initializes businessStartTimestampFromCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getBusinessStartTimestampFromCheckBox() {
	if (businessStartTimestampFromCheckBox == null) {
		businessStartTimestampFromCheckBox = new RCheckBox();
		businessStartTimestampFromCheckBox.setName("businessStartTimestampFromCheckBox");
		businessStartTimestampFromCheckBox.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/businessStartTimeStampFrom\")%>");
		businessStartTimestampFromCheckBox.setName("businessStartTimestampFromCheckBox");
	}
	return businessStartTimestampFromCheckBox;
}

/**
 * This method initializes businessStartTimestampToCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getBusinessStartTimestampToCheckBox() {
	if (businessStartTimestampToCheckBox == null) {
		businessStartTimestampToCheckBox = new RCheckBox();
		businessStartTimestampToCheckBox.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/businessStartTimeStampTo\")%>");
		businessStartTimestampToCheckBox.setName("businessStartTimestampToCheckBox");
	}
	return businessStartTimestampToCheckBox;
}

/**
 * This method initializes refreshTaskCategorizationHierarchyButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getRefreshTaskCategorizationHierarchyButton() {
	if (refreshTaskCategorizationHierarchyButton == null) {
		refreshTaskCategorizationHierarchyButton = new RButton();
		refreshTaskCategorizationHierarchyButton.setIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/refresh16\") %>");
		refreshTaskCategorizationHierarchyButton.setToolTipText("<html><b>Refresh</b><br>Refresh the list of available Case Process Categories at the moment</html>");
		refreshTaskCategorizationHierarchyButton.setName("refreshTaskCategorizationHierarchyButton");
	}
	return refreshTaskCategorizationHierarchyButton;
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
		businessMainContactNameLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/businessMainContactName\")%>");
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
		businessMainContactNameTextField.setStyleProperties("{/weightX \"1\"}");
		businessMainContactNameTextField.setText("");
	}
	return businessMainContactNameTextField;
}

/**
 * This method initializes businessMainContactLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getBusinessMainContactLabel() {
	if (businessMainContactLabel == null) {
		businessMainContactLabel = new RLabel();
		businessMainContactLabel.setName("businessMainContactLabel");
		businessMainContactLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/BUSINESS_MAIN_CONTACT_ID16\")%>");
	}
	return businessMainContactLabel;
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
			businessMainContactIdRelationalOperatorsComboBox.setModelConfiguration("{/result \"result=entry.toString()\"/version \"2.0\"/icon \"\"/tooltip \"result=entry.name()\"}");
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
			businessMainContactNameRelationalOperatorsComboBox.setModelConfiguration("{/result \"result=entry.toString()\"/version \"2.0\"/icon \"\"/tooltip \"result=entry.name()\"}");
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
			businessCreatorUserRelationalOperatorsComboBox.setModelConfiguration("{/result \"result=entry.toString()\"/version \"2.0\"/icon \"\"/tooltip \"result=entry.name()\"}");
		businessCreatorUserRelationalOperatorsComboBox.setName("businessCreatorUserRelationalOperatorsComboBox");
}
	return businessCreatorUserRelationalOperatorsComboBox;
}

/**
 * This method initializes caseNameRelationalOperatorsComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getCaseNameRelationalOperatorsComboBox() {
	if (caseNameRelationalOperatorsComboBox == null) {
		caseNameRelationalOperatorsComboBox = new RComboBox();
		caseNameRelationalOperatorsComboBox.setName("caseNameRelationalOperatorsComboBox");
		caseNameRelationalOperatorsComboBox.setPreferredSize(new com.ulcjava.base.application.util.Dimension(50,20));
			caseNameRelationalOperatorsComboBox.setModelConfiguration("{/result \"result=entry.toString()\"/version \"2.0\"/icon \"\"/tooltip \"result=entry.name()\"}");
}
	return caseNameRelationalOperatorsComboBox;
}

/**
 * This method initializes caseDescriptionRelationalOperatorsComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getCaseDescriptionRelationalOperatorsComboBox() {
	if (caseDescriptionRelationalOperatorsComboBox == null) {
		caseDescriptionRelationalOperatorsComboBox = new RComboBox();
		caseDescriptionRelationalOperatorsComboBox.setName("caseDescriptionRelationalOperatorsComboBox");
		caseDescriptionRelationalOperatorsComboBox.setPreferredSize(new com.ulcjava.base.application.util.Dimension(50,20));
		caseDescriptionRelationalOperatorsComboBox.setEnabled(false);
	}
	return caseDescriptionRelationalOperatorsComboBox;
}

/**
 * This method initializes businessStartTimeBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getBusinessStartTimeBoxPane() {
	if (businessStartTimeBoxPane == null) {
		businessStartTimeBoxPane = new RBoxPane();
		businessStartTimeBoxPane.setName("businessStartTimeBoxPane");
		businessStartTimeBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getBusinessStartTimestampFromCheckBox());
		businessStartTimeBoxPane.set(1, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getBusinessStartTimestampFromDatePicker());
		businessStartTimeBoxPane.set(0, 1, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getBusinessStartTimestampToCheckBox());
		businessStartTimeBoxPane.set(1, 1, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getBusinessStartTimestampToDatePicker());
	}
	return businessStartTimeBoxPane;
}

/**
 * This method initializes caseStartTimestampFromLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCaseStartTimestampFromLabel() {
	if (caseStartTimestampFromLabel == null) {
		caseStartTimestampFromLabel = new RLabel();
		caseStartTimestampFromLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseStartTimestamp\")%>");
		caseStartTimestampFromLabel.setName("caseStartTimestampFromLabel");
	}
	return caseStartTimestampFromLabel;
}

/**
 * This method initializes caseStartTimestampFromCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getCaseStartTimestampFromCheckBox() {
	if (caseStartTimestampFromCheckBox == null) {
		caseStartTimestampFromCheckBox = new RCheckBox();
		caseStartTimestampFromCheckBox.setName("caseStartTimestampFromCheckBox");
		caseStartTimestampFromCheckBox.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/businessStartTimeStampFrom\")%>");
	}
	return caseStartTimestampFromCheckBox;
}

/**
 * This method initializes caseStartTimestampFromDatePicker	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RDatePicker	
 */
private RDatePicker getCaseStartTimestampFromDatePicker() {
	if (caseStartTimestampFromDatePicker == null) {
		caseStartTimestampFromDatePicker = new RDatePicker();
		caseStartTimestampFromDatePicker.setEnabled(false);
		caseStartTimestampFromDatePicker.setStyleProperties("{/weightX \"1\"}");
		caseStartTimestampFromDatePicker.setEnabler(getCaseStartTimestampFromCheckBox());
		caseStartTimestampFromDatePicker.setName("caseStartTimestampFromDatePicker");
	}
	return caseStartTimestampFromDatePicker;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"