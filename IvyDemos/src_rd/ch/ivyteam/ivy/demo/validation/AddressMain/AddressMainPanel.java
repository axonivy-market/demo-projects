package ch.ivyteam.ivy.demo.validation.AddressMain;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox;
import ch.ivyteam.ivy.demo.validation.AddressForm.AddressFormPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RErrorHeader;
import com.ulcjava.base.application.util.Font;
import ch.ivyteam.ivy.demo.util.Title.TitlePanel;

/**
 * RichDialog panel implementation for AdresMainPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class AddressMainPanel extends RichDialogBorderPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RGridBagLayoutPane buttonGridBagLayoutPane = null;
private RButton submitButton = null;
private RGridBagLayoutPane centerGridBagLayoutPane = null;
private RLabel mainContactLabel = null;
private RCheckBox additionalContactCheckBox = null;
private AddressFormPanel maincontactadressFormPanel = null;
private AddressFormPanel additionalcontactadressFormPanel = null;
private RLabel titleLabel = null;
private RErrorHeader errorErrorHeader = null;
private RGridBagLayoutPane titleGridBagLayoutPane = null;
private RLabel debugLabel = null;
/**
   * Create a new instance of AdresMainPanel
   */
  public AddressMainPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes AdresMainPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(347,507));
        this.add(getButtonGridBagLayoutPane(), com.ulcjava.base.application.ULCBorderLayoutPane.SOUTH);
        this.add(getCenterGridBagLayoutPane(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
        this.add(getTitleGridBagLayoutPane(), com.ulcjava.base.application.ULCBorderLayoutPane.NORTH);
  }

/**
 * This method initializes buttonGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getButtonGridBagLayoutPane() {
	if (buttonGridBagLayoutPane == null) {
		buttonGridBagLayoutPane = new RGridBagLayoutPane();
		buttonGridBagLayoutPane.setName("buttonGridBagLayoutPane");
		buttonGridBagLayoutPane.add(getSubmitButton(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return buttonGridBagLayoutPane;
}

/**
 * This method initializes submitButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getSubmitButton() {
	if (submitButton == null) {
		submitButton = new RButton();
		submitButton.setText("submit");
		submitButton.setEnabler(getCenterGridBagLayoutPane());
		submitButton.setName("submitButton");
	}
	return submitButton;
}

/**
 * This method initializes centerGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getCenterGridBagLayoutPane() {
	if (centerGridBagLayoutPane == null) {
		centerGridBagLayoutPane = new RGridBagLayoutPane();
		centerGridBagLayoutPane.setName("centerGridBagLayoutPane");
		centerGridBagLayoutPane.add(getMainContactLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		centerGridBagLayoutPane.add(getAdditionalContactCheckBox(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		centerGridBagLayoutPane.add(getMaincontactadressFormPanel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.BOTH, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		centerGridBagLayoutPane.add(getAdditionalcontactadressFormPanel(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.BOTH, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		centerGridBagLayoutPane.add(getDebugLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return centerGridBagLayoutPane;
}

/**
 * This method initializes mainContactLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getMainContactLabel() {
	if (mainContactLabel == null) {
		mainContactLabel = new RLabel();
		mainContactLabel.setText("Main Contact");
		mainContactLabel.setStyleProperties("{/fill \"BOTH\"/weightX \"1\"}");
		mainContactLabel.setName("mainContactLabel");
	}
	return mainContactLabel;
}

/**
 * This method initializes additionalContactCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getAdditionalContactCheckBox() {
	if (additionalContactCheckBox == null) {
		additionalContactCheckBox = new RCheckBox();
		additionalContactCheckBox.setText("additionalContactCheckBox");
		additionalContactCheckBox.setStyleProperties("{/insetsTop \"10\"/fill \"BOTH\"/weightX \"1\"}");
		additionalContactCheckBox.setFont(new Font("Tahoma", 0, 11));
		additionalContactCheckBox.setSelected(true);
		additionalContactCheckBox.setName("additionalContactCheckBox");
	}
	return additionalContactCheckBox;
}

/**
 * This method initializes maincontactadressFormPanel	
 * 	
 * @return ch.ivyteam.ivy.demo.validation.AdressForm.AdressFormPanel	
 */
private AddressFormPanel getMaincontactadressFormPanel() {
	if (maincontactadressFormPanel == null) {
		maincontactadressFormPanel = new AddressFormPanel();
		maincontactadressFormPanel.setName("maincontactadressFormPanel");
		maincontactadressFormPanel.setStyleProperties("{/insetsLeft \"10\"/weightY \"1\"}");
	}
	return maincontactadressFormPanel;
}

/**
 * This method initializes additionalcontactadressFormPanel	
 * 	
 * @return ch.ivyteam.ivy.demo.validation.AdressForm.AdressFormPanel	
 */
private AddressFormPanel getAdditionalcontactadressFormPanel() {
	if (additionalcontactadressFormPanel == null) {
		additionalcontactadressFormPanel = new AddressFormPanel();
		additionalcontactadressFormPanel.setName("additionalcontactadressFormPanel");
		additionalcontactadressFormPanel.setEnabler(getAdditionalContactCheckBox());
		additionalcontactadressFormPanel.setStyleProperties("{/insetsLeft \"10\"/weightY \"1\"}");
	}
	return additionalcontactadressFormPanel;
}

/**
 * This method initializes titleLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getTitleLabel() {
	if (titleLabel == null) {
		titleLabel = new RLabel();
		titleLabel.setText("<HTML>Please enter the personal information for the <B>language lessions</B>.</HTML>");
		titleLabel.setStyleProperties("{/verticalAlignment \"TOP\"/anchor \"NORTHEAST\"/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		titleLabel.setName("titleLabel");
	}
	return titleLabel;
}

/**
 * This method initializes errorErrorHeader	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RErrorHeader	
 */
private RErrorHeader getErrorErrorHeader() {
	if (errorErrorHeader == null) {
		errorErrorHeader = new RErrorHeader();
		errorErrorHeader.setName("errorErrorHeader");
		errorErrorHeader.setObservedContainer(getCenterGridBagLayoutPane());
		errorErrorHeader.setStyleProperties("{/backgroundColor {/b \"0\"/r \"255\"/g \"204\"}/fill \"HORIZONTAL\"/weightY \"1\"}");
	}
	return errorErrorHeader;
}

/**
 * This method initializes titleGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getTitleGridBagLayoutPane() {
	if (titleGridBagLayoutPane == null) {
		titleGridBagLayoutPane = new RGridBagLayoutPane();
		titleGridBagLayoutPane.setName("titleGridBagLayoutPane");
		titleGridBagLayoutPane.setPreferredSize(new com.ulcjava.base.application.util.Dimension(60,60));
		titleGridBagLayoutPane.setStyleProperties("{/fill \"HORIZONTAL\"}");
		titleGridBagLayoutPane.add(getTitleLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		titleGridBagLayoutPane.add(getErrorErrorHeader(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return titleGridBagLayoutPane;
}

/**
 * This method initializes debugLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getDebugLabel() {
	if (debugLabel == null) {
		debugLabel = new RLabel();
		debugLabel.setText("debugLabel");
		debugLabel.setLabelFor(getAdditionalContactCheckBox());
		debugLabel.setName("debugLabel");
	}
	return debugLabel;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"