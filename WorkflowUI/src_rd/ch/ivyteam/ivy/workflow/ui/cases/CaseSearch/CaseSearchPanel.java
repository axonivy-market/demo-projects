package ch.ivyteam.ivy.workflow.ui.cases.CaseSearch;

import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RRadioButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RTree;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RCollapsiblePane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RToolBar;
import ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem;
import ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu;
import ch.ivyteam.ivy.workflow.ui.cases.CaseFiltersSelect.CaseFiltersSelectPanel;
import ch.ivyteam.ivy.workflow.ui.cases.CaseHierarchyLayoutSelect.CaseHierarchyLayoutSelectPanel;

import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.ULCButtonGroup;
import com.ulcjava.base.application.ULCContainer;
import com.ulcjava.base.application.border.ULCTitledBorder;
import com.ulcjava.base.application.util.Color;
import com.ulcjava.base.application.util.Font;

/**
 * RichDialog panel implementation for CaseSearchPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class CaseSearchPanel extends RichDialogBorderPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RLabel footerLabel = null;
private RScrollPane caseHierarchyLayoutScrollPane = null;
private RGridBagLayoutPane viewPrefsAndSearchGridBagLayoutPane = null;
private RCheckBox sortByPriorityCheckBox = null;
private RBoxPane filterBoxPane = null;
private RCollapsiblePane caseFiltersSelectCollapsiblePane = null;
@EmbeddedRichDialog(CaseFiltersSelectPanel.class) private ULCContainer caseFiltersSelectRDC = null;
private RToolBar caseActionsToolBar = null;
@EmbeddedRichDialog(CaseHierarchyLayoutSelectPanel.class) private ULCContainer caseHierarchyLayoutSelectRDC = null;
private RHyperlink refreshButton = null;
private RHyperlink informOnCaseButton = null;
private RHyperlink destroyCaseButton = null;
private ULCButtonGroup casesDisplayModesButtonGroup = null;  //  @jve:decl-index=0:visual-constraint="537,20"
private RRadioButton findYourCasesRadioButton = null;
private RRadioButton findInvolvedCasesByRoleRadioButton = null;
private RRadioButton findAllEnvironmentCasesRadioButton = null;
private RTree caseHierarchyLayoutTree = null;
private RHyperlink loadCaseListButton = null;
private RPopupMenu caseHierarchyLayoutPopupMenu = null;  //  @jve:decl-index=0:visual-constraint="535,74"
private RMenuItem loadCaseListMenuItem = null;
private RMenuItem refreshCaseListMenuItem = null;
private RMenuItem informOnCaseMenuItem = null;
private RMenuItem destroyCaseMenuItem = null;
private RHyperlink expandAllButton = null;
private RMenuItem expandAllMenuItem = null;
private RGridBagLayoutPane viewGridBagLayoutPane = null;
private RCheckBox caseFiltersToggleButton = null;
private RBoxPane filterOnOffBoxPane = null;
private RLabel filterLabel = null;
private RBoxPane sortByPriorityBoxPane = null;
private RLabel sortByPriorityLabel = null;
private RBoxPane caseDisplayModeBoxPane = null;
private RBoxPane caseActionsBoxPane = null;
/**
   * Create a new instance of CaseSearchPanel
   */
  public CaseSearchPanel()
  {
    super();
    initialize();  
  }
  
  /**
   * This method initializes CaseSearchPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(310,584));
        this.setBorder(BorderFactory.createTitledBorder(BorderFactory.createLineBorder(new Color(12, 74, 124), 1), " Case list search ", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.BOLD, 11), new Color(12, 74, 124)));
        this.add(getFooterLabel(), com.ulcjava.base.application.ULCBorderLayoutPane.SOUTH);
        this.add(getCaseHierarchyLayoutScrollPane(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
        this.add(getViewPrefsAndSearchGridBagLayoutPane(), com.ulcjava.base.application.ULCBorderLayoutPane.NORTH);
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
 * This method initializes caseHierarchyLayoutScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getCaseHierarchyLayoutScrollPane() {
	if (caseHierarchyLayoutScrollPane == null) {
		caseHierarchyLayoutScrollPane = new RScrollPane();
		caseHierarchyLayoutScrollPane.setName("caseHierarchyLayoutScrollPane");
		caseHierarchyLayoutScrollPane.setName("caseHierarchyLayoutScrollPane");
		caseHierarchyLayoutScrollPane.setViewPortView(getCaseHierarchyLayoutTree());
	}
	return caseHierarchyLayoutScrollPane;
}

/**
 * This method initializes viewPrefsAndSearchGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getViewPrefsAndSearchGridBagLayoutPane() {
	if (viewPrefsAndSearchGridBagLayoutPane == null) {
		viewPrefsAndSearchGridBagLayoutPane = new RGridBagLayoutPane();
		viewPrefsAndSearchGridBagLayoutPane.setName("viewPrefsAndSearchGridBagLayoutPane");
		viewPrefsAndSearchGridBagLayoutPane.add(getFilterBoxPane(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		viewPrefsAndSearchGridBagLayoutPane.add(getCaseActionsToolBar(), new com.ulcjava.base.application.GridBagConstraints(0, 6, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		viewPrefsAndSearchGridBagLayoutPane.add(getViewGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		viewPrefsAndSearchGridBagLayoutPane.add(getFilterOnOffBoxPane(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		viewPrefsAndSearchGridBagLayoutPane.add(getCaseDisplayModeBoxPane(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		viewPrefsAndSearchGridBagLayoutPane.add(getCaseActionsBoxPane(), new com.ulcjava.base.application.GridBagConstraints(0, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return viewPrefsAndSearchGridBagLayoutPane;
}

/**
 * This method initializes sortByPriorityCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getSortByPriorityCheckBox() {
	if (sortByPriorityCheckBox == null) {
		sortByPriorityCheckBox = new RCheckBox();
		sortByPriorityCheckBox.setName("sortByPriorityCheckBox");
		sortByPriorityCheckBox.setStyleProperties("{/weightX \"1\"}");
//		sortByPriorityCheckBox.setIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/switchOff_48\") %>");
//		sortByPriorityCheckBox.setSelectedIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/switchOn_48\") %>");
		sortByPriorityCheckBox.setRolloverIcon(null);
		sortByPriorityCheckBox.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/sortByPriority\")%>\n");
	}
	return sortByPriorityCheckBox;
}

/**
 * This method initializes filterBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getFilterBoxPane() {
	if (filterBoxPane == null) {
		filterBoxPane = new RBoxPane();
		filterBoxPane.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/defineFilterLongDesc\")%>");
		filterBoxPane.setName("filterBoxPane");
		filterBoxPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		filterBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getCaseFiltersSelectCollapsiblePane());
	}
	return filterBoxPane;
}

/**
 * This method initializes caseFiltersSelectCollapsiblePane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RCollapsiblePane	
 */
private RCollapsiblePane getCaseFiltersSelectCollapsiblePane() {
	if (caseFiltersSelectCollapsiblePane == null) {
		caseFiltersSelectCollapsiblePane = new RCollapsiblePane();
		caseFiltersSelectCollapsiblePane.setName("caseFiltersSelectCollapsiblePane");
		caseFiltersSelectCollapsiblePane.setStyleProperties("{/weightY \"1\"/weightX \"1\"}");
		caseFiltersSelectCollapsiblePane.setCollapsed(true);
		caseFiltersSelectCollapsiblePane.add(getCaseFiltersSelectRDC());
	}
	return caseFiltersSelectCollapsiblePane;
}

/**
 * This method initializes caseFiltersSelectRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.task.TaskFiltersSelect.CaseBusinessAndTaskFiltersSelectPanel	
 */
private ULCContainer getCaseFiltersSelectRDC()  {
	if (caseFiltersSelectRDC == null) {
		caseFiltersSelectRDC = RichDialogPanelFactory.create(CaseFiltersSelectPanel.class);
		caseFiltersSelectRDC.setName("caseFiltersSelectRDC");
		caseFiltersSelectRDC.setName("caseFiltersSelectRDC");
		caseFiltersSelectRDC.setPreferredSize(new com.ulcjava.base.application.util.Dimension(305,380));
	}
	return caseFiltersSelectRDC;
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
		caseActionsToolBar.setFloatable(false);
		caseActionsToolBar.setVisible(false);
		caseActionsToolBar.setStyleProperties("{/insetsTop \"2\"/insetsLeft \"1\"}");
	}
	return caseActionsToolBar;
}

/**
 * This method initializes caseHierarchyLayoutSelectRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.cases.CaseHierarchyLayoutSelect.CaseHierarchyLayoutSelectPanel	
 */
private ULCContainer getCaseHierarchyLayoutSelectRDC()  {
	if (caseHierarchyLayoutSelectRDC == null) {
		caseHierarchyLayoutSelectRDC = RichDialogPanelFactory.create(CaseHierarchyLayoutSelectPanel.class);
		caseHierarchyLayoutSelectRDC.setName("caseHierarchyLayoutSelectRDC");
		caseHierarchyLayoutSelectRDC.setStyleProperties("{/weightX \"1\"}");
	}
	return caseHierarchyLayoutSelectRDC;
}

/**
 * This method initializes refreshButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RHyperlink getRefreshButton() {
	if (refreshButton == null) {
		refreshButton = new RHyperlink();
		refreshButton.setName("refreshButton");
		refreshButton.setStyle("toolBarButton");
		refreshButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/refresh32\")%>");
		refreshButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/refreshCaseListLongDesc\")%>");
		refreshButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/refreshCaseListShortDesc\")%>");
		refreshButton.setEnabled(true);
		refreshButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/refreshCaseListLongDesc\")%>");
	}
	return refreshButton;
}

/**
 * This method initializes informOnCaseButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RHyperlink getInformOnCaseButton() {
	if (informOnCaseButton == null) {
		informOnCaseButton = new RHyperlink();
		informOnCaseButton.setEnabled(false);
		informOnCaseButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/informOnCaseLongDesc\")%>");
		informOnCaseButton.setVisible(true);
		informOnCaseButton.setStyle("toolBarButton");
		informOnCaseButton.setIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/detail32\") %>");
		informOnCaseButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/informOnCaseShortDesc\")%>");
		informOnCaseButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/informOnCaseLongDesc\")%>");
		informOnCaseButton.setName("informOnCaseButton");
	}
	return informOnCaseButton;
}

/**
 * This method initializes destroyCaseButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RHyperlink getDestroyCaseButton() {
	if (destroyCaseButton == null) {
		destroyCaseButton = new RHyperlink();
		destroyCaseButton.setEnabled(false);
		destroyCaseButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/destroyCaseLongDesc\")%>");
		destroyCaseButton.setStyle("toolBarButton");
		destroyCaseButton.setIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/destroy32\") %>");
		destroyCaseButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/destroyCaseShortDesc\")%>");
		destroyCaseButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/destroyCaseLongDesc\")%>");
		destroyCaseButton.setName("destroyCaseButton");
	}
	return destroyCaseButton;
}

/**
 * This method initializes casesDisplayModesButtonGroup	
 * 	
 * @return com.ulcjava.base.application.ULCButtonGroup	
 */
private ULCButtonGroup getCasesDisplayModesButtonGroup() {
	if (casesDisplayModesButtonGroup == null) {
		casesDisplayModesButtonGroup = new ULCButtonGroup();
	}
	return casesDisplayModesButtonGroup;
}

/**
 * This method initializes findYourCasesRadioButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RRadioButton	
 */
private RRadioButton getFindYourCasesRadioButton() {
	if (findYourCasesRadioButton == null) {
		findYourCasesRadioButton = new RRadioButton();
		findYourCasesRadioButton.setName("findYourCasesRadioButton");
		findYourCasesRadioButton.setSelected(true);
		findYourCasesRadioButton.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		findYourCasesRadioButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseDisplayMode0ShortDesc\")%>");
		findYourCasesRadioButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseDisplayMode0LongDesc\")%>");
		findYourCasesRadioButton.setStyle("mandatoryLeftAlignedRadioButton");
		findYourCasesRadioButton.setName("findYourCasesRadioButton");
		findYourCasesRadioButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseDisplayMode0LongDesc\")%>");
		findYourCasesRadioButton.setGroup(getCasesDisplayModesButtonGroup());
	}
	return findYourCasesRadioButton;
}

/**
 * This method initializes findInvolvedCasesByRoleRadioButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RRadioButton	
 */
private RRadioButton getFindInvolvedCasesByRoleRadioButton() {
	if (findInvolvedCasesByRoleRadioButton == null) {
		findInvolvedCasesByRoleRadioButton = new RRadioButton();
		findInvolvedCasesByRoleRadioButton.setName("findInvolvedCasesByRoleRadioButton");
		findInvolvedCasesByRoleRadioButton.setStyleProperties("{/weightX \"1\"}");
		findInvolvedCasesByRoleRadioButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseDisplayMode1ShortDesc\")%>");
		findInvolvedCasesByRoleRadioButton.setName("findInvolvedCasesByRoleRadioButton");
		findInvolvedCasesByRoleRadioButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseDisplayMode1LongDesc\")%>");
		findInvolvedCasesByRoleRadioButton.setStyle("mandatoryLeftAlignedRadioButton");
		findInvolvedCasesByRoleRadioButton.setGroup(getCasesDisplayModesButtonGroup());
		findInvolvedCasesByRoleRadioButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseDisplayMode1LongDesc\")%>");
	}
	return findInvolvedCasesByRoleRadioButton;
}

/**
 * This method initializes findAllEnvironmentCasesRadioButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RRadioButton	
 */
private RRadioButton getFindAllEnvironmentCasesRadioButton() {
	if (findAllEnvironmentCasesRadioButton == null) {
		findAllEnvironmentCasesRadioButton = new RRadioButton();
		findAllEnvironmentCasesRadioButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseDisplayMode2ShortDesc\")%>");
		findAllEnvironmentCasesRadioButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseDisplayMode2LongDesc\")%>");
		findAllEnvironmentCasesRadioButton.setStyle("mandatoryLeftAlignedRadioButton");
		findAllEnvironmentCasesRadioButton.setGroup(getCasesDisplayModesButtonGroup());
		findAllEnvironmentCasesRadioButton.setName("findAllEnvironmentCasesRadioButton");
	}
	return findAllEnvironmentCasesRadioButton;
}

/**
 * This method initializes caseHierarchyLayoutTree	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTree	
 */
private RTree getCaseHierarchyLayoutTree() {
	if (caseHierarchyLayoutTree == null) {
		caseHierarchyLayoutTree = new RTree();
		caseHierarchyLayoutTree.setName("caseHierarchyLayoutTree");
		caseHierarchyLayoutTree.setModelConfiguration("{/showTableheader true /autoTableheader false /showtooltip true /showIcons true /version \"3.0\"/dynamicTreeLoadMode \"LOAD_ON_EXPAND\"/emptyTableText \"No tasks found\"/columns {{/patterns {{/result \"result=node.value\"/version \"3.0\"/tooltip \"\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/case/images/caseHierarchyLayoutRoot16\\\"\"/field \"\"/patternMode \"ALL\"/patternValue \"default\"}{/result \"result=(entry as ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue).categoryName\"/version \"3.0\"/tooltip \"\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/case/images/PROCESS_CATEGORY_CODE16\\\"\"/field \"\"/patternMode \"INFO\"/patternValue \"PROCESS_CATEGORY_CODE\"}{/result \"result=(entry as ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue).categoryName\"/version \"3.0\"/tooltip \"\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/case/images/PROCESS_CODE16\\\"\"/patternMode \"INFO\"/patternValue \"PROCESS_CODE\"}{/result \"result=(entry as ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue).categoryName\"/version \"3.0\"/tooltip \"\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/case/images/TYPE_CODE16\\\"\"/patternMode \"INFO\"/patternValue \"TYPE_CODE\"}{/result \"result=(entry as ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue).categoryName\"/version \"3.0\"/tooltip \"\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/case/images/SUB_TYPE_CODE16\\\"\"/patternMode \"INFO\"/patternValue \"SUB_TYPE_CODE\"}{/result \"result=(entry as ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue).categoryName\"/version \"3.0\"/tooltip \"\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/common/workflowPriorities/images/\\\" + \\r\\n(entry as ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue).categoryCode + \\\"_16\\\"\"/patternMode \"INFO\"/patternValue \"PRIORITY\"}{/result \"result=(entry as ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue).categoryName\"/version \"3.0\"/tooltip \"\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/case/images/BUSINESS_START_TIMESTAMP16\\\"\"/patternMode \"INFO\"/patternValue \"BUSINESS_START_TIMESTAMP\"}{/result \"result=(entry as ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue).categoryName\"/version \"3.0\"/tooltip \"\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/case/images/BUSINESS_MAIN_CONTACT_ID16\\\"\"/patternMode \"INFO\"/patternValue \"BUSINESS_MAIN_CONTACT_ID\"}{/result \"result=(entry as ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue).categoryName\"/version \"3.0\"/tooltip \"\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/case/images/BUSINESS_CREATOR_USER16\\\"\"/columnStyle \"\"/patternMode \"INFO\"/patternValue \"BUSINESS_CREATOR_USER\"}{/result \"result=entry.getName()\"/version \"3.0\"/tooltip \"\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/case/images/CASE_ID16\\\"\\r\\n\\r\\n/*\\r\\n\\\"/ch/ivyteam/ivy/workflow/ui/case/images/\\\" + \\r\\n\\t(ch.ivyteam.ivy.workflow.ui.utils.WorkflowUIAccessPermissionHandler.isSessionUserTeamManagerOfCaseAsSystemUser(entry)? \\r\\n\\t\\\"CASE_IDTeamManager16\\\": \\r\\n\\t\\\"CASE_ID16\\\")\\r\\n*/\"/header \"\"/columnStyle \"wfCase\"/patternMode \"INSTANCE\"/patternValue \"ch.ivyteam.ivy.workflow.ICase\"}}/version \"3.0\"}}}");
		caseHierarchyLayoutTree.setName("caseHierarchyLayoutTree");
		caseHierarchyLayoutTree.setName("caseHierarchyLayoutTree");
		caseHierarchyLayoutTree.setComponentPopupMenu(getCaseHierarchyLayoutPopupMenu());
	}
	return caseHierarchyLayoutTree;
}

/**
 * This method initializes loadCaseListButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RHyperlink getLoadCaseListButton() {
	if (loadCaseListButton == null) {
		loadCaseListButton = new RHyperlink();
		loadCaseListButton.setIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/showList32\") %>");
		loadCaseListButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/loadCaseListLongDesc\")%>");
		loadCaseListButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/loadCaseListLongDesc\")%>");
		loadCaseListButton.setEnabled(false);
		loadCaseListButton.setStyle("toolBarButton");
		loadCaseListButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/loadCaseListShortDesc\")%>");
		loadCaseListButton.setName("loadCaseListButton");
	}
	return loadCaseListButton;
}

/**
 * This method initializes caseHierarchyLayoutPopupMenu	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu	
 */
private RPopupMenu getCaseHierarchyLayoutPopupMenu() {
	if (caseHierarchyLayoutPopupMenu == null) {
		caseHierarchyLayoutPopupMenu = new RPopupMenu();
		caseHierarchyLayoutPopupMenu.setName("caseHierarchyLayoutPopupMenu");
		caseHierarchyLayoutPopupMenu.add(getLoadCaseListMenuItem());
		caseHierarchyLayoutPopupMenu.add(getInformOnCaseMenuItem());
		caseHierarchyLayoutPopupMenu.add(getDestroyCaseMenuItem());
		caseHierarchyLayoutPopupMenu.add(getRefreshCaseListMenuItem());
		caseHierarchyLayoutPopupMenu.add(getExpandAllMenuItem());
	}
	return caseHierarchyLayoutPopupMenu;
}

/**
 * This method initializes loadCaseListMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getLoadCaseListMenuItem() {
	if (loadCaseListMenuItem == null) {
		loadCaseListMenuItem = new RMenuItem();
		loadCaseListMenuItem.setText("Load cases");
		loadCaseListMenuItem.setEnabled(false);
		loadCaseListMenuItem.setName("loadCaseListMenuItem");
	}
	return loadCaseListMenuItem;
}

/**
 * This method initializes refreshCaseListMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getRefreshCaseListMenuItem() {
	if (refreshCaseListMenuItem == null) {
		refreshCaseListMenuItem = new RMenuItem();
		refreshCaseListMenuItem.setText("Refresh");
		refreshCaseListMenuItem.setEnabled(false);
		refreshCaseListMenuItem.setName("refreshCaseListMenuItem");
	}
	return refreshCaseListMenuItem;
}

/**
 * This method initializes informOnCaseMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getInformOnCaseMenuItem() {
	if (informOnCaseMenuItem == null) {
		informOnCaseMenuItem = new RMenuItem();
		informOnCaseMenuItem.setText("Get information on case");
		informOnCaseMenuItem.setEnabled(false);
		informOnCaseMenuItem.setName("informOnCaseMenuItem");
	}
	return informOnCaseMenuItem;
}

/**
 * This method initializes destroyCaseMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getDestroyCaseMenuItem() {
	if (destroyCaseMenuItem == null) {
		destroyCaseMenuItem = new RMenuItem();
		destroyCaseMenuItem.setText("Destroy case");
		destroyCaseMenuItem.setEnabled(false);
		destroyCaseMenuItem.setName("destroyCaseMenuItem");
	}
	return destroyCaseMenuItem;
}

/**
 * This method initializes expandAllButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RHyperlink getExpandAllButton() {
	if (expandAllButton == null) {
		expandAllButton = new RHyperlink();
		expandAllButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/expandAllCasesLongDesc\")%>");
		expandAllButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/expandAll32\")%>");
		expandAllButton.setStyle("toolBarButton");
		expandAllButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/expandAllCasesShortDesc\")%>");
		expandAllButton.setName("expandAllButton");
	}
	return expandAllButton;
}

/**
 * This method initializes expandAllMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getExpandAllMenuItem() {
	if (expandAllMenuItem == null) {
		expandAllMenuItem = new RMenuItem();
		expandAllMenuItem.setText("Expand all");
		expandAllMenuItem.setName("expandAllMenuItem");
	}
	return expandAllMenuItem;
}

/**
 * This method initializes viewGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getViewGridBagLayoutPane() {
	if (viewGridBagLayoutPane == null) {
		viewGridBagLayoutPane = new RGridBagLayoutPane();
		viewGridBagLayoutPane.setName("viewGridBagLayoutPane");
		viewGridBagLayoutPane.setStyleProperties("{/weightX \"1\"}");
		viewGridBagLayoutPane.add(getCaseHierarchyLayoutSelectRDC(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		viewGridBagLayoutPane.add(getSortByPriorityBoxPane(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return viewGridBagLayoutPane;
}

/**
 * This method initializes caseFiltersToggleButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RToggleButton	
 */
private RCheckBox getCaseFiltersToggleButton() {
	if (caseFiltersToggleButton == null) {
		caseFiltersToggleButton = new RCheckBox();
		caseFiltersToggleButton.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
//		caseFiltersToggleButton.setIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/switchOff_48\") %>");
//		caseFiltersToggleButton.setSelectedIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/switchOn_48\") %>");
		caseFiltersToggleButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/filter\")%>");
		caseFiltersToggleButton.setName("caseFiltersToggleButton");
	}
	return caseFiltersToggleButton;
}

/**
 * This method initializes filterOnOffBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getFilterOnOffBoxPane() {
	if (filterOnOffBoxPane == null) {
		RFiller horizFiller = new RFiller();
		horizFiller.setStyle("horizontalStrut100");
		horizFiller.setVisible(false);
		filterOnOffBoxPane = new RBoxPane();
		filterOnOffBoxPane.setName("filterOnOffBoxPane");
		filterOnOffBoxPane.set(1, 1, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getCaseFiltersToggleButton());
		filterOnOffBoxPane.set(0, 1, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getFilterLabel());
		filterOnOffBoxPane.set(0, 2, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, horizFiller);
	}
	return filterOnOffBoxPane;
}

/**
 * This method initializes filterLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getFilterLabel() {
	if (filterLabel == null) {
		filterLabel = new RLabel();
		filterLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/filter\")%>");
		filterLabel.setVisible(false);
		filterLabel.setName("filterLabel");
	}
	return filterLabel;
}

/**
 * This method initializes sortByPriorityBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getSortByPriorityBoxPane() {
	if (sortByPriorityBoxPane == null) {
		RFiller horizFiller1 = new RFiller();
		horizFiller1.setStyle("horizontalStrut100");
		horizFiller1.setVisible(false);
		sortByPriorityBoxPane = new RBoxPane();
		sortByPriorityBoxPane.setName("sortByPriorityBoxPane");
		sortByPriorityBoxPane.setVisible(false);
		sortByPriorityBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getSortByPriorityLabel());
		sortByPriorityBoxPane.set(1, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getSortByPriorityCheckBox());
		sortByPriorityBoxPane.set(0, 1, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, horizFiller1);
	}
	return sortByPriorityBoxPane;
}

/**
 * This method initializes sortByPriorityLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getSortByPriorityLabel() {
	if (sortByPriorityLabel == null) {
		sortByPriorityLabel = new RLabel();
		sortByPriorityLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/sortByPriority\")%>");
		sortByPriorityLabel.setVisible(false);
		sortByPriorityLabel.setName("sortByPriorityLabel");
	}
	return sortByPriorityLabel;
}

/**
 * This method initializes caseDisplayModeBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getCaseDisplayModeBoxPane() {
	if (caseDisplayModeBoxPane == null) {
		caseDisplayModeBoxPane = new RBoxPane();
		caseDisplayModeBoxPane.setName("caseDisplayModeBoxPane");
		caseDisplayModeBoxPane.setBorder(BorderFactory.createTitledBorder(null, "", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
		caseDisplayModeBoxPane.setStyleProperties("{/insetsTop \"3\"}");
		caseDisplayModeBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getFindYourCasesRadioButton());
		caseDisplayModeBoxPane.set(1, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getFindInvolvedCasesByRoleRadioButton());
		caseDisplayModeBoxPane.set(2, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getFindAllEnvironmentCasesRadioButton());
	}
	return caseDisplayModeBoxPane;
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
		caseActionsBoxPane.setStyleProperties("{/fill \"HORIZONTAL\"}");
		caseActionsBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getLoadCaseListButton());
		caseActionsBoxPane.set(1, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getInformOnCaseButton());
		caseActionsBoxPane.set(2, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getDestroyCaseButton());
		caseActionsBoxPane.set(3, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getRefreshButton());
		caseActionsBoxPane.set(4, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getExpandAllButton());
		caseActionsBoxPane.set(5, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, hFiller);
	}
	return caseActionsBoxPane;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"