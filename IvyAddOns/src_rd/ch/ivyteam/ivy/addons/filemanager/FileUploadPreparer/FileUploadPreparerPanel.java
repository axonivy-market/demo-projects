package ch.ivyteam.ivy.addons.filemanager.FileUploadPreparer;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RTable;
import com.ulcjava.base.application.ULCTable;

/**
 * RichDialog panel implementation for FileUploadPreparerPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class FileUploadPreparerPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RFlowLayoutPane FlowLayoutPane = null;
private RButton uploadButton = null;
private RButton deleteButton = null;
private RScrollPane ScrollPane = null;
private RTable filesTable = null;
  
  /**
   * Create a new instance of FileUploadPreparerPanel
   */
  public FileUploadPreparerPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes FileUploadPreparerPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(700,310));
        this.add(getFlowLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getScrollPane(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes FlowLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane	
 */
private RFlowLayoutPane getFlowLayoutPane() {
	if (FlowLayoutPane == null) {
		FlowLayoutPane = new RFlowLayoutPane();
		FlowLayoutPane.setName("FlowLayoutPane");
		FlowLayoutPane.setStyleProperties("{/fill \"HORIZONTAL\"/alignment \"LEFT\"}");
		FlowLayoutPane.add(getUploadButton());
		FlowLayoutPane.add(getDeleteButton());
	}
	return FlowLayoutPane;
}

/**
 * This method initializes uploadButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getUploadButton() {
	if (uploadButton == null) {
		uploadButton = new RButton();
		uploadButton.setBorderPainted(false);
		uploadButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/attachedFile/24\")%>");
		uploadButton.setToolTipText("<%=ivy.cms.co(\"/ch/xpertline/common/html/tooltips/chooseFilesToUpload\")%>");
		uploadButton.setName("uploadButton");
	}
	return uploadButton;
}

/**
 * This method initializes deleteButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getDeleteButton() {
	if (deleteButton == null) {
		deleteButton = new RButton();
		deleteButton.setBorderPainted(false);
		deleteButton.setToolTipText("<%=ivy.cms.co(\"/ch/xpertline/common/html/tooltips/unchooseFiles\")%>");
		deleteButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/delete/24\")%>");
		deleteButton.setName("deleteButton");
	}
	return deleteButton;
}

/**
 * This method initializes ScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getScrollPane() {
	if (ScrollPane == null) {
		ScrollPane = new RScrollPane();
		ScrollPane.setName("ScrollPane");
		ScrollPane.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		ScrollPane.setViewPortView(getFilesTable());
	}
	return ScrollPane;
}

/**
 * This method initializes filesTable	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTable	
 */
private RTable getFilesTable() {
	if (filesTable == null) {
		filesTable = new RTable();
		filesTable.setName("filesTable");
		filesTable.setSortable(true);
		filesTable.setModelConfiguration("{/showTableheader true /autoTableheader false /showtooltip false /showIcons true /emptyTableText \"Keine Datei / Aucun Fichier / No File\"/version \"3.0\"/columns {{/result \"result=entry.getPath()\"/version \"3.0\"/tooltip \"\"/icon \"result=ivy.cms.cr(\\\"/ch/xpertline/common/images/Document16\\\")\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/addons/filemanager/fileManagement/tableStrings/choosedFiles\\\")\"/field \"\"/editable \"\"/condition \"\"/columnWidth \"350\"}}}");
		filesTable.setRowHeight(22);
		filesTable.setStyleProperties("{/fill \"BOTH\"}");
		filesTable.setAutoResizeMode(ULCTable.AUTO_RESIZE_SUBSEQUENT_COLUMNS);
	}
	return filesTable;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"