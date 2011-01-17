package ch.ivyteam.ivy.workflow.ui.cases.CaseHierarchyLayoutSelect;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RComboBox;

/**
 * RichDialog panel implementation for CaseHierarchyLayoutSelectPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class CaseHierarchyLayoutSelectPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RComboBox caseHierarchyLayoutComboBox = null;
  
  /**
   * Create a new instance of CaseHierarchyLayoutSelectPanel
   */
  public CaseHierarchyLayoutSelectPanel()
  {
    super();
    initialize();   
  }
  
  /**
   * This method initializes CaseHierarchyLayoutSelectPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(200,25));
        this.add(getCaseHierarchyLayoutComboBox(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes caseHierarchyLayoutComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getCaseHierarchyLayoutComboBox() {
	if (caseHierarchyLayoutComboBox == null) {
		caseHierarchyLayoutComboBox = new RComboBox();
		caseHierarchyLayoutComboBox.setName("caseHierarchyLayoutComboBox");
		caseHierarchyLayoutComboBox.setPreferredSize(new com.ulcjava.base.application.util.Dimension(0,25));
		caseHierarchyLayoutComboBox.setModelConfiguration("{/result \"result=entry.shortDescription\"/version \"2.0\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/task/images/tasksHierarchyLayout16\\\"\"/tooltip \"result=entry.longDescription\"/emptyTableText \"No data\"}");
		caseHierarchyLayoutComboBox.setStyleProperties("{/weightX \"1\"}");
	}
	return caseHierarchyLayoutComboBox;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"