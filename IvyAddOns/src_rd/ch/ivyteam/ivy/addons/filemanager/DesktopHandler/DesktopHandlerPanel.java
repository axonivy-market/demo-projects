package ch.ivyteam.ivy.addons.filemanager.DesktopHandler;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.util.Color;
import com.ulcjava.base.application.border.ULCTitledBorder;
import com.ulcjava.base.application.util.Font;
import ch.ivyteam.ivy.richdialog.widgets.components.RTable;
import com.ulcjava.base.application.ULCTable;
import ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu;
import ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem;
import ch.ivyteam.ivy.addons.filemanager.FileEditorChecker.FileEditorCheckerPanel;
import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import com.ulcjava.base.application.ULCContainer;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;

/**
 * RichDialog panel implementation for DesktopHandlerPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class DesktopHandlerPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
	/** Serial version id */
	private static final long serialVersionUID = 1L;
	private RScrollPane ScrollPane = null;
	private RTable fileEditedTable = null;
	private RPopupMenu PopupMenu = null;  //  @jve:decl-index=0:visual-constraint="205,15"
	private RMenuItem removeFilesMenuItem = null;
	@EmbeddedRichDialog(FileEditorCheckerPanel.class) private ULCContainer fileEditorCheckerPanel = null;
	/**
	 * Create a new instance of DesktopHandlerPanel
	 */
	public DesktopHandlerPanel()
	{
		super();
		initialize();
	}

	/**
	 * This method initializes DesktopHandlerPanel
	 */
	private void initialize()
	{
		this.setVisible(true);
		this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(174,40));
		this.add(getScrollPane(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		this.add(getFileEditorCheckerPanel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
			ScrollPane.setBorder(BorderFactory.createTitledBorder(BorderFactory.createLineBorder(Color.gray, 1), "Files you are currently editing", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
			ScrollPane.setStyleProperties("{/insetsBottom \"4\"/fill \"BOTH\"/insetsRight \"4\"/weightY \"1\"/weightX \"1\"}");
			ScrollPane.setViewPortView(getFileEditedTable());
		}
		return ScrollPane;
	}

	/**
	 * This method initializes fileEditedTable	
	 * 	
	 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTable	
	 */
	private RTable getFileEditedTable() {
		if (fileEditedTable == null) {
			fileEditedTable = new RTable();
			fileEditedTable.setName("fileEditedTable");
			fileEditedTable.setAutoResizeMode(ULCTable.AUTO_RESIZE_SUBSEQUENT_COLUMNS);
			fileEditedTable.setSortable(true);
			fileEditedTable.setModelConfiguration("{/showTableheader true /autoTableheader false /showtooltip false /showIcons false /version \"2.0\"/columns {{/result \"result=entry.serverFile.getName()\"/version \"2.0\"/tooltip \"\"/icon \"\"/header \"File name\"/field \"\"}{/result \"result=entry.serverFile.getPath()\"/version \"2.0\"/tooltip \"\"/icon \"\"/header \"File path\"/field \"\"}}/emptyTableText \"No Files currently edited\"}");
			fileEditedTable.setRowHeight(22);
			fileEditedTable.setComponentPopupMenu(getPopupMenu());
			fileEditedTable.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		}
		return fileEditedTable;
	}

	/**
	 * This method initializes PopupMenu	
	 * 	
	 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu	
	 */
	private RPopupMenu getPopupMenu() {
		if (PopupMenu == null) {
			PopupMenu = new RPopupMenu();
			PopupMenu.setName("PopupMenu");
			PopupMenu.add(getRemoveFilesMenuItem());
		}
		return PopupMenu;
	}

	/**
	 * This method initializes removeFilesMenuItem	
	 * 	
	 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
	 */
	private RMenuItem getRemoveFilesMenuItem() {
		if (removeFilesMenuItem == null) {
			removeFilesMenuItem = new RMenuItem();
			removeFilesMenuItem.setText("<%=ivy.cms.co(\"/ch/xpertline/common/ria/component/DesktopHandler/RemovetheselectedFilesfromthelist\")%>");
			removeFilesMenuItem.setName("removeFilesMenuItem");
		}
		return removeFilesMenuItem;
	}

	/**
	 * This method initializes fileEditorCheckerPanel	
	 * 	
	 * @return ch.ivyteam.ivy.addons.filemanager.FileEditorChecker.FileEditorCheckerPanel	
	 */
	private ULCContainer getFileEditorCheckerPanel()  {
		if (fileEditorCheckerPanel == null) {
			fileEditorCheckerPanel = RichDialogPanelFactory.create(FileEditorCheckerPanel.class);
			fileEditorCheckerPanel.setName("fileEditorCheckerPanel");
		}
		return fileEditorCheckerPanel;
	}

}  //  @jve:decl-index=0:visual-constraint="10,10"