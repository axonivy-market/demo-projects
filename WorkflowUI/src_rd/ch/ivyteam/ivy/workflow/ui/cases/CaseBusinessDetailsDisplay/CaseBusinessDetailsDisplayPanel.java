package ch.ivyteam.ivy.workflow.ui.cases.CaseBusinessDetailsDisplay;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;

/**
 * RichDialog panel implementation for CaseBusinessDetailsDisplayPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class CaseBusinessDetailsDisplayPanel extends RichDialogGridBagPanel
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RTextField businessMainContactNameTextField = null;
private RLabel businessMainContactLabel = null;
private RTextField businessMainContactIdTextField = null;
private RLabel businessMainContactDocumentDbCodeLabel = null;
private RTextField businessMainContactDocumentDbCodeTextField = null;
private RLabel businessMainContactFolderIdLabel = null;
private RTextField businessMainContactFolderIdTextField = null;
private RLabel correspondentContactIdLabel = null;
private RTextField correspondentContactIdTextField = null;
private RLabel businessObjectLabel = null;
private RTextField businessObjectCodeTextField = null;
private RTextField businessObjectNameTextField = null;
private RLabel businessObjectDocumentDbCodeLabel = null;
private RTextField businessObjectDocumentDbCodeTextField = null;
private RLabel businessObjectFolderIdLabel = null;
private RTextField businessObjectFolderIdTextField = null;
private RGridBagLayoutPane caseBusinessDetailsGridBagLayoutPane = null;
/**
   * Create a new instance of CaseBusinessDetailsDisplayPanel
   */
  public CaseBusinessDetailsDisplayPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes CaseBusinessDetailsDisplayPanel
   * @return void
   */
  public void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(547,180));
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(490,490));
        this.add(getCaseBusinessDetailsGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 4, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
		businessMainContactNameTextField.setEditable(false);
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
		businessMainContactLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/businessContact16\")%>");
		businessMainContactLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/businessMainContact/plainStrings/businessMainContact\")%>");
	}
	return businessMainContactLabel;
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
		businessMainContactIdTextField.setStyleProperties("{/weightX \"0\"}");
		businessMainContactIdTextField.setEditable(false);
		businessMainContactIdTextField.setText("");
		businessMainContactIdTextField.setColumns(10);
	}
	return businessMainContactIdTextField;
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
		businessMainContactDocumentDbCodeTextField.setStyleProperties("{/weightX \"1\"}");
		businessMainContactDocumentDbCodeTextField.setEditable(false);
		businessMainContactDocumentDbCodeTextField.setText("");
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
		businessMainContactFolderIdTextField.setStyleProperties("{/weightX \"1\"}");
		businessMainContactFolderIdTextField.setEditable(false);
		businessMainContactFolderIdTextField.setText("");
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
		correspondentContactIdLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/correspondentContact/plainStrings/id\")%>");
		correspondentContactIdLabel.setName("correspondentContactIdLabel");
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
		correspondentContactIdTextField.setText("");
		correspondentContactIdTextField.setStyleProperties("{/weightX \"1\"}");
		correspondentContactIdTextField.setEditable(false);
		correspondentContactIdTextField.setName("correspondentContactIdTextField");
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
		businessObjectLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/businessObject/plainStrings/businessObject\")%>");
		businessObjectLabel.setName("businessObjectLabel");
	}
	return businessObjectLabel;
}

/**
 * This method initializes businessObjectCodeTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getBusinessObjectCodeTextField() {
	if (businessObjectCodeTextField == null) {
		businessObjectCodeTextField = new RTextField();
		businessObjectCodeTextField.setText("");
		businessObjectCodeTextField.setStyleProperties("{/weightX \"0\"}");
		businessObjectCodeTextField.setEditable(false);
		businessObjectCodeTextField.setName("businessObjectCodeTextField");
		businessObjectCodeTextField.setColumns(10);
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
		businessObjectNameTextField.setText("");
		businessObjectNameTextField.setEditable(false);
		businessObjectNameTextField.setStyleProperties("{/weightX \"1\"}");
		businessObjectNameTextField.setName("businessObjectNameTextField");
	}
	return businessObjectNameTextField;
}

/**
 * This method initializes businessObjectDocumentDbCodeLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getBusinessObjectDocumentDbCodeLabel() {
	if (businessObjectDocumentDbCodeLabel == null) {
		businessObjectDocumentDbCodeLabel = new RLabel();
		businessObjectDocumentDbCodeLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/businessObject/plainStrings/documentDatabaseCode\")%>");
		businessObjectDocumentDbCodeLabel.setName("businessObjectDocumentDbCodeLabel");
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
		businessObjectDocumentDbCodeTextField.setText("");
		businessObjectDocumentDbCodeTextField.setEditable(false);
		businessObjectDocumentDbCodeTextField.setStyleProperties("{/weightX \"1\"}");
		businessObjectDocumentDbCodeTextField.setName("businessObjectDocumentDbCodeTextField");
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
		businessObjectFolderIdLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/businessObject/plainStrings/folderId\")%>");
		businessObjectFolderIdLabel.setName("businessObjectFolderIdLabel");
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
		businessObjectFolderIdTextField.setText("");
		businessObjectFolderIdTextField.setEditable(false);
		businessObjectFolderIdTextField.setStyleProperties("{/weightX \"1\"}");
		businessObjectFolderIdTextField.setName("businessObjectFolderIdTextField");
	}
	return businessObjectFolderIdTextField;
}

/**
 * This method initializes caseBusinessDetailsGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getCaseBusinessDetailsGridBagLayoutPane() {
	if (caseBusinessDetailsGridBagLayoutPane == null) {
		RFiller aFiller1 = new RFiller();
		aFiller1.setStyle("horizontalStrut150");
		caseBusinessDetailsGridBagLayoutPane = new RGridBagLayoutPane();
		caseBusinessDetailsGridBagLayoutPane.setName("caseBusinessDetailsGridBagLayoutPane");
		caseBusinessDetailsGridBagLayoutPane.setStyleProperties("{/weightY \"1\"/weightX \"1\"}");
		caseBusinessDetailsGridBagLayoutPane.add(getBusinessMainContactLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseBusinessDetailsGridBagLayoutPane.add(getBusinessMainContactIdTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseBusinessDetailsGridBagLayoutPane.add(getBusinessMainContactNameTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseBusinessDetailsGridBagLayoutPane.add(getBusinessMainContactDocumentDbCodeLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseBusinessDetailsGridBagLayoutPane.add(getBusinessMainContactDocumentDbCodeTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseBusinessDetailsGridBagLayoutPane.add(getBusinessMainContactFolderIdLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseBusinessDetailsGridBagLayoutPane.add(getBusinessMainContactFolderIdTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseBusinessDetailsGridBagLayoutPane.add(getCorrespondentContactIdLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseBusinessDetailsGridBagLayoutPane.add(getCorrespondentContactIdTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseBusinessDetailsGridBagLayoutPane.add(getBusinessObjectLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseBusinessDetailsGridBagLayoutPane.add(getBusinessObjectCodeTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseBusinessDetailsGridBagLayoutPane.add(getBusinessObjectNameTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseBusinessDetailsGridBagLayoutPane.add(getBusinessObjectDocumentDbCodeLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseBusinessDetailsGridBagLayoutPane.add(getBusinessObjectDocumentDbCodeTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 5, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseBusinessDetailsGridBagLayoutPane.add(getBusinessObjectFolderIdLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 6, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseBusinessDetailsGridBagLayoutPane.add(getBusinessObjectFolderIdTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 6, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseBusinessDetailsGridBagLayoutPane.add(aFiller1, new com.ulcjava.base.application.GridBagConstraints(0, 7, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return caseBusinessDetailsGridBagLayoutPane;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"