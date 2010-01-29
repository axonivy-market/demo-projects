package ch.ivyteam.ivy.workflow.ui.cases.CaseSearch;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox;
import ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RRadioButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RToggleButton;
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
import com.ulcjava.base.application.border.ULCTitledBorder;
import com.ulcjava.base.application.util.Color;
import com.ulcjava.base.application.util.Font;
import ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane;
import com.ulcjava.base.application.ULCFlowLayoutPane;
import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import com.ulcjava.base.application.ULCContainer;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;

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
private RToggleButton applyFilterToggleButton = null;
private RCollapsiblePane caseFiltersSelectCollapsiblePane = null;
@EmbeddedRichDialog(CaseFiltersSelectPanel.class) private ULCContainer caseFiltersSelectRDC = null;
private RToolBar caseActionsToolBar = null;
@EmbeddedRichDialog(CaseHierarchyLayoutSelectPanel.class) private ULCContainer caseHierarchyLayoutSelectRDC = null;
private RButton refreshButton = null;
private RButton informOnCaseButton = null;
private RButton destroyCaseButton = null;
private ULCButtonGroup casesDisplayModesButtonGroup = null;  //  @jve:decl-index=0:visual-constraint="537,20"
private RRadioButton findYourCasesRadioButton = null;
private RRadioButton findInvolvedCasesByRoleRadioButton = null;
private RRadioButton findAllEnvironmentCasesRadioButton = null;
private RTree caseHierarchyLayoutTree = null;
private RButton loadCaseListButton = null;
private RPopupMenu caseHierarchyLayoutPopupMenu = null;  //  @jve:decl-index=0:visual-constraint="535,74"
private RMenuItem loadCaseListMenuItem = null;
private RPopupMenu.RSeparator aPopupMenuSeparator = null;
private RMenuItem refreshCaseListMenuItem = null;
private RPopupMenu.RSeparator a2PopupMenuSeparator = null;
private RMenuItem informOnCaseMenuItem = null;
private RPopupMenu.RSeparator a3PopupMenuSeparator = null;
private RMenuItem destroyCaseMenuItem = null;
private RHyperlink defineFilterHyperlink = null;
private RButton expandAllButton = null;
private RMenuItem expandAllMenuItem = null;
private RGridBagLayoutPane viewGridBagLayoutPane = null;
private RFlowLayoutPane caseDisplayModeFlowLayoutPane = null;
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
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(300,584));
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
		viewPrefsAndSearchGridBagLayoutPane.add(getCaseActionsToolBar(), new com.ulcjava.base.application.GridBagConstraints(0, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		viewPrefsAndSearchGridBagLayoutPane.add(getViewGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		viewPrefsAndSearchGridBagLayoutPane.add(getCaseDisplayModeFlowLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
		sortByPriorityCheckBox.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/sortByPriority\")%>");
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
		filterBoxPane.setBorder(null);
		filterBoxPane.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/defineFilterLongDesc\")%>");
		filterBoxPane.setName("filterBoxPane");
		filterBoxPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		filterBoxPane.setBorder(BorderFactory.createTitledBorder(null, "Case List Filter", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(12, 74, 124)));
		filterBoxPane.set(1, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getApplyFilterToggleButton());
		filterBoxPane.set(0, 1, 2, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getCaseFiltersSelectCollapsiblePane());
		filterBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getDefineFilterHyperlink());
	}
	return filterBoxPane;
}

/**
 * This method initializes applyFilterToggleButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RToggleButton	
 */
private RToggleButton getApplyFilterToggleButton() {
	if (applyFilterToggleButton == null) {
		applyFilterToggleButton = new RToggleButton();
		applyFilterToggleButton.setEnabled(false);
		applyFilterToggleButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/filterDisabledShortDesc\")%>");
		applyFilterToggleButton.setStyleProperties("{/anchor \"NORTHEAST\"/fill \"NONE\"/weightX \"1\"}");
		applyFilterToggleButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/filter16\")%>");
		applyFilterToggleButton.setPreferredSize(new com.ulcjava.base.application.util.Dimension(100,24));
		applyFilterToggleButton.setName("applyFilterToggleButton");
	}
	return applyFilterToggleButton;
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
		caseFiltersSelectRDC.setPreferredSize(new com.ulcjava.base.application.util.Dimension(200,510));
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
		caseActionsToolBar.setStyleProperties("{/insetsTop \"2\"/insetsLeft \"1\"}");
		caseActionsToolBar.add(getLoadCaseListButton());
		caseActionsToolBar.add(getRefreshButton());
		caseActionsToolBar.add(getInformOnCaseButton());
		caseActionsToolBar.add(getDestroyCaseButton());
		caseActionsToolBar.add(getExpandAllButton());
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
	}
	return caseHierarchyLayoutSelectRDC;
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
		refreshButton.setEnabled(true);
		refreshButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/refreshCaseListLongDesc\")%>");
		refreshButton.setRolloverIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/refreshCaseList32\") %>");
	}
	return refreshButton;
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
		informOnCaseButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/informOnCaseLongDesc\")%>");
		informOnCaseButton.setVisible(true);
		informOnCaseButton.setStyle("toolBarButton");
		informOnCaseButton.setIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/informOnCase24\") %>");
		informOnCaseButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/informOnCaseLongDesc\")%>");
		informOnCaseButton.setRolloverIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/informOnCase32\") %>");
		informOnCaseButton.setName("informOnCaseButton");
	}
	return informOnCaseButton;
}

/**
 * This method initializes destroyCaseButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getDestroyCaseButton() {
	if (destroyCaseButton == null) {
		destroyCaseButton = new RButton();
		destroyCaseButton.setEnabled(false);
		destroyCaseButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/destroyCaseLongDesc\")%>");
		destroyCaseButton.setStyle("toolBarButton");
		destroyCaseButton.setIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/destroyCase24\") %>");
		destroyCaseButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/destroyCaseLongDesc\")%>");
		destroyCaseButton.setRolloverIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/destroyCase32\") %>");
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
		caseHierarchyLayoutTree.setModelConfiguration("{/showTableheader true /autoTableheader false /showtooltip true /showIcons true /version \"2.0\"/dynamicTreeLoadMode \"LOAD_ON_EXPAND\"/emptyTableText \"No tasks found\"/columns {{/patterns {{/result \"result=node.value\"/version \"2.0\"/tooltip \"result=\\\"<html>\\\" + \\r\\n\\\"<table border = \\\\\\\"0\\\\\\\">\\\" +\\r\\n\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeValue\\\").toString() + \\\"</th><td>\\\" + node.value + \\\"</td></tr>\\\" +\\r\\n\\r\\n\\\"</table>\\\"\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/case/images/caseHierarchyLayoutRoot16\\\"\"/field \"\"/patternMode \"ALL\"/patternValue \"default\"}{/result \"result=(entry as ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue).categoryName\"/version \"2.0\"/tooltip \"result=\\\"<html>\\\" + \\r\\n\\\"<table border = \\\\\\\"0\\\\\\\">\\\" +\\r\\n\\r\\n\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeType\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue).property + \\\"</td></tr>\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeCode\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue).categoryCode + \\\"</td></tr>\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeName\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue).categoryName + \\\"</td></tr>\\\" +\\r\\n\\r\\n\\\"</table>\\\"\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/case/images/PROCESS_CATEGORY_CODE16\\\"\"/field \"\"/patternMode \"INFO\"/patternValue \"PROCESS_CATEGORY_CODE\"}{/result \"result=(entry as ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue).categoryName\"/version \"2.0\"/tooltip \"result=\\\"<html>\\\" + \\r\\n\\\"<table border = \\\\\\\"0\\\\\\\">\\\" +\\r\\n\\r\\n\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeType\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue).property + \\\"</td></tr>\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeCode\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue).categoryCode + \\\"</td></tr>\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeName\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue).categoryName + \\\"</td></tr>\\\" +\\r\\n\\r\\n\\\"</table>\\\"\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/case/images/PROCESS_CODE16\\\"\"/patternMode \"INFO\"/patternValue \"PROCESS_CODE\"}{/result \"result=(entry as ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue).categoryName\"/version \"2.0\"/tooltip \"result=\\\"<html>\\\" + \\r\\n\\\"<table border = \\\\\\\"0\\\\\\\">\\\" +\\r\\n\\r\\n\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeType\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue).property + \\\"</td></tr>\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeCode\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue).categoryCode + \\\"</td></tr>\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeName\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue).categoryName + \\\"</td></tr>\\\" +\\r\\n\\r\\n\\\"</table>\\\"\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/case/images/TYPE_CODE16\\\"\"/patternMode \"INFO\"/patternValue \"TYPE_CODE\"}{/result \"result=(entry as ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue).categoryName\"/version \"2.0\"/tooltip \"result=\\\"<html>\\\" + \\r\\n\\\"<table border = \\\\\\\"0\\\\\\\">\\\" +\\r\\n\\r\\n\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeType\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue).property + \\\"</td></tr>\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeCode\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue).categoryCode + \\\"</td></tr>\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeName\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue).categoryName + \\\"</td></tr>\\\" +\\r\\n\\r\\n\\\"</table>\\\"\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/case/images/SUB_TYPE_CODE16\\\"\"/patternMode \"INFO\"/patternValue \"SUB_TYPE_CODE\"}{/result \"result=(entry as ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue).categoryName\"/version \"2.0\"/tooltip \"result=\\\"<html>\\\" + \\r\\n\\\"<table border = \\\\\\\"0\\\\\\\">\\\" +\\r\\n\\r\\n\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeType\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue).property + \\\"</td></tr>\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeCode\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue).categoryCode + \\\"</td></tr>\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeName\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue).categoryName + \\\"</td></tr>\\\" +\\r\\n\\r\\n\\\"</table>\\\"\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/case/images/casePriority\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue).categoryCode + \\\"_16\\\"\"/patternMode \"INFO\"/patternValue \"PRIORITY\"}{/result \"result=(entry as ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue).categoryName\"/version \"2.0\"/tooltip \"result=\\\"<html>\\\" + \\r\\n\\\"<table border = \\\\\\\"0\\\\\\\">\\\" +\\r\\n\\r\\n\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeType\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue).property + \\\"</td></tr>\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeCode\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue).categoryCode + \\\"</td></tr>\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeName\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue).categoryName + \\\"</td></tr>\\\" +\\r\\n\\r\\n\\\"</table>\\\"\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/case/images/BUSINESS_START_TIMESTAMP16\\\"\"/patternMode \"INFO\"/patternValue \"BUSINESS_START_TIMESTAMP\"}{/result \"result=(entry as ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue).categoryName\"/version \"2.0\"/tooltip \"result=\\\"<html>\\\" + \\r\\n\\\"<table border = \\\\\\\"0\\\\\\\">\\\" +\\r\\n\\r\\n\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeType\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue).property + \\\"</td></tr>\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeCode\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue).categoryCode + \\\"</td></tr>\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeName\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue).categoryName + \\\"</td></tr>\\\" +\\r\\n\\r\\n\\\"</table>\\\"\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/case/images/BUSINESS_MAIN_CONTACT_ID16\\\"\"/patternMode \"INFO\"/patternValue \"BUSINESS_MAIN_CONTACT_ID\"}{/result \"result=(entry as ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue).categoryName\"/version \"2.0\"/tooltip \"result=\\\"<html>\\\" + \\r\\n\\\"<table border = \\\\\\\"0\\\\\\\">\\\" +\\r\\n\\r\\n\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeType\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue).property + \\\"</td></tr>\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeCode\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue).categoryCode + \\\"</td></tr>\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/nodeName\\\").toString() + \\\"</th><td>\\\" + (entry as ch.ivyteam.ivy.workflow.ui.data.cases.CaseHierarchyTreeNodeValue).categoryName + \\\"</td></tr>\\\" +\\r\\n\\r\\n\\\"</table>\\\"\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/case/images/BUSINESS_CREATOR_USER16\\\"\"/columnStyle \"\"/patternMode \"INFO\"/patternValue \"BUSINESS_CREATOR_USER\"}{/result \"result=entry.getName()\"/version \"2.0\"/tooltip \"result=\\\"<html>\\\" + \\r\\n\\\"<h3>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseDetails\\\").toString() + \\\"</h3>\\\" + \\r\\n\\\"<table border = \\\\\\\"0\\\\\\\">\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseId\\\").toString() + \\\"</th><td>\\\" + (entry.getIdentifier() is initialized? entry.getIdentifier(): \\\"n/a\\\") + \\\"</td></tr>\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseState\\\").toString() + \\\"</th><td>\\\" + (entry.getState() is initialized? entry.getState(): \\\"n/a\\\") + \\\"</td></tr>\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseStartTimestamp\\\").toString() + \\\"</th><td>\\\" + (entry.getStartTimestamp() is initialized? new DateTime(entry.getStartTimestamp()).format(\\\"medium\\\"): \\\"n/a\\\") + \\\"</td></tr>\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseName\\\").toString() + \\\"</th><td>\\\" + (entry.getName() is initialized? entry.getName(): \\\"n/a\\\") + \\\"</td></tr>\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseDescription\\\").toString() + \\\"</th><td>\\\" + (entry.getDescription() is initialized? entry.getDescription(): \\\"n/a\\\") + \\\"</td></tr>\\\" +\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseProcessCategoryName\\\").toString() + \\\"</th><td>\\\" + (entry.getProcessCategoryName() is initialized? \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\tentry.getProcessCategoryName(): \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t(entry.getProcessCategoryCode() is initialized? entry.getProcessCategoryCode(): \\\"n/a\\\")) + \\\"</td></tr>\\\" +\\r\\n\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseProcessName\\\").toString() + \\\"</th><td>\\\" + (entry.getProcessName() is initialized? \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\tentry.getProcessName(): \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t(entry.getProcessCode() is initialized? entry.getProcessCode(): \\\"n/a\\\")) + \\\"</td></tr>\\\" +\\r\\n\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseTypeName\\\").toString() + \\\"</th><td>\\\" + (entry.getTypeName() is initialized? \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\tentry.getTypeName(): \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t(entry.getTypeCode() is initialized? entry.getTypeCode(): \\\"n/a\\\")) + \\\"</td></tr>\\\" +\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\r\\n\\r\\n\\r\\n\\\"<tr><th align=left>\\\" + ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseSubTypeName\\\").toString() + \\\"</th><td>\\\" + (entry.getSubTypeName() is initialized? \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\tentry.getSubTypeName(): \\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t(entry.getSubTypeCode() is initialized? entry.getSubTypeCode(): \\\"n/a\\\")) + \\\"</td></tr>\\\" +\\t\\t\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\r\\n\\\"</table>\\\"\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/case/images/CASE_ID16\\\"\"/patternMode \"INSTANCE\"/patternValue \"ch.ivyteam.ivy.workflow.ICase\"}}/version \"2.0\"}}}");
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
private RButton getLoadCaseListButton() {
	if (loadCaseListButton == null) {
		loadCaseListButton = new RButton();
		loadCaseListButton.setIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/loadCaseList24\") %>");
		loadCaseListButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/loadCaseListLongDesc\")%>");
		loadCaseListButton.setRolloverIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/loadCaseList32\") %>");
		loadCaseListButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/loadCaseListLongDesc\")%>");
		loadCaseListButton.setEnabled(false);
		loadCaseListButton.setStyle("toolBarButton");
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
		caseHierarchyLayoutPopupMenu.setName("caseHierarchyLayoutPopupMenu");
		caseHierarchyLayoutPopupMenu.setName("caseHierarchyLayoutPopupMenu");
		caseHierarchyLayoutPopupMenu.add(getLoadCaseListMenuItem());
		caseHierarchyLayoutPopupMenu.add(getAPopupMenuSeparator());
		caseHierarchyLayoutPopupMenu.add(getRefreshCaseListMenuItem());
		caseHierarchyLayoutPopupMenu.add(getA2PopupMenuSeparator());
		caseHierarchyLayoutPopupMenu.add(getInformOnCaseMenuItem());
		caseHierarchyLayoutPopupMenu.add(getA3PopupMenuSeparator());
		caseHierarchyLayoutPopupMenu.add(getDestroyCaseMenuItem());
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
 * This method initializes a3PopupMenuSeparator	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu.RSeparator	
 */
private RPopupMenu.RSeparator getA3PopupMenuSeparator() {
	if (a3PopupMenuSeparator == null) {
		a3PopupMenuSeparator = new RPopupMenu.RSeparator();
		a3PopupMenuSeparator.setName("a3PopupMenuSeparator");
	}
	return a3PopupMenuSeparator;
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
 * This method initializes defineFilterHyperlink	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink	
 */
private RHyperlink getDefineFilterHyperlink() {
	if (defineFilterHyperlink == null) {
		defineFilterHyperlink = new RHyperlink();
		defineFilterHyperlink.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/defineFilterShortDesc\")%>");
		defineFilterHyperlink.setStyleProperties("{/weightX \"1\"}");
		defineFilterHyperlink.setName("defineFilterHyperlink");
	}
	return defineFilterHyperlink;
}

/**
 * This method initializes expandAllButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getExpandAllButton() {
	if (expandAllButton == null) {
		expandAllButton = new RButton();
		expandAllButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/expandAllCasesLongDesc\")%>");
		expandAllButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/expandAllCases24\")%>");
		expandAllButton.setRolloverIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/case/images/expandAllCases32\")%>");
		expandAllButton.setStyle("toolBarButton");
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
		viewGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(null, "Display Options", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
		viewGridBagLayoutPane.add(getCaseHierarchyLayoutSelectRDC(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		viewGridBagLayoutPane.add(getSortByPriorityCheckBox(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return viewGridBagLayoutPane;
}

/**
 * This method initializes caseDisplayModeFlowLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane	
 */
private RFlowLayoutPane getCaseDisplayModeFlowLayoutPane() {
	if (caseDisplayModeFlowLayoutPane == null) {
		caseDisplayModeFlowLayoutPane = new RFlowLayoutPane();
		caseDisplayModeFlowLayoutPane.setName("caseDisplayModeFlowLayoutPane");
		caseDisplayModeFlowLayoutPane.setHgap(4);
		caseDisplayModeFlowLayoutPane.setAlignment(ULCFlowLayoutPane.LEFT);
		caseDisplayModeFlowLayoutPane.setBorder(BorderFactory.createTitledBorder(null, "Case Display Mode", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
		caseDisplayModeFlowLayoutPane.add(getFindYourCasesRadioButton());
		caseDisplayModeFlowLayoutPane.add(getFindInvolvedCasesByRoleRadioButton());
		caseDisplayModeFlowLayoutPane.add(getFindAllEnvironmentCasesRadioButton());
	}
	return caseDisplayModeFlowLayoutPane;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"