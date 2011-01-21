package ch.ivyteam.ivy.workflow.ui.cases.CaseCategorizationDetailsDisplay;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextArea;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;

/**
 * RichDialog panel implementation for TaskHeaderDisplayPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class CaseCategorizationDetailsDisplayPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RTextField caseIdTextField = null;
private RTextField caseNameTextField = null;
private RTextField caseProcessNameTextField = null;
private RLabel caseProcessCategoryLabel = null;
private RLabel caseTypeLabel = null;
private RLabel caseNameLabel = null;
private RTextField caseProcessCategoryNameTextField = null;
private RTextField caseTypeCodeTextField = null;
private RTextField caseSubTypeNameTextField = null;
private RLabel caseDescriptionLabel = null;
private RTextArea caseDescriptionTextArea = null;
private RGridBagLayoutPane categoriesGridBagLayoutPane = null;
private RTextField caseProcessCategoryCodeTextField = null;
private RGridBagLayoutPane caseGridBagLayoutPane = null;
private RLabel caseProcessLabel = null;
private RTextField caseProcessCodeTextField = null;
private RTextField caseTypeNameTextField = null;
private RLabel caseSubTypeLabel = null;
private RTextField caseSubTypeCodeTextField = null;
private RLabel businessStartTimestampLabel = null;
private RTextField businessStartTimestampTextField = null;
private RLabel caseStateLabel = null;
private RTextField caseStateTextField = null;
private RScrollPane caseDescriptionScrollPane = null;
private RLabel casePriorityLabel = null;
private RLabel caseIdLabel = null;
private RTextField casePriorityTextField = null;
private RLabel caseStartedByLabel = null;
private RTextField caseStartByTextField = null;
private RLabel businessMilestoneTimestampLabel = null;
private RTextField businessMilestoneTimestampTextField = null;
/**
   * Create a new instance of TaskHeaderDisplayPanel
   */
  public CaseCategorizationDetailsDisplayPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes TaskHeaderDisplayPanel
   * @return void
   */
  public void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(480,355));
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(550,535));
        this.add(getCaseGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getCategoriesGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes caseIdTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getCaseIdTextField() {
	if (caseIdTextField == null) {
		caseIdTextField = new RTextField();
		caseIdTextField.setName("caseIdTextField");
		caseIdTextField.setText("");
		caseIdTextField.setStyleProperties("{/anchor \"WEST\"/fill \"HORIZONTAL\"/weightX \"1\"}");
		caseIdTextField.setEditable(false);
		caseIdTextField.setColumns(4);
	}
	return caseIdTextField;
}

/**
 * This method initializes caseNameTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getCaseNameTextField() {
	if (caseNameTextField == null) {
		caseNameTextField = new RTextField();
		caseNameTextField.setName("caseNameTextField");
		caseNameTextField.setText("");
		caseNameTextField.setStyleProperties("{/fill \"HORIZONTAL\"}");
		caseNameTextField.setEditable(false);
		caseNameTextField.setColumns(15);
	}
	return caseNameTextField;
}

/**
 * This method initializes caseProcessNameTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getCaseProcessNameTextField() {
	if (caseProcessNameTextField == null) {
		caseProcessNameTextField = new RTextField();
		caseProcessNameTextField.setName("caseProcessNameTextField");
		caseProcessNameTextField.setText("");
		caseProcessNameTextField.setStyleProperties("{/anchor \"WEST\"/fill \"HORIZONTAL\"/weightX \"1\"}");
		caseProcessNameTextField.setEditable(false);
		caseProcessNameTextField.setColumns(15);
	}
	return caseProcessNameTextField;
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
		caseProcessCategoryLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/processCategory16\")%>");
		caseProcessCategoryLabel.setName("caseProcessCategoryLabel");
	}
	return caseProcessCategoryLabel;
}

/**
 * This method initializes caseTypeLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCaseTypeLabel() {
	if (caseTypeLabel == null) {
		caseTypeLabel = new RLabel();
		caseTypeLabel.setName("caseTypeLabel");
		caseTypeLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/type16\")%>");
		caseTypeLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseTypeName\")%>");
		caseTypeLabel.setName("caseTypeLabel");
	}
	return caseTypeLabel;
}

/**
 * This method initializes caseNameLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCaseNameLabel() {
	if (caseNameLabel == null) {
		caseNameLabel = new RLabel();
		caseNameLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/name\")%>");
		caseNameLabel.setName("caseNameLabel");
		caseNameLabel.setStyleProperties("{/anchor \"WEST\"/fill \"HORIZONTAL\"}");
	}
	return caseNameLabel;
}

/**
 * This method initializes caseProcessCategoryNameTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getCaseProcessCategoryNameTextField() {
	if (caseProcessCategoryNameTextField == null) {
		caseProcessCategoryNameTextField = new RTextField();
		caseProcessCategoryNameTextField.setName("caseProcessCategoryNameTextField");
		caseProcessCategoryNameTextField.setStyleProperties("{/weightX \"1\"}");
		caseProcessCategoryNameTextField.setEditable(false);
		caseProcessCategoryNameTextField.setText("");
	}
	return caseProcessCategoryNameTextField;
}

/**
 * This method initializes caseTypeCodeTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getCaseTypeCodeTextField() {
	if (caseTypeCodeTextField == null) {
		caseTypeCodeTextField = new RTextField();
		caseTypeCodeTextField.setName("caseTypeCodeTextField");
		caseTypeCodeTextField.setStyleProperties("{/weightX \"0\"}");
		caseTypeCodeTextField.setEditable(false);
		caseTypeCodeTextField.setText("");
		caseTypeCodeTextField.setColumns(10);
	}
	return caseTypeCodeTextField;
}

/**
 * This method initializes caseSubTypeNameTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getCaseSubTypeNameTextField() {
	if (caseSubTypeNameTextField == null) {
		caseSubTypeNameTextField = new RTextField();
		caseSubTypeNameTextField.setName("caseSubTypeNameTextField");
		caseSubTypeNameTextField.setStyleProperties("{/weightX \"1\"}");
		caseSubTypeNameTextField.setEditable(false);
		caseSubTypeNameTextField.setText("");
	}
	return caseSubTypeNameTextField;
}

/**
 * This method initializes caseDescriptionLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCaseDescriptionLabel() {
	if (caseDescriptionLabel == null) {
		caseDescriptionLabel = new RLabel();
		caseDescriptionLabel.setName("caseDescriptionLabel");
		caseDescriptionLabel.setStyleProperties("{/anchor \"NORTHWEST\"/fill \"HORIZONTAL\"}");
		caseDescriptionLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/description\")%>");
	}
	return caseDescriptionLabel;
}

/**
 * This method initializes caseDescriptionTextArea	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextArea getCaseDescriptionTextArea() {
	if (caseDescriptionTextArea == null) {
		caseDescriptionTextArea = new RTextArea();
		caseDescriptionTextArea.setName("caseDescriptionTextArea");
		caseDescriptionTextArea.setText("");
		caseDescriptionTextArea.setStyleProperties("{/fill \"HORIZONTAL\"}");
		caseDescriptionTextArea.setRows(4);
		caseDescriptionTextArea.setLineWrap(true);
		caseDescriptionTextArea.setEditable(false);
	}
	return caseDescriptionTextArea;
}

/**
 * This method initializes categoriesGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getCategoriesGridBagLayoutPane() {
	if (categoriesGridBagLayoutPane == null) {
		RFiller aFiller1 = new RFiller();
		aFiller1.setStyle("horizontalStrut150");
		categoriesGridBagLayoutPane = new RGridBagLayoutPane();
		categoriesGridBagLayoutPane.setName("categoriesGridBagLayoutPane");
		categoriesGridBagLayoutPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		categoriesGridBagLayoutPane.add(getCaseProcessCategoryLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		categoriesGridBagLayoutPane.add(getCaseProcessCategoryCodeTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		categoriesGridBagLayoutPane.add(aFiller1, new com.ulcjava.base.application.GridBagConstraints(0, 5, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		categoriesGridBagLayoutPane.add(getCaseProcessCategoryNameTextField(), new com.ulcjava.base.application.GridBagConstraints(3, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		categoriesGridBagLayoutPane.add(getCaseProcessLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		categoriesGridBagLayoutPane.add(getCaseProcessCodeTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		categoriesGridBagLayoutPane.add(getCaseProcessNameTextField(), new com.ulcjava.base.application.GridBagConstraints(3, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		categoriesGridBagLayoutPane.add(getCaseTypeLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		categoriesGridBagLayoutPane.add(getCaseTypeCodeTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		categoriesGridBagLayoutPane.add(getCaseTypeNameTextField(), new com.ulcjava.base.application.GridBagConstraints(3, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		categoriesGridBagLayoutPane.add(getCaseSubTypeLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		categoriesGridBagLayoutPane.add(getCaseSubTypeCodeTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		categoriesGridBagLayoutPane.add(getCaseSubTypeNameTextField(), new com.ulcjava.base.application.GridBagConstraints(3, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return categoriesGridBagLayoutPane;
}

/**
 * This method initializes caseProcessCategoryCodeTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getCaseProcessCategoryCodeTextField() {
	if (caseProcessCategoryCodeTextField == null) {
		caseProcessCategoryCodeTextField = new RTextField();
		caseProcessCategoryCodeTextField.setName("caseProcessCategoryCodeTextField");
		caseProcessCategoryCodeTextField.setStyleProperties("{/weightX \"0\"}");
		caseProcessCategoryCodeTextField.setEditable(false);
		caseProcessCategoryCodeTextField.setText("");
		caseProcessCategoryCodeTextField.setColumns(10);
	}
	return caseProcessCategoryCodeTextField;
}

/**
 * This method initializes caseGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getCaseGridBagLayoutPane() {
	if (caseGridBagLayoutPane == null) {
		RFiller aFiller = new RFiller();
		aFiller.setStyle("horizontalStrut150");
		caseGridBagLayoutPane = new RGridBagLayoutPane();
		caseGridBagLayoutPane.setName("caseGridBagLayoutPane");
		caseGridBagLayoutPane.setStyleProperties("{/weightX \"1\"}");
		caseGridBagLayoutPane.setName("caseGridBagLayoutPane");
		caseGridBagLayoutPane.add(getCaseIdTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(getCaseNameLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 7, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(getCaseNameTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 7, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(getCaseDescriptionLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 8, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(aFiller, new com.ulcjava.base.application.GridBagConstraints(0, 9, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(getBusinessStartTimestampLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(getBusinessStartTimestampTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(getCaseStateLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(getCaseStateTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(getCasePriorityLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(getCaseIdLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(getCasePriorityTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(getCaseStartedByLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 6, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(getCaseStartByTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 6, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(getBusinessMilestoneTimestampLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(getBusinessMilestoneTimestampTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(getCaseDescriptionScrollPane(), new com.ulcjava.base.application.GridBagConstraints(1, 8, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return caseGridBagLayoutPane;
}

/**
 * This method initializes caseProcessLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCaseProcessLabel() {
	if (caseProcessLabel == null) {
		caseProcessLabel = new RLabel();
		caseProcessLabel.setName("caseProcessLabel");
		caseProcessLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/process16\")%>");
		caseProcessLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseProcessName\")%>");
	}
	return caseProcessLabel;
}

/**
 * This method initializes caseProcessCodeTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getCaseProcessCodeTextField() {
	if (caseProcessCodeTextField == null) {
		caseProcessCodeTextField = new RTextField();
		caseProcessCodeTextField.setName("caseProcessCodeTextField");
		caseProcessCodeTextField.setText("");
		caseProcessCodeTextField.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"0\"}");
		caseProcessCodeTextField.setEditable(false);
		caseProcessCodeTextField.setColumns(10);
	}
	return caseProcessCodeTextField;
}

/**
 * This method initializes caseTypeNameTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getCaseTypeNameTextField() {
	if (caseTypeNameTextField == null) {
		caseTypeNameTextField = new RTextField();
		caseTypeNameTextField.setName("caseTypeNameTextField");
		caseTypeNameTextField.setStyleProperties("{/weightX \"1\"}");
		caseTypeNameTextField.setEditable(false);
		caseTypeNameTextField.setText("");
	}
	return caseTypeNameTextField;
}

/**
 * This method initializes caseSubTypeLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCaseSubTypeLabel() {
	if (caseSubTypeLabel == null) {
		caseSubTypeLabel = new RLabel();
		caseSubTypeLabel.setName("caseSubTypeLabel");
		caseSubTypeLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/subType16\")%>");
		caseSubTypeLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseSubTypeName\")%>");
	}
	return caseSubTypeLabel;
}

/**
 * This method initializes caseSubTypeCodeTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getCaseSubTypeCodeTextField() {
	if (caseSubTypeCodeTextField == null) {
		caseSubTypeCodeTextField = new RTextField();
		caseSubTypeCodeTextField.setName("caseSubTypeCodeTextField");
		caseSubTypeCodeTextField.setStyleProperties("{/weightX \"0\"}");
		caseSubTypeCodeTextField.setEditable(false);
		caseSubTypeCodeTextField.setText("");
		caseSubTypeCodeTextField.setColumns(10);
	}
	return caseSubTypeCodeTextField;
}

/**
 * This method initializes businessStartTimestampLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getBusinessStartTimestampLabel() {
	if (businessStartTimestampLabel == null) {
		businessStartTimestampLabel = new RLabel();
		businessStartTimestampLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/startedAt\")%>");
		businessStartTimestampLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/businessStart16\")%>");
		businessStartTimestampLabel.setName("businessStartTimestampLabel");
	}
	return businessStartTimestampLabel;
}

/**
 * This method initializes businessStartTimestampTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getBusinessStartTimestampTextField() {
	if (businessStartTimestampTextField == null) {
		businessStartTimestampTextField = new RTextField();
		businessStartTimestampTextField.setName("businessStartTimestampTextField");
		businessStartTimestampTextField.setText("");
		businessStartTimestampTextField.setStyleProperties("{/fill \"HORIZONTAL\"}");
		businessStartTimestampTextField.setEditable(false);
		businessStartTimestampTextField.setColumns(15);
	}
	return businessStartTimestampTextField;
}

/**
 * This method initializes caseStateLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCaseStateLabel() {
	if (caseStateLabel == null) {
		caseStateLabel = new RLabel();
		caseStateLabel.setName("caseStateLabel");
		caseStateLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/state\")%>\n");
	}
	return caseStateLabel;
}

/**
 * This method initializes caseStateTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getCaseStateTextField() {
	if (caseStateTextField == null) {
		caseStateTextField = new RTextField();
		caseStateTextField.setName("caseStateTextField");
		caseStateTextField.setText("");
		caseStateTextField.setStyleProperties("{/fill \"HORIZONTAL\"}");
		caseStateTextField.setEditable(false);
		caseStateTextField.setColumns(15);
	}
	return caseStateTextField;
}

/**
 * This method initializes caseDescriptionScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getCaseDescriptionScrollPane() {
	if (caseDescriptionScrollPane == null) {
		caseDescriptionScrollPane = new RScrollPane();
		caseDescriptionScrollPane.setName("caseDescriptionScrollPane");
		caseDescriptionScrollPane.setViewPortView(getCaseDescriptionTextArea());
	}
	return caseDescriptionScrollPane;
}

/**
 * This method initializes casePriorityLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCasePriorityLabel() {
	if (casePriorityLabel == null) {
		casePriorityLabel = new RLabel();
		casePriorityLabel.setName("casePriorityLabel");
		casePriorityLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/casePriority\")%>");
	}
	return casePriorityLabel;
}

/**
 * This method initializes caseIdLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCaseIdLabel() {
	if (caseIdLabel == null) {
		caseIdLabel = new RLabel();
		caseIdLabel.setName("caseIdLabel");
		caseIdLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/CASE_ID16\")%>");
		caseIdLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/id\")%>");
	}
	return caseIdLabel;
}

/**
 * This method initializes casePriorityTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getCasePriorityTextField() {
	if (casePriorityTextField == null) {
		casePriorityTextField = new RTextField();
		casePriorityTextField.setText("");
		casePriorityTextField.setEditable(false);
		casePriorityTextField.setName("casePriorityTextField");
	}
	return casePriorityTextField;
}

/**
 * This method initializes caseStartedByLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCaseStartedByLabel() {
	if (caseStartedByLabel == null) {
		caseStartedByLabel = new RLabel();
		caseStartedByLabel.setText("<%= ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/otherBusinessData/plainStrings/businessCreatorUserShort\") %>");
		caseStartedByLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/businessCreatorUser16\")%>");
		caseStartedByLabel.setName("caseStartedByLabel");
	}
	return caseStartedByLabel;
}

/**
 * This method initializes caseStartByTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getCaseStartByTextField() {
	if (caseStartByTextField == null) {
		caseStartByTextField = new RTextField();
		caseStartByTextField.setName("caseStartByTextField");
		caseStartByTextField.setColumns(15);
		caseStartByTextField.setText("");
		caseStartByTextField.setStyleProperties("{/fill \"HORIZONTAL\"}");
		caseStartByTextField.setEditable(false);
	}
	return caseStartByTextField;
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
		businessMilestoneTimestampLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/businessStart16\")%>");
		businessMilestoneTimestampLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/businessMilestoneTimestamp\")%>");
	}
	return businessMilestoneTimestampLabel;
}

/**
 * This method initializes businessMilestoneTimestampTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getBusinessMilestoneTimestampTextField() {
	if (businessMilestoneTimestampTextField == null) {
		businessMilestoneTimestampTextField = new RTextField();
		businessMilestoneTimestampTextField.setName("businessMilestoneTimestampTextField");
		businessMilestoneTimestampTextField.setText("");
		businessMilestoneTimestampTextField.setStyleProperties("{/weightX \"1\"}");
		businessMilestoneTimestampTextField.setEditable(false);
	}
	return businessMilestoneTimestampTextField;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"