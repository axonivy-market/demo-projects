package ch.ivyteam.ivy.demo.table.TableWithExcelExport;

import ch.ivyteam.ivy.addons.widgets.RTableWithExcelExport;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RTable;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;

/**
 * RichDialog panel implementation for RTableExcelExportTestPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class TableWithExcelExportPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
private static final long serialVersionUID = 1L;
private RTable Table = null;
private RScrollPane ScrollPane = null;
private RLabel Label = null;
/**
   * Create a new instance of RTableExcelExportTestPanel
   */
  public TableWithExcelExportPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes RTableExcelExportTestPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(394,362));
        this.add(getLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getScrollPane(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes Table	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTable	
 */
private RTable getTable()
{
  if (Table == null)
  {
    // This line has been modified to use RTableWithExcelExport instead of RTable
    // Old line :
    // Table = new RTable();
    Table = new RTableWithExcelExport();

    Table.setName("Table");
    Table.setModelConfiguration("{/showTableheader true /autoTableheader false /showtooltip false /showIcons false /version \"3.0\"/columns {{/result \"result=value\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"\\\"Simple text\\\"\"/field \"simpleText\"/editable \"\"/condition \"\"/cellWidget \"\"}{/result \"result=value\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"\\\"Number value\\\"\"/field \"numberValue\"/editable \"\"/condition \"\"/cellWidget \"\"}{/result \"result=value\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"\\\"Boolean value\\\"\"/field \"booleanValue\"/editable \"\"/condition \"\"/cellWidget \"\"}{/result \"result=value\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"\\\"Date time value\\\"\"/field \"dateTimeValue\"/editable \"\"/condition \"\"/cellWidget \"\"}}}");
    Table.setSortable(true);
  }
  return Table;
}

/**
 * This method initializes ScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getScrollPane()
{
  if (ScrollPane == null)
  {
    ScrollPane = new RScrollPane();
    ScrollPane.setName("ScrollPane");
    ScrollPane.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
    ScrollPane.setViewPortView(getTable());
  }
  return ScrollPane;
}

/**
 * This method initializes Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getLabel()
{
  if (Label == null)
  {
    Label = new RLabel();
    Label.setText("Use the contextual menu to export the table content");
    Label.setStyleProperties("{/foregroundColor {/b \"255\"/r \"51\"/g \"102\"}/font {/name \"Arial\"/size \"14\"/style \"BOLD\"}/anchor \"WEST\"}");
    Label.setName("Label");
  }
  return Label;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"
