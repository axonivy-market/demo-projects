package ch.ivyteam.ivy.demo.filemanager.FileManagerContainer;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.addons.filemanager.FileManager.FileManagerPanel;
import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;
import com.ulcjava.base.application.ULCContainer;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;

/**
 * <p>FileManagerContainerPanel is a rich dialog panel implementation.
 *
 * <p>Please note that a rich dialog panel is not an instance of a Swing 
 * container, but of an ULCContainer. As such it can not be run 
 * or instantiated outside the ULC framework.
 */
@SuppressWarnings("all")
public class FileManagerContainerPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private @EmbeddedRichDialog(FileManagerPanel.class) ULCContainer fileManagerPanel = null;
/**
   * Create a new instance of FileManagerContainerPanel
   */
  public FileManagerContainerPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes FileManagerContainerPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(721,350));
        this.add(getFileManagerPanel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes fileManagerPanel, an embedded RichDialog.
 * The created object might have a different type than the declared
 * class due to overriding.
 * @returns com.ulcjava.base.application.ULCContainer 
 */
private ULCContainer getFileManagerPanel() {
	if (fileManagerPanel == null) {
		fileManagerPanel = RichDialogPanelFactory
				.create(FileManagerPanel.class);
		fileManagerPanel.setName("fileManagerPanel");
		fileManagerPanel.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
	}
	return fileManagerPanel;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"