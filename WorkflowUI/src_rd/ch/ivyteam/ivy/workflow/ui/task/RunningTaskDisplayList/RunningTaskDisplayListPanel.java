package ch.ivyteam.ivy.workflow.ui.task.RunningTaskDisplayList;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane;
import ch.ivyteam.ivy.workflow.ui.common.Header.HeaderPanel;
import ch.ivyteam.ivy.workflow.ui.task.TaskDisplayList.TaskDisplayListPanel;
import ch.ivyteam.ivy.workflow.ui.utils.UIHelper;
import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import com.ulcjava.base.application.ULCContainer;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;

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
@EmbeddedRichDialog(HeaderPanel.class) private ULCContainer headerRDC = null;
@EmbeddedRichDialog(TaskDisplayListPanel.class) private ULCContainer taskDisplayListRDC = null;
private RBoxPane headerBoxPane = null;
private RHyperlink closeHyperlink = null;
private RHyperlink stopAutomaticTasksExecutionToggleHyperlink = null;
  
  /**
   * Create a new instance of RunningTaskDisplayListPanel
   */
  public RunningTaskDisplayListPanel()
  {
    super();
    initialize();

    // prettify ui components
    UIHelper.prettifyComponent(this);     
  }
  
  
  /**
   * This method initializes RunningTaskDisplayListPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(510,494));
        this.add(getTaskDisplayListRDC(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
        this.add(getHeaderBoxPane(), com.ulcjava.base.application.ULCBorderLayoutPane.NORTH);
  }

/**
 * This method initializes headerRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.common.Header.HeaderPanel	
 */
private ULCContainer getHeaderRDC()  {
	if (headerRDC == null) {
		headerRDC = RichDialogPanelFactory.create(HeaderPanel.class);
		headerRDC.setName("headerRDC");
		headerRDC.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
	}
	return headerRDC;
}

/**
 * This method initializes taskDisplayListRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.task.TaskDisplayList.TaskDisplayListPanel	
 */
private ULCContainer getTaskDisplayListRDC()  {
	if (taskDisplayListRDC == null) {
		taskDisplayListRDC = RichDialogPanelFactory.create(TaskDisplayListPanel.class);
		taskDisplayListRDC.setName("taskDisplayListRDC");
	}
	return taskDisplayListRDC;
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
		headerBoxPane.setPreferredSize(new com.ulcjava.base.application.util.Dimension(20,75));
		headerBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getHeaderRDC());
		headerBoxPane.set(1, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getStopAutomaticTasksExecutionToggleHyperlink());
		headerBoxPane.set(2, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getCloseHyperlink());
	}
	return headerBoxPane;
}

/**
 * This method initializes closeHyperlink	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RHyperlink getCloseHyperlink() {
	if (closeHyperlink == null) {
		closeHyperlink = new RHyperlink();
		closeHyperlink.setName("closeHyperlink");
		closeHyperlink.setStyleProperties("{/insetsRight \"3\"}");
		closeHyperlink.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/close\")%>");
		closeHyperlink.setStyle("toolBarButton");
		closeHyperlink.setName("closeHyperlink");
		closeHyperlink.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/close32\")%>");
	}
	return closeHyperlink;
}

/**
 * This method initializes stopAutomaticTasksExecutionToggleHyperlink	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RToggleButton	
 */
private RHyperlink getStopAutomaticTasksExecutionToggleHyperlink() {
	if (stopAutomaticTasksExecutionToggleHyperlink == null) {
		stopAutomaticTasksExecutionToggleHyperlink = new RHyperlink();
		stopAutomaticTasksExecutionToggleHyperlink.setName("stopAutomaticTasksExecutionToggleHyperlink");
		stopAutomaticTasksExecutionToggleHyperlink.setStyle("toolBarButton");
		stopAutomaticTasksExecutionToggleHyperlink.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/task/images/stopAutostartTasks32\")%>");
		stopAutomaticTasksExecutionToggleHyperlink.setVisible(false);
		stopAutomaticTasksExecutionToggleHyperlink.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/stopAutoStartTasksShortDesc\")%>\n");
		stopAutomaticTasksExecutionToggleHyperlink.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/stopAutoStartTasksLongDesc\")%>\n");
	}
	return stopAutomaticTasksExecutionToggleHyperlink;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"