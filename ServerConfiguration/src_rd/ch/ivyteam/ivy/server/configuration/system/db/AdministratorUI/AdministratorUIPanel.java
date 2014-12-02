package ch.ivyteam.ivy.server.configuration.system.db.AdministratorUI;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RTable;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import com.ulcjava.base.application.ULCTable;

/**
 * RichDialog panel implementation for AdministratorUIPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class AdministratorUIPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RScrollPane adminScrollPane = null;
private RGridLayoutPane toolPane = null;
private RButton createButton = null;
private RButton deleteButton = null;
private RTable adminTable = null;
private RButton editButton = null;
/**
   * Create a new instance of AdministratorUIPanel
   */
  public AdministratorUIPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes AdministratorUIPanel
   * @return void
   */
  public void initialize()
  {
        this.add(getAdminScrollPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 2, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getToolPane(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes adminScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getAdminScrollPane() {
	if (adminScrollPane == null) {
		adminScrollPane = new RScrollPane();
		adminScrollPane.setName("adminScrollPane");
		adminScrollPane.setStyleProperties("{/insetsTop \"5\"/insetsRight \"5\"/insetsLeft \"5\"}");
		adminScrollPane.setViewPortView(getAdminTable());
	}
	return adminScrollPane;
}

/**
 * This method initializes toolPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridLayoutPane	
 */
private RGridLayoutPane getToolPane() {
	if (toolPane == null) {
		toolPane = new RGridLayoutPane();
		toolPane.setName("toolPane");
		toolPane.setColumns(1);
		toolPane.setRows(0);
		toolPane.setVgap(5);
		toolPane.setStyleProperties("{/anchor \"NORTH\"/insetsTop \"5\"/insetsRight \"5\"}");
		toolPane.add(getCreateButton());
		toolPane.add(getEditButton());
		toolPane.add(getDeleteButton());
	}
	return toolPane;
}

/**
 * This method initializes createButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getCreateButton() {
	if (createButton == null) {
		createButton = new RButton();
		createButton.setText("<%=ivy.cms.co(\"/labels/create\")%>");
		createButton.setName("createButton");
	}
	return createButton;
}

/**
 * This method initializes deleteButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getDeleteButton() {
	if (deleteButton == null) {
		deleteButton = new RButton();
		deleteButton.setText("<%=ivy.cms.co(\"/labels/delete\")%>");
		deleteButton.setEnabled(false);
		deleteButton.setName("deleteButton");
	}
	return deleteButton;
}

/**
 * This method initializes adminTable	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTable	
 */
private RTable getAdminTable() {
	if (adminTable == null) {
		adminTable = new RTable();
		adminTable.setName("adminTable");
		adminTable.setModelConfiguration("{/showTableheader true /autoTableheader false /showtooltip false /showIcons true /version \"2.0\"/columns {{/result \"result=entry.getName()\"/version \"2.0\"/tooltip \"\"/icon \"result=ivy.cms.cr(\\\"/icons/admin\\\")\"/header \"Name\"/field \"\"/columnWidth \"100\"}{/result \"result=value\"/version \"2.0\"/tooltip \"\"/icon \"\"/header \"FullName\"/field \"fullName\"/columnWidth \"200\"}{/result \"result=value\"/version \"2.0\"/tooltip \"\"/icon \"\"/header \"EMailAddress\"/field \"eMailAddress\"/columnWidth \"200\"}}}");
		adminTable.setAutoResizeMode(ULCTable.AUTO_RESIZE_SUBSEQUENT_COLUMNS);
		adminTable.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
	}
	return adminTable;
}

/**
 * This method initializes editButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getEditButton() {
	if (editButton == null) {
		editButton = new RButton();
		editButton.setName("editButton");
		editButton.setEnabled(false);
		editButton.setText("<%=ivy.cms.co(\"/labels/edit\")%>");
	}
	return editButton;
}
}