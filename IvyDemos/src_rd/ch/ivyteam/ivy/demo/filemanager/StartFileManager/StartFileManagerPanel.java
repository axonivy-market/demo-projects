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
		GridBagLayoutPane1.add(getStartButton1(), new com.ulcjava.base.application.GridBagConstraints(0, 13, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane1.add(getRootDirectoryPathLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane1.add(getServerpathTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane1.add(Filler1, new com.ulcjava.base.application.GridBagConstraints(1, 18, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane1.add(getLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 4, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane1.add(getStoreOnFileSetGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 6, 4, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane1.add(getStoreInDBGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 7, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane1.add(getMaxFileSizeLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane1.add(getMaxFileSizeTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane1.add(getLanguageLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane1.add(getLangComboBox(), new com.ulcjava.base.application.GridBagConstraints(1, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
		rootDirectoryPathLabel.setStyleProperties("{/font {/name \"Dialog\"/size \"14\"/style \"PLAIN\"}/fill \"HORIZONTAL\"}");
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
		serverpathTextField.setStyleProperties("{/fill \"HORIZONTAL\"/insetsLeft \"10\"}");
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
		activateTypeCheckBox.setText("Activate the File Type feature");
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
		storeOnFileSetGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(BorderFactory.createLineBorder(Color.gray, 1), "Files stored on the File system", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 14), new Color(23, 64, 140)));
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
		storeInDBGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(BorderFactory.createLineBorder(Color.gray, 1), "Files stored in a database as BLOB", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 14), new Color(23, 64, 140)));
		storeInDBGridBagLayoutPane.add(getActivateFilesAsBlobCheckBox(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		storeInDBGridBagLayoutPane.add(getActivateFileVersioningCheckBox(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		storeInDBGridBagLayoutPane.add(getActivateSecurityCheckBox(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		storeInDBGridBagLayoutPane.add(getActivateTypeCheckBox(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		storeInDBGridBagLayoutPane.add(getActivateTagsCheckBox(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		storeInDBGridBagLayoutPane.add(getActivateHistoryCheckBox(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
		maxFileSizeLabel.setStyleProperties("{/font {/name \"Dialog\"/size \"14\"/style \"PLAIN\"}}");
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
		maxFileSizeTextField.setStyleProperties("{/anchor \"WEST\"/insetsLeft \"10\"}");
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
		activateHistoryCheckBox.setStyleProperties("{/font {/name \"Dialog\"/size \"14\"/style \"PLAIN\"}/fill \"HORIZONTAL\"/insetsLeft \"20\"}");
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
		langComboBox.setModelConfiguration("{/result \"\"/version \"3.0\"/icon \"\"/tooltip \"\"}");
	}
	return langComboBox;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"