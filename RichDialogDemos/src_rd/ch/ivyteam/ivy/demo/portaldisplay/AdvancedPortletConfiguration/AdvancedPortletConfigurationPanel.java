package ch.ivyteam.ivy.demo.portaldisplay.AdvancedPortletConfiguration;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButtonGroup;
import ch.ivyteam.ivy.richdialog.widgets.components.RRadioButton;
import com.ulcjava.base.application.util.Font;

/**
 * <p>AdvancedPortletConfigurationPanel is a rich dialog panel implementation.
 *
 * <p>Please note that a rich dialog panel is not an instance of a Swing 
 * container, but of an ULCContainer. As such it can not be run 
 * or instantiated outside the ULC framework.
 */
@SuppressWarnings("all")
public class AdvancedPortletConfigurationPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RLabel chooseLabel = null;
private RButtonGroup ButtonGroup = null;  //  @jve:decl-index=0:visual-constraint="376,145"
private RRadioButton radioOption1 = null;
private RRadioButton radioOption2 = null;
private RLabel imageCity = null;
private RLabel imageAsia = null;
  
  /**
   * Create a new instance of AdvancedPortletConfigurationPanel
   */
  public AdvancedPortletConfigurationPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes AdvancedPortletConfigurationPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(326,216));
        this.add(getChooseLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 3, 1, 1.0, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.HORIZONTAL, new com.ulcjava.base.application.util.Insets(5,5,5,5), 0, 0));
        this.add(getRadioOption1(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, 1.0, 1.0, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.HORIZONTAL, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getRadioOption2(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, 1.0, 1.0, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.HORIZONTAL, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getImageCity(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, 1.0, 1.0, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.BOTH, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getImageAsia(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, 1.0, 1.0, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.BOTH, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes chooseLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getChooseLabel() {
	if (chooseLabel == null) {
		chooseLabel = new RLabel();
		chooseLabel.setText("Please choose which picture should be visible in the portlet:");
		chooseLabel.setName("chooseLabel");
	}
	return chooseLabel;
}

/**
 * This method initializes ButtonGroup	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButtonGroup	
 */
private RButtonGroup getButtonGroup() {
	if (ButtonGroup == null) {
		ButtonGroup = new RButtonGroup();
	}
	return ButtonGroup;
}

/**
 * This method initializes radioOption1	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RRadioButton	
 */
private RRadioButton getRadioOption1() {
	if (radioOption1 == null) {
		radioOption1 = new RRadioButton();
		radioOption1.setText("City at night");
		radioOption1.setGroup(getButtonGroup());
		radioOption1.setName("radioOption1");
	}
	return radioOption1;
}

/**
 * This method initializes radioOption2	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RRadioButton	
 */
private RRadioButton getRadioOption2() {
	if (radioOption2 == null) {
		radioOption2 = new RRadioButton();
		radioOption2.setText("Statue in Asia");
		radioOption2.setGroup(getButtonGroup());
		radioOption2.setName("radioOption2");
	}
	return radioOption2;
}

/**
 * This method initializes imageCity	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getImageCity() {
	if (imageCity == null) {
		imageCity = new RLabel();
		imageCity.setName("imageCity");
		imageCity.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/demo/portaldisplay/advanced/option1_small\")%>");
	}
	return imageCity;
}

/**
 * This method initializes imageAsia	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getImageAsia() {
	if (imageAsia == null) {
		imageAsia = new RLabel();
		imageAsia.setName("imageAsia");
		imageAsia.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/demo/portaldisplay/advanced/option2_small\")%>");
	}
	return imageAsia;
}
}  //  @jve:decl-index=0:visual-constraint="14,3"