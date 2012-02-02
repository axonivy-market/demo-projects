package ch.ivyteam.ivy.addons.filemanager.FileListChooser;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RComboBox;

/**
 * RichDialog panel implementation for FileListChooserPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class FileListChooserPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RComboBox fileListComboBox = null;
  
  /**
   * Create a new instance of FileListChooserPanel
   */
  public FileListChooserPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes FileListChooserPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(69,30));
        this.add(getFileListComboBox(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes fileListComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getFileListComboBox() {
	if (fileListComboBox == null) {
		fileListComboBox = new RComboBox();
		fileListComboBox.setName("fileListComboBox");
		fileListComboBox.setModelConfiguration("{/result \"result=entry.filename\"/version \"3.0\"/icon \"\"/tooltip \"\"/emptyTableText \"No File\"}");
		fileListComboBox.setStyle("tahoma_12_grey");
		fileListComboBox.setStyleProperties("{/anchor \"CENTER\"/fill \"BOTH\"/weightY \"0\"/weightX \"1\"}");
	}
	return fileListComboBox;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"