package ch.ivyteam.ivy.workflow.ui.task.DocumentsWrapper;

import ch.ivyteam.ivy.addons.filemanager.FileManager.FileManagerPanel;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.workflow.ui.utils.UIHelper;

/**
 * RichDialog panel implementation for TaskInformationDisplayPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class DocumentsWrapperPanel extends RichDialogBorderPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private FileManagerPanel fileManagerRDC = null;
/**
   * Create a new instance of TaskInformationDisplayPanel
   */
  public DocumentsWrapperPanel()
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
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(730,809));
        this.add(getFileManagerRDC(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
  }

/**
 * This method initialises fileManagerRDC	
 * 	
 * @return ch.ivyteam.ivy.addons.filemanager.FileManager.FileManagerPanel	
 */
private FileManagerPanel getFileManagerRDC() {
	if (fileManagerRDC == null) {
		fileManagerRDC = new FileManagerPanel();
		fileManagerRDC.setName("fileManagerRDC");
	}
	return fileManagerRDC;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"