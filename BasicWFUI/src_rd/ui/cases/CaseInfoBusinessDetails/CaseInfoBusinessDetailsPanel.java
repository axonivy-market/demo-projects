package ui.cases.CaseInfoBusinessDetails;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;

import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.border.ULCTitledBorder;
import com.ulcjava.base.application.util.Color;
import com.ulcjava.base.application.util.Font;

/**
 * RichDialog panel implementation for CaseBusinessDetailsDisplayPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class CaseInfoBusinessDetailsPanel extends RichDialogGridBagPanel
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RGridBagLayoutPane caseBusinessDetailsGridBagLayoutPane = null;
private RLabel businessMainContactNameLabel = null;
private RTextField businessMainContactNameTextField = null;
private RLabel businessCreatorUserLabel = null;
private RTextField businessCreatorUserTextField = null;
private RLabel businessMainContactTypeLabel = null;
private RTextField businessMainContactTypeTextField = null;
private RLabel businessMainContactIdLabel = null;
private RTextField businessMainContactIdTextField = null;
private RLabel businessMainContactDocumentDbCodeLabel = null;
private RTextField businessMainContactDocumentDbCodeTextField = null;
private RLabel businessMainContactFolderIdLabel = null;
private RTextField businessMainContactFolderIdTextField = null;
private RGridBagLayoutPane correspondentContactGridBagLayoutPane = null;
private RLabel correspondentContactIdLabel = null;
private RTextField correspondentContactIdTextField = null;
private RGridBagLayoutPane businessObjectGridBagLayoutPane = null;
private RLabel businessObjectCodeLabel = null;
private RTextField businessObjectCodeTextField = null;
private RLabel businessObjectNameLabel = null;
private RTextField businessObjectNameTextField = null;
private RLabel businessObjectDocumentDbCodeLabel = null;
private RTextField businessObjectDocumentDbCodeTextField = null;
private RLabel businessObjectFolderIdLabel = null;
private RTextField businessObjectFolderIdTextField = null;
private RGridBagLayoutPane otherGridBagLayoutPane = null;
private RLabel dateTimeStartLabel = null;
private RTextField dateTimeStartTextField = null;
private RLabel dateTimeMilestoneLabel = null;
private RTextField dateTimeMilestoneTextField = null;
private RLabel priorityLabel = null;
private RTextField priorityTextField = null;
/**
   * Create a new instance of CaseBusinessDetailsDisplayPanel
   */
  public CaseInfoBusinessDetailsPanel()
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
        RFiller caseBusinessFiller = new RFiller();
        caseBusinessFiller.setStyleProperties("{/fill \"VERTICAL\"/weightY \"1\"}");
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(490,490));
        this.add(getCaseBusinessDetailsGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getCorrespondentContactGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getBusinessObjectGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getOtherGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(caseBusinessFiller, new com.ulcjava.base.application.GridBagConstraints(0, 6, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes caseBusinessDetailsGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getCaseBusinessDetailsGridBagLayoutPane() {
	if (caseBusinessDetailsGridBagLayoutPane == null) {
		RFiller alignLabelFiller1 = new RFiller();
		alignLabelFiller1.setStyle("horizontalStrut150");
		caseBusinessDetailsGridBagLayoutPane = new RGridBagLayoutPane();
		caseBusinessDetailsGridBagLayoutPane.setName("caseBusinessDetailsGridBagLayoutPane");
		caseBusinessDetailsGridBagLayoutPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		caseBusinessDetailsGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(null, "Main contact", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
		caseBusinessDetailsGridBagLayoutPane.add(getBusinessMainContactNameLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseBusinessDetailsGridBagLayoutPane.add(getBusinessMainContactNameTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseBusinessDetailsGridBagLayoutPane.add(getBusinessMainContactTypeLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseBusinessDetailsGridBagLayoutPane.add(getBusinessMainContactTypeTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseBusinessDetailsGridBagLayoutPane.add(getBusinessMainContactIdLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseBusinessDetailsGridBagLayoutPane.add(getBusinessMainContactIdTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseBusinessDetailsGridBagLayoutPane.add(getBusinessMainContactDocumentDbCodeLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseBusinessDetailsGridBagLayoutPane.add(getBusinessMainContactDocumentDbCodeTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseBusinessDetailsGridBagLayoutPane.add(getBusinessMainContactFolderIdLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseBusinessDetailsGridBagLayoutPane.add(getBusinessMainContactFolderIdTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseBusinessDetailsGridBagLayoutPane.add(alignLabelFiller1, new com.ulcjava.base.application.GridBagConstraints(1, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return caseBusinessDetailsGridBagLayoutPane;
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
		businessMainContactNameLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/case/businessMainContact/name\")%>");
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
		businessMainContactNameTextField.setEditable(false);
		businessMainContactNameTextField.setText("");
	}
	return businessMainContactNameTextField;
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
		businessCreatorUserLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/case/businessCreatorUser\")%>");
	}
	return businessCreatorUserLabel;
}

/**
 * This method initializes businessCreatorUserTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getBusinessCreatorUserTextField() {
	if (businessCreatorUserTextField == null) {
		businessCreatorUserTextField = new RTextField();
		businessCreatorUserTextField.setName("businessCreatorUserTextField");
		businessCreatorUserTextField.setStyleProperties("{/weightX \"1\"}");
		businessCreatorUserTextField.setEditable(false);
		businessCreatorUserTextField.setText("");
	}
	return businessCreatorUserTextField;
}

/**
 * This method initializes businessMainContactTypeLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getBusinessMainContactTypeLabel() {
	if (businessMainContactTypeLabel == null) {
		businessMainContactTypeLabel = new RLabel();
		businessMainContactTypeLabel.setName("businessMainContactTypeLabel");
		businessMainContactTypeLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/case/businessMainContact/type\")%>");
	}
	return businessMainContactTypeLabel;
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
		businessMainContactTypeTextField.setStyleProperties("{/weightX \"1\"}");
		businessMainContactTypeTextField.setEditable(false);
		businessMainContactTypeTextField.setText("");
	}
	return businessMainContactTypeTextField;
}

/**
 * This method initializes businessMainContactIdLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getBusinessMainContactIdLabel() {
	if (businessMainContactIdLabel == null) {
		businessMainContactIdLabel = new RLabel();
		businessMainContactIdLabel.setName("businessMainContactIdLabel");
		businessMainContactIdLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/case/businessMainContact/id\")%>");
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
		businessMainContactIdTextField.setEditable(false);
		businessMainContactIdTextField.setText("");
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
		businessMainContactDocumentDbCodeLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/case/businessMainContact/documentDatabaseCode\")%>");
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
		businessMainContactFolderIdLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/case/businessMainContact/folderId\")%>");
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
 * This method initializes correspondentContactGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getCorrespondentContactGridBagLayoutPane() {
	if (correspondentContactGridBagLayoutPane == null) {
		RFiller alignLabelFiller = new RFiller();
		alignLabelFiller.setStyle("horizontalStrut150");
		correspondentContactGridBagLayoutPane = new RGridBagLayoutPane();
		correspondentContactGridBagLayoutPane.setName("correspondentContactGridBagLayoutPane");
		correspondentContactGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(null, "Correspondent contact", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
		correspondentContactGridBagLayoutPane.add(getCorrespondentContactIdLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		correspondentContactGridBagLayoutPane.add(getCorrespondentContactIdTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		correspondentContactGridBagLayoutPane.add(alignLabelFiller, new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return correspondentContactGridBagLayoutPane;
}

/**
 * This method initializes correspondentContactIdLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCorrespondentContactIdLabel() {
	if (correspondentContactIdLabel == null) {
		correspondentContactIdLabel = new RLabel();
		correspondentContactIdLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/case/correspondentContact/id\")%>");
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
 * This method initializes businessObjectGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getBusinessObjectGridBagLayoutPane() {
	if (businessObjectGridBagLayoutPane == null) {
		RFiller alignLabelFiller2 = new RFiller();
		alignLabelFiller2.setStyle("horizontalStrut150");
		businessObjectGridBagLayoutPane = new RGridBagLayoutPane();
		businessObjectGridBagLayoutPane.setName("businessObjectGridBagLayoutPane");
		businessObjectGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(null, "Object", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
		businessObjectGridBagLayoutPane.add(getBusinessObjectCodeLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessObjectGridBagLayoutPane.add(getBusinessObjectCodeTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessObjectGridBagLayoutPane.add(getBusinessObjectNameLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessObjectGridBagLayoutPane.add(getBusinessObjectNameTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessObjectGridBagLayoutPane.add(getBusinessObjectDocumentDbCodeLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessObjectGridBagLayoutPane.add(getBusinessObjectDocumentDbCodeTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessObjectGridBagLayoutPane.add(getBusinessObjectFolderIdLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessObjectGridBagLayoutPane.add(getBusinessObjectFolderIdTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		businessObjectGridBagLayoutPane.add(alignLabelFiller2, new com.ulcjava.base.application.GridBagConstraints(1, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return businessObjectGridBagLayoutPane;
}

/**
 * This method initializes businessObjectCodeLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getBusinessObjectCodeLabel() {
	if (businessObjectCodeLabel == null) {
		businessObjectCodeLabel = new RLabel();
		businessObjectCodeLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/case/businessObject/code\")%>");
		businessObjectCodeLabel.setName("businessObjectCodeLabel");
	}
	return businessObjectCodeLabel;
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
		businessObjectCodeTextField.setStyleProperties("{/weightX \"1\"}");
		businessObjectCodeTextField.setEditable(false);
		businessObjectCodeTextField.setName("businessObjectCodeTextField");
	}
	return businessObjectCodeTextField;
}

/**
 * This method initializes businessObjectNameLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getBusinessObjectNameLabel() {
	if (businessObjectNameLabel == null) {
		businessObjectNameLabel = new RLabel();
		businessObjectNameLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/case/businessObject/name\")%>");
		businessObjectNameLabel.setName("businessObjectNameLabel");
	}
	return businessObjectNameLabel;
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
		businessObjectDocumentDbCodeLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/case/businessObject/documentDatabaseCode\")%>");
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
		businessObjectFolderIdLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/case/businessObject/folderId\")%>");
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
		businessObjectFolderIdTextField.setName("businessObjectFolderIdTextField");
	}
	return businessObjectFolderIdTextField;
}

/**
 * This method initializes otherGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getOtherGridBagLayoutPane() {
	if (otherGridBagLayoutPane == null) {
		RFiller alignLabelFiller21 = new RFiller();
		alignLabelFiller21.setStyle("horizontalStrut150");
		otherGridBagLayoutPane = new RGridBagLayoutPane();
		otherGridBagLayoutPane.setName("otherGridBagLayoutPane");
		otherGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(null, "Other", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
		otherGridBagLayoutPane.add(getDateTimeStartLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		otherGridBagLayoutPane.add(getDateTimeStartTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		otherGridBagLayoutPane.add(getDateTimeMilestoneLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		otherGridBagLayoutPane.add(getDateTimeMilestoneTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		otherGridBagLayoutPane.add(alignLabelFiller21, new com.ulcjava.base.application.GridBagConstraints(1, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		otherGridBagLayoutPane.add(getPriorityLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		otherGridBagLayoutPane.add(getPriorityTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		otherGridBagLayoutPane.add(getBusinessCreatorUserLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		otherGridBagLayoutPane.add(getBusinessCreatorUserTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return otherGridBagLayoutPane;
}

/**
 * This method initializes dateTimeStartLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getDateTimeStartLabel() {
	if (dateTimeStartLabel == null) {
		dateTimeStartLabel = new RLabel();
		dateTimeStartLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/case/businessTimestamp/start\")%>");
		dateTimeStartLabel.setName("dateTimeStartLabel");
	}
	return dateTimeStartLabel;
}

/**
 * This method initializes dateTimeStartTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getDateTimeStartTextField() {
	if (dateTimeStartTextField == null) {
		dateTimeStartTextField = new RTextField();
		dateTimeStartTextField.setText("");
		dateTimeStartTextField.setStyleProperties("{/weightX \"1\"}");
		dateTimeStartTextField.setEditable(false);
		dateTimeStartTextField.setName("dateTimeStartTextField");
	}
	return dateTimeStartTextField;
}

/**
 * This method initializes dateTimeMilestoneLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getDateTimeMilestoneLabel() {
	if (dateTimeMilestoneLabel == null) {
		dateTimeMilestoneLabel = new RLabel();
		dateTimeMilestoneLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/case/businessTimestamp/milestone\")%>");
		dateTimeMilestoneLabel.setName("dateTimeMilestoneLabel");
	}
	return dateTimeMilestoneLabel;
}

/**
 * This method initializes dateTimeMilestoneTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getDateTimeMilestoneTextField() {
	if (dateTimeMilestoneTextField == null) {
		dateTimeMilestoneTextField = new RTextField();
		dateTimeMilestoneTextField.setText("");
		dateTimeMilestoneTextField.setEditable(false);
		dateTimeMilestoneTextField.setName("dateTimeMilestoneTextField");
	}
	return dateTimeMilestoneTextField;
}

/**
 * This method initializes priorityLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getPriorityLabel() {
	if (priorityLabel == null) {
		priorityLabel = new RLabel();
		priorityLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/case/casePriority\")%>");
		priorityLabel.setName("priorityLabel");
	}
	return priorityLabel;
}

/**
 * This method initializes priorityTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getPriorityTextField() {
	if (priorityTextField == null) {
		priorityTextField = new RTextField();
		priorityTextField.setText("");
		priorityTextField.setStyleProperties("{/weightX \"1\"}");
		priorityTextField.setEditable(false);
		priorityTextField.setName("priorityTextField");
	}
	return priorityTextField;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"