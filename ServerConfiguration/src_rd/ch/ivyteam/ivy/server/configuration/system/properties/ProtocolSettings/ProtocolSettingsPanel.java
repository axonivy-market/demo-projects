package ch.ivyteam.ivy.server.configuration.system.properties.ProtocolSettings;

import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.border.ULCTitledBorder;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;

/**
 * RichDialog panel implementation for ProtocolSettingsPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class ProtocolSettingsPanel extends RichDialogBorderPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RGridBagLayoutPane mainPane = null;
private RLabel enabledLabel = null;
private RLabel portLabel = null;
private RCheckBox enabledCheckBox = null;
private RTextField portTextField = null;
  
  /**
   * Create a new instance of ProtocolSettingsPanel
   */
  public ProtocolSettingsPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes ProtocolSettingsPanel
   * @return void
   */
  public void initialize()
  {
        this.add(getMainPane(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
  }

/**
 * This method initializes mainPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getMainPane() {
	if (mainPane == null) 
	{
		RFiller hFiller = new RFiller();
		hFiller.setStyle("horizontalGlue");
		mainPane = new RGridBagLayoutPane();
		mainPane.setBorder(BorderFactory.createTitledBorder("<Protocol>"));
		mainPane.setName("mainPane");
		mainPane.add(getEnabledLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		mainPane.add(getPortLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		mainPane.add(getEnabledCheckBox(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.WEST, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		mainPane.add(getPortTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		mainPane.add(hFiller, new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return mainPane;
}

/**
 * This method initializes enabledLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getEnabledLabel() {
	if (enabledLabel == null) {
		enabledLabel = new RLabel();
		enabledLabel.setText("Enabled:");
		enabledLabel.setName("enabledLabel");
	}
	return enabledLabel;
}

/**
 * This method initializes portLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getPortLabel() {
	if (portLabel == null) {
		portLabel = new RLabel();
		portLabel.setText("Port:");
		portLabel.setName("portLabel");
	}
	return portLabel;
}

/**
 * This method initializes enabledCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getEnabledCheckBox() {
	if (enabledCheckBox == null) {
		enabledCheckBox = new RCheckBox();
		enabledCheckBox.setText("");
		enabledCheckBox.setName("enabledCheckBox");
	}
	return enabledCheckBox;
}

/**
 * This method initializes portTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getPortTextField() {
	if (portTextField == null) {
		portTextField = new RTextField();
		portTextField.setText("");
		portTextField.setStyleProperties("{/fill \"NONE\"/weightX \"0\"}");
		portTextField.setColumns(6);
		portTextField.setValidation("PortNumber");
		portTextField.setMandatory(true);
		portTextField.setName("portTextField");
	}
	return portTextField;
}

public void setProtocolName(String protocolName)
{
	Object border = mainPane.getBorder();
	if (border instanceof ULCTitledBorder)
	{
		((ULCTitledBorder)border).setTitle(protocolName);
	}
}
} 