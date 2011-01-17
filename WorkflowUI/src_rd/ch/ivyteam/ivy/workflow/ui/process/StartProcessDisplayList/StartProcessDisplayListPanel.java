package ch.ivyteam.ivy.workflow.ui.process.StartProcessDisplayList;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox;
import ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RList;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem;
import ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu;

import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.ULCListSelectionModel;
import com.ulcjava.base.application.border.ULCEtchedBorder;
import com.ulcjava.base.application.border.ULCTitledBorder;
import com.ulcjava.base.application.util.Color;
import com.ulcjava.base.application.util.Font;

/**
 * RichDialog panel implementation for StartListPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class StartProcessDisplayListPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RList startList = null;
private RScrollPane ScrollPane = null;
private RTextField searchTextField = null;
private RCheckBox showNoNameCheckBox = null;
private RPopupMenu startListPopupMenu = null;  //  @jve:decl-index=0:visual-constraint="430,39"
private RMenuItem startMenuItem = null;
private RButton stratButton = null;
private RGridBagLayoutPane searchGridBagLayoutPane = null;
private RHyperlink searchHyperlink = null;
private RBoxPane processActionsBoxPane = null;
private RBoxPane searchBoxPane = null;
/**
   * Create a new instance of StartListPanel
   */
  public StartProcessDisplayListPanel()
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
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(360,424));
        this.setBorder(BorderFactory.createTitledBorder(BorderFactory.createLineBorder(new Color(12, 74, 124), 1), "Process Start List", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.BOLD, 11), new Color(12, 74, 124)));
        this.add(getScrollPane(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getProcessActionsBoxPane(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
		startList.setModelConfiguration("{/result \"result=\\\"<html>\\\" + \\r\\nIF(entry.getName().length() > 0, \\\"<b>\\\" + entry.getName() + \\\"</b><br>\\\", \\\"<b>\\\" + entry.getUserFriendlyRequestPath() + \\\"</b><br>\\\") + \\r\\nIF(entry.getDescription().length() > 0, entry.getDescription(), \\\"\\\")\"/version \"3.0\"/icon \"result=ivy.cms.cr(\\\"/ch/ivyteam/ivy/workflow/ui/process/images/process32\\\")\"/tooltip \"result=\\\"<html>\\\" + \\r\\nIF(entry.getName().length() > 0, \\\"<b>\\\" + entry.getName() + \\\"</b><br>\\\", \\\"<b>\\\" + entry.getUserFriendlyRequestPath() + \\\"</b><br>\\\") + \\r\\nIF(entry.getDescription().length() > 0, entry.getDescription() + \\\"<br>\\\", \\\"\\\") +\\r\\nIF(entry.getName().length() > 0, entry.getUserFriendlyRequestPath(), \\\"\\\")\"/emptyTableText \"\"}");
		startList.setSelectionMode(ULCListSelectionModel.SINGLE_SELECTION);
		startList.setOpaque(false);
		startList.setVisibleRowCount(20);
		startList.setComponentPopupMenu(getStartListPopupMenu());
		startList.setName("startList");
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
		searchTextField.setStyleProperties("{/anchor \"CENTER\"/insetsTop \"0\"/fill \"BOTH\"/insetsLeft \"0\"/weightY \"1\"/weightX \"1\"}");
		searchTextField.setSelectAllOnFocusGained(true);
		searchTextField.setBorder(BorderFactory.createEmptyBorder(0, 0, 0, 0));
		searchTextField.setName("searchTextField");
	}
	return searchTextField;
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
		showNoNameCheckBox.setStyleProperties("{/anchor \"CENTER\"/insetsTop \"0\"/insetsRight \"5\"/insetsLeft \"3\"}");
		showNoNameCheckBox.setOpaque(false);
		showNoNameCheckBox.setVisible(false);
		showNoNameCheckBox.setToolTipText("<%= ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/process/plainStrings/showUnnamedProcesses\") %>");
	}
	return showNoNameCheckBox;
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
 * This method initializes stratButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getStratButton() {
	if (stratButton == null) {
		stratButton = new RButton();
		stratButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/process/images/process32\")%>");
		stratButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/process/plainStrings/menuStartProcess\")%>");
		stratButton.setVisible(false);
		stratButton.setName("stratButton");
	}
	return stratButton;
}

/**
 * This method initializes searchGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getSearchGridBagLayoutPane() {
	if (searchGridBagLayoutPane == null) {
		searchGridBagLayoutPane = new RGridBagLayoutPane();
		searchGridBagLayoutPane.setName("searchGridBagLayoutPane");
		searchGridBagLayoutPane.setOpaque(false);
		searchGridBagLayoutPane.setStyleProperties("{/weightX \"1\"}");
		searchGridBagLayoutPane.add(getShowNoNameCheckBox(), new com.ulcjava.base.application.GridBagConstraints(4, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		searchGridBagLayoutPane.add(getSearchBoxPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return searchGridBagLayoutPane;
}

/**
 * This method initializes searchHyperlink	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink	
 */
private RHyperlink getSearchHyperlink() {
	if (searchHyperlink == null) {
		searchHyperlink = new RHyperlink();
		searchHyperlink.setIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/view24\") %>");
		searchHyperlink.setStyleProperties("{/backgroundColor {/b \"255\"/r \"255\"/g \"255\"}/anchor \"CENTER\"/insetsTop \"0\"/insetsLeft \"0\"}");
		searchHyperlink.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/process/plainStrings/findStartableProcesses\")%>");
		searchHyperlink.setName("searchHyperlink");
	}
	return searchHyperlink;
}

/**
 * This method initializes processActionsBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getProcessActionsBoxPane() {
	if (processActionsBoxPane == null) {
		processActionsBoxPane = new RBoxPane();
		processActionsBoxPane.setName("processActionsBoxPane");
		processActionsBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getStratButton());
		processActionsBoxPane.set(1, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getSearchGridBagLayoutPane());
	}
	return processActionsBoxPane;
}

/**
 * This method initializes searchBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getSearchBoxPane() {
	if (searchBoxPane == null) {
		searchBoxPane = new RBoxPane();
		searchBoxPane.setName("searchBoxPane");
		searchBoxPane.setStyleProperties("{/insetsRight \"3\"/insetsLeft \"3\"/weightX \"1\"}");
		searchBoxPane.setBorder(BorderFactory.createEtchedBorder(ULCEtchedBorder.LOWERED));
		searchBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getSearchTextField());
		searchBoxPane.set(1, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getSearchHyperlink());
	}
	return searchBoxPane;
}

}  //  @jve:decl-index=0:visual-constraint="10,10"