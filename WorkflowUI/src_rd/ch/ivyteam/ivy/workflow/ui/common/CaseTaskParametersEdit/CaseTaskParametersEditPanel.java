package ch.ivyteam.ivy.workflow.ui.common.CaseTaskParametersEdit;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RTabbedPane;
import ch.ivyteam.ivy.workflow.ui.cases.CaseHierarchyLayoutSelect.CaseHierarchyLayoutSelectPanel;
import ch.ivyteam.ivy.workflow.ui.task.TaskHierarchyLayoutSelect.TaskHierarchyLayoutSelectPanel;

import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.border.ULCTitledBorder;
import com.ulcjava.base.application.util.Color;
import com.ulcjava.base.application.util.Font;
import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import com.ulcjava.base.application.ULCContainer;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;

/**
 * RichDialog panel implementation for CaseTaskParametersEditPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class CaseTaskParametersEditPanel extends RichDialogBorderPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RLabel taskHierarchyLayoutLabel = null;
private RCheckBox tasksSortByPriorityCheckBox = null;
@EmbeddedRichDialog(TaskHierarchyLayoutSelectPanel.class) private ULCContainer tasksHierarchyLayoutSelectRDC = null;
private RCheckBox isMultipleTaskListCheckBox = null;
private RCheckBox casesSortByPriorityCheckBox = null;
@EmbeddedRichDialog(CaseHierarchyLayoutSelectPanel.class) private ULCContainer casesHierarchyLayoutSelectRDC = null;
private RCheckBox isMultipleCaseListCheckBox = null;
private RTabbedPane configurationTabbedPane = null;
private RGridBagLayoutPane taskConfigurationGridBagLayoutPane = null;
private RGridBagLayoutPane caseConfigurationGridBagLayoutPane = null;
private RLabel caseHierarchyLayoutLabel = null;
private RButton okButton = null;
private RCheckBox taskAutoHideMenuCheckBox = null;
/**
   * Create a new instance of CaseTaskParametersEditPanel
   */
  public CaseTaskParametersEditPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes CaseTaskParametersEditPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(253,290));
        this.setBorder(BorderFactory.createTitledBorder(null, "Layout Configuration", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
        this.add(getConfigurationTabbedPane(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
        this.add(getOkButton(), com.ulcjava.base.application.ULCBorderLayoutPane.SOUTH);
  }

/**
 * This method initializes taskHierarchyLayoutLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getTaskHierarchyLayoutLabel() {
	if (taskHierarchyLayoutLabel == null) {
		taskHierarchyLayoutLabel = new RLabel();
		taskHierarchyLayoutLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/chooseTaskHierarchyLayout\")%>");
		taskHierarchyLayoutLabel.setStyleProperties("{/weightX \"1\"}");
		taskHierarchyLayoutLabel.setName("taskHierarchyLayoutLabel");
	}
	return taskHierarchyLayoutLabel;
}

/**
 * This method initializes tasksSortByPriorityCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getTasksSortByPriorityCheckBox() {
	if (tasksSortByPriorityCheckBox == null) {
		tasksSortByPriorityCheckBox = new RCheckBox();
		tasksSortByPriorityCheckBox.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/sortByPriority\")%>");
		tasksSortByPriorityCheckBox.setName("tasksSortByPriorityCheckBox");
	}
	return tasksSortByPriorityCheckBox;
}

/**
 * This method initializes tasksHierarchyLayoutSelectRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.task.TaskHierarchyLayoutSelect.TaskHierarchyLayoutSelectPanel	
 */
private ULCContainer getTasksHierarchyLayoutSelectRDC()  {
	if (tasksHierarchyLayoutSelectRDC == null) {
		tasksHierarchyLayoutSelectRDC = RichDialogPanelFactory.create(TaskHierarchyLayoutSelectPanel.class);
		tasksHierarchyLayoutSelectRDC.setName("tasksHierarchyLayoutSelectRDC");
	}
	return tasksHierarchyLayoutSelectRDC;
}

/**
 * This method initializes isMultipleTaskListCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getIsMultipleTaskListCheckBox() {
	if (isMultipleTaskListCheckBox == null) {
		isMultipleTaskListCheckBox = new RCheckBox();
		isMultipleTaskListCheckBox.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/multipleTaskListMode\")%>");
		isMultipleTaskListCheckBox.setName("isMultipleTaskListCheckBox");
	}
	return isMultipleTaskListCheckBox;
}

/**
 * This method initializes casesSortByPriorityCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getCasesSortByPriorityCheckBox() {
	if (casesSortByPriorityCheckBox == null) {
		casesSortByPriorityCheckBox = new RCheckBox();
		casesSortByPriorityCheckBox.setName("casesSortByPriorityCheckBox");
		casesSortByPriorityCheckBox.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/sortByPriority\")%>");
	}
	return casesSortByPriorityCheckBox;
}

/**
 * This method initializes casesHierarchyLayoutSelectRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.task.TaskHierarchyLayoutSelect.TaskHierarchyLayoutSelectPanel	
 */
private ULCContainer getCasesHierarchyLayoutSelectRDC()  {
	if (casesHierarchyLayoutSelectRDC == null) {
		casesHierarchyLayoutSelectRDC = RichDialogPanelFactory.create(CaseHierarchyLayoutSelectPanel.class);
		casesHierarchyLayoutSelectRDC.setName("casesHierarchyLayoutSelectRDC");
	}
	return casesHierarchyLayoutSelectRDC;
}

/**
 * This method initializes isMultipleCaseListCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getIsMultipleCaseListCheckBox() {
	if (isMultipleCaseListCheckBox == null) {
		isMultipleCaseListCheckBox = new RCheckBox();
		isMultipleCaseListCheckBox.setName("isMultipleCaseListCheckBox");
		isMultipleCaseListCheckBox.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/multipleCaseListMode\")%>");
	}
	return isMultipleCaseListCheckBox;
}

/**
 * This method initializes configurationTabbedPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RTabbedPane	
 */
private RTabbedPane getConfigurationTabbedPane() {
	if (configurationTabbedPane == null) {
		configurationTabbedPane = new RTabbedPane();
		configurationTabbedPane.setName("configurationTabbedPane");
		configurationTabbedPane.addTab("Cases", null, getCaseConfigurationGridBagLayoutPane(), null);
		configurationTabbedPane.addTab("Tasks", null, getTaskConfigurationGridBagLayoutPane(), null);

	}
	return configurationTabbedPane;
}

/**
 * This method initializes taskConfigurationGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getTaskConfigurationGridBagLayoutPane() {
	if (taskConfigurationGridBagLayoutPane == null) {
		RFiller aFiller1 = new RFiller();
		aFiller1.setStyleProperties("{/fill \"VERTICAL\"/weightY \"1\"}");
		taskConfigurationGridBagLayoutPane = new RGridBagLayoutPane();
		taskConfigurationGridBagLayoutPane.setName("taskConfigurationGridBagLayoutPane");
		taskConfigurationGridBagLayoutPane.add(getTasksSortByPriorityCheckBox(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		taskConfigurationGridBagLayoutPane.add(getTaskHierarchyLayoutLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		taskConfigurationGridBagLayoutPane.add(getTasksHierarchyLayoutSelectRDC(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		taskConfigurationGridBagLayoutPane.add(getIsMultipleTaskListCheckBox(), new com.ulcjava.base.application.GridBagConstraints(0, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		taskConfigurationGridBagLayoutPane.add(aFiller1, new com.ulcjava.base.application.GridBagConstraints(0, 7, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		taskConfigurationGridBagLayoutPane.add(getTaskAutoHideMenuCheckBox(), new com.ulcjava.base.application.GridBagConstraints(0, 6, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return taskConfigurationGridBagLayoutPane;
}

/**
 * This method initializes caseConfigurationGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getCaseConfigurationGridBagLayoutPane() {
	if (caseConfigurationGridBagLayoutPane == null) {
		RFiller aFiller = new RFiller();
		aFiller.setStyleProperties("{/fill \"VERTICAL\"/weightY \"1\"}");
		caseConfigurationGridBagLayoutPane = new RGridBagLayoutPane();
		caseConfigurationGridBagLayoutPane.setName("caseConfigurationGridBagLayoutPane");
		caseConfigurationGridBagLayoutPane.add(getCaseHierarchyLayoutLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseConfigurationGridBagLayoutPane.add(getCasesHierarchyLayoutSelectRDC(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseConfigurationGridBagLayoutPane.add(getCasesSortByPriorityCheckBox(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseConfigurationGridBagLayoutPane.add(getIsMultipleCaseListCheckBox(), new com.ulcjava.base.application.GridBagConstraints(0, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		caseConfigurationGridBagLayoutPane.add(aFiller, new com.ulcjava.base.application.GridBagConstraints(0, 6, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return caseConfigurationGridBagLayoutPane;
}

/**
 * This method initializes caseHierarchyLayoutLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCaseHierarchyLayoutLabel() {
	if (caseHierarchyLayoutLabel == null) {
		caseHierarchyLayoutLabel = new RLabel();
		caseHierarchyLayoutLabel.setName("caseHierarchyLayoutLabel");
		caseHierarchyLayoutLabel.setStyleProperties("{/weightX \"1\"}");
		caseHierarchyLayoutLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/chooseCaseHierarchyLayout\")%>\n");
	}
	return caseHierarchyLayoutLabel;
}

/**
 * This method initializes okButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getOkButton() {
	if (okButton == null) {
		okButton = new RButton();
		okButton.setText("Ok");
		okButton.setVisible(false);
		okButton.setName("okButton");
	}
	return okButton;
}

/**
 * This method initializes taskAutoHideMenuCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getTaskAutoHideMenuCheckBox() {
	if (taskAutoHideMenuCheckBox == null) {
		taskAutoHideMenuCheckBox = new RCheckBox();
		taskAutoHideMenuCheckBox.setName("taskAutoHideMenuCheckBox");
		taskAutoHideMenuCheckBox.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/autoHideMenuMode\")%>");
	}
	return taskAutoHideMenuCheckBox;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"