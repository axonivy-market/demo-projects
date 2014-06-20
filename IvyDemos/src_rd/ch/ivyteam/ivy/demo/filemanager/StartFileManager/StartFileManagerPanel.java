package ch.ivyteam.ivy.demo.filemanager.StartFileManager;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.border.ULCTitledBorder;
import com.ulcjava.base.application.util.Font;
import com.ulcjava.base.application.util.Color;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay;
import ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox;
import ch.ivyteam.ivy.richdialog.widgets.components.RComboBox;
import ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane;
import ch.ivyteam.ivy.addons.filemanager.DesktopHandler.DesktopHandlerPanel;
import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;
import com.ulcjava.base.application.ULCContainer;

/**
 * <p>StartFileManagerPanel is a rich dialog panel implementation.
 *
 * <p>Please note that a rich dialog panel is not an instance of a Swing 
 * container, but of an ULCContainer. As such it can not be run 
 * or instantiated outside the ULC framework.
 */
@SuppressWarnings("all")
public class StartFileManagerPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RGridBagLayoutPane GridBagLayoutPane1 = null;
private RButton startButton1 = null;
private RLabel rootDirectoryPathLabel = null;
private RTextField serverpathTextField = null;
private RCheckBox activateIvySystemDBCheckBox = null;
private RCheckBox filesInFileSetCheckBox = null;
private RCheckBox activateFilesAsBlobCheckBox = null;
private RCheckBox activateFileVersioningCheckBox = null;
private RCheckBox activateSecurityCheckBox = null;
private RLabel Label = null;
private RCheckBox activateTypeCheckBox = null;
private RCheckBox activateTagsCheckBox = null;
private RGridBagLayoutPane storeOnFileSetGridBagLayoutPane = null;
private RGridBagLayoutPane storeInDBGridBagLayoutPane = null;
private RLabel maxFileSizeLabel = null;
private RTextField maxFileSizeTextField = null;
private RCheckBox activateHistoryCheckBox = null;
private RLabel languageLabel = null;
private RComboBox langComboBox = null;
private RComboBox dbComboBox = null;
private RLabel dbLabel = null;
private RCheckBox activateExtendedFVCheckBox = null;
private RCheckBox activateDirTranslationCheckBox = null;
private RCheckBox activatefileTypesTranslationCheckBox = null;
private RGridBagLayoutPane globalVariableConfigGridBagLayoutPane = null;
private RCheckBox globalVariablesCheckBox = null;
private RFlowLayoutPane FlowLayoutPane = null;
private RButton displayButton = null;
private RGridBagLayoutPane sizeGridBagLayoutPane = null;
private @EmbeddedRichDialog(DesktopHandlerPanel.class) ULCContainer desktopHandlerPanel = null;
/**
   * Create a new instance of StartFileManagerPanel
   */
  public StartFileManagerPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes StartFileManagerPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(855,600));
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(775,462));
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(916,491));
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(853,527));
        this.add(getGridBagLayoutPane1(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes GridBagLayoutPane1	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getGridBagLayoutPane1() {
	if (GridBagLayoutPane1 == null) {
		RFiller Filler1 = new RFiller();
		Filler1.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		GridBagLayoutPane1 = new RGridBagLayoutPane();
		GridBagLayoutPane1.setName("GridBagLayoutPane1");
		GridBagLayoutPane1.setStyleProperties("{/fill \"BOTH\"/insetsLeft \"5\"/weightY \"1\"/weightX \"1\"}");
		GridBagLayoutPane1.add(getRootDirectoryPathLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane1.add(getServerpathTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane1.add(Filler1, new com.ulcjava.base.application.GridBagConstraints(0, 18, 4, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane1.add(getLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 4, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane1.add(getStoreOnFileSetGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 6, 4, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane1.add(getStoreInDBGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 7, 5, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane1.add(getLanguageLabel(), new com.ulcjava.base.application.GridBagConstraints(2, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane1.add(getLangComboBox(), new com.ulcjava.base.application.GridBagConstraints(3, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane1.add(getDbComboBox(), new com.ulcjava.base.application.GridBagConstraints(3, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane1.add(getDbLabel(), new com.ulcjava.base.application.GridBagConstraints(2, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane1.add(getGlobalVariableConfigGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 5, 4, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane1.add(getFlowLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 8, 4, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane1.add(getSizeGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane1.add(getDesktopHandlerPanel(), new com.ulcjava.base.application.GridBagConstraints(0, 9, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return GridBagLayoutPane1;
}

/**
 * This method initializes startButton1	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getStartButton1() {
	if (startButton1 == null) {
		startButton1 = new RButton();
		startButton1.setText("Start FileManager");
		startButton1.setStyleProperties("{/anchor \"NORTHWEST\"/insetsBottom \"10\"/insetsTop \"10\"}");
		startButton1.setName("startButton1");
	}
	return startButton1;
}

/**
 * This method initializes rootDirectoryPathLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getRootDirectoryPathLabel() {
	if (rootDirectoryPathLabel == null) {
		rootDirectoryPathLabel = new RLabel();
		rootDirectoryPathLabel.setText("Server root directory :");
		rootDirectoryPathLabel.setStyleProperties("{/font {/name \"Dialog\"/size \"14\"/style \"PLAIN\"}/insetsBottom \"5\"/fill \"HORIZONTAL\"}");
		rootDirectoryPathLabel.setName("rootDirectoryPathLabel");
	}
	return rootDirectoryPathLabel;
}

/**
 * This method initializes serverpathTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getServerpathTextField() {
	if (serverpathTextField == null) {
		serverpathTextField = new RTextField();
		serverpathTextField.setText("");
		serverpathTextField.setStyleProperties("{/insetsBottom \"5\"/fill \"BOTH\"/insetsRight \"10\"/insetsLeft \"10\"/weightX \"1\"}");
		serverpathTextField.setName("serverpathTextField");
	}
	return serverpathTextField;
}

/**
 * This method initializes activateIvySystemDBCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getActivateIvySystemDBCheckBox() {
	if (activateIvySystemDBCheckBox == null) {
		activateIvySystemDBCheckBox = new RCheckBox();
		activateIvySystemDBCheckBox.setText("Use the Ivy system database");
		activateIvySystemDBCheckBox.setStyleProperties("{/font {/name \"Dialog\"/size \"14\"/style \"PLAIN\"}/fill \"HORIZONTAL\"/weightX \"1\"}");
		activateIvySystemDBCheckBox.setName("activateIvySystemDBCheckBox");
	}
	return activateIvySystemDBCheckBox;
}

/**
 * This method initializes filesInFileSetCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getFilesInFileSetCheckBox() {
	if (filesInFileSetCheckBox == null) {
		filesInFileSetCheckBox = new RCheckBox();
		filesInFileSetCheckBox.setText("Use external ivy database connection");
		filesInFileSetCheckBox.setStyleProperties("{/font {/name \"Dialog\"/size \"14\"/style \"PLAIN\"}/fill \"HORIZONTAL\"/weightX \"1\"}");
		filesInFileSetCheckBox.setSelected(true);
		filesInFileSetCheckBox.setName("filesInFileSetCheckBox");
	}
	return filesInFileSetCheckBox;
}

/**
 * This method initializes activateFilesAsBlobCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getActivateFilesAsBlobCheckBox() {
	if (activateFilesAsBlobCheckBox == null) {
		activateFilesAsBlobCheckBox = new RCheckBox();
		activateFilesAsBlobCheckBox.setText("Activates content in the database, and allows using other options");
		activateFilesAsBlobCheckBox.setStyleProperties("{/font {/name \"Dialog\"/size \"14\"/style \"PLAIN\"}/fill \"HORIZONTAL\"/weightX \"1\"}");
		activateFilesAsBlobCheckBox.setName("activateFilesAsBlobCheckBox");
	}
	return activateFilesAsBlobCheckBox;
}

/**
 * This method initializes activateFileVersioningCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getActivateFileVersioningCheckBox() {
	if (activateFileVersioningCheckBox == null) {
		activateFileVersioningCheckBox = new RCheckBox();
		activateFileVersioningCheckBox.setText("Activate the file versioning feature");
		activateFileVersioningCheckBox.setStyleProperties("{/font {/name \"Dialog\"/size \"14\"/style \"PLAIN\"}/fill \"HORIZONTAL\"/insetsLeft \"20\"/weightX \"1\"}");
		activateFileVersioningCheckBox.setName("activateFileVersioningCheckBox");
	}
	return activateFileVersioningCheckBox;
}

/**
 * This method initializes activateSecurityCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getActivateSecurityCheckBox() {
	if (activateSecurityCheckBox == null) {
		activateSecurityCheckBox = new RCheckBox();
		activateSecurityCheckBox.setText("Activate the security");
		activateSecurityCheckBox.setStyleProperties("{/font {/name \"Dialog\"/size \"14\"/style \"PLAIN\"}/fill \"HORIZONTAL\"/insetsLeft \"20\"/weightX \"1\"}");
		activateSecurityCheckBox.setName("activateSecurityCheckBox");
	}
	return activateSecurityCheckBox;
}

/**
 * This method initializes Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getLabel() {
	if (Label == null) {
		Label = new RLabel();
		Label.setStyleProperties("{/font {/name \"Tahoma\"/size \"14\"/style \"PLAIN\"}/insetsBottom \"10\"/fill \"HORIZONTAL\"/weightX \"1\"}");
		Label.setText("<html><%=ivy.cms.co(\"/ch/ivyteam/ivy/demo/filemanager/labels/info\")%>");
		Label.setName("Label");
	}
	return Label;
}

/**
 * This method initializes activateTypeCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getActivateTypeCheckBox() {
	if (activateTypeCheckBox == null) {
		activateTypeCheckBox = new RCheckBox();
		activateTypeCheckBox.setText("Activate the file type feature");
		activateTypeCheckBox.setStyleProperties("{/font {/name \"Dialog\"/size \"14\"/style \"PLAIN\"}/fill \"HORIZONTAL\"/weightX \"1\"}");
		activateTypeCheckBox.setName("activateTypeCheckBox");
	}
	return activateTypeCheckBox;
}

/**
 * This method initializes activateTagsCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getActivateTagsCheckBox() {
	if (activateTagsCheckBox == null) {
		activateTagsCheckBox = new RCheckBox();
		activateTagsCheckBox.setName("activateTagsCheckBox");
		activateTagsCheckBox.setStyleProperties("{/font {/name \"Dialog\"/size \"14\"/style \"PLAIN\"}/fill \"HORIZONTAL\"}");
		activateTagsCheckBox.setText("Activate the tags feature");
	}
	return activateTagsCheckBox;
}

/**
 * This method initializes storeOnFileSetGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getStoreOnFileSetGridBagLayoutPane() {
	if (storeOnFileSetGridBagLayoutPane == null) {
		storeOnFileSetGridBagLayoutPane = new RGridBagLayoutPane();
		storeOnFileSetGridBagLayoutPane.setName("storeOnFileSetGridBagLayoutPane");
		storeOnFileSetGridBagLayoutPane.setStyleProperties("{/insetsTop \"10\"/fill \"HORIZONTAL\"/weightX \"1\"}");
		storeOnFileSetGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(BorderFactory.createLineBorder(Color.gray, 1), "Files stored on the File system", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Dialog", Font.BOLD, 12), new Color(51, 51, 51)));
		storeOnFileSetGridBagLayoutPane.add(getFilesInFileSetCheckBox(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		storeOnFileSetGridBagLayoutPane.add(getActivateIvySystemDBCheckBox(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return storeOnFileSetGridBagLayoutPane;
}

/**
 * This method initializes storeInDBGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getStoreInDBGridBagLayoutPane() {
	if (storeInDBGridBagLayoutPane == null) {
		storeInDBGridBagLayoutPane = new RGridBagLayoutPane();
		storeInDBGridBagLayoutPane.setName("storeInDBGridBagLayoutPane");
		storeInDBGridBagLayoutPane.setStyleProperties("{/insetsTop \"10\"/fill \"HORIZONTAL\"/weightX \"1\"}");
		storeInDBGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(BorderFactory.createLineBorder(Color.gray, 1), "Files stored in a database as BLOB", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Dialog", Font.BOLD, 12), new Color(51, 51, 51)));
		storeInDBGridBagLayoutPane.add(getActivateFilesAsBlobCheckBox(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		storeInDBGridBagLayoutPane.add(getActivateFileVersioningCheckBox(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		storeInDBGridBagLayoutPane.add(getActivateSecurityCheckBox(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		storeInDBGridBagLayoutPane.add(getActivateTypeCheckBox(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		storeInDBGridBagLayoutPane.add(getActivateTagsCheckBox(), new com.ulcjava.base.application.GridBagConstraints(1, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		storeInDBGridBagLayoutPane.add(getActivateHistoryCheckBox(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		storeInDBGridBagLayoutPane.add(getActivateExtendedFVCheckBox(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		storeInDBGridBagLayoutPane.add(getActivateDirTranslationCheckBox(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		storeInDBGridBagLayoutPane.add(getActivatefileTypesTranslationCheckBox(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return storeInDBGridBagLayoutPane;
}

/**
 * This method initializes maxFileSizeLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getMaxFileSizeLabel() {
	if (maxFileSizeLabel == null) {
		maxFileSizeLabel = new RLabel();
		maxFileSizeLabel.setText("Max. File upload size in Kb (0 means unlimited)");
		maxFileSizeLabel.setStyleProperties("{/font \"name=Dialog\\nsize=14\\nstyle=PLAIN\"/insetsBottom \"5\"/fill \"HORIZONTAL\"}");
		maxFileSizeLabel.setName("maxFileSizeLabel");
	}
	return maxFileSizeLabel;
}

/**
 * This method initializes maxFileSizeTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getMaxFileSizeTextField() {
	if (maxFileSizeTextField == null) {
		maxFileSizeTextField = new RTextField();
		maxFileSizeTextField.setText("");
		maxFileSizeTextField.setStyleProperties("{/anchor \"WEST\"/insetsBottom \"5\"/fill \"HORIZONTAL\"/insetsRight \"10\"/insetsLeft \"10\"/weightX \"1\"}");
		maxFileSizeTextField.setName("maxFileSizeTextField");
	}
	return maxFileSizeTextField;
}

/**
 * This method initializes activateHistoryCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getActivateHistoryCheckBox() {
	if (activateHistoryCheckBox == null) {
		activateHistoryCheckBox = new RCheckBox();
		activateHistoryCheckBox.setText("Activate file history");
		activateHistoryCheckBox.setStyleProperties("{/font {/name \"Dialog\"/size \"14\"/style \"PLAIN\"}/fill \"HORIZONTAL\"}");
		activateHistoryCheckBox.setName("activateHistoryCheckBox");
	}
	return activateHistoryCheckBox;
}

/**
 * This method initializes languageLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getLanguageLabel() {
	if (languageLabel == null) {
		languageLabel = new RLabel();
		languageLabel.setText("Choose your language:");
		languageLabel.setStyleProperties("{/font {/name \"Dialog\"/size \"14\"/style \"PLAIN\"}/fill \"HORIZONTAL\"}");
		languageLabel.setName("languageLabel");
	}
	return languageLabel;
}

/**
 * This method initializes langComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getLangComboBox() {
	if (langComboBox == null) {
		langComboBox = new RComboBox();
		langComboBox.setName("langComboBox");
		langComboBox.setStyleProperties("{/anchor \"WEST\"/insetsLeft \"10\"}");
		langComboBox.setName("langComboBox");
		langComboBox.setModelConfiguration("{/result \"\"/version \"3.0\"/icon \"\"/tooltip \"\"}");
	}
	return langComboBox;
}

/**
 * This method initializes dbComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getDbComboBox() {
	if (dbComboBox == null) {
		dbComboBox = new RComboBox();
		dbComboBox.setName("dbComboBox");
		dbComboBox.setModelConfiguration("{/result \"result=entry\"/version \"3.0\"/icon \"\"/tooltip \"\"}");
		dbComboBox.setName("dbComboBox");
		dbComboBox.setStyleProperties("{/anchor \"WEST\"/insetsBottom \"5\"/insetsLeft \"10\"}");
	}
	return dbComboBox;
}

/**
 * This method initializes dbLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getDbLabel() {
	if (dbLabel == null) {
		dbLabel = new RLabel();
		dbLabel.setText("Database connection:");
		dbLabel.setStyleProperties("{/font {/name \"Dialog\"/size \"14\"/style \"PLAIN\"}/insetsBottom \"5\"/fill \"HORIZONTAL\"}");
		dbLabel.setName("dbLabel");
	}
	return dbLabel;
}

/**
 * This method initializes activateExtendedFVCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getActivateExtendedFVCheckBox() {
	if (activateExtendedFVCheckBox == null) {
		activateExtendedFVCheckBox = new RCheckBox();
		activateExtendedFVCheckBox.setName("activateExtendedFVCheckBox");
		activateExtendedFVCheckBox.setStyleProperties("{/font {/name \"Dialog\"/size \"14\"/style \"PLAIN\"}/fill \"HORIZONTAL\"/insetsLeft \"20\"/weightX \"1\"}");
		activateExtendedFVCheckBox.setText("Activate the file versioning extended feature");
	}
	return activateExtendedFVCheckBox;
}

/**
 * This method initializes activateDirTranslationCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getActivateDirTranslationCheckBox() {
	if (activateDirTranslationCheckBox == null) {
		activateDirTranslationCheckBox = new RCheckBox();
		activateDirTranslationCheckBox.setName("activateDirTranslationCheckBox");
		activateDirTranslationCheckBox.setStyleProperties("{/font {/name \"Dialog\"/size \"14\"/style \"PLAIN\"}/fill \"HORIZONTAL\"/insetsLeft \"20\"/weightX \"1\"}");
		activateDirTranslationCheckBox.setText("Activate the directories translation feature");
	}
	return activateDirTranslationCheckBox;
}

/**
 * This method initializes activatefileTypesTranslationCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getActivatefileTypesTranslationCheckBox() {
	if (activatefileTypesTranslationCheckBox == null) {
		activatefileTypesTranslationCheckBox = new RCheckBox();
		activatefileTypesTranslationCheckBox.setName("activatefileTypesTranslationCheckBox");
		activatefileTypesTranslationCheckBox.setStyleProperties("{/font \"name=Dialog\\nsize=14\\nstyle=PLAIN\"/fill \"HORIZONTAL\"/weightX \"1\"}");
		activatefileTypesTranslationCheckBox.setText("Activate the file type translation feature");
	}
	return activatefileTypesTranslationCheckBox;
}

/**
 * This method initializes globalVariableConfigGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getGlobalVariableConfigGridBagLayoutPane() {
	if (globalVariableConfigGridBagLayoutPane == null) {
		globalVariableConfigGridBagLayoutPane = new RGridBagLayoutPane();
		globalVariableConfigGridBagLayoutPane.setName("globalVariableConfigGridBagLayoutPane");
		globalVariableConfigGridBagLayoutPane.setStyleProperties("{/fill \"HORIZONTAL\"}");
		globalVariableConfigGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(null, "Use the global variables as configuration", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Dialog", Font.BOLD, 12), new Color(51, 51, 51)));
		globalVariableConfigGridBagLayoutPane.add(getGlobalVariablesCheckBox(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return globalVariableConfigGridBagLayoutPane;
}

/**
 * This method initializes globalVariablesCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getGlobalVariablesCheckBox() {
	if (globalVariablesCheckBox == null) {
		globalVariablesCheckBox = new RCheckBox();
		globalVariablesCheckBox.setText("<html>The filemanager will be started with an empty configuration object.<br>The global variables values will be used to fill the configuration.");
		globalVariablesCheckBox.setStyleProperties("{/font \"name=Dialog\\nsize=14\\nstyle=PLAIN\"/fill \"HORIZONTAL\"/weightX \"1\"}");
		globalVariablesCheckBox.setName("globalVariablesCheckBox");
	}
	return globalVariablesCheckBox;
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
		FlowLayoutPane.setStyleProperties("{/fill \"HORIZONTAL\"/alignment \"RIGHT\"/weightX \"1\"}");
		FlowLayoutPane.add(getDisplayButton());
		FlowLayoutPane.add(getStartButton1());
	}
	return FlowLayoutPane;
}

/**
 * This method initializes displayButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getDisplayButton() {
	if (displayButton == null) {
		displayButton = new RButton();
		displayButton.setText("Display the configuration");
		displayButton.setName("displayButton");
	}
	return displayButton;
}

/**
 * This method initializes sizeGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getSizeGridBagLayoutPane() {
	if (sizeGridBagLayoutPane == null) {
		sizeGridBagLayoutPane = new RGridBagLayoutPane();
		sizeGridBagLayoutPane.setName("sizeGridBagLayoutPane");
		sizeGridBagLayoutPane.setStyleProperties("{/fill \"HORIZONTAL\"}");
		sizeGridBagLayoutPane.add(getMaxFileSizeLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		sizeGridBagLayoutPane.add(getMaxFileSizeTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return sizeGridBagLayoutPane;
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