package ch.ivyteam.ivy.demo.docfactory.PersonView;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextArea;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.util.Color;
import com.ulcjava.base.application.border.ULCTitledBorder;
import com.ulcjava.base.application.util.Font;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RComboBox;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.addons.filemanager.DesktopHandler.DesktopHandlerPanel;
import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;
import com.ulcjava.base.application.ULCContainer;

/**
 * <p>PersonViewPanel is a rich dialog panel implementation.
 *
 * <p>Please note that a rich dialog panel is not an instance of a Swing 
 * container, but of an ULCContainer. As such it can not be run 
 * or instantiated outside the ULC framework.
 */
@SuppressWarnings("all")
public class PersonViewPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RLabel titleLabel = null;
private RGridBagLayoutPane GridBagLayoutPane = null;
private RLabel nameLabel = null;
private RLabel firstnameLabel = null;
private RScrollPane addressScrollPane = null;
private RTextArea addressTextArea = null;
private RLabel addressLabel = null;
private RTextField nameTextField = null;
private RTextField firstNameTextField = null;
private RGridBagLayoutPane actionGridBagLayoutPane = null;
private RLabel chooseLetterNameLabel = null;
private RFlowLayoutPane FlowLayoutPane = null;
private RTextField letterNameTextField = null;
private RComboBox formatComboBox = null;
private RButton writeButton = null;
private RButton closeButton = null;
private @EmbeddedRichDialog(DesktopHandlerPanel.class) ULCContainer desktopHandlerPanel = null;
/**
   * Create a new instance of PersonViewPanel
   */
  public PersonViewPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes PersonViewPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(585,249));
        this.add(getTitleLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getActionGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes titleLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getTitleLabel() {
	if (titleLabel == null) {
		titleLabel = new RLabel();
		titleLabel.setText("Write a letter to somebody...");
		titleLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/write/72\")%>");
		titleLabel.setStyleProperties("{/font {/name \"Tahoma\"/size \"18\"/style \"PLAIN\"}/fill \"HORIZONTAL\"/weightX \"1\"}");
		titleLabel.setName("titleLabel");
	}
	return titleLabel;
}

/**
 * This method initializes GridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getGridBagLayoutPane() {
	if (GridBagLayoutPane == null) {
		GridBagLayoutPane = new RGridBagLayoutPane();
		GridBagLayoutPane.setName("GridBagLayoutPane");
		GridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(BorderFactory.createMatteBorder(1, 1, 1, 1, Color.black), "Person datas", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Dialog", Font.PLAIN, 12), Color.gray));
		GridBagLayoutPane.add(getNameLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane.add(getFirstnameLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane.add(getAddressScrollPane(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane.add(getAddressLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane.add(getNameTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane.add(getFirstNameTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return GridBagLayoutPane;
}

/**
 * This method initializes nameLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getNameLabel() {
	if (nameLabel == null) {
		nameLabel = new RLabel();
		nameLabel.setText("Name");
		nameLabel.setStyleProperties("{/font {/name \"Dialog\"/size \"12\"/style \"PLAIN\"}/fill \"HORIZONTAL\"}");
		nameLabel.setName("nameLabel");
	}
	return nameLabel;
}

/**
 * This method initializes firstnameLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getFirstnameLabel() {
	if (firstnameLabel == null) {
		firstnameLabel = new RLabel();
		firstnameLabel.setText("Firstname");
		firstnameLabel.setStyleProperties("{/font {/name \"Dialog\"/size \"12\"/style \"PLAIN\"}}");
		firstnameLabel.setName("firstnameLabel");
	}
	return firstnameLabel;
}

/**
 * This method initializes addressScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getAddressScrollPane() {
	if (addressScrollPane == null) {
		addressScrollPane = new RScrollPane();
		addressScrollPane.setName("addressScrollPane");
		addressScrollPane.setStyleProperties("{/insetsBottom \"5\"/insetsTop \"5\"/insetsRight \"5\"/fill \"BOTH\"/insetsLeft \"5\"}");
		addressScrollPane.setViewPortView(getAddressTextArea());
	}
	return addressScrollPane;
}

/**
 * This method initializes addressTextArea	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextArea	
 */
private RTextArea getAddressTextArea() {
	if (addressTextArea == null) {
		addressTextArea = new RTextArea();
		addressTextArea.setText("");
		addressTextArea.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		addressTextArea.setColumns(20);
		addressTextArea.setRows(5);
		addressTextArea.setName("addressTextArea");
	}
	return addressTextArea;
}

/**
 * This method initializes addressLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getAddressLabel() {
	if (addressLabel == null) {
		addressLabel = new RLabel();
		addressLabel.setText("Address");
		addressLabel.setStyleProperties("{/font {/name \"Dialog\"/size \"12\"/style \"PLAIN\"}/fill \"HORIZONTAL\"}");
		addressLabel.setName("addressLabel");
	}
	return addressLabel;
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
		nameTextField.setStyleProperties("{/insetsBottom \"5\"/insetsTop \"5\"/insetsRight \"5\"/fill \"HORIZONTAL\"/insetsLeft \"5\"}");
		nameTextField.setName("nameTextField");
	}
	return nameTextField;
}

/**
 * This method initializes firstNameTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getFirstNameTextField() {
	if (firstNameTextField == null) {
		firstNameTextField = new RTextField();
		firstNameTextField.setText("");
		firstNameTextField.setStyleProperties("{/insetsBottom \"5\"/insetsTop \"5\"/insetsRight \"5\"/fill \"HORIZONTAL\"/insetsLeft \"5\"}");
		firstNameTextField.setName("firstNameTextField");
	}
	return firstNameTextField;
}

/**
 * This method initializes actionGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getActionGridBagLayoutPane() {
	if (actionGridBagLayoutPane == null) {
			RFiller Filler = new RFiller();
		Filler.setStyleProperties("{/fill \"VERTICAL\"/weightY \"1\"}");
	actionGridBagLayoutPane = new RGridBagLayoutPane();
		actionGridBagLayoutPane.setName("actionGridBagLayoutPane");
		actionGridBagLayoutPane.setStyleProperties("{/fill \"BOTH\"/weightX \"1\"}");
		actionGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(BorderFactory.createMatteBorder(1, 1, 1, 1, Color.black), "Action", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Dialog", Font.PLAIN, 12), Color.gray));
		actionGridBagLayoutPane.add(getChooseLetterNameLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
			actionGridBagLayoutPane.add(getFlowLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 4, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	actionGridBagLayoutPane.add(getLetterNameTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		actionGridBagLayoutPane.add(getFormatComboBox(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
			actionGridBagLayoutPane.add(Filler, new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
			actionGridBagLayoutPane.add(getDesktopHandlerPanel(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
}
	return actionGridBagLayoutPane;
}

/**
 * This method initializes chooseLetterNameLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getChooseLetterNameLabel() {
	if (chooseLetterNameLabel == null) {
		chooseLetterNameLabel = new RLabel();
		chooseLetterNameLabel.setText("Letter name / format");
		chooseLetterNameLabel.setStyleProperties("{/font {/name \"Dialog\"/size \"12\"/style \"PLAIN\"}}");
		chooseLetterNameLabel.setName("chooseLetterNameLabel");
	}
	return chooseLetterNameLabel;
}

/**
 * This method initializes FlowLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane	
 */
private RFlowLayoutPane getFlowLayoutPane() {
	if (FlowLayoutPane == null) {
		FlowLayoutPane = new RFlowLayoutPane();
		FlowLayoutPane.setName("FlowLayoutPane");
		FlowLayoutPane.add(getWriteButton());
		FlowLayoutPane.add(getCloseButton());
	}
	return FlowLayoutPane;
}

/**
 * This method initializes letterNameTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getLetterNameTextField() {
	if (letterNameTextField == null) {
		letterNameTextField = new RTextField();
		letterNameTextField.setText("");
		letterNameTextField.setStyleProperties("{/insetsBottom \"5\"/insetsTop \"5\"/insetsRight \"5\"/fill \"HORIZONTAL\"/insetsLeft \"5\"/weightX \"1\"}");
			letterNameTextField.setMandatory(true);
	letterNameTextField.setName("letterNameTextField");
	}
	return letterNameTextField;
}

/**
 * This method initializes formatComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getFormatComboBox() {
	if (formatComboBox == null) {
		formatComboBox = new RComboBox();
		formatComboBox.setName("formatComboBox");
		formatComboBox.setModelConfiguration("{/result \"result=entry\"/version \"3.0\"/icon \"\"/tooltip \"\"}");
	}
	return formatComboBox;
}

/**
 * This method initializes writeButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getWriteButton() {
	if (writeButton == null) {
		writeButton = new RButton();
		writeButton.setText("Write Letter");
		writeButton.setName("writeButton");
		writeButton.setEnabler(getLetterNameTextField());
	}
	return writeButton;
}

/**
 * This method initializes closeButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getCloseButton() {
	if (closeButton == null) {
		closeButton = new RButton();
		closeButton.setText("Close");
		closeButton.setName("closeButton");
	}
	return closeButton;
}

/**
 * This method initializes desktopHandlerPanel, an embedded RichDialog.
 * The created object might have a different type than the declared
 * class due to overriding.
 * @returns com.ulcjava.base.application.ULCContainer 
 */
private ULCContainer getDesktopHandlerPanel() {
	if (desktopHandlerPanel == null) {
		desktopHandlerPanel = RichDialogPanelFactory
				.create(DesktopHandlerPanel.class);
		desktopHandlerPanel.setName("desktopHandlerPanel");
	}
	return desktopHandlerPanel;
}
}  //  @jve:decl-index=0:visual-constraint="1,10"