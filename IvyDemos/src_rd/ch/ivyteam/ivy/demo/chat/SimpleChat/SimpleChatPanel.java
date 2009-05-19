package ch.ivyteam.ivy.demo.chat.SimpleChat;

import ch.ivyteam.ivy.demo.util.Title.TitlePanel;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextArea;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;

/**
 * RichDialog panel implementation for SimpleChatPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class SimpleChatPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private TitlePanel titlePanel = null;
private RScrollPane messageScrollPane = null;
private RLabel messageLabel = null;
private RTextField messageTextField = null;
private RFlowLayoutPane bottomPane = null;
private RHyperlink logoutHyperlink = null;
private RTextArea chatTextArea = null;
private RButton sendButton = null;
/**
   * Create a new instance of SimpleChatPanel
   */
  public SimpleChatPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes SimpleChatPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(282,218));
        this.add(getTitlePanel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 7, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getMessageScrollPane(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 7, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getMessageLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getMessageTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getBottomPane(), new com.ulcjava.base.application.GridBagConstraints(0, 5, 6, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getSendButton(), new com.ulcjava.base.application.GridBagConstraints(5, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes titlePanel	
 * 	
 * @return ch.ivyteam.ivy.demo.util.Title.TitlePanel	
 */
private TitlePanel getTitlePanel() {
	if (titlePanel == null) {
		titlePanel = new TitlePanel();
		titlePanel.setName("titlePanel");
		titlePanel.setPreferredSize(null);
	}
	return titlePanel;
}

/**
 * This method initializes messageScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getMessageScrollPane() {
	if (messageScrollPane == null) {
		messageScrollPane = new RScrollPane();
		messageScrollPane.setName("messageScrollPane");
		messageScrollPane.setStyleProperties("{/weightY \"1\"}");
		messageScrollPane.setViewPortView(getChatTextArea());
	}
	return messageScrollPane;
}

/**
 * This method initializes messageLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getMessageLabel() {
	if (messageLabel == null) {
		messageLabel = new RLabel();
		messageLabel.setText("Your message:");
		messageLabel.setStyle("border-full");
		messageLabel.setName("messageLabel");
	}
	return messageLabel;
}

/**
 * This method initializes messageTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLookupTextField	
 */
private RTextField getMessageTextField() {
	if (messageTextField == null) {
		messageTextField = new RTextField();
		messageTextField.setText("Hello!");
		messageTextField.setStyleProperties("{/insetsBottom \"5\"/insetsTop \"5\"/insetsRight \"5\"/fill \"HORIZONTAL\"/weightX \"1\"}");
		messageTextField.setToolTipText("<html>Hit <i>Enter</i> to send your message.");
		messageTextField.setName("messageTextField");
	}
	return messageTextField;
}

/**
 * This method initializes bottomPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane	
 */
private RFlowLayoutPane getBottomPane() {
	if (bottomPane == null) {
		bottomPane = new RFlowLayoutPane();
		bottomPane.setName("bottomPane");
		bottomPane.setStyleProperties("{/hgap \"5\"/alignment \"RIGHT\"}");
		bottomPane.add(getLogoutHyperlink());
	}
	return bottomPane;
}

/**
 * This method initializes logoutHyperlink	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink	
 */
private RHyperlink getLogoutHyperlink() {
	if (logoutHyperlink == null) {
		logoutHyperlink = new RHyperlink();
		logoutHyperlink.setText("Log off");
		logoutHyperlink.setName("logoutHyperlink");
	}
	return logoutHyperlink;
}

/**
 * This method initializes chatTextArea	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextArea	
 */
private RTextArea getChatTextArea() {
	if (chatTextArea == null) {
		chatTextArea = new RTextArea();
		chatTextArea.setText("");
		chatTextArea.setEditable(false);
		chatTextArea.setMargin(new com.ulcjava.base.application.util.Insets(5,5,5,5));
		chatTextArea.setName("chatTextArea");
	}
	return chatTextArea;
}

/**
 * This method initializes sendButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getSendButton() {
	if (sendButton == null) {
		sendButton = new RButton();
		sendButton.setText("Send");
		sendButton.setStyleProperties("{/insetsBottom \"5\"/insetsTop \"5\"/insetsRight \"5\"}");
		sendButton.setName("sendButton");
	}
	return sendButton;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"