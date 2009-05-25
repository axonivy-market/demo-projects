package ch.ivyteam.ivy.workflow.ui.task.TaskCustomFieldsDisplay;

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
 * RichDialog panel implementation for TaskCustomFieldsDisplayPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class TaskCustomFieldsDisplayPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RGridBagLayoutPane customVarcharFieldsGridBagLayoutPane = null;
private RGridBagLayoutPane customDecimalFieldsGridBagLayoutPane = null;
private RGridBagLayoutPane customTimestampFieldsGridBagLayoutPane = null;
private RLabel customVarcharField1Label = null;
private RLabel customVarcharFiel2Label = null;
private RLabel customVarcharFiel3Label = null;
private RLabel customVarcharField4Label = null;
private RLabel customVarcharField5Label = null;
private RTextField customVarcharField1TextField = null;
private RTextField customVarcharField2TextField = null;
private RTextField customVarcharField3TextField = null;
private RTextField customVarcharField4TextField = null;
private RTextField customVarcharField5TextField = null;
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
   * Create a new instance of TaskCustomFieldsDisplayPanel
   */
  public TaskCustomFieldsDisplayPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes TaskCustomFieldsDisplayPanel
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
		customVarcharFieldsGridBagLayoutPane.setName("customVarcharFieldsGridBagLayoutPane");
		customVarcharFieldsGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(null, "Custom varchar fields", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
		customVarcharFieldsGridBagLayoutPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		customVarcharFieldsGridBagLayoutPane.add(getCustomVarcharField1Label(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customVarcharFieldsGridBagLayoutPane.add(getCustomVarcharFiel2Label(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		customVarcharFieldsGridBagLayoutPane.add(getCustomVarcharFiel3Label(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
		customDecimalFieldsGridBagLayoutPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		customDecimalFieldsGridBagLayoutPane.setName("customDecimalFieldsGridBagLayoutPane");
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
		customTimestampFieldsGridBagLayoutPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		customTimestampFieldsGridBagLayoutPane.setName("customTimestampFieldsGridBagLayoutPane");
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
 * This method initializes customVarcharField1Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCustomVarcharField1Label() {
	if (customVarcharField1Label == null) {
		customVarcharField1Label = new RLabel();
		customVarcharField1Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/customField/plainStrings/customVarcharField\")%> 1");
		customVarcharField1Label.setName("customVarcharField1Label");
	}
	return customVarcharField1Label;
}

/**
 * This method initializes customVarcharFiel2Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCustomVarcharFiel2Label() {
	if (customVarcharFiel2Label == null) {
		customVarcharFiel2Label = new RLabel();
		customVarcharFiel2Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/customField/plainStrings/customVarcharField\")%> 2");
		customVarcharFiel2Label.setName("customVarcharFiel2Label");
	}
	return customVarcharFiel2Label;
}

/**
 * This method initializes customVarcharFiel3Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCustomVarcharFiel3Label() {
	if (customVarcharFiel3Label == null) {
		customVarcharFiel3Label = new RLabel();
		customVarcharFiel3Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/customField/plainStrings/customVarcharField\")%> 3");
		customVarcharFiel3Label.setName("customVarcharFiel3Label");
	}
	return customVarcharFiel3Label;
}

/**
 * This method initializes customVarcharField4Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCustomVarcharField4Label() {
	if (customVarcharField4Label == null) {
		customVarcharField4Label = new RLabel();
		customVarcharField4Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/customField/plainStrings/customVarcharField\")%> 4");
		customVarcharField4Label.setName("customVarcharField4Label");
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
		customVarcharField5Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/customField/plainStrings/customVarcharField\")%> 5");
		customVarcharField5Label.setName("customVarcharField5Label");
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
		customVarcharField1TextField.setText("");
		customVarcharField1TextField.setStyleProperties("{/weightX \"1\"}");
		customVarcharField1TextField.setEditable(false);
		customVarcharField1TextField.setName("customVarcharField1TextField");
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
		customVarcharField2TextField.setText("");
		customVarcharField2TextField.setEditable(false);
		customVarcharField2TextField.setName("customVarcharField2TextField");
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
		customVarcharField3TextField.setText("");
		customVarcharField3TextField.setEditable(false);
		customVarcharField3TextField.setName("customVarcharField3TextField");
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
		customVarcharField4TextField.setText("");
		customVarcharField4TextField.setEditable(false);
		customVarcharField4TextField.setName("customVarcharField4TextField");
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
		customVarcharField5TextField.setText("");
		customVarcharField5TextField.setEditable(false);
		customVarcharField5TextField.setName("customVarcharField5TextField");
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
		customDecimalField1Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/customField/plainStrings/customDecimalField\")%> 1");
		customDecimalField1Label.setName("customDecimalField1Label");
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
		customDecimalField2Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/customField/plainStrings/customDecimalField\")%> 2");
		customDecimalField2Label.setName("customDecimalField2Label");
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
		customDecimalField3Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/customField/plainStrings/customDecimalField\")%> 3");
		customDecimalField3Label.setName("customDecimalField3Label");
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
		customDecimalField4Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/customField/plainStrings/customDecimalField\")%> 4");
		customDecimalField4Label.setName("customDecimalField4Label");
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
		customDecimalField5Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/customField/plainStrings/customDecimalField\")%> 5");
		customDecimalField5Label.setName("customDecimalField5Label");
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
		customDecimalField1TextField.setText("");
		customDecimalField1TextField.setStyleProperties("{/weightX \"1\"}");
		customDecimalField1TextField.setEditable(false);
		customDecimalField1TextField.setName("customDecimalField1TextField");
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
		customDecimalField2TextField.setText("");
		customDecimalField2TextField.setEditable(false);
		customDecimalField2TextField.setName("customDecimalField2TextField");
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
		customDecimalField3TextField.setText("");
		customDecimalField3TextField.setEditable(false);
		customDecimalField3TextField.setName("customDecimalField3TextField");
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
		customDecimalField4TextField.setText("");
		customDecimalField4TextField.setEditable(false);
		customDecimalField4TextField.setName("customDecimalField4TextField");
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
		customDecimalField5TextField.setText("");
		customDecimalField5TextField.setEditable(false);
		customDecimalField5TextField.setName("customDecimalField5TextField");
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
		customTimestampField1Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/customField/plainStrings/customTimestampField\")%> 1");
		customTimestampField1Label.setName("customTimestampField1Label");
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
		customTimestampField2Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/customField/plainStrings/customTimestampField\")%> 2");
		customTimestampField2Label.setName("customTimestampField2Label");
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
		customTimestampField3Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/customField/plainStrings/customTimestampField\")%> 3");
		customTimestampField3Label.setName("customTimestampField3Label");
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
		customTimestampField4Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/customField/plainStrings/customTimestampField\")%> 4");
		customTimestampField4Label.setName("customTimestampField4Label");
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
		customTimestampField5Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/customField/plainStrings/customTimestampField\")%> 5");
		customTimestampField5Label.setName("customTimestampField5Label");
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
		customTimestampField1TextField.setText("");
		customTimestampField1TextField.setStyleProperties("{/weightX \"1\"}");
		customTimestampField1TextField.setEditable(false);
		customTimestampField1TextField.setName("customTimestampField1TextField");
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
		customTimestampField2TextField.setText("");
		customTimestampField2TextField.setEditable(false);
		customTimestampField2TextField.setName("customTimestampField2TextField");
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
		customTimestampField3TextField.setText("");
		customTimestampField3TextField.setEditable(false);
		customTimestampField3TextField.setName("customTimestampField3TextField");
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
		customTimestampField4TextField.setText("");
		customTimestampField4TextField.setEditable(false);
		customTimestampField4TextField.setName("customTimestampField4TextField");
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
		customTimestampField5TextField.setText("");
		customTimestampField5TextField.setEditable(false);
		customTimestampField5TextField.setName("customTimestampField5TextField");
	}
	return customTimestampField5TextField;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"