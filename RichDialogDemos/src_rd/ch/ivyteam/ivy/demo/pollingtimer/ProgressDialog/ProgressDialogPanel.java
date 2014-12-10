package ch.ivyteam.ivy.demo.pollingtimer.ProgressDialog;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RProgressBar;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;

/**
 * <p>ProgressDialogPanel is a rich dialog panel implementation.
 *
 * <p>Please note that a rich dialog panel is not an instance of a Swing 
 * container, but of an ULCContainer. As such it can not be run 
 * or instantiated outside the ULC framework.
 */
@SuppressWarnings("all")
public class ProgressDialogPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RProgressBar workProgressBar = null;
private RLabel infoLabel = null;
private RButton hiddenButton = null;
  
  /**
   * Create a new instance of ProgressDialogPanel
   */
  public ProgressDialogPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes ProgressDialogPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(260,61));
        this.add(getWorkProgressBar(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getInfoLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getHiddenButton(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes workProgressBar	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RProgressBar	
 */
private RProgressBar getWorkProgressBar() {
	if (workProgressBar == null) {
		workProgressBar = new RProgressBar();
		workProgressBar.setName("workProgressBar");
		workProgressBar.setStyleProperties("{/weightY \"1\"}");
		workProgressBar.setStringPainted(true);
		workProgressBar.setStyle("fill-horiz-north-border");
	}
	return workProgressBar;
}

/**
 * This method initializes infoLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getInfoLabel() {
	if (infoLabel == null) {
		infoLabel = new RLabel();
		infoLabel.setText("I work hard, then I close myself.");
		infoLabel.setStyle("fill-horiz-north-border");
		infoLabel.setName("infoLabel");
	}
	return infoLabel;
}

/**
 * This method initializes hiddenButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getHiddenButton() {
	if (hiddenButton == null) {
		hiddenButton = new RButton();
		hiddenButton.setText("");
		hiddenButton.setVisible(false);
		hiddenButton.setName("hiddenButton");
	}
	return hiddenButton;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"