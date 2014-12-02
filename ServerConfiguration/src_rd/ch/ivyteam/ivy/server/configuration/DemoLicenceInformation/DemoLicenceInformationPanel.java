package ch.ivyteam.ivy.server.configuration.DemoLicenceInformation;

import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.ULCGridBagLayoutPane;
import com.ulcjava.base.application.util.Color;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBorderLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;

/**
 * <p>DemoLicenceInformationPanel is a rich dialog panel implementation.
 *
 * <p>Please note that a rich dialog panel is not an instance of a Swing 
 * container, but of an ULCContainer. As such it can not be run 
 * or instantiated outside the ULC framework.
 */
@SuppressWarnings("all")
public class DemoLicenceInformationPanel extends RichDialogBorderPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
  
  private RGridBagLayoutPane warningPane = null;
  private RLabel warningLabel = null;

  /**
   * Create a new instance of DemoLicenceInformationPanel
   */
  public DemoLicenceInformationPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes DemoLicenceInformationPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(355,243));
        this.add(getWarningPane(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
  }
  
  /**
   * This method initializes warningPane	
   * 	
   * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBorderLayoutPane	
   */
  private RGridBagLayoutPane getWarningPane() {
  	if (warningPane == null) {
  		warningPane = new RGridBagLayoutPane();
  		warningPane.setName("warningPane");
  		warningPane.setBorder(BorderFactory.createLineBorder(new Color(188, 175, 35), 2));
  		warningPane.setStyleProperties("{/backgroundColor {/b \"204\"/r \"255\"/g \"255\"}/fill \"HORIZONTAL\"}");
  		warningPane.setForeground(new Color(51, 51, 51));
  		warningPane.add(getWarningLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, 1.0, 1.0, com.ulcjava.base.application.GridBagConstraints.NORTH, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(5,5,5,5), 0, 0));
  	}
  	return warningPane;
  }

  /**
   * This method initializes warningLabel	
   * 	
   * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
   */
  private RLabel getWarningLabel() {
  	if (warningLabel == null) {
  		warningLabel = new RLabel();
  		warningLabel.setStyleProperties("{/insetsLeft \"5\"/insetsRight \"5\"/anchor \"NORTH\"/insetsTop \"5\"/foregroundColor {/b \"0\"/r \"0\"/g \"0\"}/verticalTextPosition \"TOP\"/insetsBottom \"5\"/weightY \"1\"/weightX \"1\"/fill \"HORIZONTAL\"}");
  		warningLabel.setIconUri("<%=ivy.cms.cr(\"/Icons/Warning/24\")%>");
  		warningLabel.setText("<%=ivy.cms.co(\"/labels/demoLicenseArea\")%>");
  		warningLabel.setName("warningLabel");
  	}
  	return warningLabel;
  }}  //  @jve:decl-index=0:visual-constraint="10,10"