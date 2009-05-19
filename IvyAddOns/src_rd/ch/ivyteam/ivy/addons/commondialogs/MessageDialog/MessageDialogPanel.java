package ch.ivyteam.ivy.addons.commondialogs.MessageDialog;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RHtmlPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;

import com.ulcjava.base.application.util.Dimension;

/**
 * RichDialog panel implementation for MessageDialogPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class MessageDialogPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RButton okButton = null;
private RLabel iconLabel = null;
private RHtmlPane messageTextHtmlPane = null;
private RLabel messageTitleLabel = null;
  
  /**
   * Create a new instance of MessageDialogPanel
   */
  public MessageDialogPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes MessageDialogPanel
   * @return void
   */
  public void initialize()
  {
//        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(443,132));
        RFiller hSpacer = new RFiller();
        hSpacer.setStyleProperties("{/minimumSizeWidth \"280\"/preferredSizeWidth \"280\"/minimumSizeHeight \"1\"/preferredSizeHeight \"1\"}");
        this.add(getOkButton(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getIconLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 2, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getMessageTextHtmlPane(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getMessageTitleLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(hSpacer, new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
		okButton.setStyleProperties("{/usePreferredSizeAsExactSize \"true\"/preferredSizeWidth \"70\"/fill \"NONE\"/preferredSizeHeight \"23\"}");
		okButton.setStyle("border-all");
		okButton.setName("okButton");
	}
	return okButton;
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
		iconLabel.setIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/large/information\") %>");
		iconLabel.setStyleProperties("{/anchor \"NORTHWEST\"}");
		iconLabel.setName("iconLabel");
	}
	return iconLabel;
}

/**
 * This method initializes messageTextHtmlPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHtmlPane	
 */
private RHtmlPane getMessageTextHtmlPane() {
	if (messageTextHtmlPane == null) {
		messageTextHtmlPane = new RHtmlPane();
		messageTextHtmlPane.setName("messageTextHtmlPane");
		messageTextHtmlPane.setStyle("fill-horiz-north-border");
		messageTextHtmlPane.setFocusable(false);
		messageTextHtmlPane.setStyleProperties("{/weightY \"1\"}");
		messageTextHtmlPane.setMaximumSize(new Dimension(600, Integer.MAX_VALUE));
	}
	return messageTextHtmlPane;
}

/**
 * This method initializes messageTitleLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getMessageTitleLabel() {
	if (messageTitleLabel == null) {
		messageTitleLabel = new RLabel();
		messageTitleLabel.setName("messageTitleLabel");
		messageTitleLabel.setStyle("fill-horiz-north-border");
		messageTitleLabel.setText("RLabel");
	}
	return messageTitleLabel;
}
}  //  @jve:decl-index=0:visual-constraint="4,10"