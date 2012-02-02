package ch.ivyteam.ivy.addons.eventlog.EventLogDisplayList;

import ch.ivyteam.ivy.addons.widgets.RTableWithExcelExport;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;

/**
 * RichDialog panel implementation for EventLogDisplayListPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class EventLogDisplayListPanel extends RichDialogBorderPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RScrollPane eventLogsScrollPane = null;
private RTableWithExcelExport eventLogsTable = null;
  
  /**
   * Create a new instance of EventLogDisplayListPanel
   */
  public EventLogDisplayListPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes EventLogDisplayListPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(554,368));
        this.add(getEventLogsScrollPane(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
  }

/**
 * This method initializes eventLogsScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getEventLogsScrollPane() {
	if (eventLogsScrollPane == null) {
		eventLogsScrollPane = new RScrollPane();
		eventLogsScrollPane.setName("eventLogsScrollPane");
		eventLogsScrollPane.setStyleProperties("{/horizontalScrollBarPolicy \"AS_NEEDED\"}");
		eventLogsScrollPane.setViewPortView(getEventLogsTable());
	}
	return eventLogsScrollPane;
}

/**
 * This method initializes eventLogsTable	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTable	
 */
private RTableWithExcelExport getEventLogsTable() {
	if (eventLogsTable == null) {
		eventLogsTable = new RTableWithExcelExport();
		eventLogsTable.setName("eventLogsTable");
		eventLogsTable.setSortable(true);
		eventLogsTable.setRowHeight(20);
		eventLogsTable.setModelConfiguration("{/emptyTableText \"\"/version \"3.0\"/showTableheader true /autoTableheader false /showtooltip false /showIcons true /columns {{/result \"result=entry.data.initiator\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/addons/eventlog/plainStrings/initiator\\\")\"/field \"\"/editable \"\"/condition \"\"/columnWidth \"100\"/cellWidget \"\"}{/result \"result=entry.data.userName\"/version \"3.0\"/tooltip \"\"/icon \"result=ivy.cms.cr(\\\"/ch/ivyteam/ivy/workflow/ui/security/images/user16\\\")\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/addons/eventlog/plainStrings/userId\\\")\"/field \"\"/editable \"\"/condition \"\"/columnWidth \"100\"/cellWidget \"\"}{/result \"result=entry.#data.#eventDate is initialized? entry.data.eventDate.format(ivy.var.xivy_addons_restricted_dateFormatPattern): \\\"\\\"\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/addons/eventlog/plainStrings/date\\\")\"/field \"data.eventDate\"/editable \"\"/condition \"\"/columnWidth \"100\"/columnStyle \"addons_center\"/cellWidget \"\"}{/result \"result=entry.#data.#eventTime is initialized? entry.data.eventTime.format(\\\"addons_short\\\"): \\\"\\\"\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/addons/eventlog/plainStrings/time\\\")\"/field \"data.eventTime\"/editable \"\"/condition \"\"/columnWidth \"80\"/columnStyle \"addons_center\"/cellWidget \"\"}{/result \"result=entry.data.eventType\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/addons/eventlog/plainStrings/eventType\\\")\"/field \"\"/editable \"\"/condition \"\"/columnWidth \"200\"/cellWidget \"\"}{/result \"result=entry.data.eventSubType\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/addons/eventlog/plainStrings/subTypeEvent\\\")\"/field \"\"/editable \"\"/condition \"\"/columnWidth \"200\"/columnStyle \"\"/cellWidget \"\"}{/result \"result=entry.data.userComment\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/addons/eventlog/plainStrings/userComment\\\")\"/field \"\"/editable \"\"/condition \"\"/columnWidth \"300\"/cellWidget \"\"}}}");
	}
	return eventLogsTable;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"