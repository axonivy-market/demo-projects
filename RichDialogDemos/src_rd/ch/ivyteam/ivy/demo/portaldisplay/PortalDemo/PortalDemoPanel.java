package ch.ivyteam.ivy.demo.portaldisplay.PortalDemo;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ulc.vwidget.server.ULCVLiquidPortalPane;
import ch.ivyteam.ulc.vwidget.server.ULCVPortletPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.exec.display.LiquidPortalPaneDisplay;

import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.util.Color;
import com.ulcjava.base.application.util.Font;
import com.ulcjava.base.application.util.Insets;

import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.demo.util.Title.TitlePanel;
import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;
import com.ulcjava.base.application.ULCContainer;

/**
 * <p>PortalDemoPanel is a rich dialog panel implementation.
 *
 * <p>Please note that a rich dialog panel is not an instance of a Swing 
 * container, but of an ULCContainer. As such it can not be run 
 * or instantiated outside the ULC framework.
 */
@SuppressWarnings("all")
public class PortalDemoPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RButton Button = null;
private LiquidPortalPaneDisplay liquidPortalPaneDisplay = null;
private RGridBagLayoutPane GridBagLayoutPane = null;
private RButton advancedPortletButton = null;
private @EmbeddedRichDialog(TitlePanel.class) ULCContainer titlePanel = null;
/**
   * Create a new instance of PortalDemoPanel
   */
  public PortalDemoPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes PortalDemoPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(484,291));
        this.add(getTitlePanel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 2, 1, 1.0, 0.0, 
        		com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.BOTH, 
        		new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 2, 1, 1.0, 1.0, 
        		com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.BOTH, 
        		new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getButton(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, 
        		com.ulcjava.base.application.GridBagConstraints.WEST, com.ulcjava.base.application.GridBagConstraints.NONE, 
        		new com.ulcjava.base.application.util.Insets(5,5,5,5), 0, 0));
        this.add(getAdvancedPortletButton(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, 
        		com.ulcjava.base.application.GridBagConstraints.WEST, com.ulcjava.base.application.GridBagConstraints.NONE, 
        		new com.ulcjava.base.application.util.Insets(5,5,5,5), 0, 0));
  }

/**
 * This method initializes Button	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getButton() {
	if (Button == null) {
		Button = new RButton();
		Button.setText("Load Simple Portlet");
		Button.setName("Button");
	}
	return Button;
}

/**
 * This method initializes liquidPortalPaneDisplay	
 * 	
 * @return ch.ivyteam.ivy.richdialog.exec.display.LiquidPortalPaneDisplay	
 */
private LiquidPortalPaneDisplay getLiquidPortalPaneDisplay() {
	if (liquidPortalPaneDisplay == null) {
		liquidPortalPaneDisplay = new LiquidPortalPaneDisplay();
		liquidPortalPaneDisplay.setName("liquidPortalPaneDisplay");
		liquidPortalPaneDisplay.setDisplayId("portalDisplay");
		
		liquidPortalPaneDisplay.setBackground(Color.black);
		liquidPortalPaneDisplay.setNumberOfColumn(3);
		liquidPortalPaneDisplay.setDividerSize(7);
		liquidPortalPaneDisplay.setBorder(BorderFactory.createEmptyBorder(7, 7, 7, 7));
		liquidPortalPaneDisplay.setViewportBorder(BorderFactory.createEmptyBorder(7, 7, 7, 7));		
		liquidPortalPaneDisplay.setDragEnabled(true);
		
		liquidPortalPaneDisplay.setPortletTitleBackground(new Color(128,255,255));
		liquidPortalPaneDisplay.setPortletTitleFont(new Font("Dialog", 1, 14));
		liquidPortalPaneDisplay.setPortletContentInsets(new Insets(5,5,5,5));
		liquidPortalPaneDisplay.setPortletTitleInsets(new Insets(5,5,5,5));
		liquidPortalPaneDisplay.setPortletCornerRadius(8);
	}
	return liquidPortalPaneDisplay;
}

/**
 * This method initializes GridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getGridBagLayoutPane() {
	if (GridBagLayoutPane == null) {
		GridBagLayoutPane = new RGridBagLayoutPane();
		GridBagLayoutPane.setName("GridBagLayoutPane");
		GridBagLayoutPane.add(getLiquidPortalPaneDisplay(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, 1.0, 1.0, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.BOTH, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return GridBagLayoutPane;
}

/**
 * This method initializes advancedPortletButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getAdvancedPortletButton() {
	if (advancedPortletButton == null) {
		advancedPortletButton = new RButton();
		advancedPortletButton.setText("Load Advanced Portlet");
		advancedPortletButton.setName("advancedPortletButton");
	}
	return advancedPortletButton;
}

/**
 * This method initializes titlePanel, an embedded RichDialog.
 * The created object might have a different type than the declared
 * class due to overriding.
 * @returns com.ulcjava.base.application.ULCContainer 
 */
private ULCContainer getTitlePanel() {
	if (titlePanel == null) {
		titlePanel = RichDialogPanelFactory.create(TitlePanel.class);
		titlePanel.setName("titlePanel");
	}
	return titlePanel;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"