package ch.ivyteam.ivy.demo.validation.AddressMain;

import ch.ivyteam.ivy.demo.validation.AddressForm.AddressFormPanel;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox;
import ch.ivyteam.ivy.richdialog.widgets.components.RErrorHeader;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;

import com.ulcjava.base.application.util.Font;
import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import com.ulcjava.base.application.ULCContainer;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;
import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.border.ULCTitledBorder;
import com.ulcjava.base.application.util.Color;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;

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
private RCheckBox additionalContactCheckBox = null;
@EmbeddedRichDialog(AddressFormPanel.class) private ULCContainer maincontactadressFormPanel = null;
@EmbeddedRichDialog(AddressFormPanel.class) private ULCContainer additionalcontactadressFormPanel = null;
private RLabel titleLabel = null;
private RErrorHeader errorErrorHeader = null;
private RGridBagLayoutPane titleGridBagLayoutPane = null;
private RLabel debugLabel = null;
private RGridBagLayoutPane subFormGridBagLayoutPane = null;
private RGridBagLayoutPane mainGridBagLayoutPane = null;
private RScrollPane contentScrollPane = null;
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
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(447,557));
        this.add(getButtonGridBagLayoutPane(), com.ulcjava.base.application.ULCBorderLayoutPane.SOUTH);
        this.add(getTitleGridBagLayoutPane(), com.ulcjava.base.application.ULCBorderLayoutPane.NORTH);
        this.add(getContentScrollPane(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
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
		centerGridBagLayoutPane.add(getSubFormGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 6, 1, 1, 1.0, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.BOTH, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		centerGridBagLayoutPane.add(getDebugLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		centerGridBagLayoutPane.add(getMainGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, 1.0, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.BOTH, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return centerGridBagLayoutPane;
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
private ULCContainer getMaincontactadressFormPanel()  {
	if (maincontactadressFormPanel == null) {
		maincontactadressFormPanel = RichDialogPanelFactory.create(AddressFormPanel.class);
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
private ULCContainer getAdditionalcontactadressFormPanel()  {
	if (additionalcontactadressFormPanel == null) {
		additionalcontactadressFormPanel = RichDialogPanelFactory.create(AddressFormPanel.class);
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
		errorErrorHeader.setBorder(BorderFactory.createTitledBorder(null, "", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
		errorErrorHeader.setVisibleMessages(-1);
		errorErrorHeader.setShowMandatoryErrors(false);
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
		debugLabel.setText("");
		debugLabel.setLabelFor(getAdditionalContactCheckBox());
		debugLabel.setName("debugLabel");
	}
	return debugLabel;
}

/**
 * This method initializes subFormGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getSubFormGridBagLayoutPane() {
	if (subFormGridBagLayoutPane == null) {
		subFormGridBagLayoutPane = new RGridBagLayoutPane();
		subFormGridBagLayoutPane.setName("subFormGridBagLayoutPane");
		subFormGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(null, "Additional Contact", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
		subFormGridBagLayoutPane.add(getAdditionalContactCheckBox(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.HORIZONTAL, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		subFormGridBagLayoutPane.add(getAdditionalcontactadressFormPanel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.HORIZONTAL, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return subFormGridBagLayoutPane;
}

/**
 * This method initializes mainGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getMainGridBagLayoutPane() {
	if (mainGridBagLayoutPane == null) {
		mainGridBagLayoutPane = new RGridBagLayoutPane();
		mainGridBagLayoutPane.setName("mainGridBagLayoutPane");
		mainGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(null, "Main Contact", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
		mainGridBagLayoutPane.add(getMaincontactadressFormPanel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, 1.0, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.HORIZONTAL, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return mainGridBagLayoutPane;
}

/**
 * This method initializes contentScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getContentScrollPane() {
	if (contentScrollPane == null) {
		contentScrollPane = new RScrollPane();
		contentScrollPane.setName("contentScrollPane");
		contentScrollPane.setViewPortView(getCenterGridBagLayoutPane());
	}
	return contentScrollPane;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"