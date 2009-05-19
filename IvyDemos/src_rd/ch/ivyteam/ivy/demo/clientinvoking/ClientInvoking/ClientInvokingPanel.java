package ch.ivyteam.ivy.demo.clientinvoking.ClientInvoking;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RTabbedPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RScrollBar;
import ch.ivyteam.ivy.richdialog.widgets.components.RComboBox;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextArea;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import com.ulcjava.base.application.util.Color;

/**
 * RichDialog panel implementation for ClientInvokingPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class ClientInvokingPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RGridBagLayoutPane header = null;
private RLabel lblTitle = null;
private RLabel lblSubtitle = null;
private RTabbedPane content = null;
private RGridBagLayoutPane filePane = null;
private RGridBagLayoutPane browserPane = null;
private RButton btnOpenBrowser = null;
private RComboBox comboUrls = null;
private RTextArea TextArea = null;
private RButton btnOpenFile = null;
private RButton btnWriteFile = null;
private RScrollPane ScrollPane = null;
private RLabel lblResult = null;
/**
   * Create a new instance of ClientInvokingPanel
   */
  public ClientInvokingPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes ClientInvokingPanel
   * @return void
   */
  private void initialize()
  {
        this.add(getHeader(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getContent(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes header	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getHeader() {
	if (header == null) {
		header = new RGridBagLayoutPane();
		header.setName("header");
		header.add(getLblTitle(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		header.add(getLblSubtitle(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return header;
}

/**
 * This method initializes lblTitle	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getLblTitle() {
	if (lblTitle == null) {
		lblTitle = new RLabel();
		lblTitle.setText("   Client Invoking Demo");
		lblTitle.setStyleProperties("{/font {/name \"Dialog\"/size \"20\"/style \"BOLD\"}}");
		lblTitle.setIconUri("<%=ivy.cms.cr(\"/Images/client_code\")%>");
		lblTitle.setName("lblTitle");
	}
	return lblTitle;
}

/**
 * This method initializes lblSubtitle	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getLblSubtitle() {
	if (lblSubtitle == null) {
		lblSubtitle = new RLabel();
		lblSubtitle.setText("This demo shows how to handle files and to start a browser on the client ");
		lblSubtitle.setStyleProperties("{/horizontalAlignment \"LEFT\"/anchor \"WEST\"/fill \"HORIZONTAL\"/horizontalTextPosition \"LEFT\"/weightX \"1\"}");
		lblSubtitle.setName("lblSubtitle");
	}
	return lblSubtitle;
}

/**
 * This method initializes content	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RTabbedPane	
 */
private RTabbedPane getContent() {
	if (content == null) {
		content = new RTabbedPane();
		content.setName("content");
		content.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		content.addTab("File handling", null, getFilePane(), null);
		content.addTab("Browser handling", null, getBrowserPane(), null);
	}
	return content;
}

/**
 * This method initializes filePane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getFilePane() {
	if (filePane == null) {
		RFiller Filler1 = new RFiller();
		filePane = new RGridBagLayoutPane();
		filePane.setName("filePane");
		filePane.add(getBtnOpenFile(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		filePane.add(Filler1, new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		filePane.add(getBtnWriteFile(), new com.ulcjava.base.application.GridBagConstraints(2, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		filePane.add(getScrollPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 2, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		filePane.add(getLblResult(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return filePane;
}

/**
 * This method initializes browserPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getBrowserPane() {
	if (browserPane == null) {
		RFiller Filler = new RFiller();
		browserPane = new RGridBagLayoutPane();
		browserPane.setName("browserPane");
		browserPane.add(getBtnOpenBrowser(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		browserPane.add(getComboUrls(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		browserPane.add(Filler, new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return browserPane;
}

/**
 * This method initializes btnOpenBrowser	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getBtnOpenBrowser() {
	if (btnOpenBrowser == null) {
		btnOpenBrowser = new RButton();
		btnOpenBrowser.setText("Open Website");
		btnOpenBrowser.setName("btnOpenBrowser");
	}
	return btnOpenBrowser;
}

/**
 * This method initializes comboUrls	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getComboUrls() {
	if (comboUrls == null) {
		comboUrls = new RComboBox();
		comboUrls.setName("comboUrls");
		comboUrls.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		comboUrls.setModelConfiguration("{/result \"result=entry.name\"/version \"2.0\"/icon \"\"/tooltip \"result=\\\"opens website \\\" + entry.name + \\\" at \\\" + entry.url\"}");
	}
	return comboUrls;
}

/**
 * This method initializes TextArea	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextArea	
 */
private RTextArea getTextArea() {
	if (TextArea == null) {
		TextArea = new RTextArea();
		TextArea.setText("RTextArea");
		TextArea.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		TextArea.setLineWrap(true);
		TextArea.setForeground(new Color(51, 51, 51));
		TextArea.setWrapStyleWord(true);
		TextArea.setName("TextArea");
	}
	return TextArea;
}

/**
 * This method initializes btnOpenFile	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getBtnOpenFile() {
	if (btnOpenFile == null) {
		btnOpenFile = new RButton();
		btnOpenFile.setText("Read File");
		btnOpenFile.setName("btnOpenFile");
	}
	return btnOpenFile;
}

/**
 * This method initializes btnWriteFile	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getBtnWriteFile() {
	if (btnWriteFile == null) {
		btnWriteFile = new RButton();
		btnWriteFile.setText("Write File");
		btnWriteFile.setName("btnWriteFile");
	}
	return btnWriteFile;
}

/**
 * This method initializes ScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getScrollPane() {
	if (ScrollPane == null) {
		ScrollPane = new RScrollPane();
		ScrollPane.setName("ScrollPane");
		ScrollPane.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		ScrollPane.setViewPortView(getTextArea());
	}
	return ScrollPane;
}

/**
 * This method initializes lblResult	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getLblResult() {
	if (lblResult == null) {
		lblResult = new RLabel();
		lblResult.setName("lblResult");
		lblResult.setStyleProperties("{/horizontalAlignment \"LEFT\"/anchor \"WEST\"/fill \"HORIZONTAL\"/weightX \"1\"/horizontalTextPosition \"LEFT\"}");
	}
	return lblResult;
}
}