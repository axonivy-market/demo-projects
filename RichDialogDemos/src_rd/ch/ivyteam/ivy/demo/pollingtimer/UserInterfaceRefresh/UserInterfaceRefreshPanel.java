package ch.ivyteam.ivy.demo.pollingtimer.UserInterfaceRefresh;

import ch.ivyteam.ivy.demo.util.Title.TitlePanel;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RList;
import ch.ivyteam.ivy.richdialog.widgets.components.RProgressBar;
import ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;

import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.border.ULCTitledBorder;
import com.ulcjava.base.application.util.Color;
import com.ulcjava.base.application.util.Font;
import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import com.ulcjava.base.application.ULCContainer;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;

/**
 * RichDialog panel implementation for UserInterfaceRefreshPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class UserInterfaceRefreshPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
@EmbeddedRichDialog(TitlePanel.class) private ULCContainer titlePanel = null;
private RGridBagLayoutPane progressPane = null;
private RGridBagLayoutPane refeshPane = null;
private RProgressBar progressBar = null;
private RButton startProgressButton = null;
private RLabel progressInfoLabel = null;
private RScrollPane listScroller = null;
private RList list = null;
private RCheckBox doAutoRefreshCheckBox = null;
private RLabel autoRefreshInfoLabel = null;
private RFlowLayoutPane invisibleButtonsPane = null;
private RButton doRefreshButton = null;
private RButton updateProgressButton = null;
private RGridBagLayoutPane progressDialogPane = null;
private RLabel progressDialogInfoLabel = null;
private RLabel workLabel = null;
private RTextField workTextField = null;
private RButton startWorkButton = null;
/**
   * Create a new instance of UserInterfaceRefreshPanel
   */
  public UserInterfaceRefreshPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes UserInterfaceRefreshPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(402,454));
        this.add(getTitlePanel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getProgressPane(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getRefeshPane(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getInvisibleButtonsPane(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getProgressDialogPane(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes titlePanel	
 * 	
 * @return ch.ivyteam.ivy.demo.util.Title.TitlePanel	
 */
private ULCContainer getTitlePanel()  {
	if (titlePanel == null) {
		titlePanel = RichDialogPanelFactory.create(TitlePanel.class);
		titlePanel.setName("titlePanel");
		titlePanel.setStyle("fill-horiz");
	}
	return titlePanel;
}

/**
 * This method initializes progressPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBorderLayoutPane	
 */
private RGridBagLayoutPane getProgressPane() {
	if (progressPane == null) {
		progressPane = new RGridBagLayoutPane();
		progressPane.setName("progressPane");
		progressPane.setBorder(BorderFactory.createTitledBorder(null, "ProgressBar Demo", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
		progressPane.setStyle("fill-horiz-border");
		progressPane.add(getProgressBar(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		progressPane.add(getStartProgressButton(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		progressPane.add(getProgressInfoLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return progressPane;
}

/**
 * This method initializes refeshPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBorderLayoutPane	
 */
private RGridBagLayoutPane getRefeshPane() {
	if (refeshPane == null) {
		refeshPane = new RGridBagLayoutPane();
		refeshPane.setName("refeshPane");
		refeshPane.setBorder(BorderFactory.createTitledBorder(null, "Auto-Refresh Demo", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
		refeshPane.setStyle("fill-both-border");
		refeshPane.add(getListScroller(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		refeshPane.add(getDoAutoRefreshCheckBox(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		refeshPane.add(getAutoRefreshInfoLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return refeshPane;
}

/**
 * This method initializes progressBar	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RProgressBar	
 */
private RProgressBar getProgressBar() {
	if (progressBar == null) {
		progressBar = new RProgressBar();
		progressBar.setName("progressBar");
		progressBar.setStringPainted(true);
		progressBar.setStyle("fill-horiz-north-border");
	}
	return progressBar;
}

/**
 * This method initializes startProgressButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getStartProgressButton() {
	if (startProgressButton == null) {
		startProgressButton = new RButton();
		startProgressButton.setText("Start");
		startProgressButton.setStyleProperties("{/insetsRight \"5\"}");
		startProgressButton.setName("startProgressButton");
	}
	return startProgressButton;
}

/**
 * This method initializes progressInfoLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getProgressInfoLabel() {
	if (progressInfoLabel == null) {
		progressInfoLabel = new RLabel();
		progressInfoLabel.setText("<html>Click on start to run the progress bar. For each percent of progress a short part of a long running UI process is executed and the UI is updated.");
		progressInfoLabel.setStyle("left-fill-horiz-border");
		progressInfoLabel.setName("progressInfoLabel");
	}
	return progressInfoLabel;
}

/**
 * This method initializes listScroller	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getListScroller() {
	if (listScroller == null) {
		listScroller = new RScrollPane();
		listScroller.setName("listScroller");
		listScroller.setStyle("fill-both-border");
		listScroller.setViewPortView(getList());
	}
	return listScroller;
}

/**
 * This method initializes list	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RList	
 */
private RList getList() {
	if (list == null) {
		list = new RList();
		list.setName("list");
	}
	return list;
}

/**
 * This method initializes doAutoRefreshCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getDoAutoRefreshCheckBox() {
	if (doAutoRefreshCheckBox == null) {
		doAutoRefreshCheckBox = new RCheckBox();
		doAutoRefreshCheckBox.setText("Auto-refresh list");
		doAutoRefreshCheckBox.setStyleProperties("{/anchor \"NORTH\"}");
		doAutoRefreshCheckBox.setName("doAutoRefreshCheckBox");
	}
	return doAutoRefreshCheckBox;
}

/**
 * This method initializes autoRefreshInfoLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getAutoRefreshInfoLabel() {
	if (autoRefreshInfoLabel == null) {
		autoRefreshInfoLabel = new RLabel();
		autoRefreshInfoLabel.setText("<html>Click on the check-box to start/stop auto-refreshing of the list below.");
		autoRefreshInfoLabel.setStyle("left-fill-horiz-border");
		autoRefreshInfoLabel.setName("autoRefreshInfoLabel");
	}
	return autoRefreshInfoLabel;
}

/**
 * This method initializes invisibleButtonsPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane	
 */
private RFlowLayoutPane getInvisibleButtonsPane() {
	if (invisibleButtonsPane == null) {
		invisibleButtonsPane = new RFlowLayoutPane();
		invisibleButtonsPane.setName("invisibleButtonsPane");
		invisibleButtonsPane.add(getDoRefreshButton());
		invisibleButtonsPane.add(getUpdateProgressButton());
	}
	return invisibleButtonsPane;
}

/**
 * This method initializes doRefreshButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getDoRefreshButton() {
	if (doRefreshButton == null) {
		doRefreshButton = new RButton();
		doRefreshButton.setText("");
		doRefreshButton.setName("doRefreshButton");
	}
	return doRefreshButton;
}

/**
 * This method initializes updateProgressButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getUpdateProgressButton() {
	if (updateProgressButton == null) {
		updateProgressButton = new RButton();
		updateProgressButton.setText("");
		updateProgressButton.setName("updateProgressButton");
	}
	return updateProgressButton;
}

/**
 * This method initializes progressDialogPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getProgressDialogPane() {
	if (progressDialogPane == null) {
		progressDialogPane = new RGridBagLayoutPane();
		progressDialogPane.setName("progressDialogPane");
		progressDialogPane.setBorder(BorderFactory.createTitledBorder(null, "Progress-Dialog Demo", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
		progressDialogPane.setStyle("fill-horiz-border");
		progressDialogPane.add(getProgressDialogInfoLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 4, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		progressDialogPane.add(getWorkLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		progressDialogPane.add(getWorkTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		progressDialogPane.add(getStartWorkButton(), new com.ulcjava.base.application.GridBagConstraints(2, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return progressDialogPane;
}

/**
 * This method initializes progressDialogInfoLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getProgressDialogInfoLabel() {
	if (progressDialogInfoLabel == null) {
		progressDialogInfoLabel = new RLabel();
		progressDialogInfoLabel.setText("<html>Enter amount of work to be done \nand click on start. This will open a (modal) \nprogress dialog to perform the specified work.\nThe dialog will automatically close when finished. ");
		progressDialogInfoLabel.setStyle("fill-northwest-border");
		progressDialogInfoLabel.setName("progressDialogInfoLabel");
	}
	return progressDialogInfoLabel;
}

/**
 * This method initializes workLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getWorkLabel() {
	if (workLabel == null) {
		workLabel = new RLabel();
		workLabel.setText("How much work should I do?");
		workLabel.setStyle("border-full");
		workLabel.setStyleProperties("{/anchor \"CENTER\"}");
		workLabel.setName("workLabel");
	}
	return workLabel;
}

/**
 * This method initializes workTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getWorkTextField() {
	if (workTextField == null) {
		workTextField = new RTextField();
		workTextField.setText("100");
		workTextField.setStyle("fill-horiz-north");
		workTextField.setStyleProperties("{/anchor \"CENTER\"}");
		workTextField.setMandatory(true);
		workTextField.setValidation("NumberIntPositive");
		workTextField.setName("workTextField");
	}
	return workTextField;
}

/**
 * This method initializes startWorkButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getStartWorkButton() {
	if (startWorkButton == null) {
		startWorkButton = new RButton();
		startWorkButton.setText("Start working!");
		startWorkButton.setStyle("border-all");
		startWorkButton.setName("startWorkButton");
	}
	return startWorkButton;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"