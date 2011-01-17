package ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect;

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
import com.ulcjava.base.application.enabler.ULCOrEnabler;
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
private RLabel businessCreatorUserLabel = null;
private RLabel businessMainContactIdLabel = null;
private RTextField businessMainContactIdTextField = null;
private RTextField businessCreatorUserTextField = null;
private RLabel businessMainContactNameLabel = null;
private RTextField businessMainContactNameTextField = null;
private RComboBox businessMainContactIdRelationalOperatorsComboBox = null;
private RComboBox businessMainContactNameRelationalOperatorsComboBox = null;
private RComboBox businessCreatorUserRelationalOperatorsComboBox = null;
private RComboBox caseNameRelationalOperatorsComboBox = null;
private RLabel businessStartTimestampLabel = null;
private RDatePicker businessStartTimestampDatePicker = null;
private RLabel businessMainContactTypeLabel = null;
private RComboBox businessMainContactTypeRelationalOperatorsComboBox = null;
private RTextField businessMainContactTypeTextField = null;
private RLabel correspondentContactIdLabel = null;
private RComboBox businessCorrespondentContactIdRelationalOperatorsComboBox = null;
private RTextField businessCorrespondentContactIdTextField = null;
private RLabel businessObjectCodeLabel = null;
private RComboBox businessObjectCodeRelationalOperatorsComboBox = null;
private RLabel businessObjectNameLabel = null;
private RComboBox businessObjectNameRelationalOperatorsComboBox = null;
private RTextField businessObjectCodeTextField = null;
private RTextField businessObjectNameTextField = null;
private ULCOrEnabler caseFiltersOrEnabler = null;  //  @jve:decl-index=0:visual-constraint="563,164"
private RLabel businessMilestoneTimestampLabel = null;
private RDatePicker businessMilestoneTimestampDatePicker = null;
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
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(305,432));
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
		CaseFiltersFiller.setStyle("horizontalStrut100");
		caseFiltersGridBagLayoutPane = new RGridBagLayoutPane();
		caseFiltersGridBagLayoutPane.setName("caseFiltersGridBagLayoutPane");
		caseFiltersGridBagLayoutPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		caseFiltersGridBagLayoutPane.setName("caseFiltersGridBagLayoutPane");
		caseFiltersGridBagLayoutPane.add(getCaseNameLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseFiltersGridBagLayoutPane.add(getCaseNameTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseFiltersGridBagLayoutPane.add(CaseFiltersFiller, new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseFiltersGridBagLayoutPane.add(getCaseNameRelationalOperatorsComboBox(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseFiltersGridBagLayoutPane.add(getBusinessStartTimestampLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseFiltersGridBagLayoutPane.add(getBusinessStartTimestampDatePicker(), new com.ulcjava.base.application.GridBagConstraints(2, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseFiltersGridBagLayoutPane.add(getBusinessMilestoneTimestampLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseFiltersGridBagLayoutPane.add(getBusinessMilestoneTimestampDatePicker(), new com.ulcjava.base.application.GridBagConstraints(2, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseFiltersGridBagLayoutPane.add(getBusinessCreatorUserLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseFiltersGridBagLayoutPane.add(getBusinessCreatorUserRelationalOperatorsComboBox(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseFiltersGridBagLayoutPane.add(getBusinessCreatorUserTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
		aFiller.setStyle("horizontalStrut100");
		businessFiltersGridBagLayoutPane = new RGridBagLayoutPane();
		businessFiltersGridBagLayoutPane.setName("businessFiltersGridBagLayoutPane");
			businessFiltersGridBagLayoutPane.add(getBusinessMainContactIdLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessFiltersGridBagLayoutPane.add(getBusinessMainContactIdTextField(), new com.ulcjava.base.application.GridBagConstraints(3, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessFiltersGridBagLayoutPane.add(getBusinessMainContactNameLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessFiltersGridBagLayoutPane.add(getBusinessMainContactNameTextField(), new com.ulcjava.base.application.GridBagConstraints(3, 2, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessFiltersGridBagLayoutPane.add(aFiller, new com.ulcjava.base.application.GridBagConstraints(0, 12, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessFiltersGridBagLayoutPane.add(getBusinessMainContactIdRelationalOperatorsComboBox(), new com.ulcjava.base.application.GridBagConstraints(2, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessFiltersGridBagLayoutPane.add(getBusinessMainContactNameRelationalOperatorsComboBox(), new com.ulcjava.base.application.GridBagConstraints(2, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessFiltersGridBagLayoutPane.add(getBusinessMainContactTypeLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessFiltersGridBagLayoutPane.add(getBusinessMainContactTypeRelationalOperatorsComboBox(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessFiltersGridBagLayoutPane.add(getBusinessMainContactTypeTextField(), new com.ulcjava.base.application.GridBagConstraints(3, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessFiltersGridBagLayoutPane.add(getCorrespondentContactIdLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessFiltersGridBagLayoutPane.add(getBusinessCorrespondentContactIdRelationalOperatorsComboBox(), new com.ulcjava.base.application.GridBagConstraints(2, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessFiltersGridBagLayoutPane.add(getBusinessCorrespondentContactIdTextField(), new com.ulcjava.base.application.GridBagConstraints(3, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessFiltersGridBagLayoutPane.add(getBusinessObjectCodeLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessFiltersGridBagLayoutPane.add(getBusinessObjectCodeRelationalOperatorsComboBox(), new com.ulcjava.base.application.GridBagConstraints(2, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessFiltersGridBagLayoutPane.add(getBusinessObjectNameLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessFiltersGridBagLayoutPane.add(getBusinessObjectNameRelationalOperatorsComboBox(), new com.ulcjava.base.application.GridBagConstraints(2, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessFiltersGridBagLayoutPane.add(getBusinessObjectCodeTextField(), new com.ulcjava.base.application.GridBagConstraints(3, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessFiltersGridBagLayoutPane.add(getBusinessObjectNameTextField(), new com.ulcjava.base.application.GridBagConstraints(3, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
		defineFilterButton.setEnabler(getCaseFiltersOrEnabler());
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
		caseNameLabel.setText("<%= ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/name\") %>");
		caseNameLabel.setStyle("rightAlignedLabel");
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
		caseNameTextField.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		caseNameTextField.setName("caseNameTextField");
	}
	return caseNameTextField;
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
		caseCategorizationFiltersGridBagLayoutPane.setStyleProperties("{/insetsRight \"0\"/insetsLeft \"0\"}");
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
		caseProcessCategoryLabel.setStyle("rightAlignedLabel");
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
		caseTypesComboBox.setName("caseTypesComboBox");
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
		caseSubTypesComboBox.setName("caseSubTypesComboBox");
		caseSubTypesComboBox.setPreferredSize(new com.ulcjava.base.application.util.Dimension(0,20));
		caseSubTypesComboBox.setStyleProperties("{/weightX \"1\"}");
	}
	return caseSubTypesComboBox;
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
		businessMainContactIdLabel.setText("<%= ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/businessMainContact/plainStrings/idLong\") %>\n");
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
		businessMainContactIdTextField.setColumns(25);
		businessMainContactIdTextField.setStyleProperties("{/fill \"HORIZONTAL\"}");
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
		businessCreatorUserTextField.setColumns(25);
		businessCreatorUserTextField.setStyleProperties("{/fill \"HORIZONTAL\"}");
		businessCreatorUserTextField.setName("businessCreatorUserTextField");
	}
	return businessCreatorUserTextField;
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
		businessMainContactNameTextField.setStyleProperties("{/fill \"HORIZONTAL\"}");
		businessMainContactNameTextField.setColumns(25);
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
			caseNameRelationalOperatorsComboBox.setModelConfiguration("{/result \"result=entry.compareTo(ch.ivyteam.logicalexpression.RelationalOperator.LIKE) == 0? \\\"=\\\":\\r\\n\\t(entry.compareTo(ch.ivyteam.logicalexpression.RelationalOperator.UNEQUAL) == 0? \\\"<>\\\": entry.toString())\"/version \"3.0\"/icon \"\"/tooltip \"\"}");
			caseNameRelationalOperatorsComboBox.setName("caseNameRelationalOperatorsComboBox");
}
	return caseNameRelationalOperatorsComboBox;
}

/**
 * This method initializes businessStartTimestampLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getBusinessStartTimestampLabel() {
	if (businessStartTimestampLabel == null) {
		businessStartTimestampLabel = new RLabel();
		businessStartTimestampLabel.setText("<%= ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/startedAt\") %>");
		businessStartTimestampLabel.setStyle("rightAlignedLabel");
		businessStartTimestampLabel.setName("businessStartTimestampLabel");
	}
	return businessStartTimestampLabel;
}

/**
 * This method initializes businessStartTimestampDatePicker	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RDatePicker	
 */
private RDatePicker getBusinessStartTimestampDatePicker() {
	if (businessStartTimestampDatePicker == null) {
		businessStartTimestampDatePicker = new RDatePicker();
		businessStartTimestampDatePicker.setEnabled(true);
		businessStartTimestampDatePicker.setStyleProperties("{/weightX \"1\"}");
		businessStartTimestampDatePicker.setName("businessStartTimestampDatePicker");
	}
	return businessStartTimestampDatePicker;
}

/**
 * This method initializes businessMainContactTypeLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getBusinessMainContactTypeLabel() {
	if (businessMainContactTypeLabel == null) {
		businessMainContactTypeLabel = new RLabel();
		businessMainContactTypeLabel.setText("<%= ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/businessMainContact/plainStrings/typeLong\") %>");
		businessMainContactTypeLabel.setStyle("rightAlignedLabel");
		businessMainContactTypeLabel.setName("businessMainContactTypeLabel");
	}
	return businessMainContactTypeLabel;
}

/**
 * This method initializes businessMainContactTypeRelationalOperatorsComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getBusinessMainContactTypeRelationalOperatorsComboBox() {
	if (businessMainContactTypeRelationalOperatorsComboBox == null) {
		businessMainContactTypeRelationalOperatorsComboBox = new RComboBox();
		businessMainContactTypeRelationalOperatorsComboBox.setName("businessMainContactTypeRelationalOperatorsComboBox");
		businessMainContactTypeRelationalOperatorsComboBox.setModelConfiguration("{/result \"result=entry.compareTo(ch.ivyteam.logicalexpression.RelationalOperator.LIKE) == 0? \\\"=\\\":\\r\\n\\t(entry.compareTo(ch.ivyteam.logicalexpression.RelationalOperator.UNEQUAL) == 0? \\\"<>\\\": entry.toString())\"/version \"3.0\"/icon \"\"/tooltip \"\"}");
		businessMainContactTypeRelationalOperatorsComboBox.setPreferredSize(new com.ulcjava.base.application.util.Dimension(50,20));
	}
	return businessMainContactTypeRelationalOperatorsComboBox;
}

/**
 * This method initializes businessMainContactTypeTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getBusinessMainContactTypeTextField() {
	if (businessMainContactTypeTextField == null) {
		businessMainContactTypeTextField = new RTextField();
		businessMainContactTypeTextField.setName("businessMainContactTypeTextField");
		businessMainContactTypeTextField.setColumns(25);
		businessMainContactTypeTextField.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		businessMainContactTypeTextField.setText("");
	}
	return businessMainContactTypeTextField;
}

/**
 * This method initializes correspondentContactIdLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCorrespondentContactIdLabel() {
	if (correspondentContactIdLabel == null) {
		correspondentContactIdLabel = new RLabel();
		correspondentContactIdLabel.setName("correspondentContactIdLabel");
		correspondentContactIdLabel.setVisible(false);
		correspondentContactIdLabel.setStyle("rightAlignedLabel");
		correspondentContactIdLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/correspondentContact/plainStrings/correspondentContact\")%>\n");
	}
	return correspondentContactIdLabel;
}

/**
 * This method initializes businessCorrespondentContactIdRelationalOperatorsComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getBusinessCorrespondentContactIdRelationalOperatorsComboBox() {
	if (businessCorrespondentContactIdRelationalOperatorsComboBox == null) {
		businessCorrespondentContactIdRelationalOperatorsComboBox = new RComboBox();
		businessCorrespondentContactIdRelationalOperatorsComboBox.setName("businessCorrespondentContactIdRelationalOperatorsComboBox");
		businessCorrespondentContactIdRelationalOperatorsComboBox.setModelConfiguration("{/result \"result=entry.compareTo(ch.ivyteam.logicalexpression.RelationalOperator.LIKE) == 0? \\\"=\\\":\\r\\n\\t(entry.compareTo(ch.ivyteam.logicalexpression.RelationalOperator.UNEQUAL) == 0? \\\"<>\\\": entry.toString())\"/version \"3.0\"/icon \"\"/tooltip \"\"}");
		businessCorrespondentContactIdRelationalOperatorsComboBox.setVisible(false);
		businessCorrespondentContactIdRelationalOperatorsComboBox.setPreferredSize(new com.ulcjava.base.application.util.Dimension(50,20));
	}
	return businessCorrespondentContactIdRelationalOperatorsComboBox;
}

/**
 * This method initializes businessCorrespondentContactIdTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getBusinessCorrespondentContactIdTextField() {
	if (businessCorrespondentContactIdTextField == null) {
		businessCorrespondentContactIdTextField = new RTextField();
		businessCorrespondentContactIdTextField.setName("businessCorrespondentContactIdTextField");
		businessCorrespondentContactIdTextField.setColumns(25);
		businessCorrespondentContactIdTextField.setStyleProperties("{/fill \"HORIZONTAL\"}");
		businessCorrespondentContactIdTextField.setVisible(false);
		businessCorrespondentContactIdTextField.setText("");
	}
	return businessCorrespondentContactIdTextField;
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
		businessObjectCodeRelationalOperatorsComboBox.setVisible(false);
		businessObjectCodeRelationalOperatorsComboBox.setPreferredSize(new com.ulcjava.base.application.util.Dimension(50,20));
	}
	return businessObjectCodeRelationalOperatorsComboBox;
}

/**
 * This method initializes businessObjectNameLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getBusinessObjectNameLabel() {
	if (businessObjectNameLabel == null) {
		businessObjectNameLabel = new RLabel();
		businessObjectNameLabel.setName("businessObjectNameLabel");
		businessObjectNameLabel.setStyle("rightAlignedLabel");
		businessObjectNameLabel.setText("<%= ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/businessObject/plainStrings/nameShort\") %>");
	}
	return businessObjectNameLabel;
}

/**
 * This method initializes businessObjectNameRelationalOperatorsComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getBusinessObjectNameRelationalOperatorsComboBox() {
	if (businessObjectNameRelationalOperatorsComboBox == null) {
		businessObjectNameRelationalOperatorsComboBox = new RComboBox();
		businessObjectNameRelationalOperatorsComboBox.setName("businessObjectNameRelationalOperatorsComboBox");
		businessObjectNameRelationalOperatorsComboBox.setModelConfiguration("{/result \"result=entry.compareTo(ch.ivyteam.logicalexpression.RelationalOperator.LIKE) == 0? \\\"=\\\":\\r\\n\\t(entry.compareTo(ch.ivyteam.logicalexpression.RelationalOperator.UNEQUAL) == 0? \\\"<>\\\": entry.toString())\"/version \"3.0\"/icon \"\"/tooltip \"\"}");
		businessObjectNameRelationalOperatorsComboBox.setPreferredSize(new Dimension(50, 20));
	}
	return businessObjectNameRelationalOperatorsComboBox;
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
		businessObjectCodeTextField.setColumns(25);
		businessObjectCodeTextField.setStyleProperties("{/fill \"HORIZONTAL\"}");
		businessObjectCodeTextField.setVisible(false);
		businessObjectCodeTextField.setText("");
	}
	return businessObjectCodeTextField;
}

/**
 * This method initializes businessObjectNameTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getBusinessObjectNameTextField() {
	if (businessObjectNameTextField == null) {
		businessObjectNameTextField = new RTextField();
		businessObjectNameTextField.setName("businessObjectNameTextField");
		businessObjectNameTextField.setStyleProperties("{/fill \"HORIZONTAL\"}");
		businessObjectNameTextField.setColumns(25);
		businessObjectNameTextField.setText("");
	}
	return businessObjectNameTextField;
}

/**
 * This method initializes caseFiltersOrEnabler	
 * 	
 * @return com.ulcjava.base.application.enabler.ULCOrEnabler	
 */
private ULCOrEnabler getCaseFiltersOrEnabler() {
	if (caseFiltersOrEnabler == null) {
		caseFiltersOrEnabler = new ULCOrEnabler();
		caseFiltersOrEnabler.add(getCaseNameTextField());
//		caseFiltersOrEnabler.add(getCaseStartTimestampFromDatePicker());
		
//		caseFiltersOrEnabler.add(getCaseProcessCategoriesComboBox());
//		caseFiltersOrEnabler.add(getCaseProcessesComboBox());
//		caseFiltersOrEnabler.add(getCaseTypesComboBox());
//		caseFiltersOrEnabler.add(getCaseSubTypesComboBox());
		
		caseFiltersOrEnabler.add(getBusinessMainContactTypeTextField());
		caseFiltersOrEnabler.add(getBusinessMainContactIdTextField());
		caseFiltersOrEnabler.add(getBusinessMainContactNameTextField());
		
		caseFiltersOrEnabler.add(getBusinessCorrespondentContactIdTextField());
		caseFiltersOrEnabler.add(getBusinessObjectCodeTextField());
		caseFiltersOrEnabler.add(getBusinessObjectNameTextField());
		
		caseFiltersOrEnabler.add(getBusinessCreatorUserTextField());
				
//		caseFiltersOrEnabler.add(getBusinessStartTimestampFromDatePicker());
//		caseFiltersOrEnabler.add(getBusinessStartTimestampToDatePicker());
		
	}
	return caseFiltersOrEnabler;
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
		businessMilestoneTimestampLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/businessMilestoneTimestamp\")%>");
	}
	return businessMilestoneTimestampLabel;
}

/**
 * This method initializes businessMilestoneTimestampDatePicker	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RDatePicker	
 */
private RDatePicker getBusinessMilestoneTimestampDatePicker() {
	if (businessMilestoneTimestampDatePicker == null) {
		businessMilestoneTimestampDatePicker = new RDatePicker();
		businessMilestoneTimestampDatePicker.setEnabled(true);
		businessMilestoneTimestampDatePicker.setStyleProperties("{/weightX \"1\"}");
		businessMilestoneTimestampDatePicker.setName("businessMilestoneTimestampDatePicker");
	}
	return businessMilestoneTimestampDatePicker;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"