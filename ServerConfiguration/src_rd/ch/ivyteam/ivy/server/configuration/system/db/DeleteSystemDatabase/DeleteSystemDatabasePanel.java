package ch.ivyteam.ivy.server.configuration.system.db.DeleteSystemDatabase;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RHtmlPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBoxLayoutPane;

/**
 * RichDialog panel implementation for DeleteSystemDatabasePanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class DeleteSystemDatabasePanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RButton yesButton = null;
private RButton cancelButton = null;
private RBoxLayoutPane buttonPane = null;
private RHtmlPane messageArea = null;
private RLabel warningImage = null;
  
  /**
   * Create a new instance of DeleteSystemDatabasePanel
   */
  public DeleteSystemDatabasePanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes DeleteSystemDatabasePanel
   * @return void
   */
  public void initialize()
  {
        this.add(getButtonPane(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getMessageArea(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getWarningImage(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes yesButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getYesButton() {
	if (yesButton == null) {
		yesButton = new RButton();
		yesButton.setText("<%=ivy.cms.co(\"/labels/yes\")%>");
		yesButton.setDefaultCapable(true);
		yesButton.setName("yesButton");
	}
	return yesButton;
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
 * This method initializes buttonPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxLayoutPane	
 */
private RBoxLayoutPane getButtonPane() {
	if (buttonPane == null) {
		buttonPane = new RBoxLayoutPane(RBoxLayoutPane.X_AXIS);
		buttonPane.setName("buttonPane");
		buttonPane.setStyleProperties("{/anchor \"EAST\"}");
		buttonPane.add(getCancelButton());
		buttonPane.add(getYesButton());
	}
	return buttonPane;
}

/**
 * This method initializes messageArea	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHtmlPane	
 */
private RHtmlPane getMessageArea() {
	if (messageArea == null) {
		messageArea = new RHtmlPane();
		messageArea.setText("<%=ivy.cms.co(\"/labels/deleteSysDb\")%>");		
		messageArea.setName("messageArea");
		messageArea.setStyleProperties("{/foregroundColor {/b \"0\"/r \"255\"/g \"0\"}/fill \"BOTH\"/insetsLeft \"10\"/weightY \"1\"/weightX \"1\"}");
		messageArea.setFocusable(false);
	}
	return messageArea;
}

/**
 * This method initializes warningImage	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getWarningImage() {
	if (warningImage == null) {
		warningImage = new RLabel();
		warningImage.setName("warningImage");
		warningImage.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		warningImage.setIconUri("<%=ivy.cms.cr(\"/Icons/Warning/24\")%>");
	}
	return warningImage;
}
}  //  @jve:decl-index=0:visual-constraint="20,15"