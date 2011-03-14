package ch.ivyteam.ivy.workflow.ui.cases.CaseDetailsDisplay;

import ch.ivyteam.ivy.addons.common.technical.Separator.SeparatorPanel;
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

import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.ULCContainer;

/**
 * RichDialog panel implementation for TaskHeaderDisplayPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class CaseDetailsDisplayPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RTextField caseIdTextField = null;
private RTextField caseNameTextField = null;
private RLabel caseProcessCategoryLabel = null;
private RLabel caseTypeLabel = null;
private RLabel caseNameLabel = null;
private RTextField caseProcessCategoryTextField = null;
private RTextField caseTypeTextField = null;
private RLabel caseDescriptionLabel = null;
private RTextArea caseDescriptionTextArea = null;
private RGridBagLayoutPane categoriesGridBagLayoutPane = null;
private RGridBagLayoutPane caseGridBagLayoutPane = null;
private RLabel caseProcessLabel = null;
private RTextField caseProcessTextField = null;
private RLabel caseSubTypeLabel = null;
private RTextField caseSubTypeTextField = null;
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
private RGridBagLayoutPane caseBusinessDetailsGridBagLayoutPane = null;
private RLabel businessMainContactLabel = null;
private RTextField businessMainContactTextField = null;
private RLabel businessMainContactDocumentDbCodeLabel = null;
private RTextField businessMainContactDocumentDbCodeTextField = null;
private RLabel businessMainContactFolderIdLabel = null;
private RTextField businessMainContactFolderIdTextField = null;
private RLabel correspondentContactIdLabel = null;
private RTextField correspondentContactIdTextField = null;
private RLabel businessObjectLabel = null;
private RTextField businessObjectTextField = null;
private RLabel businessObjectDocumentDbCodeLabel = null;
private RTextField businessObjectDocumentDbCodeTextField = null;
private RLabel businessObjectFolderIdLabel = null;
private RTextField businessObjectFolderIdTextField = null;
private RLabel customVarcharField1Label = null;
private RTextField customVarcharField1TextField = null;
private RLabel customVarcharField2Label = null;
private RTextField customVarcharField2TextField = null;
private RLabel customVarcharField3Label = null;
private RTextField customVarcharField3TextField = null;
private RLabel customVarcharField4Label = null;
private RTextField customVarcharField4TextField = null;
private RLabel customVarcharField5Label = null;
private RTextField customVarcharField5TextField = null;
private RLabel customDecimalField1Label = null;
private RTextField customDecimalField1TextField = null;
private RLabel customDecimalField2Label = null;
private RTextField customDecimalField2TextField = null;
private RLabel customDecimalField3Label = null;
private RTextField customDecimalField3TextField = null;
private RLabel customDecimalField4Label = null;
private RTextField customDecimalField4TextField = null;
private RLabel customDecimalField5Label = null;
private RTextField customDecimalField5TextField = null;
private RLabel customTimestampField1Label = null;
private RTextField customTimestampField1TextField = null;
private RLabel customTimestampField2Label = null;
private RTextField customTimestampField2TextField = null;
private RLabel customTimestampField3Label = null;
private RTextField customTimestampField3TextField = null;
private RLabel customTimestampField4Label = null;
private RTextField customTimestampField4TextField = null;
private RLabel customTimestampField5Label = null;
private RTextField customTimestampField5TextField = null;
@EmbeddedRichDialog(SeparatorPanel.class) private ULCContainer separatorRDC = null;
private RGridBagLayoutPane customVarcharFieldsGridBagLayoutPane = null;
private RGridBagLayoutPane customDecimalFieldsGridBagLayoutPane = null;
private RGridBagLayoutPane customTimestampFieldsGridBagLayoutPane = null;
private RLabel casePriorityIconLabel = null;
private RLabel caseStateIconLabel = null;
/**
   * Create a new instance of TaskHeaderDisplayPanel
   */
  public CaseDetailsDisplayPanel()
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
         RFiller verticalFiller = new RFiller();
         verticalFiller.setStyleProperties("{/fill \"VERTICAL\"/weightY \"1\"}");
         this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(600,800));
       this.setStyleProperties("{/weightX \"1\"}");
        this.add(getCaseGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getCategoriesGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getCaseBusinessDetailsGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getSeparatorRDC(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
         this.add(getCustomVarcharFieldsGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getCustomDecimalFieldsGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 6, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getCustomTimestampFieldsGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 7, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(verticalFiller, new com.ulcjava.base.application.GridBagConstraints(0, 8, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
		caseIdTextField.setStyle("displayedLeftAlignedTextField");
		caseIdTextField.setEditable(false);
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
		caseNameTextField.setStyleProperties("{/font {/name \"Tahoma\"/size \"11\"/style \"BOLD\"}}");
		caseNameTextField.setStyle("displayedLeftAlignedTextField");
		caseNameTextField.setEditable(false);
	}
	return caseNameTextField;
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
		caseProcessCategoryLabel.setStyle("rightAlignedLabel");
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
		caseTypeLabel.setStyle("rightAlignedLabel");
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
		caseNameLabel.setStyle("rightAlignedLabel");
		caseNameLabel.setStyleProperties("{/fill \"HORIZONTAL\"}");
	}
	return caseNameLabel;
}

/**
 * This method initializes caseProcessCategoryTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getCaseProcessCategoryTextField() {
	if (caseProcessCategoryTextField == null) {
		caseProcessCategoryTextField = new RTextField();
		caseProcessCategoryTextField.setName("caseProcessCategoryTextField");
		caseProcessCategoryTextField.setEditable(false);
		caseProcessCategoryTextField.setStyle("displayedLeftAlignedTextField");
		caseProcessCategoryTextField.setText("");
	}
	return caseProcessCategoryTextField;
}

/**
 * This method initializes caseTypeTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getCaseTypeTextField() {
	if (caseTypeTextField == null) {
		caseTypeTextField = new RTextField();
		caseTypeTextField.setName("caseTypeTextField");
		caseTypeTextField.setEditable(false);
		caseTypeTextField.setStyle("displayedLeftAlignedTextField");
		caseTypeTextField.setText("");
	}
	return caseTypeTextField;
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
		caseDescriptionLabel.setStyleProperties("{/anchor \"NORTHEAST\"/fill \"HORIZONTAL\"}");
		caseDescriptionLabel.setStyle("rightAlignedLabel");
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
		caseDescriptionTextArea.setRows(4);
		caseDescriptionTextArea.setLineWrap(true);
		caseDescriptionTextArea.setWrapStyleWord(true);
		caseDescriptionTextArea.setColumns(50);
		caseDescriptionTextArea.setStyle("displayedLeftAlignedTextArea");
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
		RFiller hFiller10 = new RFiller();
		hFiller10.setStyleProperties("{/weightX \"1\"}");
		RFiller hFiller9 = new RFiller();
		hFiller9.setStyleProperties("{/weightX \"1\"}");
		RFiller hFiller8 = new RFiller();
		hFiller8.setStyleProperties("{/weightX \"1\"}");
		RFiller hFiller7 = new RFiller();
		hFiller7.setStyleProperties("{/weightX \"1\"}");
		RFiller aFiller1 = new RFiller();
		aFiller1.setStyle("horizontalStrut150");
		categoriesGridBagLayoutPane = new RGridBagLayoutPane();
		categoriesGridBagLayoutPane.setName("categoriesGridBagLayoutPane");
		categoriesGridBagLayoutPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		categoriesGridBagLayoutPane.add(getCaseProcessCategoryLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		categoriesGridBagLayoutPane.add(aFiller1, new com.ulcjava.base.application.GridBagConstraints(0, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		categoriesGridBagLayoutPane.add(getCaseProcessLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		categoriesGridBagLayoutPane.add(getCaseTypeLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		categoriesGridBagLayoutPane.add(getCaseSubTypeLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		categoriesGridBagLayoutPane.add(getCaseProcessCategoryTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		categoriesGridBagLayoutPane.add(getCaseProcessTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		categoriesGridBagLayoutPane.add(getCaseTypeTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		categoriesGridBagLayoutPane.add(getCaseSubTypeTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		categoriesGridBagLayoutPane.add(hFiller7, new com.ulcjava.base.application.GridBagConstraints(2, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		categoriesGridBagLayoutPane.add(hFiller8, new com.ulcjava.base.application.GridBagConstraints(2, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		categoriesGridBagLayoutPane.add(hFiller9, new com.ulcjava.base.application.GridBagConstraints(2, 2, 4, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		categoriesGridBagLayoutPane.add(hFiller10, new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return categoriesGridBagLayoutPane;
}

/**
 * This method initializes caseGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getCaseGridBagLayoutPane() {
	if (caseGridBagLayoutPane == null) {
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
		RFiller hFiller = new RFiller();
		hFiller.setStyleProperties("{/weightX \"1\"}");
		RFiller aFiller = new RFiller();
		aFiller.setStyle("horizontalStrut150");
		caseGridBagLayoutPane = new RGridBagLayoutPane();
		caseGridBagLayoutPane.setName("caseGridBagLayoutPane");
		caseGridBagLayoutPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		caseGridBagLayoutPane.setName("caseGridBagLayoutPane");
		caseGridBagLayoutPane.add(getCaseNameLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 8, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(getCaseDescriptionLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 9, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(aFiller, new com.ulcjava.base.application.GridBagConstraints(0, 11, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(getBusinessStartTimestampLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(getCaseStateLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(getCasePriorityLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(getCaseIdLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(getCaseStartedByLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 7, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(getBusinessMilestoneTimestampLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 6, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(getCaseDescriptionScrollPane(), new com.ulcjava.base.application.GridBagConstraints(1, 9, 4, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(getCaseIdTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(getCasePriorityTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(getCaseStateTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(getCasePriorityIconLabel(), new com.ulcjava.base.application.GridBagConstraints(2, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(getCaseStateIconLabel(), new com.ulcjava.base.application.GridBagConstraints(2, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(getBusinessStartTimestampTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 5, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(getBusinessMilestoneTimestampTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 6, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(getCaseStartByTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 7, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(getCaseNameTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 8, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(hFiller, new com.ulcjava.base.application.GridBagConstraints(3, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(hFiller1, new com.ulcjava.base.application.GridBagConstraints(3, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(hFiller2, new com.ulcjava.base.application.GridBagConstraints(3, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(hFiller3, new com.ulcjava.base.application.GridBagConstraints(3, 6, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(hFiller4, new com.ulcjava.base.application.GridBagConstraints(3, 7, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(hFiller5, new com.ulcjava.base.application.GridBagConstraints(3, 8, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(hFiller6, new com.ulcjava.base.application.GridBagConstraints(3, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
		caseProcessLabel.setStyle("rightAlignedLabel");
		caseProcessLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseProcessName\")%>");
	}
	return caseProcessLabel;
}

/**
 * This method initializes caseProcessTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getCaseProcessTextField() {
	if (caseProcessTextField == null) {
		caseProcessTextField = new RTextField();
		caseProcessTextField.setName("caseProcessTextField");
		caseProcessTextField.setText("");
		caseProcessTextField.setStyle("displayedLeftAlignedTextField");
		caseProcessTextField.setEditable(false);
	}
	return caseProcessTextField;
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
		caseSubTypeLabel.setStyle("rightAlignedLabel");
		caseSubTypeLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseSubTypeName\")%>");
	}
	return caseSubTypeLabel;
}

/**
 * This method initializes caseSubTypeTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getCaseSubTypeTextField() {
	if (caseSubTypeTextField == null) {
		caseSubTypeTextField = new RTextField();
		caseSubTypeTextField.setName("caseSubTypeTextField");
		caseSubTypeTextField.setEditable(false);
		caseSubTypeTextField.setStyle("displayedLeftAlignedTextField");
		caseSubTypeTextField.setText("");
	}
	return caseSubTypeTextField;
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
		businessStartTimestampLabel.setStyle("rightAlignedLabel");
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
		businessStartTimestampTextField.setStyle("displayedLeftAlignedTextField");
		businessStartTimestampTextField.setEditable(false);
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
		caseStateLabel.setStyle("rightAlignedLabel");
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
		caseStateTextField.setStyle("displayedLeftAlignedTextField");
		caseStateTextField.setEditable(false);
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
		caseDescriptionScrollPane.setBorder(BorderFactory.createEmptyBorder(0, 0, 0, 0));
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
		casePriorityLabel.setStyle("rightAlignedLabel");
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
		caseIdLabel.setStyle("rightAlignedLabel");
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
		casePriorityTextField.setStyle("displayedLeftAlignedTextField");
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
		caseStartedByLabel.setStyle("rightAlignedLabel");
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
		caseStartByTextField.setText("");
		caseStartByTextField.setStyle("displayedLeftAlignedTextField");
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
		businessMilestoneTimestampLabel.setStyle("rightAlignedLabel");
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
		businessMilestoneTimestampTextField.setStyle("displayedLeftAlignedTextField");
		businessMilestoneTimestampTextField.setEditable(false);
	}
	return businessMilestoneTimestampTextField;
}

/**
 * This method initializes caseBusinessDetailsGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getCaseBusinessDetailsGridBagLayoutPane() {
	if (caseBusinessDetailsGridBagLayoutPane == null) {
		RFiller hFiller17 = new RFiller();
		hFiller17.setStyleProperties("{/weightX \"1\"}");
		RFiller hFiller16 = new RFiller();
		hFiller16.setStyleProperties("{/weightX \"1\"}");
		RFiller hFiller15 = new RFiller();
		hFiller15.setStyleProperties("{/weightX \"1\"}");
		RFiller hFiller14 = new RFiller();
		hFiller14.setStyleProperties("{/weightX \"1\"}");
		RFiller hFiller13 = new RFiller();
		hFiller13.setStyleProperties("{/weightX \"1\"}");
		RFiller hFiller12 = new RFiller();
		hFiller12.setStyleProperties("{/weightX \"1\"}");
		RFiller hFiller11 = new RFiller();
		hFiller11.setStyleProperties("{/weightX \"1\"}");
		RFiller aFiller11 = new RFiller();
		aFiller11.setStyle("horizontalStrut150");
		caseBusinessDetailsGridBagLayoutPane = new RGridBagLayoutPane();
		caseBusinessDetailsGridBagLayoutPane.setName("caseBusinessDetailsGridBagLayoutPane");
		caseBusinessDetailsGridBagLayoutPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightY \"0\"/weightX \"1\"}");
		caseBusinessDetailsGridBagLayoutPane.add(getBusinessMainContactLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseBusinessDetailsGridBagLayoutPane.add(getBusinessMainContactDocumentDbCodeLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseBusinessDetailsGridBagLayoutPane.add(getBusinessMainContactFolderIdLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseBusinessDetailsGridBagLayoutPane.add(getCorrespondentContactIdLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseBusinessDetailsGridBagLayoutPane.add(getBusinessObjectLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseBusinessDetailsGridBagLayoutPane.add(getBusinessObjectDocumentDbCodeLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseBusinessDetailsGridBagLayoutPane.add(getBusinessObjectFolderIdLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 6, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseBusinessDetailsGridBagLayoutPane.add(aFiller11, new com.ulcjava.base.application.GridBagConstraints(0, 7, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseBusinessDetailsGridBagLayoutPane.add(getBusinessMainContactTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseBusinessDetailsGridBagLayoutPane.add(getBusinessMainContactDocumentDbCodeTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseBusinessDetailsGridBagLayoutPane.add(getBusinessMainContactFolderIdTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseBusinessDetailsGridBagLayoutPane.add(getCorrespondentContactIdTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseBusinessDetailsGridBagLayoutPane.add(getBusinessObjectTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseBusinessDetailsGridBagLayoutPane.add(getBusinessObjectDocumentDbCodeTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 5, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseBusinessDetailsGridBagLayoutPane.add(getBusinessObjectFolderIdTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 6, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseBusinessDetailsGridBagLayoutPane.add(hFiller11, new com.ulcjava.base.application.GridBagConstraints(2, 0, 4, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseBusinessDetailsGridBagLayoutPane.add(hFiller12, new com.ulcjava.base.application.GridBagConstraints(5, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseBusinessDetailsGridBagLayoutPane.add(hFiller13, new com.ulcjava.base.application.GridBagConstraints(5, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseBusinessDetailsGridBagLayoutPane.add(hFiller14, new com.ulcjava.base.application.GridBagConstraints(5, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseBusinessDetailsGridBagLayoutPane.add(hFiller15, new com.ulcjava.base.application.GridBagConstraints(5, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseBusinessDetailsGridBagLayoutPane.add(hFiller16, new com.ulcjava.base.application.GridBagConstraints(5, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseBusinessDetailsGridBagLayoutPane.add(hFiller17, new com.ulcjava.base.application.GridBagConstraints(5, 6, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return caseBusinessDetailsGridBagLayoutPane;
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
		businessMainContactLabel.setStyle("rightAlignedLabel");
		businessMainContactLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/businessMainContact/plainStrings/businessMainContact\")%>");
	}
	return businessMainContactLabel;
}

/**
 * This method initializes businessMainContactTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getBusinessMainContactTextField() {
	if (businessMainContactTextField == null) {
		businessMainContactTextField = new RTextField();
		businessMainContactTextField.setName("businessMainContactTextField");
		businessMainContactTextField.setText("");
		businessMainContactTextField.setStyle("displayedLeftAlignedTextField");
		businessMainContactTextField.setEditable(false);
	}
	return businessMainContactTextField;
}

/**
 * This method initializes businessMainContactDocumentDbCodeLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getBusinessMainContactDocumentDbCodeLabel() {
	if (businessMainContactDocumentDbCodeLabel == null) {
		businessMainContactDocumentDbCodeLabel = new RLabel();
		businessMainContactDocumentDbCodeLabel.setName("businessMainContactDocumentDbCodeLabel");
		businessMainContactDocumentDbCodeLabel.setStyle("rightAlignedLabel");
		businessMainContactDocumentDbCodeLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/businessMainContact/plainStrings/documentDatabaseCode\")%>");
	}
	return businessMainContactDocumentDbCodeLabel;
}

/**
 * This method initializes businessMainContactDocumentDbCodeTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getBusinessMainContactDocumentDbCodeTextField() {
	if (businessMainContactDocumentDbCodeTextField == null) {
		businessMainContactDocumentDbCodeTextField = new RTextField();
		businessMainContactDocumentDbCodeTextField.setName("businessMainContactDocumentDbCodeTextField");
		businessMainContactDocumentDbCodeTextField.setText("");
		businessMainContactDocumentDbCodeTextField.setStyle("displayedLeftAlignedTextField");
		businessMainContactDocumentDbCodeTextField.setEditable(false);
	}
	return businessMainContactDocumentDbCodeTextField;
}

/**
 * This method initializes businessMainContactFolderIdLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getBusinessMainContactFolderIdLabel() {
	if (businessMainContactFolderIdLabel == null) {
		businessMainContactFolderIdLabel = new RLabel();
		businessMainContactFolderIdLabel.setName("businessMainContactFolderIdLabel");
		businessMainContactFolderIdLabel.setStyle("rightAlignedLabel");
		businessMainContactFolderIdLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/businessMainContact/plainStrings/folderId\")%>");
	}
	return businessMainContactFolderIdLabel;
}

/**
 * This method initializes businessMainContactFolderIdTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getBusinessMainContactFolderIdTextField() {
	if (businessMainContactFolderIdTextField == null) {
		businessMainContactFolderIdTextField = new RTextField();
		businessMainContactFolderIdTextField.setName("businessMainContactFolderIdTextField");
		businessMainContactFolderIdTextField.setText("");
		businessMainContactFolderIdTextField.setStyle("displayedLeftAlignedTextField");
		businessMainContactFolderIdTextField.setEditable(false);
	}
	return businessMainContactFolderIdTextField;
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
		correspondentContactIdLabel.setStyle("rightAlignedLabel");
		correspondentContactIdLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/correspondentContact/plainStrings/id\")%>");
	}
	return correspondentContactIdLabel;
}

/**
 * This method initializes correspondentContactIdTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getCorrespondentContactIdTextField() {
	if (correspondentContactIdTextField == null) {
		correspondentContactIdTextField = new RTextField();
		correspondentContactIdTextField.setName("correspondentContactIdTextField");
		correspondentContactIdTextField.setText("");
		correspondentContactIdTextField.setStyle("displayedLeftAlignedTextField");
		correspondentContactIdTextField.setEditable(false);
	}
	return correspondentContactIdTextField;
}

/**
 * This method initializes businessObjectLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getBusinessObjectLabel() {
	if (businessObjectLabel == null) {
		businessObjectLabel = new RLabel();
		businessObjectLabel.setName("businessObjectLabel");
		businessObjectLabel.setStyle("rightAlignedLabel");
		businessObjectLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/businessObject/plainStrings/businessObject\")%>");
	}
	return businessObjectLabel;
}

/**
 * This method initializes businessObjectTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getBusinessObjectTextField() {
	if (businessObjectTextField == null) {
		businessObjectTextField = new RTextField();
		businessObjectTextField.setName("businessObjectTextField");
		businessObjectTextField.setText("");
		businessObjectTextField.setStyle("displayedLeftAlignedTextField");
		businessObjectTextField.setEditable(false);
	}
	return businessObjectTextField;
}

/**
 * This method initializes businessObjectDocumentDbCodeLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getBusinessObjectDocumentDbCodeLabel() {
	if (businessObjectDocumentDbCodeLabel == null) {
		businessObjectDocumentDbCodeLabel = new RLabel();
		businessObjectDocumentDbCodeLabel.setName("businessObjectDocumentDbCodeLabel");
		businessObjectDocumentDbCodeLabel.setStyle("rightAlignedLabel");
		businessObjectDocumentDbCodeLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/businessObject/plainStrings/documentDatabaseCode\")%>");
	}
	return businessObjectDocumentDbCodeLabel;
}

/**
 * This method initializes businessObjectDocumentDbCodeTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getBusinessObjectDocumentDbCodeTextField() {
	if (businessObjectDocumentDbCodeTextField == null) {
		businessObjectDocumentDbCodeTextField = new RTextField();
		businessObjectDocumentDbCodeTextField.setName("businessObjectDocumentDbCodeTextField");
		businessObjectDocumentDbCodeTextField.setText("");
		businessObjectDocumentDbCodeTextField.setStyle("displayedLeftAlignedTextField");
		businessObjectDocumentDbCodeTextField.setEditable(false);
	}
	return businessObjectDocumentDbCodeTextField;
}

/**
 * This method initializes businessObjectFolderIdLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getBusinessObjectFolderIdLabel() {
	if (businessObjectFolderIdLabel == null) {
		businessObjectFolderIdLabel = new RLabel();
		businessObjectFolderIdLabel.setName("businessObjectFolderIdLabel");
		businessObjectFolderIdLabel.setStyle("rightAlignedLabel");
		businessObjectFolderIdLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/businessObject/plainStrings/folderId\")%>");
	}
	return businessObjectFolderIdLabel;
}

/**
 * This method initializes businessObjectFolderIdTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getBusinessObjectFolderIdTextField() {
	if (businessObjectFolderIdTextField == null) {
		businessObjectFolderIdTextField = new RTextField();
		businessObjectFolderIdTextField.setName("businessObjectFolderIdTextField");
		businessObjectFolderIdTextField.setText("");
		businessObjectFolderIdTextField.setStyle("displayedLeftAlignedTextField");
		businessObjectFolderIdTextField.setEditable(false);
	}
	return businessObjectFolderIdTextField;
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
		customVarcharField1Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customVarcharField\")%> 1");
	}
	return customVarcharField1Label;
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
		customVarcharField1TextField.setStyleProperties("{/anchor \"WEST\"}");
		customVarcharField1TextField.setStyle("displayedLeftAlignedTextField");
		customVarcharField1TextField.setEditable(false);
	}
	return customVarcharField1TextField;
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
		customVarcharField2Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customVarcharField\")%> 2");
	}
	return customVarcharField2Label;
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
 * This method initializes customVarcharField3Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCustomVarcharField3Label() {
	if (customVarcharField3Label == null) {
		customVarcharField3Label = new RLabel();
		customVarcharField3Label.setName("customVarcharField3Label");
		customVarcharField3Label.setStyle("rightAlignedLabel");
		customVarcharField3Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customVarcharField\")%> 3");
	}
	return customVarcharField3Label;
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
 * This method initializes customVarcharField4Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCustomVarcharField4Label() {
	if (customVarcharField4Label == null) {
		customVarcharField4Label = new RLabel();
		customVarcharField4Label.setName("customVarcharField4Label");
		customVarcharField4Label.setStyle("rightAlignedLabel");
		customVarcharField4Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customVarcharField\")%> 4");
	}
	return customVarcharField4Label;
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
 * This method initializes customVarcharField5Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCustomVarcharField5Label() {
	if (customVarcharField5Label == null) {
		customVarcharField5Label = new RLabel();
		customVarcharField5Label.setName("customVarcharField5Label");
		customVarcharField5Label.setStyle("rightAlignedLabel");
		customVarcharField5Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customVarcharField\")%> 5");
	}
	return customVarcharField5Label;
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
 * This method initializes customDecimalField1Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCustomDecimalField1Label() {
	if (customDecimalField1Label == null) {
		customDecimalField1Label = new RLabel();
		customDecimalField1Label.setName("customDecimalField1Label");
		customDecimalField1Label.setStyle("rightAlignedLabel");
		customDecimalField1Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customDecimalField\")%> 1");
	}
	return customDecimalField1Label;
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
 * This method initializes customDecimalField2Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCustomDecimalField2Label() {
	if (customDecimalField2Label == null) {
		customDecimalField2Label = new RLabel();
		customDecimalField2Label.setName("customDecimalField2Label");
		customDecimalField2Label.setStyle("rightAlignedLabel");
		customDecimalField2Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customDecimalField\")%> 2");
	}
	return customDecimalField2Label;
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
 * This method initializes customDecimalField3Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCustomDecimalField3Label() {
	if (customDecimalField3Label == null) {
		customDecimalField3Label = new RLabel();
		customDecimalField3Label.setName("customDecimalField3Label");
		customDecimalField3Label.setStyle("rightAlignedLabel");
		customDecimalField3Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customDecimalField\")%> 3");
	}
	return customDecimalField3Label;
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
 * This method initializes customDecimalField4Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCustomDecimalField4Label() {
	if (customDecimalField4Label == null) {
		customDecimalField4Label = new RLabel();
		customDecimalField4Label.setName("customDecimalField4Label");
		customDecimalField4Label.setStyle("rightAlignedLabel");
		customDecimalField4Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customDecimalField\")%> 4");
	}
	return customDecimalField4Label;
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
 * This method initializes customDecimalField5Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCustomDecimalField5Label() {
	if (customDecimalField5Label == null) {
		customDecimalField5Label = new RLabel();
		customDecimalField5Label.setName("customDecimalField5Label");
		customDecimalField5Label.setStyle("rightAlignedLabel");
		customDecimalField5Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customDecimalField\")%> 5");
	}
	return customDecimalField5Label;
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
 * This method initializes customTimestampField1Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCustomTimestampField1Label() {
	if (customTimestampField1Label == null) {
		customTimestampField1Label = new RLabel();
		customTimestampField1Label.setName("customTimestampField1Label");
		customTimestampField1Label.setStyle("rightAlignedLabel");
		customTimestampField1Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customTimestampField\")%> 1");
	}
	return customTimestampField1Label;
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
 * This method initializes customTimestampField2Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCustomTimestampField2Label() {
	if (customTimestampField2Label == null) {
		customTimestampField2Label = new RLabel();
		customTimestampField2Label.setName("customTimestampField2Label");
		customTimestampField2Label.setStyle("rightAlignedLabel");
		customTimestampField2Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customTimestampField\")%> 2");
	}
	return customTimestampField2Label;
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
 * This method initializes customTimestampField3Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCustomTimestampField3Label() {
	if (customTimestampField3Label == null) {
		customTimestampField3Label = new RLabel();
		customTimestampField3Label.setName("customTimestampField3Label");
		customTimestampField3Label.setStyle("rightAlignedLabel");
		customTimestampField3Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customTimestampField\")%> 3");
	}
	return customTimestampField3Label;
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
 * This method initializes customTimestampField4Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCustomTimestampField4Label() {
	if (customTimestampField4Label == null) {
		customTimestampField4Label = new RLabel();
		customTimestampField4Label.setName("customTimestampField4Label");
		customTimestampField4Label.setStyle("rightAlignedLabel");
		customTimestampField4Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customTimestampField\")%> 4");
	}
	return customTimestampField4Label;
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
 * This method initializes customTimestampField5Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCustomTimestampField5Label() {
	if (customTimestampField5Label == null) {
		customTimestampField5Label = new RLabel();
		customTimestampField5Label.setName("customTimestampField5Label");
		customTimestampField5Label.setStyle("rightAlignedLabel");
		customTimestampField5Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customTimestampField\")%> 5");
	}
	return customTimestampField5Label;
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
 * This method initializes separatorRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.common.Separator.SeparatorPanel	
 */
private ULCContainer getSeparatorRDC()  {
	if (separatorRDC == null) {
		separatorRDC = RichDialogPanelFactory.create(SeparatorPanel.class);
		separatorRDC.setName("separatorRDC");
		separatorRDC.setStyleProperties("{/weightX \"1\"}");
	}
	return separatorRDC;
}

/**
 * This method initializes customVarcharFieldsGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getCustomVarcharFieldsGridBagLayoutPane() {
	if (customVarcharFieldsGridBagLayoutPane == null) {
		RFiller hFiller22 = new RFiller();
		hFiller22.setStyleProperties("{/weightX \"1\"}");
		RFiller hFiller21 = new RFiller();
		hFiller21.setStyleProperties("{/weightX \"1\"}");
		RFiller hFiller20 = new RFiller();
		hFiller20.setStyleProperties("{/weightX \"1\"}");
		RFiller hFiller19 = new RFiller();
		hFiller19.setStyleProperties("{/weightX \"1\"}");
		RFiller hFiller18 = new RFiller();
		hFiller18.setStyleProperties("{/weightX \"1\"}");
		RFiller aFiller1111 = new RFiller();
		aFiller1111.setStyle("horizontalStrut150");
		customVarcharFieldsGridBagLayoutPane = new RGridBagLayoutPane();
		customVarcharFieldsGridBagLayoutPane.setName("customVarcharFieldsGridBagLayoutPane");
		customVarcharFieldsGridBagLayoutPane.setStyleProperties("{/weightX \"1\"}");
		customVarcharFieldsGridBagLayoutPane.add(getCustomVarcharField1Label(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customVarcharFieldsGridBagLayoutPane.add(getCustomVarcharField2Label(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customVarcharFieldsGridBagLayoutPane.add(getCustomVarcharField3Label(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customVarcharFieldsGridBagLayoutPane.add(getCustomVarcharField4Label(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customVarcharFieldsGridBagLayoutPane.add(getCustomVarcharField5Label(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customVarcharFieldsGridBagLayoutPane.add(aFiller1111, new com.ulcjava.base.application.GridBagConstraints(0, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customVarcharFieldsGridBagLayoutPane.add(getCustomVarcharField1TextField(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customVarcharFieldsGridBagLayoutPane.add(getCustomVarcharField2TextField(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customVarcharFieldsGridBagLayoutPane.add(getCustomVarcharField3TextField(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customVarcharFieldsGridBagLayoutPane.add(getCustomVarcharField4TextField(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customVarcharFieldsGridBagLayoutPane.add(getCustomVarcharField5TextField(), new com.ulcjava.base.application.GridBagConstraints(1, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customVarcharFieldsGridBagLayoutPane.add(hFiller18, new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customVarcharFieldsGridBagLayoutPane.add(hFiller19, new com.ulcjava.base.application.GridBagConstraints(2, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customVarcharFieldsGridBagLayoutPane.add(hFiller20, new com.ulcjava.base.application.GridBagConstraints(2, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customVarcharFieldsGridBagLayoutPane.add(hFiller21, new com.ulcjava.base.application.GridBagConstraints(2, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customVarcharFieldsGridBagLayoutPane.add(hFiller22, new com.ulcjava.base.application.GridBagConstraints(2, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return customVarcharFieldsGridBagLayoutPane;
}

/**
 * This method initializes customDecimalFieldsGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getCustomDecimalFieldsGridBagLayoutPane() {
	if (customDecimalFieldsGridBagLayoutPane == null) {
		RFiller hFiller27 = new RFiller();
		hFiller27.setStyleProperties("{/weightX \"1\"}");
		RFiller hFiller26 = new RFiller();
		hFiller26.setStyleProperties("{/weightX \"1\"}");
		RFiller hFiller25 = new RFiller();
		hFiller25.setStyleProperties("{/weightX \"1\"}");
		RFiller hFiller24 = new RFiller();
		hFiller24.setStyleProperties("{/weightX \"1\"}");
		RFiller hFiller23 = new RFiller();
		hFiller23.setStyleProperties("{/weightX \"1\"}");
		RFiller aFiller1112 = new RFiller();
		aFiller1112.setStyle("horizontalStrut150");
		customDecimalFieldsGridBagLayoutPane = new RGridBagLayoutPane();
		customDecimalFieldsGridBagLayoutPane.setName("customDecimalFieldsGridBagLayoutPane");
		customDecimalFieldsGridBagLayoutPane.setStyleProperties("{/weightX \"1\"}");
		customDecimalFieldsGridBagLayoutPane.add(getCustomDecimalField1Label(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customDecimalFieldsGridBagLayoutPane.add(getCustomDecimalField2Label(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customDecimalFieldsGridBagLayoutPane.add(getCustomDecimalField3Label(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customDecimalFieldsGridBagLayoutPane.add(getCustomDecimalField4Label(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customDecimalFieldsGridBagLayoutPane.add(getCustomDecimalField5Label(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customDecimalFieldsGridBagLayoutPane.add(aFiller1112, new com.ulcjava.base.application.GridBagConstraints(0, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customDecimalFieldsGridBagLayoutPane.add(getCustomDecimalField1TextField(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customDecimalFieldsGridBagLayoutPane.add(getCustomDecimalField2TextField(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customDecimalFieldsGridBagLayoutPane.add(getCustomDecimalField3TextField(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customDecimalFieldsGridBagLayoutPane.add(getCustomDecimalField4TextField(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customDecimalFieldsGridBagLayoutPane.add(getCustomDecimalField5TextField(), new com.ulcjava.base.application.GridBagConstraints(1, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customDecimalFieldsGridBagLayoutPane.add(hFiller23, new com.ulcjava.base.application.GridBagConstraints(2, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customDecimalFieldsGridBagLayoutPane.add(hFiller24, new com.ulcjava.base.application.GridBagConstraints(2, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customDecimalFieldsGridBagLayoutPane.add(hFiller25, new com.ulcjava.base.application.GridBagConstraints(2, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customDecimalFieldsGridBagLayoutPane.add(hFiller26, new com.ulcjava.base.application.GridBagConstraints(2, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customDecimalFieldsGridBagLayoutPane.add(hFiller27, new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return customDecimalFieldsGridBagLayoutPane;
}

/**
 * This method initializes customTimestampFieldsGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getCustomTimestampFieldsGridBagLayoutPane() {
	if (customTimestampFieldsGridBagLayoutPane == null) {
		RFiller hFiller32 = new RFiller();
		hFiller32.setStyleProperties("{/weightX \"1\"}");
		RFiller hFiller31 = new RFiller();
		hFiller31.setStyleProperties("{/weightX \"1\"}");
		RFiller hFiller30 = new RFiller();
		hFiller30.setStyleProperties("{/weightX \"1\"}");
		RFiller hFiller29 = new RFiller();
		hFiller29.setStyleProperties("{/weightX \"1\"}");
		RFiller hFiller28 = new RFiller();
		hFiller28.setStyleProperties("{/weightX \"1\"}");
		RFiller aFiller1113 = new RFiller();
		aFiller1113.setStyle("horizontalStrut150");
		customTimestampFieldsGridBagLayoutPane = new RGridBagLayoutPane();
		customTimestampFieldsGridBagLayoutPane.setName("customTimestampFieldsGridBagLayoutPane");
		customTimestampFieldsGridBagLayoutPane.setStyleProperties("{/weightX \"1\"}");
		customTimestampFieldsGridBagLayoutPane.add(getCustomTimestampField1Label(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customTimestampFieldsGridBagLayoutPane.add(getCustomTimestampField2Label(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customTimestampFieldsGridBagLayoutPane.add(getCustomTimestampField3Label(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customTimestampFieldsGridBagLayoutPane.add(getCustomTimestampField4Label(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customTimestampFieldsGridBagLayoutPane.add(getCustomTimestampField5Label(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customTimestampFieldsGridBagLayoutPane.add(aFiller1113, new com.ulcjava.base.application.GridBagConstraints(0, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customTimestampFieldsGridBagLayoutPane.add(getCustomTimestampField1TextField(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customTimestampFieldsGridBagLayoutPane.add(getCustomTimestampField2TextField(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customTimestampFieldsGridBagLayoutPane.add(getCustomTimestampField3TextField(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customTimestampFieldsGridBagLayoutPane.add(getCustomTimestampField4TextField(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customTimestampFieldsGridBagLayoutPane.add(getCustomTimestampField5TextField(), new com.ulcjava.base.application.GridBagConstraints(1, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customTimestampFieldsGridBagLayoutPane.add(hFiller28, new com.ulcjava.base.application.GridBagConstraints(2, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customTimestampFieldsGridBagLayoutPane.add(hFiller29, new com.ulcjava.base.application.GridBagConstraints(2, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customTimestampFieldsGridBagLayoutPane.add(hFiller30, new com.ulcjava.base.application.GridBagConstraints(2, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customTimestampFieldsGridBagLayoutPane.add(hFiller31, new com.ulcjava.base.application.GridBagConstraints(2, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customTimestampFieldsGridBagLayoutPane.add(hFiller32, new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return customTimestampFieldsGridBagLayoutPane;
}

/**
 * This method initializes casePriorityIconLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCasePriorityIconLabel() {
	if (casePriorityIconLabel == null) {
		casePriorityIconLabel = new RLabel();
		casePriorityIconLabel.setName("casePriorityIconLabel");
		casePriorityIconLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/workflowPriorities/images/2_16\")%>");
	}
	return casePriorityIconLabel;
}

/**
 * This method initializes caseStateIconLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCaseStateIconLabel() {
	if (caseStateIconLabel == null) {
		caseStateIconLabel = new RLabel();
		caseStateIconLabel.setName("caseStateIconLabel");
		caseStateIconLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/caseState/images/RUNNING16\")%>");
	}
	return caseStateIconLabel;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"