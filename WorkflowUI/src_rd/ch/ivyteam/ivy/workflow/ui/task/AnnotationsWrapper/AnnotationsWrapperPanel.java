package ch.ivyteam.ivy.workflow.ui.task.AnnotationsWrapper;

import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPaneContainer;
import ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListPanel;
import ch.ivyteam.ivy.workflow.ui.task.TaskNoteDisplayList.TaskNoteDisplayListPanel;
import ch.ivyteam.ivy.workflow.ui.utils.UIHelper;

import com.ulcjava.base.application.ULCContainer;
import com.ulcjava.base.application.util.Color;

/**
 * RichDialog panel implementation for TaskInformationDisplayPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class AnnotationsWrapperPanel extends RichDialogBorderPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
@EmbeddedRichDialog(CaseNoteDisplayListPanel.class) private ULCContainer caseNoteDisplayListRDC = null;
@EmbeddedRichDialog(TaskNoteDisplayListPanel.class) private ULCContainer taskNoteDisplayListRDC = null;
private RTaskPane caseNotesTaskPane = null;
private RTaskPaneContainer notesTaskPaneContainer = null;
private RTaskPane taskNotesTaskPane = null;
/**
   * Create a new instance of TaskInformationDisplayPanel
   */
  public AnnotationsWrapperPanel()
  {
    super();
    initialize();
    
    // prettify ui components
    UIHelper.prettifyComponent(this);     
  }
  
  /**
   * This method initializes TaskInformationDisplayPanel
   * @return void
   */
  public void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(646,600));
        this.add(getNotesTaskPaneContainer(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(730,809));
  }

/**
 * This method initializes caseNoteDisplayListRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListPanel	
 */
private ULCContainer getCaseNoteDisplayListRDC()  {
	if (caseNoteDisplayListRDC == null) {
		caseNoteDisplayListRDC = RichDialogPanelFactory.create(CaseNoteDisplayListPanel.class);
		caseNoteDisplayListRDC.setName("caseNoteDisplayListRDC");
		caseNoteDisplayListRDC.setStyleProperties("{/weightY \"1\"/weightX \"1\"}");
		caseNoteDisplayListRDC.setPreferredSize(new com.ulcjava.base.application.util.Dimension(450,425));
		caseNoteDisplayListRDC.setForeground(Color.darkGray);
	}
	return caseNoteDisplayListRDC;
}

/**
 * This method initializes taskNoteDisplayListRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.task.TaskNoteDisplayList.TaskNoteDisplayListPanel	
 */
private ULCContainer getTaskNoteDisplayListRDC()  {
	if (taskNoteDisplayListRDC == null) {
		taskNoteDisplayListRDC = RichDialogPanelFactory.create(TaskNoteDisplayListPanel.class);
		taskNoteDisplayListRDC.setName("taskNoteDisplayListRDC");
		taskNoteDisplayListRDC.setPreferredSize(new com.ulcjava.base.application.util.Dimension(450,425));
		taskNoteDisplayListRDC.setStyleProperties("{/weightY \"1\"/weightX \"1\"}");
	}
	return taskNoteDisplayListRDC;
}


/**
 * This method initializes caseNotesTaskPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPane	
 */
private RTaskPane getCaseNotesTaskPane() {
	if (caseNotesTaskPane == null) {
		caseNotesTaskPane = new RTaskPane();
		caseNotesTaskPane.setName("caseNotesTaskPane");
		caseNotesTaskPane.setTitle("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/case\")%>");
		caseNotesTaskPane.add(getCaseNoteDisplayListRDC());
	}
	return caseNotesTaskPane;
}

/**
 * This method initializes notesTaskPaneContainer	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPaneContainer	
 */
private RTaskPaneContainer getNotesTaskPaneContainer() {
	if (notesTaskPaneContainer == null) {
		notesTaskPaneContainer = new RTaskPaneContainer();
		notesTaskPaneContainer.setName("notesTaskPaneContainer");
		notesTaskPaneContainer.add(getCaseNotesTaskPane());
		notesTaskPaneContainer.add(getTaskNotesTaskPane());
	}
	return notesTaskPaneContainer;
}

/**
 * This method initializes taskNotesTaskPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPane	
 */
private RTaskPane getTaskNotesTaskPane() {
	if (taskNotesTaskPane == null) {
		taskNotesTaskPane = new RTaskPane();
		taskNotesTaskPane.setName("taskNotesTaskPane");
		taskNotesTaskPane.setTitle("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/task\")%>");
		taskNotesTaskPane.add(getTaskNoteDisplayListRDC());
	}
	return taskNotesTaskPane;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"