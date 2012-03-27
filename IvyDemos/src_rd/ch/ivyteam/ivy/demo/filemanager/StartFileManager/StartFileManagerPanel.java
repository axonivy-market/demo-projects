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
private RButton startButton1 = null;
private RLabel rootDirectoryPathLabel = null;
private RTextField serverpathTextField = null;
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
		GridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(null, "Starts the FileManager with files informations located in the ivy system DB", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Dialog", Font.PLAIN, 14), new Color(23, 64, 140)));
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
		RFiller Filler1 = new RFiller();
		Filler1.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		GridBagLayoutPane1 = new RGridBagLayoutPane();
		GridBagLayoutPane1.setName("GridBagLayoutPane1");
		GridBagLayoutPane1.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		GridBagLayoutPane1.setBorder(BorderFactory.createTitledBorder(null, "Starts the FileManager with the settings stored in global variables", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 14), new Color(23, 64, 140)));
		GridBagLayoutPane1.add(getStartButton1(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane1.add(getRootDirectoryPathLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane1.add(getServerpathTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane1.add(getInfo4Label(), new com.ulcjava.base.application.GridBagConstraints(0, 8, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane1.add(Filler1, new com.ulcjava.base.application.GridBagConstraints(1, 9, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
		rootDirectoryPathLabel.setText("<html>Server root directory<b>*</b> :</html>");
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
 * This method initializes info4Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getInfo4Label() {
	if (info4Label == null) {
		info4Label = new RLabel();
		info4Label.setText("<html><b>*</b>The root directory path points to the root directory of the file manager. The user cannot explore the directories above this one. Example: TEST_FILEMANAGER, c:/temp, ...<br>\nSee the ivy documentation for more explanations about this point. ");
		info4Label.setStyleProperties("{/fill \"HORIZONTAL\"}");
		info4Label.setName("info4Label");
	}
	return info4Label;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"