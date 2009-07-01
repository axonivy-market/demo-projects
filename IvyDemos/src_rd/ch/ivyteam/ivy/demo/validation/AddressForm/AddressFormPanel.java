package ch.ivyteam.ivy.demo.validation.AddressForm;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RRadioButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RComboBox;
import ch.ivyteam.ivy.richdialog.widgets.components.RButtonGroup;

/**
 * RichDialog panel implementation for AdressFormPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class AddressFormPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RLabel Zip_RLabel = null;
private RTextField Zip_RTextField = null;
private RLabel City_RLabel = null;
private RTextField City_RTextField = null;
private RLabel Street_RLabel = null;
private RTextField Street_RTextField = null;
private RLabel Birth_RLabel = null;
private RTextField Birth_RTextField = null;
private RLabel FirstName_RLabel = null;
private RTextField FirstName_RTextField = null;
private RLabel Name_RLabel = null;
private RTextField Name_RTextField = null;
private RLabel Title_RLabel = null;
private RLabel languageSkillsLabel = null;
private RGridLayoutPane languageSkillsGridLayoutPane = null;
private RRadioButton basicRadioButton = null;
private RRadioButton intermediateRadioButton = null;
private RRadioButton expertRadioButton = null;
private RComboBox titleComboBox = null;
private RButtonGroup languageButtonGroup = null;  //  @jve:decl-index=0:visual-constraint="247,257"
/**
   * Create a new instance of AdressFormPanel
   */
  public AddressFormPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes AdressFormPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(348,191));
        this.add(getZip_RLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getZip_RTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getCity_RLabel(), new com.ulcjava.base.application.GridBagConstraints(2, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getCity_RTextField(), new com.ulcjava.base.application.GridBagConstraints(3, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getStreet_RLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getStreet_RTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 4, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getBirth_RLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getBirth_RTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 3, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getFirstName_RLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getFirstName_RTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 2, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getName_RLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getName_RTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 1, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getTitle_RLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getLanguageSkillsLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 6, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getLanguageSkillsGridLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(2, 6, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getTitleComboBox(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes Zip_RLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getZip_RLabel() {
	if (Zip_RLabel == null) {
		Zip_RLabel = new RLabel();
		Zip_RLabel.setText("Zip");
		Zip_RLabel.setStyle("adressLabel");
		Zip_RLabel.setLabelFor(getZip_RTextField());
		Zip_RLabel.setName("Zip_RLabel");
	}
	return Zip_RLabel;
}

/**
 * This method initializes Zip_RTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getZip_RTextField() {
	if (Zip_RTextField == null) {
		Zip_RTextField = new RTextField();
		Zip_RTextField.setText("");
		Zip_RTextField.setName("Zip_RTextField");
		Zip_RTextField.setStyle("adressField");
		Zip_RTextField.setValidation("NumberZip");
		Zip_RTextField.setMandatory(true);
	}
	return Zip_RTextField;
}

/**
 * This method initializes City_RLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCity_RLabel() {
	if (City_RLabel == null) {
		City_RLabel = new RLabel();
		City_RLabel.setText("City");
		City_RLabel.setStyle("adressLabel");
		City_RLabel.setLabelFor(getCity_RTextField());
		City_RLabel.setName("City_RLabel");
	}
	return City_RLabel;
}

/**
 * This method initializes City_RTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getCity_RTextField() {
	if (City_RTextField == null) {
		City_RTextField = new RTextField();
		City_RTextField.setText("");
		City_RTextField.setName("City_RTextField");
		City_RTextField.setStyle("adressField");
		City_RTextField.setMandatory(false);
	}
	return City_RTextField;
}

/**
 * This method initializes Street_RLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getStreet_RLabel() {
	if (Street_RLabel == null) {
		Street_RLabel = new RLabel();
		Street_RLabel.setText("Street");
		Street_RLabel.setStyle("adressLabel");
		Street_RLabel.setLabelFor(getStreet_RTextField());
		Street_RLabel.setName("Street_RLabel");
	}
	return Street_RLabel;
}

/**
 * This method initializes Street_RTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getStreet_RTextField() {
	if (Street_RTextField == null) {
		Street_RTextField = new RTextField();
		Street_RTextField.setText("");
		Street_RTextField.setName("Street_RTextField");
		Street_RTextField.setStyle("adressField");
		Street_RTextField.setMandatory(true);
	}
	return Street_RTextField;
}

/**
 * This method initializes Birth_RLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getBirth_RLabel() {
	if (Birth_RLabel == null) {
		Birth_RLabel = new RLabel();
		Birth_RLabel.setText("Birth");
		Birth_RLabel.setStyle("adressLabel");
		Birth_RLabel.setLabelFor(getBirth_RTextField());
		Birth_RLabel.setName("Birth_RLabel");
	}
	return Birth_RLabel;
}

/**
 * This method initializes Birth_RTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getBirth_RTextField() {
	if (Birth_RTextField == null) {
		Birth_RTextField = new RTextField();
		Birth_RTextField.setText("");
		Birth_RTextField.setName("Birth_RTextField");
		Birth_RTextField.setStyle("adressField");
		Birth_RTextField.setValidation("Date_ddMMyyyy");
		Birth_RTextField.setMandatory(false);
	}
	return Birth_RTextField;
}

/**
 * This method initializes FirstName_RLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getFirstName_RLabel() {
	if (FirstName_RLabel == null) {
		FirstName_RLabel = new RLabel();
		FirstName_RLabel.setText("FirstName");
		FirstName_RLabel.setStyle("adressLabel");
		FirstName_RLabel.setName("FirstName_RLabel");
		FirstName_RLabel.setLabelFor(getFirstName_RTextField());
	}
	return FirstName_RLabel;
}

/**
 * This method initializes FirstName_RTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getFirstName_RTextField() {
	if (FirstName_RTextField == null) {
		FirstName_RTextField = new RTextField();
		FirstName_RTextField.setText("");
		FirstName_RTextField.setName("FirstName_RTextField");
		FirstName_RTextField.setStyle("adressField");
		FirstName_RTextField.setMandatory(true);
	}
	return FirstName_RTextField;
}

/**
 * This method initializes Name_RLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getName_RLabel() {
	if (Name_RLabel == null) {
		Name_RLabel = new RLabel();
		Name_RLabel.setText("Name");
		Name_RLabel.setStyle("adressLabel");
		Name_RLabel.setName("Name_RLabel");
		Name_RLabel.setLabelFor(getName_RTextField());
	}
	return Name_RLabel;
}

/**
 * This method initializes Name_RTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getName_RTextField() {
	if (Name_RTextField == null) {
		Name_RTextField = new RTextField();
		Name_RTextField.setText("");
		Name_RTextField.setName("Name_RTextField");
		Name_RTextField.setStyle("adressField");
		Name_RTextField.setMandatory(true);
	}
	return Name_RTextField;
}

/**
 * This method initializes Title_RLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getTitle_RLabel() {
	if (Title_RLabel == null) {
		Title_RLabel = new RLabel();
		Title_RLabel.setText("Title");
		Title_RLabel.setStyle("adressLabel");
		Title_RLabel.setName("Title_RLabel");
	}
	return Title_RLabel;
}

/**
 * This method initializes languageSkillsLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getLanguageSkillsLabel() {
	if (languageSkillsLabel == null) {
		languageSkillsLabel = new RLabel();
		languageSkillsLabel.setText("Language skills");
		languageSkillsLabel.setStyle("adressLabel");
		languageSkillsLabel.setName("languageSkillsLabel");
	}
	return languageSkillsLabel;
}

/**
 * This method initializes languageSkillsGridLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridLayoutPane	
 */
private RGridLayoutPane getLanguageSkillsGridLayoutPane() {
	if (languageSkillsGridLayoutPane == null) {
		languageSkillsGridLayoutPane = new RGridLayoutPane();
		languageSkillsGridLayoutPane.setName("languageSkillsGridLayoutPane");
		languageSkillsGridLayoutPane.setColumns(1);
		languageSkillsGridLayoutPane.setRows(3);
		languageSkillsGridLayoutPane.add(getBasicRadioButton());
		languageSkillsGridLayoutPane.add(getIntermediateRadioButton());
		languageSkillsGridLayoutPane.add(getExpertRadioButton());
	}
	return languageSkillsGridLayoutPane;
}

/**
 * This method initializes basicRadioButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RRadioButton	
 */
private RRadioButton getBasicRadioButton() {
	if (basicRadioButton == null) {
		basicRadioButton = new RRadioButton();
		basicRadioButton.setText("basic");
		basicRadioButton.setGroup(getLanguageButtonGroup());
		basicRadioButton.setName("basicRadioButton");
	}
	return basicRadioButton;
}

/**
 * This method initializes intermediateRadioButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RRadioButton	
 */
private RRadioButton getIntermediateRadioButton() {
	if (intermediateRadioButton == null) {
		intermediateRadioButton = new RRadioButton();
		intermediateRadioButton.setText("intermediate");
		intermediateRadioButton.setGroup(getLanguageButtonGroup());
		intermediateRadioButton.setName("intermediateRadioButton");
	}
	return intermediateRadioButton;
}

/**
 * This method initializes expertRadioButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RRadioButton	
 */
private RRadioButton getExpertRadioButton() {
	if (expertRadioButton == null) {
		expertRadioButton = new RRadioButton();
		expertRadioButton.setText("expert");
		expertRadioButton.setGroup(getLanguageButtonGroup());
		expertRadioButton.setName("expertRadioButton");
	}
	return expertRadioButton;
}

/**
 * This method initializes titleComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getTitleComboBox() {
	if (titleComboBox == null) {
		titleComboBox = new RComboBox();
		titleComboBox.setName("titleComboBox");
		titleComboBox.setModelConfiguration("{/result \"result=ivy.cms.co(\\\"/ch/ivyteam/ivy/demo/validation/Title/\\\" + entry.toString() + \\\"/name\\\")\"/version \"3.0\"/icon \"\"}");
		titleComboBox.setStyleProperties("{/insetsRight \"5\"/fill \"HORIZONTAL\"/weightX \"1\"}");
	}
	return titleComboBox;
}

/**
 * This method initializes languageButtonGroup	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButtonGroup	
 */
private RButtonGroup getLanguageButtonGroup() {
	if (languageButtonGroup == null) {
		languageButtonGroup = new RButtonGroup();
	}
	return languageButtonGroup;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"