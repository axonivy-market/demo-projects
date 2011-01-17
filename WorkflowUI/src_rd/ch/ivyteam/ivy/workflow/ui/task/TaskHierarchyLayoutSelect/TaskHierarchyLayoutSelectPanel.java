package ch.ivyteam.ivy.workflow.ui.task.TaskHierarchyLayoutSelect;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RComboBox;

/**
 * RichDialog panel implementation for TaskHierarchyLayoutSelectPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class TaskHierarchyLayoutSelectPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RComboBox tasksHierarchyLayoutComboBox = null;
  
  /**
   * Create a new instance of TaskHierarchyLayoutSelectPanel
   */
  public TaskHierarchyLayoutSelectPanel()
  {
    super();
    initialize();  
  }
  
  /**
   * This method initializes TaskHierarchyLayoutSelectPanel
   * @return void
   */
  public void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(200,25));
        this.add(getTasksHierarchyLayoutComboBox(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes tasksHierarchyLayoutComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getTasksHierarchyLayoutComboBox() {
	if (tasksHierarchyLayoutComboBox == null) {
		tasksHierarchyLayoutComboBox = new RComboBox();
		tasksHierarchyLayoutComboBox.setName("tasksHierarchyLayoutComboBox");
		tasksHierarchyLayoutComboBox.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		tasksHierarchyLayoutComboBox.setPreferredSize(new com.ulcjava.base.application.util.Dimension(0,25));
		tasksHierarchyLayoutComboBox.setModelConfiguration("{/result \"result=entry.shortDescription\"/version \"2.0\"/icon \"result=\\\"/ch/ivyteam/ivy/workflow/ui/task/images/tasksHierarchyLayout16\\\"\"/tooltip \"result=entry.longDescription\"/emptyTableText \"\"}");
	}
	return tasksHierarchyLayoutComboBox;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"