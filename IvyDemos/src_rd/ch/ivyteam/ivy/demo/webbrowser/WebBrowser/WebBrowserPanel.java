package ch.ivyteam.ivy.demo.webbrowser.WebBrowser;

import ch.ivyteam.ivy.demo.util.Title.TitlePanel;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RBrowser;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBorderLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane;

import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.util.Color;

/**
 * <p>WebBrowserPanel is a rich dialog panel implementation.
 *
 * <p>Please note that a rich dialog panel is not an instance of a Swing 
 * container, but of an ULCContainer. As such it can not be run 
 * or instantiated outside the ULC framework.
 */
public class WebBrowserPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RBrowser webBrowser = null;
private RBoxPane controlBoxPane = null;
private RTextField urlTextField = null;
private RButton goButton = null;
private RButton backButton = null;
private RButton forwardButton = null;
private RLabel statusLabel = null;
private RBorderLayoutPane demoPane = null;
private RBorderLayoutPane webBrowserPane = null;
private TitlePanel titlePanel = null;
  
  /**
   * Create a new instance of WebBrowserPanel
   */
  public WebBrowserPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes WebBrowserPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(516,388));
        this.add(getDemoPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, 1.0D, 1.0D, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.BOTH, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes webBrowser	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RBrowser	
 */
private RBrowser getWebBrowser() {
	if (webBrowser == null) {
		webBrowser = new RBrowser();
		webBrowser.setName("webBrowser");
		webBrowser.setBorder(BorderFactory.createLineBorder(Color.gray, 1));
	}
	return webBrowser;
}

/**
 * This method initializes controlBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getControlBoxPane() {
	if (controlBoxPane == null) {
		controlBoxPane = new RBoxPane();
		controlBoxPane.setName("controlBoxPane");
			controlBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_EXPAND_CENTER, getUrlTextField());
	controlBoxPane.set(1, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getGoButton());
		controlBoxPane.set(2, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getBackButton());
		controlBoxPane.set(3, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getForwardButton());
	}
	return controlBoxPane;
}

/**
 * This method initializes urlTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getUrlTextField() {
	if (urlTextField == null) {
		urlTextField = new RTextField();
			urlTextField.setText("http://www.soreco.ch");
	urlTextField.setName("urlTextField");
	}
	return urlTextField;
}

/**
 * This method initializes goButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getGoButton() {
	if (goButton == null) {
		goButton = new RButton();
		goButton.setText("Go");
		goButton.setName("goButton");
	}
	return goButton;
}

/**
 * This method initializes backButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getBackButton() {
	if (backButton == null) {
		backButton = new RButton();
		backButton.setText("<");
		backButton.setName("backButton");
	}
	return backButton;
}

/**
 * This method initializes forwardButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getForwardButton() {
	if (forwardButton == null) {
		forwardButton = new RButton();
		forwardButton.setText(">");
		forwardButton.setName("forwardButton");
	}
	return forwardButton;
}

/**
 * This method initializes statusLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getStatusLabel() {
	if (statusLabel == null) {
		statusLabel = new RLabel();
		statusLabel.setText(" ");
		statusLabel.setName("statusLabel");
	}
	return statusLabel;
}

/**
 * This method initializes demoPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBorderLayoutPane	
 */
private RBorderLayoutPane getDemoPane() {
	if (demoPane == null) {
		demoPane = new RBorderLayoutPane();
		demoPane.setName("demoPane");
		demoPane.add(getTitlePanel(), com.ulcjava.base.application.ULCBorderLayoutPane.NORTH);
		demoPane.add(getWebBrowserPane(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
	}
	return demoPane;
}

/**
 * This method initializes webBrowserPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBorderLayoutPane	
 */
private RBorderLayoutPane getWebBrowserPane() {
	if (webBrowserPane == null) {
		webBrowserPane = new RBorderLayoutPane();
		webBrowserPane.setName("webBrowserPane");
		webBrowserPane.setBorder(BorderFactory.createEmptyBorder(8, 8, 8, 8));
		webBrowserPane.setHgap(3);
		webBrowserPane.setVgap(3);
		webBrowserPane.add(getWebBrowser(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
		webBrowserPane.add(getControlBoxPane(), com.ulcjava.base.application.ULCBorderLayoutPane.NORTH);
		webBrowserPane.add(getStatusLabel(), com.ulcjava.base.application.ULCBorderLayoutPane.SOUTH);
	}
	return webBrowserPane;
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
		titlePanel.setStyle("fill-horiz");
	}
	return titlePanel;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"