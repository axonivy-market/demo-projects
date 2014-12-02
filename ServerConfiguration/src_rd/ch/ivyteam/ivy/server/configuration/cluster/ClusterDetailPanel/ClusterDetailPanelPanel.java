package ch.ivyteam.ivy.server.configuration.cluster.ClusterDetailPanel;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.components.RComboBox;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridLayoutPane;

/**
 * <p>ClusterDetailPanelPanel is a rich dialog panel implementation.
 *
 * <p>Please note that a rich dialog panel is not an instance of a Swing 
 * container, but of an ULCContainer. As such it can not be run 
 * or instantiated outside the ULC framework.
 */
@SuppressWarnings("all")
public class ClusterDetailPanelPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
  private RLabel hostNameLabel = null;
  private RLabel localIdentifierLabel = null;
  private RLabel ipPortLabel = null;
  private RLabel ipAddressLabel = null;
  private RTextField hostNameTextField = null;
  private RTextField localIdentifierTextField = null;
  private RTextField ipPortTextField = null;
  private RComboBox ipAddressComboBox = null;
  private RButton cancelButton = null;
  private RButton okButton = null;
  private RGridLayoutPane buttonPane = null;
  /**
   * Create a new instance of ClusterDetailPanelPanel
   */
  public ClusterDetailPanelPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes ClusterDetailPanelPanel
   * @return void
   */
  private void initialize()
  {
         this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(403,147));
       this.add(getHostNameLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getLocalIdentifierLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getIpPortLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getIpAddressLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
         this.add(getHostNameTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getLocalIdentifierTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getIpPortTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getIpAddressComboBox(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getButtonPane(), new com.ulcjava.base.application.GridBagConstraints(1, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
 }

  /**
   * This method initializes hostNameLabel	
   * 	
   * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
   */
  private RLabel getHostNameLabel()
  {
    if (hostNameLabel == null)
    {
      hostNameLabel = new RLabel();
      hostNameLabel.setText("Host");
      hostNameLabel.setName("hostNameLabel");
    }
    return hostNameLabel;
  }

  /**
   * This method initializes localIdentifierLabel	
   * 	
   * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
   */
  private RLabel getLocalIdentifierLabel()
  {
    if (localIdentifierLabel == null)
    {
      localIdentifierLabel = new RLabel();
      localIdentifierLabel.setText("Local Identifier");
      localIdentifierLabel.setName("localIdentifierLabel");
    }
    return localIdentifierLabel;
  }

  /**
   * This method initializes ipPortLabel	
   * 	
   * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
   */
  private RLabel getIpPortLabel()
  {
    if (ipPortLabel == null)
    {
      ipPortLabel = new RLabel();
      ipPortLabel.setText("IP Port");
      ipPortLabel.setName("ipPortLabel");
    }
    return ipPortLabel;
  }

  /**
   * This method initializes ipAddressLabel	
   * 	
   * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
   */
  private RLabel getIpAddressLabel()
  {
    if (ipAddressLabel == null)
    {
      ipAddressLabel = new RLabel();
      ipAddressLabel.setText("IP Address");
      ipAddressLabel.setName("ipAddressLabel");
    }
    return ipAddressLabel;
  }

  /**
   * This method initializes hostNameTextField	
   * 	
   * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
   */
  private RTextField getHostNameTextField()
  {
    if (hostNameTextField == null)
    {
      hostNameTextField = new RTextField();
      hostNameTextField.setText("hostNameTextField");
      hostNameTextField.setEditable(false);
      hostNameTextField.setEnabled(false);
      hostNameTextField.setName("hostNameTextField");
    }
    return hostNameTextField;
  }

  /**
   * This method initializes localIdentifierTextField	
   * 	
   * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
   */
  private RTextField getLocalIdentifierTextField()
  {
    if (localIdentifierTextField == null)
    {
      localIdentifierTextField = new RTextField();
      localIdentifierTextField.setText("localIdentifierTextField");
      localIdentifierTextField.setMandatory(true);
      localIdentifierTextField.setValidation("NumberIntPositive");
      localIdentifierTextField.setEditable(false);
      localIdentifierTextField.setEnabled(false);
      localIdentifierTextField.setName("localIdentifierTextField");
    }
    return localIdentifierTextField;
  }

  /**
   * This method initializes ipPortTextField	
   * 	
   * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
   */
  private RTextField getIpPortTextField()
  {
    if (ipPortTextField == null)
    {
      ipPortTextField = new RTextField();
      ipPortTextField.setText("ipPortTextField");
      ipPortTextField.setMandatory(true);
      ipPortTextField.setValidation("PortNumber");
      ipPortTextField.setName("ipPortTextField");
    }
    return ipPortTextField;
  }

  /**
   * This method initializes ipAddressComboBox	
   * 	
   * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
   */
  private RComboBox getIpAddressComboBox()
  {
    if (ipAddressComboBox == null)
    {
      ipAddressComboBox = new RComboBox();
      ipAddressComboBox.setName("ipAddressComboBox");
      ipAddressComboBox.setMandatory(true);
      ipAddressComboBox.setStyleProperties("{/insetsBottom \"5\"}");
    }
    return ipAddressComboBox;
  }

  /**
   * This method initializes cancelButton	
   * 	
   * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
   */
  private RButton getCancelButton()
  {
    if (cancelButton == null)
    {
      cancelButton = new RButton();
      cancelButton.setText("Cancel");
      cancelButton.setStyle("border-top-right-bottom");
      cancelButton.setName("cancelButton");
    }
    return cancelButton;
  }

  /**
   * This method initializes okButton	
   * 	
   * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
   */
  private RButton getOkButton()
  {
    if (okButton == null)
    {
      okButton = new RButton();
      okButton.setText("Add");
      okButton.setStyle("border-left-bottom-right");
      okButton.setName("okButton");
    }
    return okButton;
  }

  /**
   * This method initializes buttonPane	
   * 	
   * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridLayoutPane	
   */
  private RGridLayoutPane getButtonPane()
  {
    if (buttonPane == null)
    {
      buttonPane = new RGridLayoutPane();
      buttonPane.setName("buttonPane");
      buttonPane.setStyleProperties("{/anchor \"EAST\"/insetsBottom \"5\"/insetsRight \"5\"}");
      buttonPane.setHgap(5);
      buttonPane.add(getOkButton());
      buttonPane.add(getCancelButton());
    }
    return buttonPane;
  }
}  //  @jve:decl-index=0:visual-constraint="10,10"