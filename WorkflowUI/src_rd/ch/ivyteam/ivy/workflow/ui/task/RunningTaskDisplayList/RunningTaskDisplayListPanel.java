package ch.ivyteam.ivy.workflow.ui.task.RunningTaskDisplayList;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.workflow.ui.common.Header.HeaderPanel;
import com.ulcjava.base.application.util.Dimension;
import ch.ivyteam.ivy.workflow.ui.task.TaskDisplayList.TaskDisplayListPanel;

/**
 * RichDialog panel implementation for RunningTaskDisplayListPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class RunningTaskDisplayListPanel extends RichDialogBorderPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private HeaderPanel headerRDC = null;
private TaskDisplayListPanel taskDisplayListRDC = null;
  
  /**
   * Create a new instance of RunningTaskDisplayListPanel
   */
  public RunningTaskDisplayListPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes RunningTaskDisplayListPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(510,494));
        this.add(getHeaderRDC(), com.ulcjava.base.application.ULCBorderLayoutPane.NORTH);
        this.add(getTaskDisplayListRDC(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
  }

/**
 * This method initializes headerRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.common.Header.HeaderPanel	
 */
private HeaderPanel getHeaderRDC() {
	if (headerRDC == null) {
		headerRDC = new HeaderPanel();
		headerRDC.setName("headerRDC");
		headerRDC.setPreferredSize(new Dimension(20, 75));
	}
	return headerRDC;
}

/**
 * This method initializes taskDisplayListRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.task.TaskDisplayList.TaskDisplayListPanel	
 */
private TaskDisplayListPanel getTaskDisplayListRDC() {
	if (taskDisplayListRDC == null) {
		taskDisplayListRDC = new TaskDisplayListPanel();
		taskDisplayListRDC.setName("taskDisplayListRDC");
	}
	return taskDisplayListRDC;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"