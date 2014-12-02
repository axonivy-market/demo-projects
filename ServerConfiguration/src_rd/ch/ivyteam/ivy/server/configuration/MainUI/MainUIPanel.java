package ch.ivyteam.ivy.server.configuration.MainUI;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay;

/**
 * RichDialog panel implementation for MainUIPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class MainUIPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RTabbedDisplay mainDisplay = null;
private RGridLayoutPane buttonPane = null;
private RButton cancelButton = null;
private RButton saveButton = null;
/**
   * Create a new instance of MainUIPanel
   */
  public MainUIPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes MainUIPanel
   * @return void
   */
  public void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(543,267));
        this.add(getMainDisplay(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, 1.0D, 1.0D, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.BOTH, new com.ulcjava.base.application.util.Insets(5,5,5,5), 0, 0));
        this.add(getButtonPane(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes mainDisplay	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay	
 */
private RTabbedDisplay getMainDisplay() {
	if (mainDisplay == null) {
		mainDisplay = new RTabbedDisplay();
		mainDisplay.setName("mainDisplay");
	    mainDisplay.setStyle("fill-both");
	    mainDisplay.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		mainDisplay.setDisplayId("main");
	}
	return mainDisplay;
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
		buttonPane.setStyleProperties("{/anchor \"EAST\"/insetsBottom \"5\"/insetsRight \"5\"}");
		buttonPane.setHgap(5);
		buttonPane.add(getSaveButton());
		buttonPane.add(getCancelButton());
	}
	return buttonPane;
}

/**
 * This method initializes cancelButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getCancelButton() {
	if (cancelButton == null) {
		cancelButton = new RButton();
		cancelButton.setText("<%=ivy.cms.co(\"/labels/Cancel\")%>");
		cancelButton.setName("cancelButton");
	}
	return cancelButton;
}

/**
 * This method initializes saveButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getSaveButton() {
	if (saveButton == null) {
		saveButton = new RButton();
		saveButton.setText("<%=ivy.cms.co(\"/labels/save\")%>");
		saveButton.setDefaultCapable(true);
		saveButton.setName("saveButton");
	}
	return saveButton;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"