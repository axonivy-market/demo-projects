package ch.ivyteam.ivy.server.configuration.ServerConfigurationUI;

import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RComboBox;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RTable;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.server.configuration.DatabaseConnectionConfigurationUI.DatabaseConnectionConfigurationUIPanel;
import ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseConnectionTesterUI.SystemDatabaseConnectionTesterUIPanel;

import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.ULCContainer;
import com.ulcjava.base.application.ULCTable;
import com.ulcjava.base.application.util.Color;

/**
 * RichDialog panel implementation for ServerConfigurationUIPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class ServerConfigurationUIPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RLabel databaseLabel = null;
private RComboBox databaseComboBox = null;
private RLabel driverLabel = null;
private RComboBox driverComboBox = null;
private RTable additionalPropertiesTable = null;
private RButton createSysDbButton = null;
private RButton convertSysDbButton = null;
private RButton deleteSysDbButton = null;
private RButton addConnectionPropertyButton = null;
private RButton removeConnectionPropertyButton = null;
private RScrollPane additionalConnectionScrollPane = null;
@EmbeddedRichDialog(DatabaseConnectionConfigurationUIPanel.class) private ULCContainer connectionPanel = null;
@EmbeddedRichDialog(SystemDatabaseConnectionTesterUIPanel.class) private ULCContainer connectionTester = null;
private RGridBagLayoutPane connectionStatePane = null;
private RGridBagLayoutPane additionalGridBagLayoutPane = null;
private RGridBagLayoutPane databasePane = null;
private RButton editConnectionPropertyButton = null;
/**
   * Create a new instance of ServerConfigurationUIPanel
   */
  public ServerConfigurationUIPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes ServerConfigurationUIPanel
   * @return void
   */
  public void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(675,640));
        this.add(getDatabasePane(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getConnectionPanel(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getAdditionalGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getConnectionStatePane(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }


/**
 * This method initializes databaseLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getDatabaseLabel() {
	if (databaseLabel == null) {
		databaseLabel = new RLabel();
		databaseLabel.setText("<%=ivy.cms.co(\"/labels/database\")%>");
		databaseLabel.setLabelFor(getDatabaseComboBox());
		databaseLabel.setName("databaseLabel");
	}
	return databaseLabel;
}

/**
 * This method initializes databaseComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getDatabaseComboBox() {
	if (databaseComboBox == null) {
		databaseComboBox = new RComboBox();
		databaseComboBox.setName("databaseComboBox");
		databaseComboBox.setStyleProperties("{/weightX \"1\"}");
		databaseComboBox.setModelConfiguration("{/result \"result=entry.getName()\"/version \"2.0\"/icon \"result=\\\"/Icons/databaseProduct\\\"\"/tooltip \"result=entry.getShortName()+\\\" (\\\"+entry.getName()+\\\")\\\"\"}");
	}
	return databaseComboBox;
}

/**
 * This method initializes driverLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getDriverLabel() {
	if (driverLabel == null) {
		driverLabel = new RLabel();
		driverLabel.setText("<%=ivy.cms.co(\"/labels/driver\")%>");
		driverLabel.setLabelFor(getDriverComboBox());
		driverLabel.setName("driverLabel");
	}
	return driverLabel;
}

/**
 * This method initializes driverComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getDriverComboBox() {
	if (driverComboBox == null) {
		driverComboBox = new RComboBox();
		driverComboBox.setName("driverComboBox");
		driverComboBox.setStyleProperties("{/weightX \"1\"}");
		driverComboBox.setModelConfiguration("{/result \"result=entry.getName()\"/version \"2.0\"/icon \"result=\\\"/Icons/databaseDriver\\\"\"/tooltip \"result=entry.getDriverName()\"}");
	}
	return driverComboBox;
}

/**
 * This method initializes additionalPropertiesTable	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTable	
 */
private RTable getAdditionalPropertiesTable() {
	if (additionalPropertiesTable == null) {
		additionalPropertiesTable = new RTable();
		additionalPropertiesTable.setName("additionalPropertiesTable");
		additionalPropertiesTable.setModelConfiguration("{/showTableheader true /autoTableheader false /showtooltip false /showIcons false /version \"3.0\"/columns {{/result \"result=value\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"\\\"Name\\\"\"/field \"name\"/columnWidth \"100\"}{/result \"result=value\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"\\\"Value\\\"\"/field \"value\"/columnWidth \"400\"}}}");
		additionalPropertiesTable.setAutoResizeMode(ULCTable.AUTO_RESIZE_LAST_COLUMN);
		additionalPropertiesTable.setBackground(Color.white);
		additionalPropertiesTable.setSortable(true);
		additionalPropertiesTable.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
	}
	return additionalPropertiesTable;
}

/**
 * This method initializes createSysDbButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getCreateSysDbButton() {
	if (createSysDbButton == null) {
		createSysDbButton = new RButton();
		createSysDbButton.setName("createSysDbButton");
		createSysDbButton.setToolTipText("<%=ivy.cms.co(\"/labels/createSystemDatabase\")%>");
		createSysDbButton.setStyleProperties("{/insetsTop \"0\"}");
		createSysDbButton.setIconUri("<%=ivy.cms.cr(\"/Icons/createSysDb\")%>");
	}
	return createSysDbButton;
}

/**
 * This method initializes convertSysDbButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getConvertSysDbButton() {
	if (convertSysDbButton == null) {
		convertSysDbButton = new RButton();
		convertSysDbButton.setName("convertSysDbButton");
		convertSysDbButton.setToolTipText("<%=ivy.cms.co(\"/labels/convertSysDbTooltip\")%>");
		convertSysDbButton.setIconUri("<%=ivy.cms.cr(\"/Icons/convertSysDb\")%>");
	}
	return convertSysDbButton;
}

/**
 * This method initializes deleteSysDbButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getDeleteSysDbButton() {
	if (deleteSysDbButton == null) {
		deleteSysDbButton = new RButton();
		deleteSysDbButton.setName("deleteSysDbButton");
		deleteSysDbButton.setStyleProperties("{/anchor \"NORTH\"}");
		deleteSysDbButton.setToolTipText("<%=ivy.cms.co(\"/labels/deleteSysDbTooltip\")%>");
		deleteSysDbButton.setIconUri("<%=ivy.cms.cr(\"/Icons/deleteSysDb\")%>");
	}
	return deleteSysDbButton;
}

/**
 * This method initializes addConnectionPropertyButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getAddConnectionPropertyButton() {
	if (addConnectionPropertyButton == null) {
		addConnectionPropertyButton = new RButton();
		addConnectionPropertyButton.setName("addConnectionPropertyButton");
		addConnectionPropertyButton.setStyleProperties("{/insetsTop \"0\"}");
		addConnectionPropertyButton.setIconUri("<%=ivy.cms.cr(\"/Icons/addRow\")%>");
	}
	return addConnectionPropertyButton;
}

/**
 * This method initializes removeConnectionPropertyButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getRemoveConnectionPropertyButton() {
	if (removeConnectionPropertyButton == null) {
		removeConnectionPropertyButton = new RButton();
		removeConnectionPropertyButton.setIconUri("<%=ivy.cms.cr(\"/Icons/deleteRow\")%>");
		removeConnectionPropertyButton.setStyleProperties("{/anchor \"NORTH\"}");
		removeConnectionPropertyButton.setName("removeConnectionPropertyButton");
	}
	return removeConnectionPropertyButton;
}

/**
 * This method initializes additionalConnectionScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getAdditionalConnectionScrollPane() {
	if (additionalConnectionScrollPane == null) {
		additionalConnectionScrollPane = new RScrollPane();
		additionalConnectionScrollPane.setName("additionalConnectionScrollPane");
		additionalConnectionScrollPane.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		additionalConnectionScrollPane.setViewPortView(getAdditionalPropertiesTable());
	}
	return additionalConnectionScrollPane;
}

/**
 * This method initializes connectionPanel	
 * 	
 * @return ch.ivyteam.ivy.server.configuration.DatabaseConnectionConfigurationUI.DatabaseConnectionConfigurationUIPanel	
 */
private ULCContainer getConnectionPanel() 
{
	if (connectionPanel == null)
	{
		connectionPanel = RichDialogPanelFactory.create(DatabaseConnectionConfigurationUIPanel.class);
		connectionPanel.setName("connectionPanel");
		connectionPanel.setBorder(BorderFactory.createTitledBorder("Connection"));
		connectionPanel.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"}");
	}
	return connectionPanel;
}

/**
 * This method initializes connectionTester	
 * 	
 * @return ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseConnectionTesterUI.SystemDatabaseConnectionTesterUIPanel	
 */
private ULCContainer getConnectionTester()  {
	if (connectionTester == null) {
		connectionTester = RichDialogPanelFactory.create(SystemDatabaseConnectionTesterUIPanel.class);
		connectionTester.setName("connectionTester");
		connectionTester.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
	}
	return connectionTester;
}

/**
 * This method initializes connectionStatePane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getConnectionStatePane() {
	if (connectionStatePane == null) {
		connectionStatePane = new RGridBagLayoutPane();
		connectionStatePane.setName("connectionStatePane");
		connectionStatePane.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		connectionStatePane.setBorder(BorderFactory.createTitledBorder("Connections state"));
		connectionStatePane.add(getConnectionTester(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 5, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		connectionStatePane.add(getDeleteSysDbButton(), new com.ulcjava.base.application.GridBagConstraints(1, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		connectionStatePane.add(getCreateSysDbButton(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		connectionStatePane.add(getConvertSysDbButton(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return connectionStatePane;
}

/**
 * This method initializes additionalGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getAdditionalGridBagLayoutPane() {
	if (additionalGridBagLayoutPane == null) {
		additionalGridBagLayoutPane = new RGridBagLayoutPane();
		additionalGridBagLayoutPane.setName("additionalGridBagLayoutPane");
		additionalGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder("Additional Connection Properties"));
		additionalGridBagLayoutPane.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		additionalGridBagLayoutPane.add(getAdditionalConnectionScrollPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 3, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		additionalGridBagLayoutPane.add(getAddConnectionPropertyButton(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		additionalGridBagLayoutPane.add(getRemoveConnectionPropertyButton(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		additionalGridBagLayoutPane.add(getEditConnectionPropertyButton(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return additionalGridBagLayoutPane;
}

/**
 * This method initializes databasePane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getDatabasePane() {
	if (databasePane == null) {
		databasePane = new RGridBagLayoutPane();
		databasePane.setName("databasePane");
		databasePane.setBorder(BorderFactory.createTitledBorder("Database"));		
		databasePane.setStyleProperties("{/fill \"HORIZONTAL\"/weightY \"0\"/weightX \"1\"}");
		databasePane.add(getDatabaseLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		databasePane.add(getDriverLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		databasePane.add(getDatabaseComboBox(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		databasePane.add(getDriverComboBox(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return databasePane;
}

/**
 * This method initializes editConnectionPropertyButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getEditConnectionPropertyButton() {
	if (editConnectionPropertyButton == null) {
		editConnectionPropertyButton = new RButton();
		editConnectionPropertyButton.setName("editConnectionPropertyButton");
		editConnectionPropertyButton.setIconUri("<%=ivy.cms.cr(\"/Icons/RowEdit/16\")%>");
	}
	return editConnectionPropertyButton;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"