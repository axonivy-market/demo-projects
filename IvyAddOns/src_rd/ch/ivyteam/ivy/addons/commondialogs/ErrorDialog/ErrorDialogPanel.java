package ch.ivyteam.ivy.addons.commondialogs.ErrorDialog;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextArea;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;

/**
 * RichDialog panel implementation for ErrorDialogPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class ErrorDialogPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RLabel iconLabel = null;
private RTextArea errorMessageTextArea = null;
private RGridLayoutPane buttonPane = null;
private RButton showDetailsButton = null;
private RButton okButton = null;
private RButton copyButton = null;
/**
   * Create a new instance of ErrorDialogPanel
   */
  public ErrorDialogPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes ErrorDialogPanel
   * @return void
   */
  public void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(416,97));
        this.add(getIconLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getErrorMessageTextArea(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getButtonPane(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes iconLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getIconLabel() {
	if (iconLabel == null) {
		iconLabel = new RLabel();
		iconLabel.setStyle("border-all");
		iconLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/large/error\")%>");
		iconLabel.setStyleProperties("{/anchor \"NORTHWEST\"}");
		iconLabel.setName("iconLabel");
	}
	return iconLabel;
}

/**
 * This method initializes errorMessageTextArea	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextArea	
 */
private RTextArea getErrorMessageTextArea() {
	if (errorMessageTextArea == null) {
		errorMessageTextArea = new RTextArea();
		errorMessageTextArea.setText("RTextArea");
		errorMessageTextArea.setStyleProperties("{/weightY \"0.25\"}");
		errorMessageTextArea.setColumns(30);
		errorMessageTextArea.setEditable(false);
		errorMessageTextArea.setStyle("fill-horiz-north-border");
		errorMessageTextArea.setWrapStyleWord(true);
		errorMessageTextArea.setLineWrap(true);
		errorMessageTextArea.setName("errorMessageTextArea");
	}
	return errorMessageTextArea;
}

/**
 * This method initializes buttonPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridLayoutPane	
 */
private RGridLayoutPane getButtonPane() {
	if (buttonPane == null) {
		buttonPane = new RGridLayoutPane();
		buttonPane.setName("buttonPane");
		buttonPane.setStyle("border-all");
		buttonPane.setHgap(5);
		buttonPane.setName("buttonPane");
		buttonPane.setStyleProperties("{/anchor \"EAST\"}");
		buttonPane.add(getShowDetailsButton());
		buttonPane.add(getCopyButton());
		buttonPane.add(getOkButton());
	}
	return buttonPane;
}

/**
 * This method initializes showDetailsButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getShowDetailsButton() {
	if (showDetailsButton == null) {
		showDetailsButton = new RButton();
		showDetailsButton.setName("showDetailsButton");
		showDetailsButton.setText("<%= ivy.cms.co(\"/ch/ivyteam/ivy/addons/strings/buttons/showDetails\") %>");
	}
	return showDetailsButton;
}

/**
 * This method initializes okButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getOkButton() {
	if (okButton == null) {
		okButton = new RButton();
		okButton.setText("<%= ivy.cms.co(\"/ch/ivyteam/ivy/addons/strings/buttons/ok\") %>");
		okButton.setName("okButton");
	}
	return okButton;
}

/**
 * This method initializes copyButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getCopyButton() {
	if (copyButton == null) {
		copyButton = new RButton();
		copyButton.setText("<%= ivy.cms.co(\"/ch/ivyteam/ivy/addons/strings/buttons/copy\") %>");
		copyButton.setName("copyButton");
	}
	return copyButton;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"