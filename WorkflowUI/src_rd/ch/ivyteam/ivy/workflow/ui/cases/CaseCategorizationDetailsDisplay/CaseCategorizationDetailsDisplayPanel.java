package ch.ivyteam.ivy.workflow.ui.cases.CaseCategorizationDetailsDisplay;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextArea;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;

import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.border.ULCTitledBorder;
import com.ulcjava.base.application.util.Color;
import com.ulcjava.base.application.util.Font;
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
private RLabel caseProcessNameLabel = null;
private RLabel caseProcessCategoryCodeLabel = null;
private RLabel caseTypeCodeLabel = null;
private RLabel caseSubTypeNameLabel = null;
private RLabel caseNameLabel = null;
private RTextField caseProcessCategoryNameTextField = null;
private RTextField caseTypeCodeTextField = null;
private RTextField caseSubTypeNameTextField = null;
private RLabel caseIdIconLabel = null;
private RLabel caseDescriptionLabel = null;
private RTextArea caseDescriptionTextArea = null;
private RGridBagLayoutPane processCategoryGridBagLayoutPane = null;
private RLabel caseProcessCategoryNameLabel = null;
private RTextField caseProcessCategoryCodeTextField = null;
private RGridBagLayoutPane caseProcessGridBagLayoutPane = null;
private RGridBagLayoutPane caseTypeGridBagLayoutPane = null;
private RGridBagLayoutPane caseSubTypeGridBagLayoutPane = null;
private RGridBagLayoutPane caseGridBagLayoutPane = null;
private RLabel caseProcessCodeLabel = null;
private RTextField caseProcessCodeTextField = null;
private RLabel caseTypeNameLabel = null;
private RTextField caseTypeNameTextField = null;
private RLabel caseSubTypeCodeLabel = null;
private RTextField caseSubTypeCodeTextField = null;
private RLabel caseProcessCategoryLabel = null;
private RLabel caseProcessLabel = null;
private RLabel caseTypeLabel = null;
private RLabel caseSubTypeLabel = null;
private RLabel casePriorityIconLabel = null;
private RLabel caseStartLabel = null;
private RTextField caseStartTextField = null;
private RLabel caseStateLabel = null;
private RTextField caseStateTextField = null;
private RScrollPane caseDescriptionScrollPane = null;
private RLabel casePriorityLabel = null;
private RLabel caseIdLabel = null;
private RTextField casePriorityTextField = null;
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
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(383,471));
        RFiller caseCategorizationDetailsFiller = new RFiller();
        caseCategorizationDetailsFiller.setStyleProperties("{/fill \"VERTICAL\"/weightY \"1\"}");
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(550,535));
        this.add(getCaseGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getProcessCategoryGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getCaseProcessGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getCaseTypeGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getCaseSubTypeGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(caseCategorizationDetailsFiller, new com.ulcjava.base.application.GridBagConstraints(0, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
 * This method initializes caseProcessNameLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCaseProcessNameLabel() {
	if (caseProcessNameLabel == null) {
		caseProcessNameLabel = new RLabel();
		caseProcessNameLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseProcessName\")%> <%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/name\")%>");
		caseProcessNameLabel.setName("caseProcessNameLabel");
	}
	return caseProcessNameLabel;
}

/**
 * This method initializes caseProcessCategoryCodeLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCaseProcessCategoryCodeLabel() {
	if (caseProcessCategoryCodeLabel == null) {
		caseProcessCategoryCodeLabel = new RLabel();
		caseProcessCategoryCodeLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseProcessCategoryName\")%> <%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/code\")%>");
		caseProcessCategoryCodeLabel.setName("caseProcessCategoryCodeLabel");
	}
	return caseProcessCategoryCodeLabel;
}

/**
 * This method initializes caseTypeCodeLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCaseTypeCodeLabel() {
	if (caseTypeCodeLabel == null) {
		caseTypeCodeLabel = new RLabel();
		caseTypeCodeLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseTypeName\")%> <%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/code\")%>");
		caseTypeCodeLabel.setName("caseTypeCodeLabel");
	}
	return caseTypeCodeLabel;
}

/**
 * This method initializes caseSubTypeNameLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCaseSubTypeNameLabel() {
	if (caseSubTypeNameLabel == null) {
		caseSubTypeNameLabel = new RLabel();
		caseSubTypeNameLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseSubTypeName\")%> <%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/name\")%>");
		caseSubTypeNameLabel.setName("caseSubTypeNameLabel");
	}
	return caseSubTypeNameLabel;
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
		caseTypeCodeTextField.setStyleProperties("{/weightX \"1\"}");
		caseTypeCodeTextField.setEditable(false);
		caseTypeCodeTextField.setText("");
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
 * This method initializes caseIdIconLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCaseIdIconLabel() {
	if (caseIdIconLabel == null) {
		caseIdIconLabel = new RLabel();
		caseIdIconLabel.setText("ICON");
		caseIdIconLabel.setName("caseIdIconLabel");
		caseIdIconLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/CASE_ID16\")%>");
		caseIdIconLabel.setTextVisible(false);
	}
	return caseIdIconLabel;
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
		caseDescriptionLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseDescription\")%>");
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
		caseDescriptionTextArea.setRows(3);
		caseDescriptionTextArea.setLineWrap(true);
		caseDescriptionTextArea.setEditable(false);
	}
	return caseDescriptionTextArea;
}

/**
 * This method initializes processCategoryGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getProcessCategoryGridBagLayoutPane() {
	if (processCategoryGridBagLayoutPane == null) {
		RFiller aFiller1 = new RFiller();
		aFiller1.setStyle("horizontalStrut150");
		processCategoryGridBagLayoutPane = new RGridBagLayoutPane();
		processCategoryGridBagLayoutPane.setName("processCategoryGridBagLayoutPane");
		processCategoryGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(null, "Process category", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
		processCategoryGridBagLayoutPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		processCategoryGridBagLayoutPane.add(getCaseProcessCategoryCodeLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		processCategoryGridBagLayoutPane.add(getCaseProcessCategoryNameTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		processCategoryGridBagLayoutPane.add(getCaseProcessCategoryNameLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		processCategoryGridBagLayoutPane.add(getCaseProcessCategoryCodeTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		processCategoryGridBagLayoutPane.add(getCaseProcessCategoryLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		processCategoryGridBagLayoutPane.add(aFiller1, new com.ulcjava.base.application.GridBagConstraints(0, 3, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return processCategoryGridBagLayoutPane;
}

/**
 * This method initializes caseProcessCategoryNameLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCaseProcessCategoryNameLabel() {
	if (caseProcessCategoryNameLabel == null) {
		caseProcessCategoryNameLabel = new RLabel();
		caseProcessCategoryNameLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseProcessCategoryName\")%> <%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/name\")%>");
		caseProcessCategoryNameLabel.setName("caseProcessCategoryNameLabel");
	}
	return caseProcessCategoryNameLabel;
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
		caseProcessCategoryCodeTextField.setStyleProperties("{/weightX \"1\"}");
		caseProcessCategoryCodeTextField.setEditable(false);
		caseProcessCategoryCodeTextField.setText("");
	}
	return caseProcessCategoryCodeTextField;
}

/**
 * This method initializes caseProcessGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getCaseProcessGridBagLayoutPane() {
	if (caseProcessGridBagLayoutPane == null) {
		RFiller aFiller11 = new RFiller();
		aFiller11.setStyle("horizontalStrut150");
		caseProcessGridBagLayoutPane = new RGridBagLayoutPane();
		caseProcessGridBagLayoutPane.setName("caseProcessGridBagLayoutPane");
		caseProcessGridBagLayoutPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		caseProcessGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(null, "Process", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
		caseProcessGridBagLayoutPane.add(getCaseProcessNameLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseProcessGridBagLayoutPane.add(getCaseProcessNameTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseProcessGridBagLayoutPane.add(getCaseProcessCodeLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseProcessGridBagLayoutPane.add(getCaseProcessCodeTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseProcessGridBagLayoutPane.add(getCaseProcessLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseProcessGridBagLayoutPane.add(aFiller11, new com.ulcjava.base.application.GridBagConstraints(0, 2, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return caseProcessGridBagLayoutPane;
}

/**
 * This method initializes caseTypeGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getCaseTypeGridBagLayoutPane() {
	if (caseTypeGridBagLayoutPane == null) {
		RFiller aFiller111 = new RFiller();
		aFiller111.setStyle("horizontalStrut150");
		caseTypeGridBagLayoutPane = new RGridBagLayoutPane();
		caseTypeGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(null, "Type", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
		caseTypeGridBagLayoutPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		caseTypeGridBagLayoutPane.setName("caseTypeGridBagLayoutPane");
		caseTypeGridBagLayoutPane.add(getCaseTypeCodeLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseTypeGridBagLayoutPane.add(getCaseTypeCodeTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseTypeGridBagLayoutPane.add(getCaseTypeNameLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseTypeGridBagLayoutPane.add(getCaseTypeNameTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseTypeGridBagLayoutPane.add(getCaseTypeLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseTypeGridBagLayoutPane.add(aFiller111, new com.ulcjava.base.application.GridBagConstraints(0, 2, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return caseTypeGridBagLayoutPane;
}

/**
 * This method initializes caseSubTypeGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getCaseSubTypeGridBagLayoutPane() {
	if (caseSubTypeGridBagLayoutPane == null) {
		RFiller aFiller1111 = new RFiller();
		aFiller1111.setStyle("horizontalStrut150");
		caseSubTypeGridBagLayoutPane = new RGridBagLayoutPane();
		caseSubTypeGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(null, "Sub Type", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
		caseSubTypeGridBagLayoutPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		caseSubTypeGridBagLayoutPane.setName("caseSubTypeGridBagLayoutPane");
		caseSubTypeGridBagLayoutPane.add(getCaseSubTypeNameLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseSubTypeGridBagLayoutPane.add(getCaseSubTypeNameTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseSubTypeGridBagLayoutPane.add(getCaseSubTypeCodeLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseSubTypeGridBagLayoutPane.add(getCaseSubTypeCodeTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseSubTypeGridBagLayoutPane.add(getCaseSubTypeLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseSubTypeGridBagLayoutPane.add(aFiller1111, new com.ulcjava.base.application.GridBagConstraints(0, 2, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return caseSubTypeGridBagLayoutPane;
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
		caseGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(null, "Case", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
		caseGridBagLayoutPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		caseGridBagLayoutPane.setName("caseGridBagLayoutPane");
		caseGridBagLayoutPane.add(getCaseIdIconLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(getCaseIdTextField(), new com.ulcjava.base.application.GridBagConstraints(3, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(getCaseNameLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 5, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(getCaseNameTextField(), new com.ulcjava.base.application.GridBagConstraints(3, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(getCaseDescriptionLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 6, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(aFiller, new com.ulcjava.base.application.GridBagConstraints(0, 7, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(getCasePriorityIconLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(getCaseStartLabel(), new com.ulcjava.base.application.GridBagConstraints(2, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(getCaseStartTextField(), new com.ulcjava.base.application.GridBagConstraints(3, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(getCaseStateLabel(), new com.ulcjava.base.application.GridBagConstraints(2, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(getCaseStateTextField(), new com.ulcjava.base.application.GridBagConstraints(3, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(getCaseDescriptionScrollPane(), new com.ulcjava.base.application.GridBagConstraints(3, 6, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(getCasePriorityLabel(), new com.ulcjava.base.application.GridBagConstraints(2, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(getCaseIdLabel(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseGridBagLayoutPane.add(getCasePriorityTextField(), new com.ulcjava.base.application.GridBagConstraints(3, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return caseGridBagLayoutPane;
}

/**
 * This method initializes caseProcessCodeLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCaseProcessCodeLabel() {
	if (caseProcessCodeLabel == null) {
		caseProcessCodeLabel = new RLabel();
		caseProcessCodeLabel.setName("caseProcessCodeLabel");
		caseProcessCodeLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseProcessName\")%> <%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/code\")%>");
	}
	return caseProcessCodeLabel;
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
		caseProcessCodeTextField.setStyleProperties("{/anchor \"WEST\"/fill \"HORIZONTAL\"/weightX \"1\"}");
		caseProcessCodeTextField.setEditable(false);
		caseProcessCodeTextField.setColumns(15);
	}
	return caseProcessCodeTextField;
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
		caseTypeNameLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseTypeName\")%> <%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/name\")%>");
	}
	return caseTypeNameLabel;
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
 * This method initializes caseSubTypeCodeLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCaseSubTypeCodeLabel() {
	if (caseSubTypeCodeLabel == null) {
		caseSubTypeCodeLabel = new RLabel();
		caseSubTypeCodeLabel.setName("caseSubTypeCodeLabel");
		caseSubTypeCodeLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseSubTypeName\")%> <%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/code\")%>");
	}
	return caseSubTypeCodeLabel;
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
		caseSubTypeCodeTextField.setStyleProperties("{/weightX \"1\"}");
		caseSubTypeCodeTextField.setEditable(false);
		caseSubTypeCodeTextField.setText("");
	}
	return caseSubTypeCodeTextField;
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
		caseProcessCategoryLabel.setText("");
	}
	return caseProcessCategoryLabel;
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
		caseProcessLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/PROCESS_CODE16\")%>");
		caseProcessLabel.setText("");
	}
	return caseProcessLabel;
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
		caseTypeLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/TYPE_CODE16\")%>");
		caseTypeLabel.setText("");
	}
	return caseTypeLabel;
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
		caseSubTypeLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/SUB_TYPE_CODE16\")%>");
		caseSubTypeLabel.setText("");
	}
	return caseSubTypeLabel;
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
		casePriorityIconLabel.setTextVisible(true);
	}
	return casePriorityIconLabel;
}

/**
 * This method initializes caseStartLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCaseStartLabel() {
	if (caseStartLabel == null) {
		caseStartLabel = new RLabel();
		caseStartLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseStartTimestamp\")%>");
		caseStartLabel.setName("caseStartLabel");
	}
	return caseStartLabel;
}

/**
 * This method initializes caseStartTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getCaseStartTextField() {
	if (caseStartTextField == null) {
		caseStartTextField = new RTextField();
		caseStartTextField.setName("caseStartTextField");
		caseStartTextField.setText("");
		caseStartTextField.setStyleProperties("{/fill \"HORIZONTAL\"}");
		caseStartTextField.setEditable(false);
		caseStartTextField.setColumns(15);
	}
	return caseStartTextField;
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
		caseStateLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseState\")%>");
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
		caseIdLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/businessMainContact/plainStrings/id\")%>");
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
		casePriorityTextField.setText("casePriorityTextField");
		casePriorityTextField.setEditable(false);
		casePriorityTextField.setName("casePriorityTextField");
	}
	return casePriorityTextField;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"