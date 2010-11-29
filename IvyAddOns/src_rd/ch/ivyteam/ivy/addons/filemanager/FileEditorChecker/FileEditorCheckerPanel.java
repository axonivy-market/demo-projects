package ch.ivyteam.ivy.addons.filemanager.FileEditorChecker;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;

/**
 * RichDialog panel implementation for FileEditorCheckerPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class FileEditorCheckerPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
  
  /**
   * Create a new instance of FileEditorCheckerPanel
   */
  public FileEditorCheckerPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes FileEditorCheckerPanel
   * @return void
   */
  private void initialize()
  {
        this.setVisible(false);
  }
}