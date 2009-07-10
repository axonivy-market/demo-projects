package ch.ivyteam.ivy.demo.table.CustomTableCellWidgets;

import ch.ivyteam.ivy.demo.util.Title.TitlePanel;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RList;
import ch.ivyteam.ivy.richdialog.widgets.components.RTable;
import ch.ivyteam.ivy.richdialog.widgets.components.customrenderers.RBooleanCellWidget;
import ch.ivyteam.ivy.richdialog.widgets.components.customrenderers.RButtonCellWidget;
import ch.ivyteam.ivy.richdialog.widgets.components.customrenderers.RComboBoxCellWidget;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;

import com.ulcjava.base.application.ULCTable;

/**
 * RichDialog panel implementation for CustomTableCellWidgetsPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class CustomTableCellWidgetsPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RScrollPane cellWidgetsScrollPane = null;
private RTable cellWidgetsTable = null;
private RButton doDatabindingButton = null;
private RButtonCellWidget clickMeButtonCellWidget = null;  //  @jve:decl-index=0:visual-constraint="336,262"
private RComboBoxCellWidget entryComboBoxCellWidget = null;  //  @jve:decl-index=0:visual-constraint="186,267"
private RComboBoxCellWidget entryKeyComboBoxCellWidget = null;  //  @jve:decl-index=0:visual-constraint="222,267"
private RBooleanCellWidget checkMeBooleanCellWidget = null;  //  @jve:decl-index=0:visual-constraint="13,262"
private RComboBoxCellWidget recordComboBoxCellWidget = null;  //  @jve:decl-index=0:visual-constraint="258,268"
private RComboBoxCellWidget recordKeyComboBoxCellWidget = null;  //  @jve:decl-index=0:visual-constraint="295,269"
private RScrollPane logScrollPane = null;
private RList logList = null;
private TitlePanel titlePanel = null;
/**
   * Create a new instance of CustomTableCellWidgetsPanel
   */
  public CustomTableCellWidgetsPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes CustomTableCellWidgetsPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(518,250));
        this.add(getCellWidgetsScrollPane(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getDoDatabindingButton(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getLogScrollPane(), new com.ulcjava.base.application.GridBagConstraints(0, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getTitlePanel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes cellWidgetsScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getCellWidgetsScrollPane() {
	if (cellWidgetsScrollPane == null) {
		cellWidgetsScrollPane = new RScrollPane();
		cellWidgetsScrollPane.setName("cellWidgetsScrollPane");
		cellWidgetsScrollPane.setStyleProperties("{/fill \"BOTH\"/weightY \"3\"/weightX \"1\"}");
		cellWidgetsScrollPane.setViewPortView(getCellWidgetsTable());
	}
	return cellWidgetsScrollPane;
}

/**
 * This method initializes cellWidgetsTable	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTable	
 */
private RTable getCellWidgetsTable() {
	if (cellWidgetsTable == null) {
		cellWidgetsTable = new RTable();
		cellWidgetsTable.setName("cellWidgetsTable");
		cellWidgetsTable.setSortable(true);
		cellWidgetsTable.setModelConfiguration("{/showTableheader true /autoTableheader false /showtooltip true /showIcons true /version \"3.0\"/emptyTableText \"\"/columns {{/result \"result=value\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"\\\"Boolean value\\\"\"/field \"booleanValue\"/editable \"true\"/condition \"\"/cellWidget \"checkMeBooleanCellWidget\"}{/result \"result=value\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"\\\"Combobox Entry\\\"\"/field \"comboBoxEntry\"/editable \"true\"/condition \"\"/cellWidget \"entryComboBoxCellWidget\"}{/result \"result=value\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"\\\"Combobox Entry Key\\\"\"/field \"comboBoxEntryKey\"/editable \"true\"/condition \"\"/cellWidget \"entryKeyComboBoxCellWidget\"}{/result \"result=value\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"\\\"Combobox Record\\\"\"/field \"comboBoxRecord\"/editable \"true\"/condition \"\"/cellWidget \"recordComboBoxCellWidget\"}{/result \"result=value\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"\\\"Combobox Record key\\\"\"/field \"comboBoxRecordKey\"/editable \"true\"/condition \"\"/cellWidget \"recordKeyComboBoxCellWidget\"}{/result \"result=value\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"\\\"Simple Text\\\"\"/field \"simpleText\"/editable \"true\"/condition \"\"/cellWidget \"\"}{/result \"result=value\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"\\\"Button with action\\\"\"/field \"buttonTitle\"/editable \"true\"/condition \"\"/cellWidget \"clickMeButtonCellWidget\"}}}");
		cellWidgetsTable.setAutoResizeMode(ULCTable.AUTO_RESIZE_ALL_COLUMNS);
		cellWidgetsTable.setStyleProperties("{/weightY \"1\"}");
		
	}
	return cellWidgetsTable;
}

/**
 * This method initializes doDatabindingButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getDoDatabindingButton() {
	if (doDatabindingButton == null) {
		doDatabindingButton = new RButton();
		doDatabindingButton.setText("start databinding and view mapped values");
		doDatabindingButton.setName("doDatabindingButton");
	}
	return doDatabindingButton;
}

/**
 * This method initializes clickMeButtonCellWidget	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.customrenderers.RButtonCellWidget	
 */
private RButtonCellWidget getClickMeButtonCellWidget() {
	if (clickMeButtonCellWidget == null) {
		clickMeButtonCellWidget = new RButtonCellWidget();
		clickMeButtonCellWidget.setText("clickMeButtonCellWidget");
		clickMeButtonCellWidget.setName("clickMeButtonCellWidget");
	}
	return clickMeButtonCellWidget;
}

/**
 * This method initializes entryComboBoxCellWidget	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.customrenderers.RComboBoxCellWidget	
 */
private RComboBoxCellWidget getEntryComboBoxCellWidget() {
	if (entryComboBoxCellWidget == null) {
		entryComboBoxCellWidget = new RComboBoxCellWidget();
		entryComboBoxCellWidget.setName("entryComboBoxCellWidget");
		entryComboBoxCellWidget.setModelConfiguration("{/result \"result=entry.title + \\\" (\\\" + entry.key + \\\")\\\"\"/version \"3.0\"/icon \"\"/tooltip \"result=entry.description\"}");
	}
	return entryComboBoxCellWidget;
}

/**
 * This method initializes entryKeyComboBoxCellWidget	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.customrenderers.RComboBoxCellWidget	
 */
private RComboBoxCellWidget getEntryKeyComboBoxCellWidget() {
	if (entryKeyComboBoxCellWidget == null) {
		entryKeyComboBoxCellWidget = new RComboBoxCellWidget();
		entryKeyComboBoxCellWidget.setName("entryKeyComboBoxCellWidget");
		entryKeyComboBoxCellWidget.setModelConfiguration("{/result \"result=entry.title + \\\" (\\\" + entry.key + \\\")\\\"\"/version \"3.0\"/icon \"\"/tooltip \"result=entry.description\"/keyField \"result=entry.key\"}");
	}
	return entryKeyComboBoxCellWidget;
}

/**
 * This method initializes checkMeBooleanCellWidget	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.customrenderers.RBooleanCellWidget	
 */
private RBooleanCellWidget getCheckMeBooleanCellWidget() {
	if (checkMeBooleanCellWidget == null) {
		checkMeBooleanCellWidget = new RBooleanCellWidget();
		checkMeBooleanCellWidget.setText("checkMeBooleanCellWidget");
		checkMeBooleanCellWidget.setName("checkMeBooleanCellWidget");
	}
	return checkMeBooleanCellWidget;
}

/**
 * This method initializes recordComboBoxCellWidget	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.customrenderers.RComboBoxCellWidget	
 */
private RComboBoxCellWidget getRecordComboBoxCellWidget() {
	if (recordComboBoxCellWidget == null) {
		recordComboBoxCellWidget = new RComboBoxCellWidget();
		recordComboBoxCellWidget.setName("recordComboBoxCellWidget");
		recordComboBoxCellWidget.setModelConfiguration("{/keyField \"\"/version \"3.0\"/result \"result=record.getField(\\\"name\\\").toString()\"/icon \"\"/tooltip \"result=record.getField(\\\"descr\\\").toString()\"}");
	}
	return recordComboBoxCellWidget;
}

/**
 * This method initializes recordKeyComboBoxCellWidget	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.customrenderers.RComboBoxCellWidget	
 */
private RComboBoxCellWidget getRecordKeyComboBoxCellWidget() {
	if (recordKeyComboBoxCellWidget == null) {
		recordKeyComboBoxCellWidget = new RComboBoxCellWidget();
		recordKeyComboBoxCellWidget.setName("recordKeyComboBoxCellWidget");
		recordKeyComboBoxCellWidget.setModelConfiguration("{/result \"result=record.getField(\\\"name\\\").toString()\"/version \"3.0\"/icon \"\"/tooltip \"result=record.getField(\\\"descr\\\").toString()\"/keyField \"result=record.getField(\\\"id\\\").toString().toNumber()\"}");
	}
	return recordKeyComboBoxCellWidget;
}

/**
 * This method initializes logScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getLogScrollPane() {
	if (logScrollPane == null) {
		logScrollPane = new RScrollPane();
		logScrollPane.setName("logScrollPane");
		logScrollPane.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		logScrollPane.setViewPortView(getLogList());
	}
	return logScrollPane;
}

/**
 * This method initializes logList	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RList	
 */
private RList getLogList() {
	if (logList == null) {
		logList = new RList();
		logList.setName("logList");
		logList.setModelConfiguration("{/result \"\"/version \"3.0\"/icon \"\"/tooltip \"\"}");
	}
	return logList;
}

/**
 * This method initializes titlePanel	
 * 	
 * @return ch.ivyteam.ivy.demo.util.Title.TitlePanel	
 */
private TitlePanel getTitlePanel() {
	if (titlePanel == null) {
		titlePanel = new TitlePanel();
		titlePanel.setName("titlePanel");
		titlePanel.setStyleProperties("{/fill \"HORIZONTAL\"}");
	}
	return titlePanel;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"