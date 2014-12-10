package ch.ivyteam.ivy.demo.clientinvoking.ClientInvoking;

import ch.ivyteam.ivy.demo.util.Title.TitlePanel;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RComboBox;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextArea;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RTabbedPane;

import com.ulcjava.base.application.util.Color;
import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import com.ulcjava.base.application.ULCContainer;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;

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
@EmbeddedRichDialog(TitlePanel.class) private ULCContainer titlePanel = null;
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
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(399,312));
        this.add(getContent(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getTitlePanel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
		content.setStyle("fill-both-border");
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
		filePane = new RGridBagLayoutPane();
		filePane.setName("filePane");
		filePane.add(getBtnOpenFile(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		filePane.add(getBtnWriteFile(), new com.ulcjava.base.application.GridBagConstraints(2, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		filePane.add(getScrollPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 2, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		filePane.add(getLblResult(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
		browserPane = new RGridBagLayoutPane();
		browserPane.setName("browserPane");
		browserPane.add(getBtnOpenBrowser(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		browserPane.add(getComboUrls(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
		btnOpenBrowser.setStyle("border-top-right-bottom");
		btnOpenBrowser.setStyleProperties("{/anchor \"NORTH\"}");
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
		comboUrls.setStyleProperties("{/anchor \"NORTH\"/fill \"HORIZONTAL\"/weightY \"1\"/weightX \"1\"}");
		comboUrls.setStyle("fill-horiz-north-border");
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
		btnOpenFile.setStyle("border-top-right-bottom");
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
		btnWriteFile.setStyle("border-top-right-bottom");
		btnWriteFile.setStyleProperties("{/anchor \"NORTH\"}");
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
		ScrollPane.setStyle("fill-both-border");
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
		lblResult.setStyle("border-left-bottom-right");
		lblResult.setStyleProperties("{/horizontalAlignment \"LEFT\"/anchor \"WEST\"/fill \"HORIZONTAL\"/weightX \"1\"/horizontalTextPosition \"LEFT\"}");
	}
	return lblResult;
}

/**
 * This method initializes titlePanel	
 * 	
 * @return ch.ivyteam.ivy.demo.util.Title.TitlePanel	
 */
private ULCContainer getTitlePanel()  {
	if (titlePanel == null) {
		titlePanel = RichDialogPanelFactory.create(TitlePanel.class);
		titlePanel.setName("titlePanel");
		titlePanel.setStyle("fill-horiz");
	}
	return titlePanel;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"