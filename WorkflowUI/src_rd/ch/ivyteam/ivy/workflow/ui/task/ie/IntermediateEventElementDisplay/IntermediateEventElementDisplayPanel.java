package ch.ivyteam.ivy.workflow.ui.task.ie.IntermediateEventElementDisplay;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextArea;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane;
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
private RCheckBox intermediateEventBeanEnabledCheckBox = null;
private RTextField intermediateEventBeanClassNameTextField = null;
private RTextField intermediateEventBeanConfigurationTextField = null;
private RTextField processElementIdTextField = null;
private RScrollPane descriptionScrollPane = null;
private RFlowLayoutPane aFlowLayoutPane = null;
private RFlowLayoutPane aFlowLayoutPane1 = null;
private RFlowLayoutPane aFlowLayoutPane11 = null;
private RFlowLayoutPane aFlowLayoutPane111 = null;
private RFlowLayoutPane aFlowLayoutPane1111 = null;
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
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(447,268));
        this.add(getIdentifierLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getDescriptionLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getIntermediateEventBeanClassNameLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getIntermediateEventBeanConfigurationLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getNameLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getProcessElementIdLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 6, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getIntermediateEventBeanEnabledCheckBox(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(aFiller, new com.ulcjava.base.application.GridBagConstraints(0, 8, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(verticalFiller, new com.ulcjava.base.application.GridBagConstraints(0, 9, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getDescriptionScrollPane(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getAFlowLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getAFlowLayoutPane1(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getAFlowLayoutPane11(), new com.ulcjava.base.application.GridBagConstraints(1, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getAFlowLayoutPane111(), new com.ulcjava.base.application.GridBagConstraints(1, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getAFlowLayoutPane1111(), new com.ulcjava.base.application.GridBagConstraints(1, 6, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
		identifierLabel.setStyle("rightAlignedLabel");
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
		identifierTextField.setStyle("displayedLeftAlignedTextField");
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
		descriptionLabel.setStyle("rightAlignedLabel");
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
		intermediateEventBeanClassNameLabel.setStyle("rightAlignedLabel");
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
		intermediateEventBeanConfigurationLabel.setStyle("rightAlignedLabel");
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
		nameLabel.setStyle("rightAlignedLabel");
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
		nameTextField.setStyle("displayedLeftAlignedTextField");
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
		processElementIdLabel.setStyle("rightAlignedLabel");
		processElementIdLabel.setName("processElementIdLabel");
	}
	return processElementIdLabel;
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
		intermediateEventBeanClassNameTextField.setStyle("displayedLeftAlignedTextField");
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
		intermediateEventBeanConfigurationTextField.setStyle("displayedLeftAlignedTextField");
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
		processElementIdTextField.setStyle("displayedLeftAlignedTextField");
		processElementIdTextField.setName("processElementIdTextField");
	}
	return processElementIdTextField;
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

/**
 * This method initializes aFlowLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane	
 */
private RFlowLayoutPane getAFlowLayoutPane() {
	if (aFlowLayoutPane == null) {
		aFlowLayoutPane = new RFlowLayoutPane();
		aFlowLayoutPane.setName("aFlowLayoutPane");
		aFlowLayoutPane.setStyleProperties("{/alignment \"LEFT\"}");
		aFlowLayoutPane.add(getIdentifierTextField());
	}
	return aFlowLayoutPane;
}

/**
 * This method initializes aFlowLayoutPane1	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane	
 */
private RFlowLayoutPane getAFlowLayoutPane1() {
	if (aFlowLayoutPane1 == null) {
		aFlowLayoutPane1 = new RFlowLayoutPane();
		aFlowLayoutPane1.setName("aFlowLayoutPane1");
		aFlowLayoutPane1.setStyleProperties("{/alignment \"LEFT\"}");
		aFlowLayoutPane1.add(getNameTextField());
	}
	return aFlowLayoutPane1;
}

/**
 * This method initializes aFlowLayoutPane11	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane	
 */
private RFlowLayoutPane getAFlowLayoutPane11() {
	if (aFlowLayoutPane11 == null) {
		aFlowLayoutPane11 = new RFlowLayoutPane();
		aFlowLayoutPane11.setName("aFlowLayoutPane11");
		aFlowLayoutPane11.setStyleProperties("{/alignment \"LEFT\"}");
		aFlowLayoutPane11.add(getIntermediateEventBeanClassNameTextField());
	}
	return aFlowLayoutPane11;
}

/**
 * This method initializes aFlowLayoutPane111	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane	
 */
private RFlowLayoutPane getAFlowLayoutPane111() {
	if (aFlowLayoutPane111 == null) {
		aFlowLayoutPane111 = new RFlowLayoutPane();
		aFlowLayoutPane111.setName("aFlowLayoutPane111");
		aFlowLayoutPane111.setStyleProperties("{/alignment \"LEFT\"}");
		aFlowLayoutPane111.add(getIntermediateEventBeanConfigurationTextField());
	}
	return aFlowLayoutPane111;
}

/**
 * This method initializes aFlowLayoutPane1111	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane	
 */
private RFlowLayoutPane getAFlowLayoutPane1111() {
	if (aFlowLayoutPane1111 == null) {
		aFlowLayoutPane1111 = new RFlowLayoutPane();
		aFlowLayoutPane1111.setName("aFlowLayoutPane1111");
		aFlowLayoutPane1111.setStyleProperties("{/alignment \"LEFT\"}");
		aFlowLayoutPane1111.add(getProcessElementIdTextField());
	}
	return aFlowLayoutPane1111;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"