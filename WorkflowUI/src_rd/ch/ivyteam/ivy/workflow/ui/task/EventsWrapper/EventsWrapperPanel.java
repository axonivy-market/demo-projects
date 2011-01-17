package ch.ivyteam.ivy.workflow.ui.task.EventsWrapper;

import ch.ivyteam.ivy.addons.eventlog.EventLogDisplayList.EventLogDisplayListPanel;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.workflow.ui.utils.UIHelper;

/**
 * RichDialog panel implementation for TaskInformationDisplayPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class EventsWrapperPanel extends RichDialogBorderPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private EventLogDisplayListPanel eventLogDisplayListRDC = null;
/**
   * Create a new instance of TaskInformationDisplayPanel
   */
  public EventsWrapperPanel()
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
        this.add(getEventLogDisplayListRDC(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(730,809));
  }

/**
 * This method initializes eventLogDisplayListRDC	
 * 	
 * @return ch.ivyteam.ivy.addons.eventlog.ria.EventLogDisplayList.EventLogDisplayListPanel	
 */
private EventLogDisplayListPanel getEventLogDisplayListRDC() {
	if (eventLogDisplayListRDC == null) {
		eventLogDisplayListRDC = new EventLogDisplayListPanel();
		eventLogDisplayListRDC.setName("eventLogDisplayListRDC");
	}
	return eventLogDisplayListRDC;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"