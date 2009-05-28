package ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RTable;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBorderLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RSplitPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RToolBar;
import ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay;
import ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem;
import ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu;
import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.ULCSplitPane;
import com.ulcjava.base.application.border.ULCTitledBorder;
import com.ulcjava.base.application.util.Color;
import com.ulcjava.base.application.util.Font;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import com.ulcjava.base.application.ULCTable;

/**
 * RichDialog panel implementation for CaseDisplayListPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class CaseDisplayListPanel extends RichDialogBorderPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RToolBar caseActionsToolBar = null;
private RButton refreshButton = null;
private RButton closeButton = null;
private RSplitPane casesSplitPane = null;
private RScrollPane casesScrollPane = null;
private RTable casesTable = null;
private RBorderLayoutPane casesBorderLayoutPane = null;
private RLabel footerLabel = null;
private RTabbedDisplay caseDisplayTabbedDisplay = null;
private RPopupMenu caseActionsPopupMenu = null;  //  @jve:decl-index=0:visual-constraint="695,175"
private RMenuItem informOnCaseOnSiblingTabMenuItem = null;
private RMenuItem informOnCaseUnderThisTabMenuItem = null;
private RPopupMenu.RSeparator aPopupMenuSeparator = null;
private RMenuItem refreshMenuItem = null;
private RBoxPane headerBoxPane = null;
private RButton destroyCaseButton = null;
private RButton informOnCaseButton = null;
private RMenuItem destroyCaseMenuItem = null;
private RPopupMenu.RSeparator a2PopupMenuSeparator = null;
private RBoxPane findByCaseNameBoxPane = null;
private RToolBar findCaseToolBar = null;
private RLabel findCaseByNameLabel = null;
private RTextField caseNameCriteriaTextField = null;
private RButton findButton = null;
  
  /**
   * Create a new instance of CaseDisplayListPanel
   */
  public CaseDisplayListPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes CaseDisplayListPanel
   * @return void
   */
  public void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(616,489));        this.add(getCasesSplitPane(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);

        this.add(getCasesSplitPane(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
  }

/**
 * This method initializes caseActionsToolBar	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RToolBar	
 */
private RToolBar getCaseActionsToolBar() {
	if (caseActionsToolBar == null) {
		RFiller Filler = new RFiller();
		caseActionsToolBar = new RToolBar();
		caseActionsToolBar.setName("caseActionsToolBar");
		caseActionsToolBar.setStyleProperties("{/fill \"HORIZONTAL\"/insetsLeft \"0\"/weightX \"1\"}");
		caseActionsToolBar.setFloatable(false);
		caseActionsToolBar.add(getRefreshButton());
		caseActionsToolBar.add(getInformOnCaseButton());
		caseActionsToolBar.add(getDestroyCaseButton());
		caseActionsToolBar.add(Filler);
		caseActionsToolBar.add(getCloseButton());
	}
	return caseActionsToolBar;
}

/**
 * This method initializes refreshButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getRefreshButton() {
	if (refreshButton == null) {
		refreshButton = new RButton();
		refreshButton.setName("refreshButton");
		refreshButton.setStyle("toolBarButton");
		refreshButton.setIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/refreshCaseList24\") %>");
		refreshButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/refreshCaseListLongDesc\")%>");
		refreshButton.setRolloverIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/refreshCaseList32\") %>");
	}
	return refreshButton;
}

/**
 * This method initializes closeButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getCloseButton() {
	if (closeButton == null) {
		closeButton = new RButton();
		closeButton.setName("closeButton");
		closeButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/close24\")%>");
		closeButton.setRolloverIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/close32\")%>");
		closeButton.setVisible(true);
		closeButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/close\")%>");
	}
	return closeButton;
}

/**
 * This method initializes casesSplitPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RSplitPane	
 */
private RSplitPane getCasesSplitPane() {
	if (casesSplitPane == null) {
		casesSplitPane = new RSplitPane();
		casesSplitPane.setName("casesSplitPane");
		casesSplitPane.setStyleProperties("{/dividerLocation \"0.45\"}");
		casesSplitPane.setLeftComponent(getCasesBorderLayoutPane());
		casesSplitPane.setRightComponent(getCaseDisplayTabbedDisplay());
		casesSplitPane.setOrientation(ULCSplitPane.VERTICAL_SPLIT);
	}
	return casesSplitPane;
}

/**
 * This method initializes casesScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getCasesScrollPane() {
	if (casesScrollPane == null) {
		casesScrollPane = new RScrollPane();
		casesScrollPane.setName("casesScrollPane");
		casesScrollPane.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		casesScrollPane.setViewPortView(getCasesTable());
	}
	return casesScrollPane;
}

/**
 * This method initializes casesTable	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTable	
 */
private RTable getCasesTable() {
	if (casesTable == null) {
		casesTable = new RTable();
		casesTable.setName("casesTable");
		casesTable.setModelConfiguration("{/showTableheader \"true\"/autoTableheader \"false\"/showtooltip \"true\"/showIcons \"true\"/version \"3.0\"/emptyTableText \"n/a\"/columns {{/result \"result=entry.getIdentifier()\"/version \"3.0\"/tooltip \"result=entry.getIdentifier()\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/case/images/CASE_ID16\\\"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/id\\\")\"/field \"\"/columnWidth \"60\"}{/result \"result=entry.getName()\"/version \"3.0\"/tooltip \"result=entry.getName()\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/case\\\")\"/field \"\"/columnWidth \"300\"/columnStyle \"\"}{/result \"result=entry.getState()\"/version \"3.0\"/tooltip \"result=entry.getState()\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/case/images/caseState\\\" + entry.getState() + \\\"16\\\"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseState\\\")\"/field \"\"/columnWidth \"20\"}{/result \"result=(entry.getStartTimestamp() is initialized? new DateTime(entry.getStartTimestamp()).format(): \\\"n/a\\\")\"/version \"3.0\"/tooltip \"result=(entry.getStartTimestamp() is initialized? new DateTime(entry.getStartTimestamp()).format(): \\\"n/a\\\")\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/startDate\\\")\"/field \"\"/columnWidth \"120\"}{/result \"result=entry.getCreatorUserName()\"/version \"3.0\"/tooltip \"result=entry.getCreatorUserName()\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseCreatorUserName\\\")\"/field \"\"}{/result \"result=(entry.getProcessCategoryName() is initialized? entry.getProcessCategoryName(): \\\"n/a\\\")\"/version \"3.0\"/tooltip \"result=(entry.getProcessCategoryName() is initialized? entry.getProcessCategoryName(): \\\"n/a\\\")\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseProcessCategoryName\\\")\"/field \"\"}{/result \"result=(entry.getProcessName() is initialized? entry.getProcessName(): \\\"n/a\\\")\"/version \"3.0\"/tooltip \"result=(entry.getProcessName() is initialized? entry.getProcessName(): \\\"n/a\\\")\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseProcessName\\\")\"/field \"\"}{/result \"result=(entry.getTypeName() is initialized? entry.getTypeName(): \\\"n/a\\\")\"/version \"3.0\"/tooltip \"result=(entry.getTypeName() is initialized? entry.getTypeName(): \\\"n/a\\\")\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseTypeName\\\")\"/field \"\"}{/result \"result=(entry.getSubTypeName() is initialized? entry.getSubTypeName(): \\\"n/a\\\")\"/version \"3.0\"/tooltip \"result=(entry.getSubTypeName() is initialized? entry.getSubTypeName(): \\\"n/a\\\")\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseSubTypeName\\\")\"/field \"\"}}}");
		casesTable.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		casesTable.setAutoResizeMode(ULCTable.AUTO_RESIZE_NEXT_COLUMN);
		casesTable.setComponentPopupMenu(getCaseActionsPopupMenu());
		casesTable.setSortable(true);
	}
	return casesTable;
}

/**
 * This method initializes casesBorderLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBorderLayoutPane	
 */
private RBorderLayoutPane getCasesBorderLayoutPane() {
	if (casesBorderLayoutPane == null) {
		casesBorderLayoutPane = new RBorderLayoutPane();
		casesBorderLayoutPane.setName("casesBorderLayoutPane");
		casesBorderLayoutPane.add(getCasesScrollPane(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
		casesBorderLayoutPane.add(getFooterLabel(), com.ulcjava.base.application.ULCBorderLayoutPane.SOUTH);
		casesBorderLayoutPane.add(getHeaderBoxPane(), com.ulcjava.base.application.ULCBorderLayoutPane.NORTH);
	}
	return casesBorderLayoutPane;
}

/**
 * This method initializes footerLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getFooterLabel() {
	if (footerLabel == null) {
		footerLabel = new RLabel();
		footerLabel.setText("...");
		footerLabel.setName("footerLabel");
	}
	return footerLabel;
}

/**
 * This method initializes caseDisplayTabbedDisplay	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay	
 */
private RTabbedDisplay getCaseDisplayTabbedDisplay() {
	if (caseDisplayTabbedDisplay == null) {
		caseDisplayTabbedDisplay = new RTabbedDisplay();
		caseDisplayTabbedDisplay.setName("caseDisplayTabbedDisplay");
	}
	return caseDisplayTabbedDisplay;
}

/**
 * This method initializes caseActionsPopupMenu	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu	
 */
private RPopupMenu getCaseActionsPopupMenu() {
	if (caseActionsPopupMenu == null) {
		caseActionsPopupMenu = new RPopupMenu();
		caseActionsPopupMenu.setName("caseActionsPopupMenu");
		caseActionsPopupMenu.add(getRefreshMenuItem());
		caseActionsPopupMenu.add(getAPopupMenuSeparator());
		caseActionsPopupMenu.add(getInformOnCaseOnSiblingTabMenuItem());
		caseActionsPopupMenu.add(getInformOnCaseUnderThisTabMenuItem());
		caseActionsPopupMenu.add(getA2PopupMenuSeparator());
		caseActionsPopupMenu.add(getDestroyCaseMenuItem());
	}
	return caseActionsPopupMenu;
}

/**
 * This method initializes informOnCaseOnSiblingTabMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getInformOnCaseOnSiblingTabMenuItem() {
	if (informOnCaseOnSiblingTabMenuItem == null) {
		informOnCaseOnSiblingTabMenuItem = new RMenuItem();
		informOnCaseOnSiblingTabMenuItem.setText("Open case information on sibling tab");
		informOnCaseOnSiblingTabMenuItem.setName("informOnCaseOnSiblingTabMenuItem");
	}
	return informOnCaseOnSiblingTabMenuItem;
}

/**
 * This method initializes informOnCaseUnderThisTabMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getInformOnCaseUnderThisTabMenuItem() {
	if (informOnCaseUnderThisTabMenuItem == null) {
		informOnCaseUnderThisTabMenuItem = new RMenuItem();
		informOnCaseUnderThisTabMenuItem.setText("Open the case information under this tab");
		informOnCaseUnderThisTabMenuItem.setName("informOnCaseUnderThisTabMenuItem");
	}
	return informOnCaseUnderThisTabMenuItem;
}

/**
 * This method initializes aPopupMenuSeparator	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu.RSeparator	
 */
private RPopupMenu.RSeparator getAPopupMenuSeparator() {
	if (aPopupMenuSeparator == null) {
		aPopupMenuSeparator = new RPopupMenu.RSeparator();
		aPopupMenuSeparator.setName("aPopupMenuSeparator");
	}
	return aPopupMenuSeparator;
}

/**
 * This method initializes refreshMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getRefreshMenuItem() {
	if (refreshMenuItem == null) {
		refreshMenuItem = new RMenuItem();
		refreshMenuItem.setText("Refresh the list of cases");
		refreshMenuItem.setName("refreshMenuItem");
	}
	return refreshMenuItem;
}

/**
 * This method initializes headerBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getHeaderBoxPane() {
	if (headerBoxPane == null) {
		headerBoxPane = new RBoxPane();
		headerBoxPane.setName("headerBoxPane");
		headerBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getCaseActionsToolBar());
		headerBoxPane.set(0, 1, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getFindByCaseNameBoxPane());
	}
	return headerBoxPane;
}


/**
 * This method initializes destroyCaseButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getDestroyCaseButton() {
	if (destroyCaseButton == null) {
		destroyCaseButton = new RButton();
		destroyCaseButton.setName("destroyCaseButton");
		destroyCaseButton.setStyle("toolBarButton");
		destroyCaseButton.setIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/destroyCase24\") %>");
		destroyCaseButton.setEnabled(false);
		destroyCaseButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/destroyCaseLongDesc\")%>");
		destroyCaseButton.setRolloverIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/destroyCase32\") %>");
	}
	return destroyCaseButton;
}

/**
 * This method initializes informOnCaseButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getInformOnCaseButton() {
	if (informOnCaseButton == null) {
		informOnCaseButton = new RButton();
		informOnCaseButton.setEnabled(false);
		informOnCaseButton.setVisible(true);
		informOnCaseButton.setStyle("toolBarButton");
		informOnCaseButton.setIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/informOnCase24\") %>");
		informOnCaseButton.setRolloverIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/informOnCase32\") %>");
		informOnCaseButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/informOnCaseLongDesc\")%>");
		informOnCaseButton.setName("informOnCaseButton");
	}
	return informOnCaseButton;
}

/**
 * This method initializes destroyCaseMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getDestroyCaseMenuItem() {
	if (destroyCaseMenuItem == null) {
		destroyCaseMenuItem = new RMenuItem();
		destroyCaseMenuItem.setEnabled(false);
		destroyCaseMenuItem.setText("Destroy case");
		destroyCaseMenuItem.setName("destroyCaseMenuItem");
	}
	return destroyCaseMenuItem;
}

/**
 * This method initializes a2PopupMenuSeparator	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu.RSeparator	
 */
private RPopupMenu.RSeparator getA2PopupMenuSeparator() {
	if (a2PopupMenuSeparator == null) {
		a2PopupMenuSeparator = new RPopupMenu.RSeparator();
		a2PopupMenuSeparator.setName("a2PopupMenuSeparator");
	}
	return a2PopupMenuSeparator;
}

/**
 * This method initializes findByCaseNameBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getFindByCaseNameBoxPane() {
	if (findByCaseNameBoxPane == null) {
		findByCaseNameBoxPane = new RBoxPane();
		findByCaseNameBoxPane.setName("findByCaseNameBoxPane");
		findByCaseNameBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getFindCaseToolBar());
	}
	return findByCaseNameBoxPane;
}

/**
 * This method initializes findCaseToolBar	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RToolBar	
 */
private RToolBar getFindCaseToolBar() {
	if (findCaseToolBar == null) {
		findCaseToolBar = new RToolBar();
		findCaseToolBar.setName("findCaseToolBar");
		findCaseToolBar.setFloatable(false);
		findCaseToolBar.setStyleProperties("{/fill \"HORIZONTAL\"/insetsLeft \"0\"/weightX \"1\"}");
		findCaseToolBar.add(getFindCaseByNameLabel());
		findCaseToolBar.add(getCaseNameCriteriaTextField());
		findCaseToolBar.add(getFindButton());
	}
	return findCaseToolBar;
}

/**
 * This method initializes findCaseByNameLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getFindCaseByNameLabel() {
	if (findCaseByNameLabel == null) {
		findCaseByNameLabel = new RLabel();
		findCaseByNameLabel.setName("findCaseByNameLabel");
		findCaseByNameLabel.setIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/findOnSelection16\") %>");
		findCaseByNameLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/findCaseByNameShortDesc\")%>");
		findCaseByNameLabel.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/findCaseByNameLongDesc\")%>\n\n");
	}
	return findCaseByNameLabel;
}

/**
 * This method initializes caseNameCriteriaTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getCaseNameCriteriaTextField() {
	if (caseNameCriteriaTextField == null) {
		caseNameCriteriaTextField = new RTextField();
		caseNameCriteriaTextField.setName("caseNameCriteriaTextField");
		caseNameCriteriaTextField.setText("");
		caseNameCriteriaTextField.setStyleProperties("{/weightX \"1\"}");
		caseNameCriteriaTextField.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/findCaseByNameLongDesc\")%>");
	}
	return caseNameCriteriaTextField;
}

/**
 * This method initializes findButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getFindButton() {
	if (findButton == null) {
		findButton = new RButton();
		findButton.setName("findButton");
		findButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/find\")%>");
		findButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/findCaseByNameLongDesc\")%>");
		findButton.setEnabler(getCaseNameCriteriaTextField());
	}
	return findButton;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"