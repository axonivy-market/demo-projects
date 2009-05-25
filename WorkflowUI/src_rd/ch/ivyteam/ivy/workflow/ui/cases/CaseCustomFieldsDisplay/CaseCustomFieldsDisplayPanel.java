package ch.ivyteam.ivy.workflow.ui.cases.CaseCustomFieldsDisplay;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.border.ULCTitledBorder;
import com.ulcjava.base.application.util.Font;
import com.ulcjava.base.application.util.Color;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;

/**
 * RichDialog panel implementation for CaseCustomFieldsDisplayPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class CaseCustomFieldsDisplayPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
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
  
  /**
   * Create a new instance of CaseCustomFieldsDisplayPanel
   */
  public CaseCustomFieldsDisplayPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes CaseCustomFieldsDisplayPanel
   * @return void
   */
  public void initialize()
  {
        RFiller customFieldsFiller = new RFiller();
        customFieldsFiller.setStyleProperties("{/fill \"VERTICAL\"/weightY \"1\"}");
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(500,440));
        this.add(getCustomVarcharFieldsGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getCustomDecimalFieldsGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getCustomTimestampFieldsGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(customFieldsFiller, new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes customVarcharFieldsGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getCustomVarcharFieldsGridBagLayoutPane() {
	if (customVarcharFieldsGridBagLayoutPane == null) {
		RFiller aFiller = new RFiller();
		aFiller.setStyle("horizontalStrut150");
		customVarcharFieldsGridBagLayoutPane = new RGridBagLayoutPane();
		customVarcharFieldsGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(null, "Custom varchar fields", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
		customVarcharFieldsGridBagLayoutPane.setName("customVarcharFieldsGridBagLayoutPane");
		customVarcharFieldsGridBagLayoutPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		customVarcharFieldsGridBagLayoutPane.add(getCustomVarcharField1Label(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customVarcharFieldsGridBagLayoutPane.add(getCustomVarcharField2Label(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customVarcharFieldsGridBagLayoutPane.add(getCustomVarcharField3Label(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customVarcharFieldsGridBagLayoutPane.add(getCustomVarcharField4Label(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customVarcharFieldsGridBagLayoutPane.add(getCustomVarcharField5Label(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customVarcharFieldsGridBagLayoutPane.add(getCustomVarcharField1TextField(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customVarcharFieldsGridBagLayoutPane.add(getCustomVarcharField2TextField(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customVarcharFieldsGridBagLayoutPane.add(getCustomVarcharField3TextField(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customVarcharFieldsGridBagLayoutPane.add(getCustomVarcharField4TextField(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customVarcharFieldsGridBagLayoutPane.add(getCustomVarcharField5TextField(), new com.ulcjava.base.application.GridBagConstraints(1, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customVarcharFieldsGridBagLayoutPane.add(aFiller, new com.ulcjava.base.application.GridBagConstraints(0, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
		customVarcharField1Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customVarcharField\")%> 1");
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
		customVarcharField2Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customVarcharField\")%> 2");
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
		customVarcharField3Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customVarcharField\")%> 3");
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
		customVarcharField4Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customVarcharField\")%> 4");
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
		customVarcharField5Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customVarcharField\")%> 5");
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
		customVarcharField1TextField.setStyleProperties("{/weightX \"1\"}");
		customVarcharField1TextField.setEditable(false);
		customVarcharField1TextField.setText("");
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
		customVarcharField2TextField.setEditable(false);
		customVarcharField2TextField.setText("");
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
		customVarcharField3TextField.setEditable(false);
		customVarcharField3TextField.setText("");
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
		customVarcharField4TextField.setEditable(false);
		customVarcharField4TextField.setText("");
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
		customVarcharField5TextField.setEditable(false);
		customVarcharField5TextField.setText("");
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
		RFiller aFiller1 = new RFiller();
		aFiller1.setStyle("horizontalStrut150");
		customDecimalFieldsGridBagLayoutPane = new RGridBagLayoutPane();
		customDecimalFieldsGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(null, "Custom decimal fields", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
		customDecimalFieldsGridBagLayoutPane.setName("customDecimalFieldsGridBagLayoutPane");
		customDecimalFieldsGridBagLayoutPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		customDecimalFieldsGridBagLayoutPane.add(getCustomDecimalField1Label(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customDecimalFieldsGridBagLayoutPane.add(getCustomDecimalField2Label(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customDecimalFieldsGridBagLayoutPane.add(getCustomDecimalField3Label(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customDecimalFieldsGridBagLayoutPane.add(getCustomDecimalField4Label(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customDecimalFieldsGridBagLayoutPane.add(getCustomDecimalField5Label(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customDecimalFieldsGridBagLayoutPane.add(getCustomDecimalField1TextField(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customDecimalFieldsGridBagLayoutPane.add(getCustomDecimalField2TextField(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customDecimalFieldsGridBagLayoutPane.add(getCustomDecimalField3TextField(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customDecimalFieldsGridBagLayoutPane.add(getCustomDecimalField4TextField(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customDecimalFieldsGridBagLayoutPane.add(getCustomDecimalField5TextField(), new com.ulcjava.base.application.GridBagConstraints(1, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customDecimalFieldsGridBagLayoutPane.add(aFiller1, new com.ulcjava.base.application.GridBagConstraints(0, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
		customDecimalField1Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customDecimalField\")%> 1");
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
		customDecimalField2Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customDecimalField\")%> 2");
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
		customDecimalField3Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customDecimalField\")%> 3");
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
		customDecimalField4Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customDecimalField\")%> 4");
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
		customDecimalField5Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customDecimalField\")%> 5");
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
		customDecimalField1TextField.setStyleProperties("{/weightX \"1\"}");
		customDecimalField1TextField.setEditable(false);
		customDecimalField1TextField.setText("");
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
		customDecimalField2TextField.setEditable(false);
		customDecimalField2TextField.setText("");
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
		customDecimalField3TextField.setEditable(false);
		customDecimalField3TextField.setText("");
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
		customDecimalField4TextField.setEditable(false);
		customDecimalField4TextField.setText("");
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
		customDecimalField5TextField.setEditable(false);
		customDecimalField5TextField.setText("");
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
		RFiller aFiller11 = new RFiller();
		aFiller11.setStyle("horizontalStrut150");
		customTimestampFieldsGridBagLayoutPane = new RGridBagLayoutPane();
		customTimestampFieldsGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(null, "Custom timestamp fields", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
		customTimestampFieldsGridBagLayoutPane.setName("customTimestampFieldsGridBagLayoutPane");
		customTimestampFieldsGridBagLayoutPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		customTimestampFieldsGridBagLayoutPane.add(getCustomTimestampField1Label(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customTimestampFieldsGridBagLayoutPane.add(getCustomTimestampField2Label(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customTimestampFieldsGridBagLayoutPane.add(getCustomTimestampField3Label(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customTimestampFieldsGridBagLayoutPane.add(getCustomTimestampField4Label(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customTimestampFieldsGridBagLayoutPane.add(getCustomTimestampField5Label(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customTimestampFieldsGridBagLayoutPane.add(getCustomTimestampField1TextField(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customTimestampFieldsGridBagLayoutPane.add(getCustomTimestampField2TextField(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customTimestampFieldsGridBagLayoutPane.add(getCustomTimestampField3TextField(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customTimestampFieldsGridBagLayoutPane.add(getCustomTimestampField4TextField(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customTimestampFieldsGridBagLayoutPane.add(getCustomTimestampField5TextField(), new com.ulcjava.base.application.GridBagConstraints(1, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customTimestampFieldsGridBagLayoutPane.add(aFiller11, new com.ulcjava.base.application.GridBagConstraints(0, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
		customTimestampField1Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customTimestampField\")%> 1");
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
		customTimestampField2Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customTimestampField\")%> 2");
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
		customTimestampField3Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customTimestampField\")%> 3");
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
		customTimestampField4Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customTimestampField\")%> 4");
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
		customTimestampField5Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customTimestampField\")%> 5");
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
		customTimestampField1TextField.setStyleProperties("{/weightX \"1\"}");
		customTimestampField1TextField.setEditable(false);
		customTimestampField1TextField.setText("");
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
		customTimestampField2TextField.setEditable(false);
		customTimestampField2TextField.setText("");
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
		customTimestampField3TextField.setEditable(false);
		customTimestampField3TextField.setText("");
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
		customTimestampField4TextField.setEditable(false);
		customTimestampField4TextField.setText("");
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
		customTimestampField5TextField.setEditable(false);
		customTimestampField5TextField.setText("");
	}
	return customTimestampField5TextField;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"