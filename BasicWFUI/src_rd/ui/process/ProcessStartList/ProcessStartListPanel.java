package ui.process.ProcessStartList;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RTable;
import com.ulcjava.base.application.ULCTable;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu;
import ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem;
import ch.ivyteam.ivy.richdialog.widgets.containers.RToolBar;
import ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink;

/**
 * RichDialog panel implementation for PendenzenListePanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class ProcessStartListPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RScrollPane ScrollPane = null;
private RTable Table = null;
private RButton Button = null;  //  @jve:decl-index=0:visual-constraint="507,12"
private RLabel captionLabel = null;
private RPopupMenu doPopupMenu = null;
private RMenuItem startProcessMenuItem = null;
private RToolBar ToolBar = null;
private RButton startButton = null;
private RHyperlink Hyperlink = null;
/**
   * Create a new instance of PendenzenListePanel
   */
  public ProcessStartListPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes PendenzenListePanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(632,408));
        this.add(getScrollPane(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getButton(), new com.ulcjava.base.application.GridBagConstraints(2, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getCaptionLabel(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getToolBar(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getHyperlink(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
		ScrollPane.setStyle("fill-horiz-north-border");
		ScrollPane.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		ScrollPane.setViewPortView(getTable());
	}
	return ScrollPane;
}

/**
 * This method initializes Table	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTable	
 */
private RTable getTable() {
	if (Table == null) {
		Table = new RTable();
		Table.setName("Table");
		Table.setSortable(true);
		Table.setModelConfiguration("{/showTableheader true /autoTableheader false /showtooltip false /showIcons false /emptyTableText \"---\"/version \"3.0\"/columns {{/result \"result=entry.getName().length()==0 ? entry.getUserFriendlyRequestPath() : entry.getName()\"/version \"3.0\"/tooltip \"\"/icon \"result=ivy.cms.cr(\\\"/basicwfui/images/processstart\\\")\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/basicwfui/labels/process/process\\\")\"/field \"\"/editable \"\"/condition \"\"/columnWidth \"200\"/cellWidget \"\"}{/result \"result=entry.getDescription()\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/basicwfui/labels/common/description\\\")\"/field \"\"/editable \"\"/condition \"\"/columnWidth \"600\"/cellWidget \"\"}}}");
		Table.setAutoResizeMode(ULCTable.AUTO_RESIZE_SUBSEQUENT_COLUMNS);
		Table.setComponentPopupMenu(getDoPopupMenu());
		Table.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
	}
	return Table;
}

/**
 * This method initializes Button	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getButton() {
	if (Button == null) {
		Button = new RButton();
		Button.setStyleProperties("{/anchor \"NORTHEAST\"}");
		Button.setStyle("basicwfui_actionbutton");
		Button.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/common/closeTab\")%>");
		Button.setName("Button");
	}
	return Button;
}

/**
 * This method initializes captionLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCaptionLabel() {
	if (captionLabel == null) {
		captionLabel = new RLabel();
		captionLabel.setStyle("basicwfui_caption");
		captionLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/main/processstartlist\")%>");
		captionLabel.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/help/processStartList\")%>");
		captionLabel.setName("captionLabel");
	}
	return captionLabel;
}

/**
 * This method initializes doPopupMenu	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu	
 */
private RPopupMenu getDoPopupMenu() {
	if (doPopupMenu == null) {
		doPopupMenu = new RPopupMenu();
		doPopupMenu.setName("doPopupMenu");
		doPopupMenu.add(getStartProcessMenuItem());
	}
	return doPopupMenu;
}

/**
 * This method initializes startProcessMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getStartProcessMenuItem() {
	if (startProcessMenuItem == null) {
		startProcessMenuItem = new RMenuItem();
		startProcessMenuItem.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/process/startProcess\")%>");
		startProcessMenuItem.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/basicwfui/images/processstart\")%>");
		startProcessMenuItem.setName("startProcessMenuItem");
	}
	return startProcessMenuItem;
}

/**
 * This method initializes ToolBar	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RToolBar	
 */
private RToolBar getToolBar() {
	if (ToolBar == null) {
		ToolBar = new RToolBar();
		ToolBar.setName("ToolBar");
		ToolBar.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		ToolBar.add(getStartButton());
	}
	return ToolBar;
}

/**
 * This method initializes startButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getStartButton() {
	if (startButton == null) {
		startButton = new RButton();
		startButton.setName("startButton");
		startButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/process/startProcess\")%>");
		startButton.setStyle("basicwfui_toolbarbutton");
		startButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/help/startProcess\")%><%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/help/startProcess\")%>");
		startButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/basicwfui/images/processstart\")%>");
	}
	return startButton;
}

/**
 * This method initializes Hyperlink	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink	
 */
private RHyperlink getHyperlink() {
	if (Hyperlink == null) {
		Hyperlink = new RHyperlink();
		Hyperlink.setName("Hyperlink");
		Hyperlink.setStyleProperties("{/anchor \"CENTER\"}");
		Hyperlink.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/process/refresh\")%>");
		Hyperlink.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/basicwfui/images/processstart_48\")%>");
	}
	return Hyperlink;
}
}  //  @jve:decl-index=0:visual-constraint="32,6"