package ch.ivyteam.ivy.demo.waitforasyncprocess.RegisterEmployeeInBranch;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RComboBox;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;

/**
 * <p>RegisterEmployeeInBranchPanel is a rich dialog panel implementation.
 *
 * <p>Please note that a rich dialog panel is not an instance of a Swing 
 * container, but of an ULCContainer. As such it can not be run 
 * or instantiated outside the ULC framework.
 */
@SuppressWarnings("all")
public class RegisterEmployeeInBranchPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RLabel empNameLabel = null;
private RLabel Label = null;
private RLabel branchLabel1 = null;
private RComboBox ComboBox = null;
private RButton Button = null;
  
  /**
   * Create a new instance of RegisterEmployeeInBranchPanel
   */
  public RegisterEmployeeInBranchPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes RegisterEmployeeInBranchPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(223,130));
        this.add(getEmpNameLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getBranchLabel1(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getComboBox(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getButton(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes empNameLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getEmpNameLabel() {
	if (empNameLabel == null) {
		empNameLabel = new RLabel();
		empNameLabel.setText("Name");
		empNameLabel.setName("empNameLabel");
	}
	return empNameLabel;
}

/**
 * This method initializes Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getLabel() {
	if (Label == null) {
		Label = new RLabel();
		Label.setText("Label");
		Label.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		Label.setName("Label");
	}
	return Label;
}

/**
 * This method initializes branchLabel1	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getBranchLabel1() {
	if (branchLabel1 == null) {
		branchLabel1 = new RLabel();
		branchLabel1.setText("Branch");
		branchLabel1.setName("branchLabel1");
	}
	return branchLabel1;
}

/**
 * This method initializes ComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getComboBox() {
	if (ComboBox == null) {
		ComboBox = new RComboBox();
		ComboBox.setName("ComboBox");
		ComboBox.setMandatory(true);
		ComboBox.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
	}
	return ComboBox;
}

/**
 * This method initializes Button	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getButton() {
	if (Button == null) {
		Button = new RButton();
		Button.setText("OK");
		Button.setEnabler(getComboBox());
		Button.setName("Button");
	}
	return Button;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"