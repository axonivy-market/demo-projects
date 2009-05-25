package ch.ivyteam.ivy.workflow.ui.task.ie.IntermediateEventElementDisplay;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextArea;
import ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox;
import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.border.ULCTitledBorder;
import com.ulcjava.base.application.util.Font;
import com.ulcjava.base.application.util.Color;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;

/**
 * RichDialog panel implementation for IntermediateEventElementDisplayPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class IntermediateEventElementDisplayPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RLabel identifierLabel = null;
private RTextField identifierTextField = null;
private RLabel descriptionLabel = null;
private RLabel intermediateEventBeanClassNameLabel = null;
private RTextArea descriptionTextArea = null;
private RLabel intermediateEventBeanConfigurationLabel = null;
private RLabel nameLabel = null;
private RTextField nameTextField = null;
private RLabel processElementIdLabel = null;
private RLabel processModelVersionLabel = null;
private RCheckBox intermediateEventBeanEnabledCheckBox = null;
private RTextField intermediateEventBeanClassNameTextField = null;
private RTextField intermediateEventBeanConfigurationTextField = null;
private RTextField processElementIdTextField = null;
private RTextArea processModelVersionTextArea = null;
private RScrollPane processModelVersionScrollPane = null;
private RScrollPane descriptionScrollPane = null;
/**
   * Create a new instance of IntermediateEventElementDisplayPanel
   */
  public IntermediateEventElementDisplayPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes IntermediateEventElementDisplayPanel
   * @return void
   */
  private void initialize()
  {
        RFiller verticalFiller = new RFiller();
        verticalFiller.setStyleProperties("{/fill \"VERTICAL\"/weightY \"1\"}");
        RFiller aFiller = new RFiller();
        aFiller.setStyle("horizontalStrut150");
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(447,300));
        this.setBorder(BorderFactory.createTitledBorder(null, "Intermediate Event Element", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(12, 74, 124)));
        this.add(getIdentifierLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getIdentifierTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getDescriptionLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getIntermediateEventBeanClassNameLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getIntermediateEventBeanConfigurationLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getNameLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getNameTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getProcessElementIdLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 6, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getProcessModelVersionLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 7, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getIntermediateEventBeanEnabledCheckBox(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(aFiller, new com.ulcjava.base.application.GridBagConstraints(0, 8, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(verticalFiller, new com.ulcjava.base.application.GridBagConstraints(0, 9, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getIntermediateEventBeanClassNameTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getIntermediateEventBeanConfigurationTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getProcessElementIdTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 6, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getProcessModelVersionScrollPane(), new com.ulcjava.base.application.GridBagConstraints(1, 7, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getDescriptionScrollPane(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes identifierLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getIdentifierLabel() {
	if (identifierLabel == null) {
		identifierLabel = new RLabel();
		identifierLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/intermediateEvent/plainStrings/identifier\")%>");
		identifierLabel.setName("identifierLabel");
	}
	return identifierLabel;
}

/**
 * This method initializes identifierTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getIdentifierTextField() {
	if (identifierTextField == null) {
		identifierTextField = new RTextField();
		identifierTextField.setText("");
		identifierTextField.setStyleProperties("{/weightX \"1\"}");
		identifierTextField.setEditable(false);
		identifierTextField.setName("identifierTextField");
	}
	return identifierTextField;
}

/**
 * This method initializes descriptionLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getDescriptionLabel() {
	if (descriptionLabel == null) {
		descriptionLabel = new RLabel();
		descriptionLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/intermediateEvent/plainStrings/description\")%>");
		descriptionLabel.setName("descriptionLabel");
	}
	return descriptionLabel;
}

/**
 * This method initializes intermediateEventBeanClassNameLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getIntermediateEventBeanClassNameLabel() {
	if (intermediateEventBeanClassNameLabel == null) {
		intermediateEventBeanClassNameLabel = new RLabel();
		intermediateEventBeanClassNameLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/intermediateEvent/plainStrings/eventBeanClassName\")%>");
		intermediateEventBeanClassNameLabel.setName("intermediateEventBeanClassNameLabel");
	}
	return intermediateEventBeanClassNameLabel;
}

/**
 * This method initializes descriptionTextArea	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextArea	
 */
private RTextArea getDescriptionTextArea() {
	if (descriptionTextArea == null) {
		descriptionTextArea = new RTextArea();
		descriptionTextArea.setText("");
		descriptionTextArea.setRows(3);
		descriptionTextArea.setWrapStyleWord(true);
		descriptionTextArea.setEditable(false);
		descriptionTextArea.setName("descriptionTextArea");
	}
	return descriptionTextArea;
}

/**
 * This method initializes intermediateEventBeanConfigurationLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getIntermediateEventBeanConfigurationLabel() {
	if (intermediateEventBeanConfigurationLabel == null) {
		intermediateEventBeanConfigurationLabel = new RLabel();
		intermediateEventBeanConfigurationLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/intermediateEvent/plainStrings/eventBeanConfiguration\")%>");
		intermediateEventBeanConfigurationLabel.setName("intermediateEventBeanConfigurationLabel");
	}
	return intermediateEventBeanConfigurationLabel;
}

/**
 * This method initializes nameLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getNameLabel() {
	if (nameLabel == null) {
		nameLabel = new RLabel();
		nameLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/intermediateEvent/plainStrings/name\")%>");
		nameLabel.setName("nameLabel");
	}
	return nameLabel;
}

/**
 * This method initializes nameTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getNameTextField() {
	if (nameTextField == null) {
		nameTextField = new RTextField();
		nameTextField.setText("");
		nameTextField.setEditable(false);
		nameTextField.setName("nameTextField");
	}
	return nameTextField;
}

/**
 * This method initializes processElementIdLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getProcessElementIdLabel() {
	if (processElementIdLabel == null) {
		processElementIdLabel = new RLabel();
		processElementIdLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/intermediateEvent/plainStrings/processElementId\")%>");
		processElementIdLabel.setName("processElementIdLabel");
	}
	return processElementIdLabel;
}

/**
 * This method initializes processModelVersionLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getProcessModelVersionLabel() {
	if (processModelVersionLabel == null) {
		processModelVersionLabel = new RLabel();
		processModelVersionLabel.setText("<html><%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/intermediateEvent/plainStrings/processModel\")%> /<br><%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/intermediateEvent/plainStrings/processModelVersion\")%></html>");
		processModelVersionLabel.setName("processModelVersionLabel");
	}
	return processModelVersionLabel;
}

/**
 * This method initializes intermediateEventBeanEnabledCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getIntermediateEventBeanEnabledCheckBox() {
	if (intermediateEventBeanEnabledCheckBox == null) {
		intermediateEventBeanEnabledCheckBox = new RCheckBox();
		intermediateEventBeanEnabledCheckBox.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/intermediateEvent/plainStrings/ieBeanEnabled\")%>");
		intermediateEventBeanEnabledCheckBox.setEnabled(false);
		intermediateEventBeanEnabledCheckBox.setName("intermediateEventBeanEnabledCheckBox");
	}
	return intermediateEventBeanEnabledCheckBox;
}

/**
 * This method initializes intermediateEventBeanClassNameTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getIntermediateEventBeanClassNameTextField() {
	if (intermediateEventBeanClassNameTextField == null) {
		intermediateEventBeanClassNameTextField = new RTextField();
		intermediateEventBeanClassNameTextField.setText("");
		intermediateEventBeanClassNameTextField.setStyleProperties("{/font {/name \"Courier New\"/size \"11\"/style \"PLAIN\"}}");
		intermediateEventBeanClassNameTextField.setEditable(false);
		intermediateEventBeanClassNameTextField.setName("intermediateEventBeanClassNameTextField");
	}
	return intermediateEventBeanClassNameTextField;
}

/**
 * This method initializes intermediateEventBeanConfigurationTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getIntermediateEventBeanConfigurationTextField() {
	if (intermediateEventBeanConfigurationTextField == null) {
		intermediateEventBeanConfigurationTextField = new RTextField();
		intermediateEventBeanConfigurationTextField.setText("");
		intermediateEventBeanConfigurationTextField.setStyleProperties("{/font {/name \"Courier New\"/size \"11\"/style \"PLAIN\"}}");
		intermediateEventBeanConfigurationTextField.setEditable(false);
		intermediateEventBeanConfigurationTextField.setName("intermediateEventBeanConfigurationTextField");
	}
	return intermediateEventBeanConfigurationTextField;
}

/**
 * This method initializes processElementIdTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getProcessElementIdTextField() {
	if (processElementIdTextField == null) {
		processElementIdTextField = new RTextField();
		processElementIdTextField.setText("");
		processElementIdTextField.setEditable(false);
		processElementIdTextField.setName("processElementIdTextField");
	}
	return processElementIdTextField;
}

/**
 * This method initializes processModelVersionTextArea	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextArea	
 */
private RTextArea getProcessModelVersionTextArea() {
	if (processModelVersionTextArea == null) {
		processModelVersionTextArea = new RTextArea();
		processModelVersionTextArea.setText("");
		processModelVersionTextArea.setRows(2);
		processModelVersionTextArea.setEditable(false);
		processModelVersionTextArea.setName("processModelVersionTextArea");
	}
	return processModelVersionTextArea;
}

/**
 * This method initializes processModelVersionScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getProcessModelVersionScrollPane() {
	if (processModelVersionScrollPane == null) {
		processModelVersionScrollPane = new RScrollPane();
		processModelVersionScrollPane.setName("processModelVersionScrollPane");
		processModelVersionScrollPane.setViewPortView(getProcessModelVersionTextArea());
	}
	return processModelVersionScrollPane;
}

/**
 * This method initializes descriptionScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getDescriptionScrollPane() {
	if (descriptionScrollPane == null) {
		descriptionScrollPane = new RScrollPane();
		descriptionScrollPane.setName("descriptionScrollPane");
		descriptionScrollPane.setViewPortView(getDescriptionTextArea());
	}
	return descriptionScrollPane;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"