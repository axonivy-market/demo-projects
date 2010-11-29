package ch.ivyteam.ivy.addons.filemanager.SimpleFileActionChooser;

import com.ulcjava.base.application.AbstractAction;
import com.ulcjava.base.application.event.ActionEvent;
import com.ulcjava.base.application.event.KeyEvent;
import com.ulcjava.base.application.util.KeyStroke;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;

/**
 * <p>SimpleFileActionChooserPanel is a rich dialog panel implementation.
 *
 * <p>Please note that a rich dialog panel is not an instance of a Swing 
 * container, but of an ULCContainer. As such it can not be run 
 * or instantiated outside the ULC framework.
 */
@SuppressWarnings("all")
public class SimpleFileActionChooserPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RLabel Label = null;
private RLabel infoLabel = null;
private RButton editButton = null;
private RButton printButton = null;
private RButton closeButton = null;
private AbstractAction editAction=null;  //  @jve:decl-index=0:
private AbstractAction cancelAction=null;  //  @jve:decl-index=0:
private AbstractAction printAction=null;  //  @jve:decl-index=0:
  
  /**
   * Create a new instance of SimpleFileActionChooserPanel
   */
  public SimpleFileActionChooserPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes SimpleFileActionChooserPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(457,302));
        this.add(getLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getInfoLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getEditButton(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getPrintButton(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getCloseButton(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getLabel() {
	if (Label == null) {
		Label = new RLabel();
		Label.setName("Label");
		Label.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/file/72\")%>");
		Label.setText("");
		Label.setStyleProperties("{/foregroundColor {/b \"102\"/r \"102\"/g \"102\"}/font {/name \"Dialog\"/size \"16\"/style \"BOLD\"}}");
	}
	return Label;
}

/**
 * This method initializes infoLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getInfoLabel() {
	if (infoLabel == null) {
		infoLabel = new RLabel();
		infoLabel.setName("infoLabel");
		infoLabel.setStyleProperties("{/font {/name \"Tahoma\"/size \"16\"/style \"BOLD\"}/anchor \"NORTHWEST\"/foregroundColor {/b \"102\"/r \"102\"/g \"102\"}/horizontalAlignment \"LEFT\"/weightX \"1\"/fill \"BOTH\"}");
	}
	return infoLabel;
}

/**
 * This method initializes editButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getEditButton() {
	if (editButton == null) {
		editButton = new RButton();
		editButton.setName("editButton");
		editButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/FileActionOptionPane/buttons/editDocument\")%>");
		editButton.setStyleProperties("{/horizontalAlignment \"LEFT\"/font {/name \"Dialog\"/size \"11\"/style \"PLAIN\"}/anchor \"NORTHWEST\"/insetsTop \"10\"/insetsRight \"30\"/fill \"HORIZONTAL\"/insetsLeft \"30\"/weightX \"1\"}");
		editButton.setStyle("bigButton");
		editButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/file/48\")%>");
		editButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/FileActionOptionPane/tooltips/openFile\")%>");
		editButton.registerKeyboardAction(getEditAction(), KeyStroke.getKeyStroke(KeyEvent.VK_E, KeyEvent.CTRL_DOWN_MASK), WHEN_IN_FOCUSED_WINDOW);
	}
	return editButton;
}
/**
 * This method initializes cancelAction	 
 * @return com.ulcjava.base.application.AbstractAction
 */
private AbstractAction getEditAction(){
	if(editAction==null){
		editAction = new AbstractAction(){

			/**
			 * 
			 */
			private static final long serialVersionUID = 1L;

			public void actionPerformed(ActionEvent arg0) {
				doEditAction();
			}
			
		};
	}
	return editAction;
}
/**
 * used by the closeButton CTRL+ ... key Event to print
 *
 */
private void doEditAction(){
	try {
		this.getPanelAPI().callMethod("_edit", new Object[0]);
	} catch (Exception ex) {
		Ivy.log().error(ex.getMessage(),ex);
	} 
}
/**
 * This method initializes printButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getPrintButton() {
	if (printButton == null) {
		printButton = new RButton();
		printButton.setName("printButton");
		printButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/FileActionOptionPane/buttons/printDocument\")%>");
		printButton.setStyleProperties("{/horizontalAlignment \"LEFT\"/font {/name \"Dialog\"/size \"11\"/style \"PLAIN\"}/anchor \"NORTHWEST\"/insetsTop \"10\"/fill \"HORIZONTAL\"/insetsRight \"30\"/insetsLeft \"30\"/weightX \"1\"}");
		printButton.setStyle("bigButton");
		printButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/print/48\")%>");
		printButton.setToolTipText("<%=ivy.cms.co(\"/ch/xpertline/common/ria/component/FileActionOptionPane/tooltips/printFile\")%>");
		printButton.registerKeyboardAction(getPrintAction(), KeyStroke.getKeyStroke(KeyEvent.VK_P, KeyEvent.CTRL_DOWN_MASK), WHEN_IN_FOCUSED_WINDOW);
	}
	return printButton;
}

/**
 * This method initializes cancelAction	 
 * @return com.ulcjava.base.application.AbstractAction
 */
private AbstractAction getPrintAction(){
	if(printAction==null){
		printAction = new AbstractAction(){

			/**
			 * 
			 */
			private static final long serialVersionUID = 1L;

			public void actionPerformed(ActionEvent arg0) {
				doPrintAction();
			}
			
		};
	}
	return printAction;
}
/**
 * used by the closeButton CTRL+ ... key Event to print
 *
 */
private void doPrintAction(){
	try {
		this.getPanelAPI().callMethod("_print", new Object[0]);
	} catch (Exception ex) {
		Ivy.log().error(ex.getMessage(),ex);
	} 
}

/**
 * This method initializes closeButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getCloseButton() {
	if (closeButton == null) {
		closeButton = new RButton();
		closeButton.setName("closeButton");
		closeButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/FileActionOptionPane/buttons/cancelAction\")%>");
		closeButton.setStyleProperties("{/horizontalAlignment \"LEFT\"/font {/name \"Dialog\"/size \"11\"/style \"PLAIN\"}/anchor \"NORTHWEST\"/insetsTop \"10\"/fill \"HORIZONTAL\"/insetsRight \"30\"/insetsLeft \"30\"/weightX \"1\"}");
		closeButton.setStyle("bigButton");
		closeButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/close/48\")%>");
		closeButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/FileActionOptionPane/tooltips/close\")%>");
		closeButton.registerKeyboardAction(getCancelAction(), KeyStroke.getKeyStroke(KeyEvent.VK_W, KeyEvent.CTRL_DOWN_MASK), WHEN_IN_FOCUSED_WINDOW);
		closeButton.registerKeyboardAction(getCancelAction(), KeyStroke.getKeyStroke(KeyEvent.VK_ESCAPE, 0), WHEN_IN_FOCUSED_WINDOW);
	}
	return closeButton;
}
/**
 * This method initializes cancelAction	 
 * @return com.ulcjava.base.application.AbstractAction
 */
private AbstractAction getCancelAction(){
	if(cancelAction==null){
		cancelAction = new AbstractAction(){

			/**
			 * 
			 */
			private static final long serialVersionUID = 1L;

			public void actionPerformed(ActionEvent arg0) {
				doCancelAction();
			}
			
		};
	}
	return cancelAction;
}
/**
 * used by the closeButton CTRL+ ... key Event to close the panel
 *
 */
private void doCancelAction(){
	try {
		this.getPanelAPI().callMethod("_close", new Object[0]);
	} catch (Exception ex) {
		Ivy.log().error(ex.getMessage(),ex);
	} 
}
}  //  @jve:decl-index=0:visual-constraint="10,10"