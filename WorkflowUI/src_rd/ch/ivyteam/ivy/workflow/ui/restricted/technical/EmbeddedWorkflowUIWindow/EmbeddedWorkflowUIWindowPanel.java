package ch.ivyteam.ivy.workflow.ui.restricted.technical.EmbeddedWorkflowUIWindow;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay;
import ch.ivyteam.ivy.workflow.ui.utils.UIHelper;
import ch.ivyteam.ivy.workflow.ui.utils.UserSessionAttributesHelper;

import com.ulcjava.base.application.event.ISelectionChangedListener;

/**
 * RichDialog panel implementation for WorkflowUIWindowPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class EmbeddedWorkflowUIWindowPanel extends RichDialogBorderPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RTabbedDisplay workflowUIWindowCenterDisplay = null;
/**
   * Create a new instance of WorkflowUIWindowPanel
   */
  public EmbeddedWorkflowUIWindowPanel()
  {
    super();
    initialize();

    // prettify ui components
    UIHelper.prettifyComponent(this);     
  }
  
  /**
   * This method initializes WorkflowUIWindowPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(1024,768));
        this.add(getWorkflowUIWindowCenterDisplay(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
        
        // set the flag to false in order to have "Workflow" as selected index 0
        UserSessionAttributesHelper.setWorkflowUISessionInitialized(false);
  }

/**
 * This method initializes workflowUIWindowCenterDisplay	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay	
 */
private RTabbedDisplay getWorkflowUIWindowCenterDisplay() {
	if (workflowUIWindowCenterDisplay == null) {
		workflowUIWindowCenterDisplay = new RTabbedDisplay();
		workflowUIWindowCenterDisplay.setName("workflowUIWindowCenterDisplay");
		workflowUIWindowCenterDisplay.addSelectionChangedListener(new ISelectionChangedListener() {
			/**
			 * 
			 */
			private static final long serialVersionUID = -3559903885274816649L;

					public void selectionChanged(
							com.ulcjava.base.application.event.SelectionChangedEvent e) {
						Ivy.log().debug("selectionChanged to : " + 
								(workflowUIWindowCenterDisplay.getSelectedIndex() <0? "": workflowUIWindowCenterDisplay.getTitleAt(workflowUIWindowCenterDisplay.getSelectedIndex())));
						
						Ivy.log().debug("workflowUIWindowTabbedDisplay.getSelectedIndex() != 0 && !UserSessionAttributesHelper.isWorkflowUISessionInitialized(): " + 
								workflowUIWindowCenterDisplay.getSelectedIndex() != 0 + "&&" + !UserSessionAttributesHelper.isWorkflowUISessionInitialized());
						
						if (workflowUIWindowCenterDisplay.getSelectedIndex() > 0 && !UserSessionAttributesHelper.isWorkflowUISessionInitialized())
						{
							// this is an initialisation
							// set the attribute value on the session
							UserSessionAttributesHelper.setWorkflowUISessionInitialized(true);
							
							// set Workflow (1st tab) as selected tab
							workflowUIWindowCenterDisplay.setSelectedIndex(0);
							
							Ivy.log().debug("Now selected index is: " + workflowUIWindowCenterDisplay.getSelectedIndex());
						}
					}
				});
	}
	return workflowUIWindowCenterDisplay;
}

}  //  @jve:decl-index=0:visual-constraint="10,10"