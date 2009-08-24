package ch.ivyteam.ivy.addons.commondialogs.AboutDialog;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;

import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.border.ULCTitledBorder;
import com.ulcjava.base.application.util.Color;
import com.ulcjava.base.application.util.Font;

/**
 * RichDialog panel implementation for AboutBoxPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class AboutDialogPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RLabel ProductLabel = null;
private RLabel RevLabel = null;
private RLabel versionLabel = null;
private RTextField productTextField = null;
private RTextField versionTextField = null;
private RLabel copyrightLabel = null;
private RTextField revTextField = null;
private RTextField copyrightTextField = null;
private RLabel aboutLabel = null;
private RGridBagLayoutPane GridBagLayoutPane = null;
private RButton okButton = null;
private RLabel buildLabel = null;
private RTextField buildTextField = null;
  
  /**
   * Create a new instance of AboutBoxPanel
   */
  public AboutDialogPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes AboutBoxPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(442,261));
        this.add(getAboutLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes ProductLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getProductLabel() {
	if (ProductLabel == null) {
		ProductLabel = new RLabel();
		ProductLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/commondialogs/about/plainStrings/productLabel\")%>");
		ProductLabel.setStyle("border-all");
		ProductLabel.setStyleProperties("{/anchor \"WEST\"}");
		ProductLabel.setName("ProductLabel");
	}
	return ProductLabel;
}

/**
 * This method initializes RevLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getRevLabel() {
	if (RevLabel == null) {
		RevLabel = new RLabel();
		RevLabel.setName("RevLabel");
		RevLabel.setStyle("border-all");
		RevLabel.setStyleProperties("{/anchor \"WEST\"}");
		RevLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/commondialogs/about/plainStrings/revLabel\")%>");
	}
	return RevLabel;
}

/**
 * This method initializes versionLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getVersionLabel() {
	if (versionLabel == null) {
		versionLabel = new RLabel();
		versionLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/commondialogs/about/plainStrings/versionLabel\")%>");
		versionLabel.setStyle("border-all");
		versionLabel.setStyleProperties("{/anchor \"WEST\"}");
		versionLabel.setName("versionLabel");
	}
	return versionLabel;
}

/**
 * This method initializes productTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getProductTextField() {
	if (productTextField == null) {
		productTextField = new RTextField();
		productTextField.setText("productTextField");
		productTextField.setStyleProperties("{/weightX \"1\"}");
		productTextField.setStyle("fill-horiz-north-border");
		productTextField.setEditable(false);
		productTextField.setName("productTextField");
	}
	return productTextField;
}

/**
 * This method initializes versionTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getVersionTextField() {
	if (versionTextField == null) {
		versionTextField = new RTextField();
		versionTextField.setText("versionTextField");
		versionTextField.setStyle("fill-horiz-north-border");
		versionTextField.setEditable(false);
		versionTextField.setName("versionTextField");
	}
	return versionTextField;
}

/**
 * This method initializes copyrightLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCopyrightLabel() {
	if (copyrightLabel == null) {
		copyrightLabel = new RLabel();
		copyrightLabel.setName("copyrightLabel");
		copyrightLabel.setStyleProperties("{/anchor \"WEST\"/insetsRight \"20\"}");
		copyrightLabel.setStyle("border-all");
		copyrightLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/commondialogs/about/plainStrings/copyrightLabel\")%>");
	}
	return copyrightLabel;
}

/**
 * This method initializes revTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getRevTextField() {
	if (revTextField == null) {
		revTextField = new RTextField();
		revTextField.setText("revTextField");
		revTextField.setStyle("fill-horiz-north-border");
		revTextField.setEditable(false);
		revTextField.setName("revTextField");
	}
	return revTextField;
}

/**
 * This method initializes copyrightTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getCopyrightTextField() {
	if (copyrightTextField == null) {
		copyrightTextField = new RTextField();
		copyrightTextField.setText("copyrightTextField");
		copyrightTextField.setStyle("fill-horiz-north-border");
		copyrightTextField.setEditable(false);
		copyrightTextField.setName("copyrightTextField");
	}
	return copyrightTextField;
}

/**
 * This method initializes aboutLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getAboutLabel() {
	if (aboutLabel == null) {
		aboutLabel = new RLabel();
		aboutLabel.setName("aboutLabel");
		aboutLabel.setStyleProperties("{/font {/name \"Dialog\"/size \"20\"/style \"PLAIN\"}/insetsTop \"8\"/insetsBottom \"8\"/insetsRight \"8\"/insetsLeft \"8\"}");
		aboutLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/commondialogs/about/images/about32\")%>");
		aboutLabel.setStyle("fill-horiz-north");
		aboutLabel.setText("<%= ivy.cms.co(\"/ch/ivyteam/ivy/addons/commondialogs/about/plainStrings/aboutLabel\")%>");
	}
	return aboutLabel;
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
		GridBagLayoutPane.setStyleProperties("{/weightY \"1\"/weightX \"1\"}");
			GridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(null, "Product Information", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
	GridBagLayoutPane.setStyle("fill-both");
		GridBagLayoutPane.add(getProductLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane.add(getVersionLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane.add(getRevLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane.add(getCopyrightLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane.add(getProductTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane.add(getRevTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane.add(getVersionTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane.add(getCopyrightTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane.add(getOkButton(), new com.ulcjava.base.application.GridBagConstraints(2, 5, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane.add(getBuildLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane.add(getBuildTextField(), new com.ulcjava.base.application.GridBagConstraints(2, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return GridBagLayoutPane;
}

/**
 * This method initializes okButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getOkButton() {
	if (okButton == null) {
		okButton = new RButton();
		okButton.setName("okButton");
			okButton.setStyleProperties("{/anchor \"SOUTHEAST\"/insetsTop \"20\"/preferredSizeWidth \"40\"/weightY \"1.0\"/preferredSizeHeight \"20\"}");
	okButton.setStyle("border-all");
		okButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/strings/buttons/ok\")%>");
	}
	return okButton;
}

/**
 * This method initializes buildLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getBuildLabel() {
	if (buildLabel == null) {
		buildLabel = new RLabel();
		buildLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/commondialogs/about/plainStrings/buildLabel\")%>");
			buildLabel.setStyle("border-all");
		buildLabel.setStyleProperties("{/anchor \"WEST\"}");
	buildLabel.setName("buildLabel");
	}
	return buildLabel;
}

/**
 * This method initializes buildTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getBuildTextField() {
	if (buildTextField == null) {
		buildTextField = new RTextField();
		buildTextField.setText("buildTextField");
		buildTextField.setStyle("fill-horiz-north-border");
		buildTextField.setEditable(false);
		buildTextField.setName("buildTextField");
	}
	return buildTextField;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"