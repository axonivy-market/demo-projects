package ch.ivyteam.ivy.addons.filemanager.FileActionOptionPane;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.addons.filemanager.DesktopHandler.DesktopHandlerPanel;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;

import com.ulcjava.base.application.AbstractAction;
import com.ulcjava.base.application.ULCContainer;
import com.ulcjava.base.application.event.ActionEvent;
import com.ulcjava.base.application.event.KeyEvent;
import com.ulcjava.base.application.util.KeyStroke;

import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;

/**
 * RichDialog panel implementation for FileActionOptionPanePanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class FileActionOptionPanePanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
@EmbeddedRichDialog(DesktopHandlerPanel.class) private ULCContainer desktopHandlerPanel = null;
private RLabel Label = null;
private RLabel infoLabel = null;
private RButton editButton = null;
private RButton printButton = null;
private RButton downloadButton = null;
private RButton fileManagementButton = null;
private RButton closeButton = null;
private RLabel footerLabel = null;
private AbstractAction editAction=null;  //  @jve:decl-index=0:
private AbstractAction cancelAction=null;  //  @jve:decl-index=0:
private AbstractAction printAction=null;  //  @jve:decl-index=0:
private AbstractAction downloadAction=null;  //  @jve:decl-index=0:
private AbstractAction openFileManagerAction=null;  //  @jve:decl-index=0:
  /**
   * Create a new instance of FileActionOptionPanePanel
   */
  public FileActionOptionPanePanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes FileActionOptionPanePanel
   * @return void
   */
  private void initialize()
  {
        RFiller Filler1 = new RFiller();
        Filler1.setStyle("verticalGlue");
        RFiller Filler = new RFiller();
        Filler.setStyleProperties("{/weightY \"1\"}");
        Filler.setStyle("verticalGlue");
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(476,488));
        this.add(getDesktopHandlerPanel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getInfoLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(Filler, new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getFooterLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 10, 4, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getEditButton(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 5, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getPrintButton(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 6, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getDownloadButton(), new com.ulcjava.base.application.GridBagConstraints(0, 5, 7, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getFileManagementButton(), new com.ulcjava.base.application.GridBagConstraints(0, 7, 8, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getCloseButton(), new com.ulcjava.base.application.GridBagConstraints(0, 8, 9, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(Filler1, new com.ulcjava.base.application.GridBagConstraints(1, 9, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes desktopHandlerPanel	
 * 	
 * @return ch.xpertline.common.ria.component.DesktopHandler.DesktopHandlerPanel	
 */
private ULCContainer getDesktopHandlerPanel()  {
	if (desktopHandlerPanel == null) {
		desktopHandlerPanel = RichDialogPanelFactory.create(DesktopHandlerPanel.class);
		desktopHandlerPanel.setName("desktopHandlerPanel");
		desktopHandlerPanel.setVisible(false);
	}
	return desktopHandlerPanel;
}

/**
 * This method initializes Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getLabel() {
	if (Label == null) {
		Label = new RLabel();
		Label.setStyleProperties("{/foregroundColor {/b \"102\"/r \"102\"/g \"102\"}/font {/name \"Dialog\"/size \"16\"/style \"BOLD\"}}");
		Label.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/file/72\")%>");
		Label.setName("Label");
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
		infoLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/FileActionOptionPane/label/chooseAction\")%>");
		infoLabel.setStyleProperties("{/verticalTextPosition \"BOTTOM\"/foregroundColor {/b \"102\"/r \"102\"/g \"102\"}/font {/name \"Tahoma\"/size \"16\"/style \"BOLD\"}/verticalAlignment \"BOTTOM\"/fill \"BOTH\"/horizontalTextPosition \"LEFT\"/weightX \"1\"}");
		infoLabel.setName("infoLabel");
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
		editButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/file/48\")%>");
		editButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/FileActionOptionPane/tooltips/openFile\")%>");
		editButton.setStyle("bigButton");
		editButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/FileActionOptionPane/buttons/editDocument\")%>");
		editButton.setStyleProperties("{/horizontalAlignment \"LEFT\"/font {/name \"Dialog\"/size \"11\"/style \"PLAIN\"}/anchor \"NORTHWEST\"/insetsTop \"10\"/insetsRight \"30\"/fill \"HORIZONTAL\"/insetsLeft \"30\"/weightX \"1\"}");
		editButton.setName("editButton");
		editButton.registerKeyboardAction(getEditAction(), KeyStroke.getKeyStroke(KeyEvent.VK_E, KeyEvent.CTRL_DOWN_MASK), WHEN_IN_FOCUSED_WINDOW);
	}
	return editButton;
}
/**
 * This method initializes editAction	 
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
 * used by the editButton CTRL+ ... key Event to print
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
		printButton.setToolTipText("<%=ivy.cms.co(\"/ch/xpertline/common/ria/component/FileActionOptionPane/tooltips/printFile\")%>");
		printButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/FileActionOptionPane/buttons/printDocument\")%>");
		printButton.setStyleProperties("{/horizontalAlignment \"LEFT\"/font {/name \"Dialog\"/size \"11\"/style \"PLAIN\"}/anchor \"NORTHWEST\"/insetsTop \"10\"/fill \"HORIZONTAL\"/insetsRight \"30\"/insetsLeft \"30\"/weightX \"1\"}");
		printButton.setStyle("bigButton");
		printButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/print/48\")%>");
		printButton.registerKeyboardAction(getPrintAction(), KeyStroke.getKeyStroke(KeyEvent.VK_P, KeyEvent.CTRL_DOWN_MASK), WHEN_IN_FOCUSED_WINDOW);
	}
	return printButton;
}

/**
 * This method initializes printAction	 
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
 * used by the printButton CTRL+ ... key Event to print
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
 * This method initializes downloadButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getDownloadButton() {
	if (downloadButton == null) {
		downloadButton = new RButton();
		downloadButton.setName("downloadButton");
		downloadButton.setToolTipText("<%=ivy.cms.co(\"/ch/xpertline/common/ria/component/FileActionOptionPane/tooltips/downloadFile\")%>");
		downloadButton.setStyle("bigButton");
		downloadButton.setStyleProperties("{/horizontalAlignment \"LEFT\"/font {/name \"Dialog\"/size \"11\"/style \"PLAIN\"}/insetsTop \"10\"/insetsRight \"30\"/fill \"HORIZONTAL\"/insetsLeft \"30\"/weightX \"1\"}");
		downloadButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/FileActionOptionPane/buttons/downloadDocument\")%>");
		downloadButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/down/48\")%>");
		downloadButton.registerKeyboardAction(getDownloadAction(), KeyStroke.getKeyStroke(KeyEvent.VK_D, KeyEvent.CTRL_DOWN_MASK), WHEN_IN_FOCUSED_WINDOW);
	}
	return downloadButton;
}
/**
 * This method initializes downloadAction	 
 * @return com.ulcjava.base.application.AbstractAction
 */
private AbstractAction getDownloadAction(){
	if(downloadAction==null){
		downloadAction = new AbstractAction(){

			/**
			 * 
			 */
			private static final long serialVersionUID = 1L;

			public void actionPerformed(ActionEvent arg0) {
				doDownloadAction();
			}
			
		};
	}
	return downloadAction;
}
/**
 * used by the downloadButton CTRL+ ... key Event to print
 *
 */
private void doDownloadAction(){
	try {
		this.getPanelAPI().callMethod("_download", new Object[0]);
	} catch (Exception ex) {
		Ivy.log().error(ex.getMessage(),ex);
	} 
}

/**
 * This method initializes fileManagementButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getFileManagementButton() {
	if (fileManagementButton == null) {
		fileManagementButton = new RButton();
		fileManagementButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/folder/48\")%>");
		fileManagementButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/FileActionOptionPane/tooltips/openFileManagement\")%>");
		fileManagementButton.setStyle("bigButton");
		fileManagementButton.setStyleProperties("{/horizontalAlignment \"LEFT\"/font {/name \"Dialog\"/size \"11\"/style \"PLAIN\"}/anchor \"NORTHWEST\"/insetsTop \"10\"/insetsRight \"30\"/fill \"HORIZONTAL\"/insetsLeft \"30\"/weightX \"1\"}");
		fileManagementButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/FileActionOptionPane/buttons/folderManagement\")%>");
		fileManagementButton.setName("fileManagementButton");
		fileManagementButton.registerKeyboardAction(getOpenFileManagerAction(), KeyStroke.getKeyStroke(KeyEvent.VK_O, KeyEvent.CTRL_DOWN_MASK), WHEN_IN_FOCUSED_WINDOW);
	}
	return fileManagementButton;
}
/**
 * This method initializes openFileManagerAction	 
 * @return com.ulcjava.base.application.AbstractAction
 */
private AbstractAction getOpenFileManagerAction(){
	if(openFileManagerAction==null){
		openFileManagerAction = new AbstractAction(){

			/**
			 * 
			 */
			private static final long serialVersionUID = 1L;

			public void actionPerformed(ActionEvent arg0) {
				doOpenFileManagerAction();
			}
			
		};
	}
	return editAction;
}
/**
 * used by the fileManagementButton CTRL+ ... key Event to openFileManager
 *
 */
private void doOpenFileManagerAction(){
	try {
		this.getPanelAPI().callMethod("_openFileManager", new Object[0]);
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
		closeButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/FileActionOptionPane/tooltips/close\")%>");
		closeButton.setStyle("bigButton");
		closeButton.setStyleProperties("{/horizontalAlignment \"LEFT\"/font {/name \"Dialog\"/size \"11\"/style \"PLAIN\"}/anchor \"NORTHWEST\"/insetsTop \"10\"/fill \"HORIZONTAL\"/insetsRight \"30\"/insetsLeft \"30\"/weightX \"1\"}");
		closeButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/FileActionOptionPane/buttons/cancelAction\")%>");
		closeButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/close/48\")%>");
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
		this.getPanelAPI().callMethod("_cancel", new Object[0]);
	} catch (Exception ex) {
		Ivy.log().error(ex.getMessage(),ex);
	} 
}

/**
 * This method initializes footerLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getFooterLabel() {
	if (footerLabel == null) {
		footerLabel = new RLabel();
		footerLabel.setName("footerLabel");
	}
	return footerLabel;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"