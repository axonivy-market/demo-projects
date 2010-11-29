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
private RGridBagLayoutPane GridBagLayoutPane = null;
private RGridBagLayoutPane GridBagLayoutPane1 = null;
private RButton startButton = null;
private RLabel IvyUserFriendlyDBConfigLabel = null;
private RLabel tablenameLabel = null;
private RTextField TextField = null;
private RTextField TextField1 = null;
private RButton startButton1 = null;
private RLabel schemaLabel = null;
private RTextField schemaTextField2 = null;
private RLabel rootDirectoryPathLabel = null;
private RTextField serverpathTextField = null;
private RLabel info1Label = null;
private RLabel info2Label = null;
private RLabel info3Label = null;
private RLabel info4Label = null;
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
        this.add(getGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getGridBagLayoutPane1(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes GridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getGridBagLayoutPane() {
	if (GridBagLayoutPane == null) {
		RFiller Filler = new RFiller();
		Filler.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		GridBagLayoutPane = new RGridBagLayoutPane();
		GridBagLayoutPane.setName("GridBagLayoutPane");
		GridBagLayoutPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		GridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(null, "Starts the FileManager with files informations located in the ivy system DB...", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Dialog", Font.PLAIN, 11), new Color(23, 64, 140)));
		GridBagLayoutPane.add(getStartButton(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane.add(Filler, new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return GridBagLayoutPane;
}

/**
 * This method initializes GridBagLayoutPane1	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getGridBagLayoutPane1() {
	if (GridBagLayoutPane1 == null) {
		GridBagLayoutPane1 = new RGridBagLayoutPane();
		GridBagLayoutPane1.setName("GridBagLayoutPane1");
		GridBagLayoutPane1.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		GridBagLayoutPane1.setBorder(BorderFactory.createTitledBorder(null, "Starts the FileManager with files informations located in the specified DB...", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
		GridBagLayoutPane1.add(getIvyUserFriendlyDBConfigLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane1.add(getTablenameLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane1.add(getTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane1.add(getTextField1(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane1.add(getStartButton1(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane1.add(getSchemaLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane1.add(getSchemaTextField2(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane1.add(getRootDirectoryPathLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane1.add(getServerpathTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane1.add(getInfo1Label(), new com.ulcjava.base.application.GridBagConstraints(0, 5, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane1.add(getInfo2Label(), new com.ulcjava.base.application.GridBagConstraints(0, 6, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane1.add(getInfo3Label(), new com.ulcjava.base.application.GridBagConstraints(0, 7, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane1.add(getInfo4Label(), new com.ulcjava.base.application.GridBagConstraints(0, 8, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return GridBagLayoutPane1;
}

/**
 * This method initializes startButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getStartButton() {
	if (startButton == null) {
		startButton = new RButton();
		startButton.setText("Start FileManager");
		startButton.setName("startButton");
	}
	return startButton;
}

/**
 * This method initializes IvyUserFriendlyDBConfigLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getIvyUserFriendlyDBConfigLabel() {
	if (IvyUserFriendlyDBConfigLabel == null) {
		IvyUserFriendlyDBConfigLabel = new RLabel();
		IvyUserFriendlyDBConfigLabel.setText("<html>Ivy database configuration user friendly name<b>*</b> :");
		IvyUserFriendlyDBConfigLabel.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		IvyUserFriendlyDBConfigLabel.setName("IvyUserFriendlyDBConfigLabel");
	}
	return IvyUserFriendlyDBConfigLabel;
}

/**
 * This method initializes tablenameLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getTablenameLabel() {
	if (tablenameLabel == null) {
		tablenameLabel = new RLabel();
		tablenameLabel.setText("<html>DB Table name that stores the files informations<b>**</b> :</html>");
		tablenameLabel.setStyleProperties("{/fill \"HORIZONTAL\"}");
		tablenameLabel.setName("tablenameLabel");
	}
	return tablenameLabel;
}

/**
 * This method initializes TextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getTextField() {
	if (TextField == null) {
		TextField = new RTextField();
		TextField.setText("");
		TextField.setColumns(30);
		TextField.setStyleProperties("{/fill \"HORIZONTAL\"/insetsLeft \"10\"/weightX \"1\"}");
		TextField.setName("TextField");
	}
	return TextField;
}

/**
 * This method initializes TextField1	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getTextField1() {
	if (TextField1 == null) {
		TextField1 = new RTextField();
		TextField1.setText("");
		TextField1.setColumns(30);
		TextField1.setStyleProperties("{/fill \"HORIZONTAL\"/insetsLeft \"10\"}");
		TextField1.setName("TextField1");
	}
	return TextField1;
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
 * This method initializes schemaLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getSchemaLabel() {
	if (schemaLabel == null) {
		schemaLabel = new RLabel();
		schemaLabel.setText("<html>Database Schema<b>***</b> :</html>");
		schemaLabel.setStyleProperties("{/fill \"HORIZONTAL\"}");
		schemaLabel.setName("schemaLabel");
	}
	return schemaLabel;
}

/**
 * This method initializes schemaTextField2	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getSchemaTextField2() {
	if (schemaTextField2 == null) {
		schemaTextField2 = new RTextField();
		schemaTextField2.setText("");
		schemaTextField2.setStyleProperties("{/fill \"HORIZONTAL\"/insetsLeft \"10\"}");
		schemaTextField2.setName("schemaTextField2");
	}
	return schemaTextField2;
}

/**
 * This method initializes rootDirectoryPathLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getRootDirectoryPathLabel() {
	if (rootDirectoryPathLabel == null) {
		rootDirectoryPathLabel = new RLabel();
		rootDirectoryPathLabel.setText("<html>Server root directory<b>****</b> :</html>");
		rootDirectoryPathLabel.setStyleProperties("{/fill \"HORIZONTAL\"}");
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
 * This method initializes info1Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getInfo1Label() {
	if (info1Label == null) {
		info1Label = new RLabel();
		info1Label.setText("<html><b>*</b>A database configuration has been already created in this project. Its name is \"filemanager\". Please configure it depending on your database installation</html>");
		info1Label.setStyleProperties("{/fill \"HORIZONTAL\"}");
		info1Label.setName("info1Label");
	}
	return info1Label;
}

/**
 * This method initializes info2Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getInfo2Label() {
	if (info2Label == null) {
		info2Label = new RLabel();
		info2Label.setText("<html><b>**</b>This is the name of the table that stores the files informations. Please refer to the IvyAddons FileManager documentation to get its structure.</html>");
		info2Label.setStyleProperties("{/fill \"HORIZONTAL\"}");
		info2Label.setName("info2Label");
	}
	return info2Label;
}

/**
 * This method initializes info3Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getInfo3Label() {
	if (info3Label == null) {
		info3Label = new RLabel();
		info3Label.setText("<html><b>***</b>Some db engine like PostGreSQL make use of schema names to organize their database. If you did not setted a special schema for the files TABLE let this field empty. </html>");
		info3Label.setStyleProperties("{/fill \"HORIZONTAL\"}");
		info3Label.setName("info3Label");
	}
	return info3Label;
}

/**
 * This method initializes info4Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getInfo4Label() {
	if (info4Label == null) {
		info4Label = new RLabel();
		info4Label.setText("<html><b>****</b>The root directory path points to the root directory of the file manager. The user cannot explore the directories above this one. Example: TEST_FILEMANAGER, c:/temp, ...<br>\nSee the ivy documentation for more explanations about this point. ");
		info4Label.setStyleProperties("{/fill \"HORIZONTAL\"}");
		info4Label.setName("info4Label");
	}
	return info4Label;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"