package ch.ivyteam.ivy.addons.filemanager.SimpleFileChooserDialog;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.addons.filemanager.FileListChooser.FileListChooserPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;

import com.ulcjava.base.application.AbstractAction;
import com.ulcjava.base.application.ULCContainer;
import com.ulcjava.base.application.event.ActionEvent;
import com.ulcjava.base.application.event.KeyEvent;
import com.ulcjava.base.application.util.KeyStroke;

import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;
import ch.ivyteam.ivy.addons.filemanager.DesktopHandler.DesktopHandlerPanel;
import ch.ivyteam.ivy.environment.Ivy;

/**
 * RichDialog panel implementation for FileChooserDialogPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class SimpleFileChooserDialogPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RLabel headLabel = null;
private RLabel pathLabel = null;
@EmbeddedRichDialog(FileListChooserPanel.class) private ULCContainer fileListChooserPanel = null;
private RButton chooseButton = null;
private RButton cancelButton = null;
private RLabel customLabel = null;
private RLabel pathLabelLabel = null;
private RLabel fileLabel = null;
private RButton uploadButton = null;
private RButton previewButton = null;
private AbstractAction cancelAction=null; 
private @EmbeddedRichDialog(DesktopHandlerPanel.class) ULCContainer desktopHandlerPanel = null;
/**
   * Create a new instance of FileChooserDialogPanel
   */
  public SimpleFileChooserDialogPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes FileChooserDialogPanel
   * @return void
   */
  private void initialize()
  {
        RFiller Filler2 = new RFiller();
        Filler2.setStyle("verticalGlue");
        Filler2.setStyleProperties("{/fill \"VERTICAL\"/weightY \"1\"}");
        RFiller Filler1 = new RFiller();
        Filler1.setStyle("verticalGlue");
        Filler1.setStyleProperties("{/fill \"VERTICAL\"/weightY \"1\"}");
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(505,413));
        this.add(getHeadLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getPathLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 5, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getFileListChooserPanel(), new com.ulcjava.base.application.GridBagConstraints(1, 4, 6, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getCustomLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getPathLabelLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getFileLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getChooseButton(), new com.ulcjava.base.application.GridBagConstraints(2, 7, 4, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getCancelButton(), new com.ulcjava.base.application.GridBagConstraints(2, 10, 5, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(Filler1, new com.ulcjava.base.application.GridBagConstraints(0, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(Filler2, new com.ulcjava.base.application.GridBagConstraints(0, 11, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getUploadButton(), new com.ulcjava.base.application.GridBagConstraints(2, 9, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getPreviewButton(), new com.ulcjava.base.application.GridBagConstraints(2, 8, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getDesktopHandlerPanel(), new com.ulcjava.base.application.GridBagConstraints(0, 7, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes headLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getHeadLabel() {
	if (headLabel == null) {
		headLabel = new RLabel();
		headLabel.setName("headLabel");
		headLabel.setStyle("headGrey");
		headLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/files/48\")%>");
		headLabel.setStyleProperties("{/foregroundColor {/b \"102\"/r \"102\"/g \"102\"}/font {/name \"Tahoma\"/size \"16\"/style \"BOLD\"}/anchor \"NORTHWEST\"/insetsTop \"3\"/fill \"HORIZONTAL\"/insetsLeft \"3\"/weightX \"1\"}");
		headLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/plainStrings/fileChooser\")%>");
	}
	return headLabel;
}

/**
 * This method initializes pathLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getPathLabel() {
	if (pathLabel == null) {
		pathLabel = new RLabel();
		pathLabel.setText("pathLabel"); //cmsObjectCreator~noI18n @ Wed Jul 08 08:11:18 CEST 2009
		pathLabel.setStyle("Tahoma_12_grey");
		pathLabel.setStyleProperties("{/insetsLeft \"10\"/insetsRight \"10\"/font {/name \"Tahoma\"/size \"12\"/style \"PLAIN\"}/anchor \"NORTHWEST\"/verticalAlignment \"CENTER\"/foregroundColor {/b \"102\"/r \"102\"/g \"102\"}/insetsTop \"3\"/verticalTextPosition \"CENTER\"/horizontalTextPosition \"LEFT\"/insetsBottom \"10\"/horizontalAlignment \"LEFT\"/fill \"BOTH\"}");
		pathLabel.setName("pathLabel");
	}
	return pathLabel;
}

/**
 * This method initializes fileListChooserPanel	
 * 	
 * @return ch.xpertline.common.ria.component.FileListChooser.FileListChooserPanel	
 */
private ULCContainer getFileListChooserPanel()  {
	if (fileListChooserPanel == null) {
		fileListChooserPanel = RichDialogPanelFactory.create(FileListChooserPanel.class);
		fileListChooserPanel.setName("fileListChooserPanel");
		fileListChooserPanel.setStyleProperties("{/insetsTop \"3\"/fill \"BOTH\"/insetsRight \"10\"/insetsLeft \"10\"/weightY \"0\"/weightX \"0\"}");
	}
	return fileListChooserPanel;
}

/**
 * This method initializes chooseButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getChooseButton() {
	if (chooseButton == null) {
		chooseButton = new RButton();
		chooseButton.setName("chooseButton");
		chooseButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/SimpleFileChooser/buttonLabel/selectButton\")%>");
		chooseButton.setStyleProperties("{/horizontalAlignment \"LEFT\"/font {/name \"Dialog\"/size \"11\"/style \"PLAIN\"}/anchor \"WEST\"/insetsTop \"10\"/insetsRight \"10\"/fill \"HORIZONTAL\"/insetsLeft \"10\"/weightX \"1\"}");
		chooseButton.setStyle("bigButton");
		chooseButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/ok/48\")%>");
	}
	return chooseButton;
}

/**
 * This method initializes cancelButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getCancelButton() {
	if (cancelButton == null) {
		cancelButton = new RButton();
		cancelButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/close/48\")%>");
		cancelButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/FileActionOptionPane/buttons/cancelAction\")%>");
		cancelButton.setStyle("bigButton");
		cancelButton.setStyleProperties("{/insetsLeft \"10\"/insetsRight \"10\"/font {/name \"Dialog\"/size \"11\"/style \"PLAIN\"}/anchor \"WEST\"/insetsTop \"10\"/insetsBottom \"20\"/horizontalAlignment \"LEFT\"/weightX \"1\"/fill \"HORIZONTAL\"}");
		cancelButton.setName("cancelButton");
		cancelButton.registerKeyboardAction(getCancelAction(), KeyStroke.getKeyStroke(KeyEvent.VK_W, KeyEvent.CTRL_DOWN_MASK), WHEN_IN_FOCUSED_WINDOW);
		cancelButton.registerKeyboardAction(getCancelAction(), KeyStroke.getKeyStroke(KeyEvent.VK_ESCAPE, 0), WHEN_IN_FOCUSED_WINDOW);
	}
	return cancelButton;
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

/**
 * This method initializes customLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCustomLabel() {
	if (customLabel == null) {
		customLabel = new RLabel();
		customLabel.setName("customLabel");
		customLabel.setStyleProperties("{/font {/name \"Tahoma\"/size \"14\"/style \"PLAIN\"}/anchor \"WEST\"/insetsBottom \"10\"/insetsTop \"3\"/insetsRight \"5\"/fill \"BOTH\"/insetsLeft \"3\"}");
	}
	return customLabel;
}

/**
 * This method initializes pathLabelLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getPathLabelLabel() {
	if (pathLabelLabel == null) {
		pathLabelLabel = new RLabel();
		pathLabelLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/SimpleFileChooser/labels/path\")%>");
		pathLabelLabel.setStyleProperties("{/font {/name \"Tahoma\"/size \"12\"/style \"PLAIN\"}/anchor \"WEST\"/insetsBottom \"10\"/insetsTop \"3\"/fill \"BOTH\"/insetsLeft \"3\"}");
		pathLabelLabel.setStyle("Tahoma_12_grey");
		pathLabelLabel.setName("pathLabelLabel");
	}
	return pathLabelLabel;
}

/**
 * This method initializes fileLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getFileLabel() {
	if (fileLabel == null) {
		fileLabel = new RLabel();
		fileLabel.setStyleProperties("{/font {/name \"Tahoma\"/size \"12\"/style \"PLAIN\"}/anchor \"WEST\"/insetsTop \"3\"/fill \"BOTH\"/insetsLeft \"3\"}");
		fileLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/SimpleFileChooser/labels/file\")%>");
		fileLabel.setStyle("Tahoma_12_grey");
		fileLabel.setName("fileLabel");
	}
	return fileLabel;
}

/**
 * This method initializes uploadButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getUploadButton() {
	if (uploadButton == null) {
		uploadButton = new RButton();
		uploadButton.setName("uploadButton");
		uploadButton.setStyleProperties("{/horizontalAlignment \"LEFT\"/font {/name \"Dialog\"/size \"11\"/style \"PLAIN\"}/anchor \"WEST\"/insetsTop \"10\"/insetsRight \"10\"/fill \"HORIZONTAL\"/insetsLeft \"10\"/weightX \"1\"}");
		uploadButton.setStyle("bigButton");
		uploadButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/up/48\")%>");
		uploadButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/SimpleFileChooser/buttonLabel/uploadDocument\")%>");
	}
	return uploadButton;
}

/**
 * This method initializes previewButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getPreviewButton() {
	if (previewButton == null) {
		previewButton = new RButton();
		previewButton.setName("previewButton");
		previewButton.setStyleProperties("{/horizontalAlignment \"LEFT\"/font {/name \"Dialog\"/size \"11\"/style \"PLAIN\"}/anchor \"WEST\"/insetsTop \"10\"/insetsRight \"10\"/fill \"HORIZONTAL\"/insetsLeft \"10\"/weightX \"1\"}");
		previewButton.setStyle("bigButton");
		previewButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/preview/48\")%>");
		previewButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/SimpleFileChooser/buttonLabel/previewButton\")%>");
	}
	return previewButton;
}

/**
 * This method initializes desktopHandlerPanel, an embedded RichDialog.
 * The created object might have a different type than the declared
 * class due to overriding.
 * @returns com.ulcjava.base.application.ULCContainer 
 */
private ULCContainer getDesktopHandlerPanel() {
	if (desktopHandlerPanel == null) {
		desktopHandlerPanel = RichDialogPanelFactory
				.create(DesktopHandlerPanel.class);
		desktopHandlerPanel.setName("desktopHandlerPanel");
	}
	return desktopHandlerPanel;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"