package ch.ivyteam.ivy.workflow.ui.StartList;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RList;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem;
import ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu;

import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.ULCListSelectionModel;
import com.ulcjava.base.application.border.ULCTitledBorder;
import com.ulcjava.base.application.util.Color;
import com.ulcjava.base.application.util.Font;
import ch.ivyteam.ivy.richdialog.widgets.containers.RToolBar;

/**
 * RichDialog panel implementation for StartListPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class StartListPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RList startList = null;
private RScrollPane ScrollPane = null;
private RTextField searchTextField = null;
private RButton searchButton = null;
private RLabel footerLabel = null;
private RLabel findLabel = null;
private RCheckBox showNoNameCheckBox = null;
private RGridBagLayoutPane optionsGridBagLayoutPane = null;
private RPopupMenu startListPopupMenu = null;  //  @jve:decl-index=0:visual-constraint="215,7"
private RMenuItem startMenuItem = null;
private RToolBar startToolBar = null;
private RButton stratButton = null;
/**
   * Create a new instance of StartListPanel
   */
  public StartListPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes StartListPanel
   * @return void
   */
  public void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(200,418));
        this.setBorder(BorderFactory.createTitledBorder(BorderFactory.createLineBorder(new Color(12, 74, 124), 1), "Process Start List", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.BOLD, 11), new Color(12, 74, 124)));
        this.add(getScrollPane(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getFooterLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 4, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getOptionsGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getStartToolBar(), new com.ulcjava.base.application.GridBagConstraints(2, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes startList	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RList	
 */
private RList getStartList() {
	if (startList == null) {
		startList = new RList();
		startList.setName("startList");
		startList.setModelConfiguration("{/result \"result=\\\"<html><b>\\\" + \\r\\nIF(entry.getName().length() > 0, IF(entry.getName().length() > 40,entry.getName().substring(0,40) + \\\"...\\\", entry.getName()), IF(entry.getUserFriendlyRequestPath().length() > 40,entry.getUserFriendlyRequestPath().substring(0,40) + \\\"...\\\", entry.getUserFriendlyRequestPath()))\\r\\n+ \\\"</b><br>\\\" + entry.getDescription()\"/version \"3.0\"/icon \"result=ivy.cms.cr(\\\"/ch/ivyteam/ivy/workflow/ui/task/images/startTask16\\\")\"/tooltip \"result=\\\"<html>\\\" +\\r\\nivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/description\\\") + \\\": \\\" + IF(!entry.getDescription().matches(\\\"\\\"), entry.getDescription(), ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/process/plainStrings/noDescriptionGiven\\\")) + \\r\\n\\\"<b><br/>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/ivyProjectName\\\") + \\\": \\\" + entry.getProcessModelVersion().getProcessModel().getName()\"/emptyTableText \"\"}");
		startList.setSelectionMode(ULCListSelectionModel.SINGLE_SELECTION);
		startList.setOpaque(false);
		startList.setVisibleRowCount(20);
		startList.setComponentPopupMenu(getStartListPopupMenu());
		startList.setName("startList");
		startList.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
	}
	return startList;
}

/**
 * This method initializes ScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getScrollPane() {
	if (ScrollPane == null) {
		ScrollPane = new RScrollPane();
		ScrollPane.setName("ScrollPane");
		ScrollPane.setStyleProperties("{/anchor \"NORTHWEST\"/insetsLeft \"2\"/weightY \"1\"/weightX \"1\"}");
		ScrollPane.setViewPortView(getStartList());
	}
	return ScrollPane;
}

/**
 * This method initializes searchTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getSearchTextField() {
	if (searchTextField == null) {
		searchTextField = new RTextField();
		searchTextField.setText("RTextField");
		searchTextField.setStyleProperties("{/anchor \"CENTER\"/weightX \"1\"}");
		searchTextField.setName("searchTextField");
	}
	return searchTextField;
}

/**
 * This method initializes searchButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getSearchButton() {
	if (searchButton == null) {
		searchButton = new RButton();
		searchButton.setName("searchButton");
		searchButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/process/plainStrings/findStartableProcesses\")%>");
		searchButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/find16\")%>");
	}
	return searchButton;
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

/**
 * This method initializes findLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getFindLabel() {
	if (findLabel == null) {
		findLabel = new RLabel();
		findLabel.setStyleProperties("{/anchor \"EAST\"}");
		findLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/find\")%>");
		findLabel.setName("findLabel");
	}
	return findLabel;
}

/**
 * This method initializes showNoNameCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getShowNoNameCheckBox() {
	if (showNoNameCheckBox == null) {
		showNoNameCheckBox = new RCheckBox();
		showNoNameCheckBox.setName("showNoNameCheckBox");
		showNoNameCheckBox.setText("<%= ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/process/plainStrings/showUnnamedProcesses\") %>");
	}
	return showNoNameCheckBox;
}

/**
 * This method initializes optionsGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getOptionsGridBagLayoutPane() {
	if (optionsGridBagLayoutPane == null) {
		optionsGridBagLayoutPane = new RGridBagLayoutPane();
		optionsGridBagLayoutPane.setName("optionsGridBagLayoutPane");
		optionsGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(null, "Filter Options", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
		optionsGridBagLayoutPane.setStyleProperties("{/insetsLeft \"2\"}");
		optionsGridBagLayoutPane.add(getFindLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		optionsGridBagLayoutPane.add(getSearchButton(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		optionsGridBagLayoutPane.add(getShowNoNameCheckBox(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		optionsGridBagLayoutPane.add(getSearchTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return optionsGridBagLayoutPane;
}

/**
 * This method initializes startListPopupMenu	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu	
 */
private RPopupMenu getStartListPopupMenu() {
	if (startListPopupMenu == null) {
		startListPopupMenu = new RPopupMenu();
		startListPopupMenu.setName("startListPopupMenu");
		startListPopupMenu.add(getStartMenuItem());
	}
	return startListPopupMenu;
}

/**
 * This method initializes startMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getStartMenuItem() {
	if (startMenuItem == null) {
		startMenuItem = new RMenuItem();
		startMenuItem.setName("startMenuItem");
		startMenuItem.setText("Start Process");
	}
	return startMenuItem;
}

/**
 * This method initializes startToolBar	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RToolBar	
 */
private RToolBar getStartToolBar() {
	if (startToolBar == null) {
		startToolBar = new RToolBar();
		startToolBar.setName("startToolBar");
		startToolBar.setStyleProperties("{/insetsLeft \"2\"}");
		startToolBar.add(getStratButton());
	}
	return startToolBar;
}

/**
 * This method initializes stratButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getStratButton() {
	if (stratButton == null) {
		stratButton = new RButton();
		stratButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/startTask24\")%>");
		stratButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/process/plainStrings/menuStartProcess\")%>");
		stratButton.setRolloverIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/startTask32\")%>");
		stratButton.setName("stratButton");
	}
	return stratButton;
}

}  //  @jve:decl-index=0:visual-constraint="10,10"