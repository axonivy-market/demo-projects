package ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList;

import ch.ivyteam.ivy.addons.widgets.RTableWithExcelExport;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBorderLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RSplitPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RToolBar;
import ch.ivyteam.ivy.richdialog.widgets.displays.RCloseableTabbedDisplay;
import ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem;
import ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu;

import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.ULCSplitPane;
import com.ulcjava.base.application.border.ULCEtchedBorder;

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
private RSplitPane casesSplitPane = null;
private RScrollPane casesScrollPane = null;
private RTableWithExcelExport casesTable = null;
private RBorderLayoutPane casesBorderLayoutPane = null;
private RLabel footerLabel = null;
private RCloseableTabbedDisplay caseDisplayTabbedDisplay = null;
private RPopupMenu caseActionsPopupMenu = null;  //  @jve:decl-index=0:visual-constraint="695,175"
private RMenuItem informOnCaseOnSiblingTabMenuItem = null;
private RMenuItem refreshMenuItem = null;
private RBoxPane headerBoxPane = null;
private RButton destroyCaseButton = null;
private RButton informOnCaseButton = null;
private RMenuItem destroyCaseMenuItem = null;
private RGridBagLayoutPane findCasesGridBagLayoutPane = null;
private RTextField caseNameCriteriaTextField = null;
private RHyperlink findCasesHyperlink = null;
private RBoxPane findBoxPane = null;
private RBoxPane caseActionsBoxPane = null;
  
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
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(616,489));        
        this.add(getCasesSplitPane(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
        this.add(getCasesSplitPane(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
  }

/**
 * This method initializes caseActionsToolBar	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RToolBar	
 */
private RToolBar getCaseActionsToolBar() {
	if (caseActionsToolBar == null) {
		caseActionsToolBar = new RToolBar();
		caseActionsToolBar.setName("caseActionsToolBar");
		caseActionsToolBar.setStyleProperties("{/fill \"HORIZONTAL\"/insetsLeft \"0\"/weightX \"1\"}");
		caseActionsToolBar.setVisible(false);
		caseActionsToolBar.setFloatable(false);
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
		refreshButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/refresh32\")%>");
		refreshButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/refreshCaseListShortDesc\")%>");
		refreshButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/refreshCaseListLongDesc\")%>");
		refreshButton.setBorderPainted(false);
	}
	return refreshButton;
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
		casesSplitPane.setStyleProperties("{/orientation \"VERTICAL_SPLIT\"/dividerLocation \"1\"}");
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
		casesScrollPane.setStyleProperties("{/horizontalScrollBarPolicy \"AS_NEEDED\"/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		casesScrollPane.setViewPortView(getCasesTable());
	}
	return casesScrollPane;
}

/**
 * This method initializes casesTable	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTable	
 */
private RTableWithExcelExport getCasesTable() {
	if (casesTable == null) {
		casesTable = new RTableWithExcelExport();
		casesTable.setName("casesTable");
		casesTable.setModelConfiguration("{/showTableheader true /autoTableheader false /showtooltip false /showIcons true /version \"3.0\"/emptyTableText \"\"/columns {{/result \"result=entry.wfCase.getBusinessPriority() is initialized? \\r\\n\\tivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/caseRisk/plainStrings/\\\" + Enum.valueOf(ch.ivyteam.ivy.workflow.WorkflowPriority.class, entry.wfCase.getBusinessPriority()).ordinal() )\\r\\n\\t: \\\"\\\"\"/version \"3.0\"/tooltip \"\"/icon \"result=entry.wfCase.getBusinessPriority() is initialized? \\r\\n\\t\\t\\\"/ch/ivyteam/ivy/workflow/ui/common/workflowPriorities/images/\\\" + Enum.valueOf(ch.ivyteam.ivy.workflow.WorkflowPriority.class, entry.wfCase.getBusinessPriority()).ordinal() + \\\"_16\\\"\\r\\n\\t\\t: \\\"\\\"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/otherBusinessData/plainStrings/businessPriorityShort\\\")\"/field \"\"/editable \"\"/condition \"\"/columnWidth \"100\"/columnStyle \"\"/cellWidget \"\"}{/result \"result=ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/caseState/plainStrings/\\\"  + entry.wfCase.getState())\"/version \"3.0\"/tooltip \"\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/case/caseState/images/\\\" + entry.wfCase.getState() + \\\"16\\\"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/stateShort\\\")\"/field \"\"/columnWidth \"100\"/columnStyle \"\"}{/result \"result=entry.wfCase.getName()\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/case\\\")\"/field \"\"/columnWidth \"350\"/columnStyle \"wfCaseWrapper\"}{/result \"result=entry.wfCase.getBusinessMainContactId() is initialized? entry.wfCase.getBusinessMainContactId(): \\\"\\\"\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/businessMainContact/plainStrings/idLong\\\")\"/field \"\"/editable \"\"/condition \"\"/columnWidth \"80\"/columnStyle \"\"/cellWidget \"\"}{/result \"result=entry.wfCase.getBusinessMainContactType() is initialized? entry.wfCase.getBusinessMainContactType(): \\\"\\\"\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/businessMainContact/plainStrings/typeLong\\\")\"/field \"\"/editable \"\"/condition \"\"/columnWidth \"80\"/columnStyle \"\"/cellWidget \"\"}{/result \"result=entry.wfCase.getBusinessMainContactName() is initialized? entry.wfCase.getBusinessMainContactName(): \\\"\\\"\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/businessMainContact/plainStrings/nameLong\\\")\"/field \"\"/editable \"\"/condition \"\"/columnWidth \"250\"/columnStyle \"\"/cellWidget \"\"}{/result \"result=entry.wfCase.getBusinessObjectCode() is initialized? entry.wfCase.getBusinessObjectCode(): \\\"\\\"\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/businessObject/plainStrings/codeShort\\\")\"/field \"\"/editable \"\"/condition \"\"/columnWidth \"80\"/columnStyle \"\"/cellWidget \"\"}{/result \"result=entry.wfCase.getBusinessObjectName() is initialized? entry.wfCase.getBusinessObjectName(): \\\"\\\"\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/businessObject/plainStrings/nameShort\\\")\"/field \"\"/editable \"\"/condition \"\"/columnWidth \"200\"/columnStyle \"\"/cellWidget \"\"}{/result \"result=entry.getBusinessStartTimestamp() is initialized? entry.getBusinessStartTimestamp().format(ivy.var.xivy_workflow_ui_restricted_dateTimeFormatPattern): \\\"\\\"\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/otherBusinessData/plainStrings/businessStartDateTimeLong\\\")\"/field \"businessStartTimestamp\"/editable \"\"/condition \"\"/columnWidth \"100\"/columnStyle \"date\"/cellWidget \"\"}{/result \"result=entry.getBusinessMilestoneTimestamp() is initialized? entry.getBusinessMilestoneTimestamp().format(ivy.var.xivy_workflow_ui_restricted_dateFormatPattern): \\\"\\\"\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/otherBusinessData/plainStrings/businessMilestoneDateTimeLong\\\")\"/field \"businessMilestoneTimestamp\"/editable \"\"/condition \"\"/columnWidth \"80\"/columnStyle \"date\"/cellWidget \"\"}{/result \"result=entry.wfCase.getBusinessCreatorUser() is initialized? entry.wfCase.getBusinessCreatorUser(): \\\"\\\"\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/otherBusinessData/plainStrings/businessCreatorUserShort\\\")\"/field \"\"/editable \"\"/condition \"\"/columnWidth \"100\"/columnStyle \"\"/cellWidget \"\"}{/result \"result=entry.wfCase.getProcessCategoryName() is initialized? entry.wfCase.getProcessCategoryName(): \\\"\\\"\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseProcessCategoryName\\\")\"/field \"\"/columnWidth \"150\"/columnStyle \"\"}{/result \"result=entry.wfCase.getProcessName() is initialized? entry.wfCase.getProcessName(): \\\"\\\"\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseProcessName\\\")\"/field \"\"/columnWidth \"150\"/columnStyle \"\"}{/result \"result=entry.wfCase.getTypeName() is initialized? entry.wfCase.getTypeName(): \\\"\\\"\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseTypeName\\\")\"/field \"\"/columnWidth \"150\"/columnStyle \"\"}{/result \"result=entry.wfCase.getSubTypeName() is initialized? entry.wfCase.getSubTypeName(): \\\"\\\"\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseSubTypeName\\\")\"/field \"\"/columnWidth \"150\"/columnStyle \"\"}{/result \"result=entry.wfCase.getIdentifier()\"/version \"3.0\"/tooltip \"\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/case/images/CASE_ID16\\\"\\r\\n\\r\\n/*\\r\\n\\\"/ch/ivyteam/ivy/workflow/ui/case/images/\\\" + \\r\\n\\t(ch.ivyteam.ivy.workflow.ui.utils.WorkflowUIAccessPermissionHandler.isSessionUserTeamManagerOfCaseAsSystemUser(entry)? \\r\\n\\t\\\"CASE_IDTeamManager16\\\": \\r\\n\\t\\\"CASE_ID16\\\")\\r\\n*/\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/id\\\")\"/field \"\"/condition \"\"/columnWidth \"100\"/columnStyle \"\"/cellWidget \"\"}}}");
		casesTable.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		casesTable.setRowHeight(20);
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
private RCloseableTabbedDisplay getCaseDisplayTabbedDisplay() {
	if (caseDisplayTabbedDisplay == null) {
		caseDisplayTabbedDisplay = new RCloseableTabbedDisplay();
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
		caseActionsPopupMenu.add(getInformOnCaseOnSiblingTabMenuItem());
		caseActionsPopupMenu.add(getDestroyCaseMenuItem());
		caseActionsPopupMenu.add(getRefreshMenuItem());
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
		headerBoxPane.set(0, 1, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getCaseActionsToolBar());
		headerBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getCaseActionsBoxPane());
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
		destroyCaseButton.setIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/destroy32\") %>");
		destroyCaseButton.setEnabled(false);
		destroyCaseButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/destroyCaseShortDesc\")%>");
		destroyCaseButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/destroyCaseLongDesc\")%>");
		destroyCaseButton.setBorderPainted(false);
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
		informOnCaseButton.setIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/detail32\") %>");		
		informOnCaseButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/informOnCaseLongDesc\")%>");
		informOnCaseButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/informOnCaseShortDesc\")%>");
		informOnCaseButton.setName("informOnCaseButton");
		informOnCaseButton.setBorderPainted(false);
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
 * This method initializes findCasesGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getFindCasesGridBagLayoutPane() {
	if (findCasesGridBagLayoutPane == null) {
		findCasesGridBagLayoutPane = new RGridBagLayoutPane();
		findCasesGridBagLayoutPane.setBorder(BorderFactory.createEmptyBorder(0, 0, 0, 0));
		findCasesGridBagLayoutPane.setName("findCasesGridBagLayoutPane");
		findCasesGridBagLayoutPane.setStyleProperties("{/fill \"NONE\"}");
		findCasesGridBagLayoutPane.setOpaque(false);
		findCasesGridBagLayoutPane.add(getFindBoxPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return findCasesGridBagLayoutPane;
}

/**
 * This method initializes caseNameCriteriaTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getCaseNameCriteriaTextField() {
	if (caseNameCriteriaTextField == null) {
		caseNameCriteriaTextField = new RTextField();
		caseNameCriteriaTextField.setBorder(BorderFactory.createEmptyBorder(0, 0, 0, 0));
		caseNameCriteriaTextField.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/findCaseByNameLongDesc\")%>");
		caseNameCriteriaTextField.setColumns(20);
		caseNameCriteriaTextField.setText("Find cases");
		caseNameCriteriaTextField.setSelectAllOnFocusGained(true);
		caseNameCriteriaTextField.setStyleProperties("{/backgroundColor {/b \"255\"/r \"255\"/g \"255\"}/insetsTop \"0\"/insetsBottom \"0\"/opaque \"true\"/fill \"BOTH\"/insetsLeft \"0\"/weightY \"0\"/weightX \"1\"}");
		caseNameCriteriaTextField.setName("caseNameCriteriaTextField");
	}
	return caseNameCriteriaTextField;
}

/**
 * This method initializes findCasesHyperlink	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink	
 */
private RHyperlink getFindCasesHyperlink() {
	if (findCasesHyperlink == null) {
		findCasesHyperlink = new RHyperlink();
		findCasesHyperlink.setName("findCasesHyperlink");
		findCasesHyperlink.setIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/view24\") %>");
		findCasesHyperlink.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/find\")%>");
		findCasesHyperlink.setStyleProperties("{/backgroundColor {/b \"255\"/r \"255\"/g \"255\"}/insetsTop \"0\"/insetsRight \"0\"/insetsLeft \"0\"}");
	}
	return findCasesHyperlink;
}

/**
 * This method initializes findBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getFindBoxPane() {
	if (findBoxPane == null) {
		findBoxPane = new RBoxPane();
		findBoxPane.setName("findBoxPane");
		findBoxPane.setStyleProperties("{/insetsRight \"3\"/insetsLeft \"3\"/weightX \"1\"}");
		findBoxPane.setBorder(BorderFactory.createEtchedBorder(ULCEtchedBorder.LOWERED));
		findBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getCaseNameCriteriaTextField());
		findBoxPane.set(1, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getFindCasesHyperlink());
	}
	return findBoxPane;
}

/**
 * This method initializes caseActionsBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getCaseActionsBoxPane() {
	if (caseActionsBoxPane == null) {
		RFiller hFiller = new RFiller();
		hFiller.setStyleProperties("{/weightX \"1\"}");
		caseActionsBoxPane = new RBoxPane();
		caseActionsBoxPane.setName("caseActionsBoxPane");
		caseActionsBoxPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		caseActionsBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getInformOnCaseButton());
		caseActionsBoxPane.set(1, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getDestroyCaseButton());
		caseActionsBoxPane.set(2, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getRefreshButton());
		caseActionsBoxPane.set(3, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, hFiller);
		caseActionsBoxPane.set(4, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getFindCasesGridBagLayoutPane());
	}
	return caseActionsBoxPane;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"