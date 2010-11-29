package ch.ivyteam.ivy.addons.filemanager.FileNameDialog;

import com.ulcjava.base.shared.UlcEventCategories;
import com.ulcjava.base.shared.UlcEventConstants;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RComboBox;

import com.ulcjava.base.application.AbstractAction;
import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.event.ActionEvent;
import com.ulcjava.base.application.event.KeyEvent;
import com.ulcjava.base.application.util.Color;
import com.ulcjava.base.application.util.KeyStroke;

import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;


/**
 * RichDialog panel implementation for FileNameDialogPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class FileNameDialogPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RLabel Label = null;
private RTextField fileNameTextField = null;
private RLabel pathLabel = null;
private RFlowLayoutPane FlowLayoutPane = null;
private RButton Button = null;
private RButton okButton = null;
private RButton cancelButton = null;
private RLabel warnLabel = null;
private RComboBox fileTypesComboBox = null;
private RLabel destinationFolderLabel = null;
private RLabel actionLabel1 = null;
private RLabel oneLabel = null;
private RLabel twoLabel = null;
private RLabel threeLabel = null;
private AbstractAction closeAction=null;  //  @jve:decl-index=0:
/**
   * Create a new instance of FileNameDialogPanel
   */
  public FileNameDialogPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes FileNameDialogPanel
   * @return void
   */
  private void initialize()
  {
        RFiller Filler11 = new RFiller();
        Filler11.setStyleProperties("{/fill \"VERTICAL\"/weightY \"1\"}");
        RFiller Filler1 = new RFiller();
        Filler1.setStyle("verticalGlue");
        Filler1.setStyleProperties("{/fill \"VERTICAL\"/weightY \"1\"}");
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(516,479));
        this.setBorder(BorderFactory.createEmptyBorder(5, 5, 5, 5));
        this.add(getLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getFileNameTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getPathLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getFlowLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(3, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getWarnLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getFileTypesComboBox(), new com.ulcjava.base.application.GridBagConstraints(3, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getDestinationFolderLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 4, 5, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getActionLabel1(), new com.ulcjava.base.application.GridBagConstraints(1, 6, 6, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getOkButton(), new com.ulcjava.base.application.GridBagConstraints(1, 9, 7, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getCancelButton(), new com.ulcjava.base.application.GridBagConstraints(1, 10, 8, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getOneLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getTwoLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getThreeLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 6, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(Filler1, new com.ulcjava.base.application.GridBagConstraints(1, 7, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(Filler11, new com.ulcjava.base.application.GridBagConstraints(1, 11, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
		Label.setStyleProperties("{/font {/name \"Tahoma\"/size \"10\"/style \"BOLD\"}/anchor \"WEST\"/insetsBottom \"10\"/insetsTop \"20\"/fill \"HORIZONTAL\"/insetsLeft \"3\"/weightX \"1\"}");
		Label.setBorder(BorderFactory.createMatteBorder(0, 0, 1, 0, Color.lightGray));
		Label.setStyle("smallTitle");
		Label.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/plainStrings/enterFileName\")%>");
	}
	return Label;
}

/**
 * This method initializes fileNameTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getFileNameTextField() {
	if (fileNameTextField == null) {
		fileNameTextField = new RTextField();
		fileNameTextField.setText("");
		fileNameTextField.setEventDeliveryMode(UlcEventCategories.VALUE_CHANGED_EVENT_CATEGORY, UlcEventConstants.ASYNCHRONOUS_MODE);
		fileNameTextField.setEventDeliveryMode(UlcEventCategories.KEY_EVENT_CATEGORY, UlcEventConstants.ASYNCHRONOUS_MODE);
		fileNameTextField.setStyleProperties("{/font {/name \"Dialog\"/size \"12\"/style \"PLAIN\"}/insetsBottom \"5\"/insetsTop \"5\"/fill \"HORIZONTAL\"/insetsRight \"5\"/insetsLeft \"5\"/weightX \"1\"}");
		fileNameTextField.setMandatory(true);
		fileNameTextField.setValidation("StringWordsSpaceSeparated");
		fileNameTextField.setName("fileNameTextField");
	}
	return fileNameTextField;
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
		pathLabel.setStyleProperties("{/foregroundColor {/b \"102\"/r \"102\"/g \"102\"}/font {/name \"Dialog\"/size \"12\"/style \"ITALIC\"}/anchor \"CENTER\"/fill \"HORIZONTAL\"/insetsLeft \"3\"/weightX \"1\"}");
		pathLabel.setStyle("headGrey");
		pathLabel.setName("pathLabel");
	}
	return pathLabel;
}

/**
 * This method initializes FlowLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane	
 */
private RFlowLayoutPane getFlowLayoutPane() {
	if (FlowLayoutPane == null) {
		FlowLayoutPane = new RFlowLayoutPane();
		FlowLayoutPane.setName("FlowLayoutPane");
		FlowLayoutPane.setStyleProperties("{/weightX \"0\"/alignment \"RIGHT\"}");
		FlowLayoutPane.add(getButton());
	}
	return FlowLayoutPane;
}

/**
 * This method initializes Button	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getButton() {
	if (Button == null) {
		Button = new RButton();
		Button.setName("Button");
		Button.setToolTipText("<%=ivy.cms.co(\"/ch/xpertline/common/ria/component/fileManagement/tooltips/openPathChooser\")%>");
		Button.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/folder/16\")%>");
	}
	return Button;
}

/**
 * This method initializes okButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getOkButton() {
	if (okButton == null) {
		okButton = new RButton();
		okButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/ok/32\")%>");
		okButton.setStyleProperties("{/horizontalAlignment \"LEFT\"/font {/name \"Tahoma\"/size \"11\"/style \"PLAIN\"}/anchor \"CENTER\"/insetsTop \"10\"/fill \"HORIZONTAL\"/insetsRight \"30\"/insetsLeft \"30\"/weightX \"1\"}");
		okButton.setStyle("bigButton");
		okButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/FileActionOptionPane/buttons/createFile\")%>");
		okButton.setEnabler(getFileNameTextField());
		okButton.setName("okButton");
	}
	return okButton;
}

/**
 * This method initializes cancelButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getCancelButton() {
	if (cancelButton == null) {
		cancelButton = new RButton();
		cancelButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/cancel/32\")%>");
		cancelButton.setStyle("bigButton");
		cancelButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/FileActionOptionPane/buttons/cancelAction\")%>");
		cancelButton.setStyleProperties("{/horizontalAlignment \"LEFT\"/font {/name \"Tahoma\"/size \"11\"/style \"PLAIN\"}/insetsTop \"10\"/fill \"HORIZONTAL\"/insetsRight \"30\"/insetsLeft \"30\"/weightX \"1\"}");
		cancelButton.setName("cancelButton");
		cancelButton.registerKeyboardAction(getCloseAction(), KeyStroke.getKeyStroke(KeyEvent.VK_W, KeyEvent.CTRL_DOWN_MASK), WHEN_IN_FOCUSED_WINDOW);
		cancelButton.registerKeyboardAction(getCloseAction(), KeyStroke.getKeyStroke(KeyEvent.VK_ESCAPE, 0), WHEN_IN_FOCUSED_WINDOW);
	}
	return cancelButton;
}
/**
 * This method initializes closeAction	 
 * @return com.ulcjava.base.application.AbstractAction
 */
private AbstractAction getCloseAction(){
	if(closeAction==null){
		closeAction = new AbstractAction(){

			/**
			 * 
			 */
			private static final long serialVersionUID = 1L;

			public void actionPerformed(ActionEvent arg0) {
				doCloseAction();
			}
			
		};
	}
	return closeAction;
}
/**
 * used by the closeButton CTRL+ ... key Event to close the panel
 *
 */
private void doCloseAction(){
	try {
		this.getPanelAPI().callMethod("_close", new Object[0]);
	} catch (Exception ex) {
		Ivy.log().error(ex.getMessage(),ex);
	} 
}
/**
 * This method initializes warnLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getWarnLabel() {
	if (warnLabel == null) {
		warnLabel = new RLabel();
		warnLabel.setName("warnLabel");
		warnLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/messages/information/fileAlreadyExists\")%>");
		warnLabel.setStyleProperties("{/font {/name \"Tahoma\"/size \"12\"/style \"PLAIN\"}/anchor \"WEST\"/insetsTop \"3\"/fill \"HORIZONTAL\"/insetsLeft \"3\"/weightX \"1\"}");
		warnLabel.setStyle("Tahoma_12_grey");
		warnLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/warning/16\")%>");
	}
	return warnLabel;
}

/**
 * This method initializes fileTypesComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getFileTypesComboBox() {
	if (fileTypesComboBox == null) {
		fileTypesComboBox = new RComboBox();
		fileTypesComboBox.setName("fileTypesComboBox");
		fileTypesComboBox.setEventDeliveryMode(UlcEventCategories.SELECTION_CHANGED_EVENT_CATEGORY, UlcEventConstants.ASYNCHRONOUS_MODE);
		fileTypesComboBox.setEventDeliveryMode(UlcEventCategories.ACTION_EVENT_CATEGORY, UlcEventConstants.ASYNCHRONOUS_MODE);
		fileTypesComboBox.setModelConfiguration("{/result \"result=entry\"/version \"3.0\"/icon \"\"/tooltip \"\"/emptyTableText \"\"}");
	}
	return fileTypesComboBox;
}


/**
 * This method initializes destinationFolderLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getDestinationFolderLabel() {
	if (destinationFolderLabel == null) {
		destinationFolderLabel = new RLabel();
		destinationFolderLabel.setName("destinationFolderLabel");
		destinationFolderLabel.setStyle("smallTitle");
		destinationFolderLabel.setBorder(BorderFactory.createMatteBorder(0, 0, 1, 0, Color.lightGray));
		destinationFolderLabel.setStyleProperties("{/font {/name \"Tahoma\"/size \"10\"/style \"BOLD\"}/anchor \"WEST\"/insetsBottom \"10\"/insetsTop \"20\"/fill \"HORIZONTAL\"/insetsLeft \"3\"}");
		destinationFolderLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/plainStrings/selectFolder\")%>");
	}
	return destinationFolderLabel;
}

/**
 * This method initializes actionLabel1	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getActionLabel1() {
	if (actionLabel1 == null) {
		actionLabel1 = new RLabel();
		actionLabel1.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/plainStrings/Action\")%>");
		actionLabel1.setStyle("smallTitle");
		actionLabel1.setBorder(BorderFactory.createMatteBorder(0, 0, 1, 0, Color.lightGray));
		actionLabel1.setStyleProperties("{/font {/name \"Tahoma\"/size \"10\"/style \"BOLD\"}/anchor \"WEST\"/insetsBottom \"10\"/insetsTop \"20\"/fill \"HORIZONTAL\"/insetsLeft \"3\"/weightY \"1\"}");
		actionLabel1.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/plainStrings/Action\")%>");
		actionLabel1.setName("actionLabel1");
	}
	return actionLabel1;
}

/**
 * This method initializes oneLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getOneLabel() {
	if (oneLabel == null) {
		oneLabel = new RLabel();
		oneLabel.setText("1.");
		oneLabel.setStyle("mainCaption");
		oneLabel.setStyleProperties("{/foregroundColor {/b \"153\"/r \"0\"/g \"102\"}/font {/name \"Dialog\"/size \"22\"/style \"BOLD\"}/anchor \"CENTER\"/insetsTop \"3\"/fill \"HORIZONTAL\"/insetsLeft \"3\"}");
		oneLabel.setName("oneLabel");
	}
	return oneLabel;
}

/**
 * This method initializes twoLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getTwoLabel() {
	if (twoLabel == null) {
		twoLabel = new RLabel();
		twoLabel.setText("2.");
		twoLabel.setStyle("mainCaption");
		twoLabel.setStyleProperties("{/foregroundColor {/b \"153\"/r \"0\"/g \"102\"}/font {/name \"Dialog\"/size \"22\"/style \"BOLD\"}/anchor \"CENTER\"/insetsTop \"3\"/fill \"HORIZONTAL\"/insetsLeft \"3\"}");
		twoLabel.setName("twoLabel");
	}
	return twoLabel;
}

/**
 * This method initializes threeLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getThreeLabel() {
	if (threeLabel == null) {
		threeLabel = new RLabel();
		threeLabel.setText("3.");
		threeLabel.setStyle("mainCaption");
		threeLabel.setStyleProperties("{/foregroundColor {/b \"153\"/r \"0\"/g \"102\"}/font {/name \"Dialog\"/size \"22\"/style \"BOLD\"}/anchor \"CENTER\"/insetsTop \"3\"/fill \"HORIZONTAL\"/insetsLeft \"3\"}");
		threeLabel.setName("threeLabel");
	}
	return threeLabel;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"
