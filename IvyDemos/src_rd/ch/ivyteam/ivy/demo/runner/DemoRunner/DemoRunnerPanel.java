package ch.ivyteam.ivy.demo.runner.DemoRunner;

import ch.ivyteam.ivy.demo.util.Title.TitlePanel;
import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RHtmlPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RList;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBorderLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RTabbedPane;
import ch.ivyteam.ivy.richdialog.widgets.displays.RCardDisplay;
import ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem;
import ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu;

import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.ULCContainer;
import com.ulcjava.base.application.border.ULCBevelBorder;

/**
 * RichDialog panel implementation for DemoStarterPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class DemoRunnerPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RScrollPane listScrollPane = null;
private RList demoList = null;
@EmbeddedRichDialog(TitlePanel.class) private ULCContainer titlePanel = null;
private RTabbedPane tabbedPane = null;
private RGridBagLayoutPane detailsPane = null;
private RBorderLayoutPane runnerPane = null;
private RFlowLayoutPane runnerControlPane = null;
private RCardDisplay demoRunnerDisplay = null;
private RPopupMenu actionMenu = null;  //  @jve:decl-index=0:visual-constraint="28,336"
private RMenuItem showDetailsAction = null;
private RMenuItem runDemoAction = null;
private RLabel idLabel = null;
private RLabel descriptionLabel = null;
private RLabel nameLabel = null;
private RTextField idTextField = null;
private RTextField nameTextField = null;
private RScrollPane descriptionScroller = null;
private RHyperlink finishHyperlink = null;
private RButton startDemoButton = null;
private RButton finishApplicationButton = null;
private RLabel demoListTitleLabel = null;
private RGridBagLayoutPane listPane = null;
private RHtmlPane descriptionTextArea = null;

	/**
	 * Calculates the id of a panel's RichDialog. 
	 * @param panel
	 * @return RichDialog id
	 */
	public String getRichDialogIdFromPanel(IRichDialogPanel panel)
	{
		String panelClass = panel.getClass().getName();
		return panelClass.substring(0, panelClass.lastIndexOf('.'));
	}

	/**
   * Create a new instance of DemoStarterPanel
   */
  public DemoRunnerPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes DemoStarterPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(575,298));
        this.add(getTitlePanel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getTabbedPane(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 5, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getListPane(), new com.ulcjava.base.application.GridBagConstraints(0, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes listScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getListScrollPane() {
	if (listScrollPane == null) {
		listScrollPane = new RScrollPane();
		listScrollPane.setName("listScrollPane");
		listScrollPane.setStyle("fill-vert-border");
		listScrollPane.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		listScrollPane.setPreferredSize(new com.ulcjava.base.application.util.Dimension(150,0));
		listScrollPane.setMinimumSize(new com.ulcjava.base.application.util.Dimension(150,0));
		listScrollPane.setViewPortView(getDemoList());
		listScrollPane.setName("listScrollPane");
	}
	return listScrollPane;
}

/**
 * This method initializes demoList	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RList	
 */
private RList getDemoList() {
	if (demoList == null) {
		demoList = new RList();
		demoList.setName("demoList");
		demoList.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		demoList.setComponentPopupMenu(getActionMenu());
		demoList.setModelConfiguration("{/result \"result=\\\" \\\"+entry.simpleName\"/version \"3.0\"/icon \"\"/tooltip \"result=entry.richDialogId\"}");
	}
	return demoList;
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
 * This method initializes tabbedPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RTabbedPane	
 */
private RTabbedPane getTabbedPane() {
	if (tabbedPane == null) {
		tabbedPane = new RTabbedPane();
		tabbedPane.setName("tabbedPane");
		tabbedPane.setStyle("fill-both-border");
		tabbedPane.setStyleProperties("{/insetsLeft \"0\"}");
		tabbedPane.setName("tabbedPane");
		tabbedPane.addTab("Details", null, getDetailsPane(), null);
		tabbedPane.addTab("Demo", null, getRunnerPane(), null);
	}
	return tabbedPane;
}

/**
 * This method initializes detailsPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBorderLayoutPane	
 */
private RGridBagLayoutPane getDetailsPane() {
	if (detailsPane == null) {
		detailsPane = new RGridBagLayoutPane();
		detailsPane.setName("detailsPane");
		detailsPane.add(getIdLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		detailsPane.add(getDescriptionLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		detailsPane.add(getNameLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		detailsPane.add(getIdTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		detailsPane.add(getNameTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		detailsPane.add(getDescriptionScroller(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 3, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		detailsPane.add(getStartDemoButton(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 3, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		detailsPane.setName("detailsPane");
	}
	return detailsPane;
}

/**
 * This method initializes runnerPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBorderLayoutPane	
 */
private RBorderLayoutPane getRunnerPane() {
	if (runnerPane == null) {
		runnerPane = new RBorderLayoutPane();
		runnerPane.setName("runnerPane");
		runnerPane.setName("runnerPane");
		runnerPane.add(getRunnerControlPane(), com.ulcjava.base.application.ULCBorderLayoutPane.SOUTH);
		runnerPane.add(getDemoRunnerDisplay(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
	}
	return runnerPane;
}

/**
 * This method initializes runnerControlPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane	
 */
private RFlowLayoutPane getRunnerControlPane() {
	if (runnerControlPane == null) {
		runnerControlPane = new RFlowLayoutPane();
		runnerControlPane.setName("runnerControlPane");
		runnerControlPane.setStyleProperties("{/alignment \"RIGHT\"}");
		runnerControlPane.add(getFinishHyperlink());
	}
	return runnerControlPane;
}

/**
 * This method initializes demoRunnerDisplay	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.displays.RCardDisplay	
 */
private RCardDisplay getDemoRunnerDisplay() {
	if (demoRunnerDisplay == null) {
		demoRunnerDisplay = new RCardDisplay();
		demoRunnerDisplay.setName("demoRunnerDisplay");
		demoRunnerDisplay.setBorder(BorderFactory.createBevelBorder(ULCBevelBorder.LOWERED));
		demoRunnerDisplay.setDisplayId("demoRunnerDisplay");
	}
	return demoRunnerDisplay;
}

/**
 * This method initializes actionMenu	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu	
 */
private RPopupMenu getActionMenu() {
	if (actionMenu == null) {
		actionMenu = new RPopupMenu();
		actionMenu.setName("actionMenu");
		actionMenu.add(getShowDetailsAction());
		actionMenu.add(getRunDemoAction());
	}
	return actionMenu;
}

/**
 * This method initializes showDetailsAction	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getShowDetailsAction() {
	if (showDetailsAction == null) {
		showDetailsAction = new RMenuItem();
		showDetailsAction.setText("Show Details");
		showDetailsAction.setIconUri("/ch/ivyteam/ivy/demo/icons/normal/about");
		showDetailsAction.setName("showDetailsAction");
	}
	return showDetailsAction;
}

/**
 * This method initializes runDemoAction	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getRunDemoAction() {
	if (runDemoAction == null) {
		runDemoAction = new RMenuItem();
		runDemoAction.setText("Run Demo");
		runDemoAction.setIconUri("/ch/ivyteam/ivy/demo/icons/normal/play");
		runDemoAction.setName("runDemoAction");
	}
	return runDemoAction;
}

/**
 * This method initializes idLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getIdLabel() {
	if (idLabel == null) {
		idLabel = new RLabel();
		idLabel.setText("Rich Dialog ID:");
		idLabel.setStyle("left-fill-horiz-border");
		idLabel.setName("idLabel");
	}
	return idLabel;
}

/**
 * This method initializes descriptionLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getDescriptionLabel() {
	if (descriptionLabel == null) {
		descriptionLabel = new RLabel();
		descriptionLabel.setText("Description:");
		descriptionLabel.setStyle("left-fill-horiz-border");
		descriptionLabel.setStyleProperties("{/anchor \"NORTHWEST\"}");
		descriptionLabel.setName("descriptionLabel");
	}
	return descriptionLabel;
}

/**
 * This method initializes nameLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getNameLabel() {
	if (nameLabel == null) {
		nameLabel = new RLabel();
		nameLabel.setText("Demo Name:");
		nameLabel.setStyle("left-fill-horiz-border");
		nameLabel.setName("nameLabel");
	}
	return nameLabel;
}

/**
 * This method initializes idTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getIdTextField() {
	if (idTextField == null) {
		idTextField = new RTextField();
		idTextField.setText("rich dialog id");
		idTextField.setStyle("fill-horiz-north-border");
		idTextField.setMargin(new com.ulcjava.base.application.util.Insets(0,5,0,5));
		idTextField.setEditable(false);
		idTextField.setName("idTextField");
	}
	return idTextField;
}

/**
 * This method initializes nameTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getNameTextField() {
	if (nameTextField == null) {
		nameTextField = new RTextField();
		nameTextField.setText("name of demo (from cms)");
		nameTextField.setStyle("fill-horiz-north-border");
		nameTextField.setMargin(new com.ulcjava.base.application.util.Insets(0,5,0,5));
		nameTextField.setEditable(false);
		nameTextField.setName("nameTextField");
	}
	return nameTextField;
}

/**
 * This method initializes descriptionScroller	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getDescriptionScroller() {
	if (descriptionScroller == null) {
		descriptionScroller = new RScrollPane();
		descriptionScroller.setName("descriptionScroller");
		descriptionScroller.setStyle("fill-both-border");
		descriptionScroller.setViewPortView(getDescriptionTextArea());
	}
	return descriptionScroller;
}

/**
 * This method initializes finishHyperlink	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink	
 */
private RHyperlink getFinishHyperlink() {
	if (finishHyperlink == null) {
		finishHyperlink = new RHyperlink();
		finishHyperlink.setText("Finish and close this Demo");
		finishHyperlink.setName("finishHyperlink");
	}
	return finishHyperlink;
}

/**
 * This method initializes startDemoButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getStartDemoButton() {
	if (startDemoButton == null) {
		startDemoButton = new RButton();
		startDemoButton.setText("Run this Demo");
		startDemoButton.setStyle("border-all");
		startDemoButton.setStyleProperties("{/anchor \"NORTH\"}");
		startDemoButton.setIconUri("/ch/ivyteam/ivy/demo/icons/normal/play");
		startDemoButton.setName("startDemoButton");
	}
	return startDemoButton;
}

/**
 * This method initializes finishApplicationButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getFinishApplicationButton() {
	if (finishApplicationButton == null) {
		finishApplicationButton = new RButton();
		finishApplicationButton.setText("Exit");
		finishApplicationButton.setStyle("border-left-bottom-right");
		finishApplicationButton.setIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/demo/icons/normal/exit\") %>");
		finishApplicationButton.setStyleProperties("{/fill \"HORIZONTAL\"}");
		finishApplicationButton.setName("finishApplicationButton");
	}
	return finishApplicationButton;
}

/**
 * This method initializes demoListTitleLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getDemoListTitleLabel() {
	if (demoListTitleLabel == null) {
		demoListTitleLabel = new RLabel();
		demoListTitleLabel.setText("Available Demos:");
		demoListTitleLabel.setStyle("fill-horiz-north-border");
		demoListTitleLabel.setName("demoListTitleLabel");
	}
	return demoListTitleLabel;
}

/**
 * This method initializes listPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getListPane() {
	if (listPane == null) {
		listPane = new RGridBagLayoutPane();
		listPane.setName("listPane");
		listPane.setStyleProperties("{/fill \"VERTICAL\"/weightY \"1\"/weightX \"0\"}");
		listPane.add(getDemoListTitleLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		listPane.add(getListScrollPane(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		listPane.add(getFinishApplicationButton(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return listPane;
}

/**
 * This method initializes descriptionTextArea	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHtmlPane	
 */
private RHtmlPane getDescriptionTextArea() {
	if (descriptionTextArea == null) {
		descriptionTextArea = new RHtmlPane();
		descriptionTextArea.setFocusable(false);
		descriptionTextArea.setName("descriptionTextArea");
		descriptionTextArea.setText("descriptionTextArea");
	}
	return descriptionTextArea;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"