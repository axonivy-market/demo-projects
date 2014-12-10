[Ivy]
[>Created: Wed Jul 01 09:28:02 CEST 2009]
12139E764A6D2E5C 3.12 #module
>Proto >Proto Collection #zClass
Cs0 CustomTableCellWidgetsProcess Big #zClass
Cs0 RD #cInfo
Cs0 #process
Cs0 @TextInP .xml .xml #zField
Cs0 @TextInP .responsibility .responsibility #zField
Cs0 @TextInP .resExport .resExport #zField
Cs0 @TextInP .type .type #zField
Cs0 @TextInP .processKind .processKind #zField
Cs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Cs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Cs0 @AnnotationInP-0n ai ai #zField
Cs0 @MessageFlowInP-0n messageIn messageIn #zField
Cs0 @MessageFlowOutP-0n messageOut messageOut #zField
Cs0 @RichDialogInitStart f0 '' #zField
Cs0 @RichDialogProcessEnd f1 '' #zField
Cs0 @RichDialogProcessStart f3 '' #zField
Cs0 @RichDialogProcessEnd f4 '' #zField
Cs0 @RichDialogProcessStep f6 '' #zField
Cs0 @PushWFArc f5 '' #zField
Cs0 @RichDialogProcessStart f2 '' #zField
Cs0 @RichDialogProcessEnd f9 '' #zField
Cs0 @PushWFArc f7 '' #zField
Cs0 @PushWFArc f8 '' #zField
Cs0 @RichDialogProcessStep f10 '' #zField
Cs0 @PushWFArc f11 '' #zField
Cs0 @PushWFArc f12 '' #zField
Cs0 @RichDialogProcessStart f13 '' #zField
Cs0 @RichDialogProcessEnd f14 '' #zField
Cs0 @PushWFArc f15 '' #zField
>Proto Cs0 Cs0 CustomTableCellWidgetsProcess #zField
Cs0 f0 guid 12139E764B5C8008 #txt
Cs0 f0 type ch.ivyteam.ivy.demo.table.CustomTableCellWidgets.CustomTableCellWidgetsData #txt
Cs0 f0 method start() #txt
Cs0 f0 disableUIEvents false #txt
Cs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Cs0 f0 outParameterDecl '<> result;
' #txt
Cs0 f0 embeddedRdInitializations '{/titlePanel {/fieldName "titlePanel"/startMethod "startInitialized(String,String,String)"/parameterMapping "param.iconUri=\"/ch/ivyteam/ivy/demo/icons/large/table_edit\";\nparam.title=\"Custom Table Cell Widgets\";\nparam.subtitle=\"This panel shows the usage of three different Cell Widgets. The RBooleanCellWidget, RButtonCellWidget once and the RComboBoxCellWidget in four combinations.\";\n"/initScript ""}}' #txt
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f0 70 38 20 20 13 0 #rect
Cs0 f0 @|RichDialogInitStartIcon #fIcon
Cs0 f1 type ch.ivyteam.ivy.demo.table.CustomTableCellWidgets.CustomTableCellWidgetsData #txt
Cs0 f1 67 139 26 26 14 0 #rect
Cs0 f1 @|RichDialogProcessEndIcon #fIcon
Cs0 f3 guid 12139E8D070C117F #txt
Cs0 f3 type ch.ivyteam.ivy.demo.table.CustomTableCellWidgets.CustomTableCellWidgetsData #txt
Cs0 f3 actionDecl 'ch.ivyteam.ivy.demo.table.CustomTableCellWidgets.CustomTableCellWidgetsData out;
' #txt
Cs0 f3 actionTable 'out=in;
' #txt
Cs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>onLoad</name>
        <nameStyle>6,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f3 198 38 20 20 13 0 #rect
Cs0 f3 @|RichDialogProcessStartIcon #fIcon
Cs0 f4 type ch.ivyteam.ivy.demo.table.CustomTableCellWidgets.CustomTableCellWidgetsData #txt
Cs0 f4 195 139 26 26 14 0 #rect
Cs0 f4 @|RichDialogProcessEndIcon #fIcon
Cs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load data</name>
        <nameStyle>9,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f6 actionDecl 'ch.ivyteam.ivy.demo.table.CustomTableCellWidgets.CustomTableCellWidgetsData out;
' #txt
Cs0 f6 actionTable 'out=in;
' #txt
Cs0 f6 actionCode 'import ch.ivyteam.ivy.demo.table.CustomTableComboBoxEntry;
import ch.ivyteam.ivy.demo.table.CustomTableEntry;

CustomTableEntry e;
for (int i = 0; i < 6; i++)
{
	e = null;
	e.booleanValue = false;
	e.buttonTitle = "line " + i;
	e.simpleText = "simple text " + i;
	out.entries.add(e);
}

CustomTableComboBoxEntry c;
Record r;
for (int i = 1; i < 11; i++)
{
	c = null;
	c.key = i;
	c.title = "ComboEntry " + i;
	c.description = "Tooltip entry " + i;
	out.comboBoxEntries.add(c);
	r = new Record(["id", "name", "descr"], [i, "record " + i, "Tooltip record " + i] );
	out.comboBoxRecordset.add(r);
	if (i == 2) {
		out.entries.get(2).comboBoxEntry = c;
	}
	if (i == 3) {
		out.entries.get(4).comboBoxRecord = r;
	}
	if (i == 4) {
		out.entries.get(2).comboBoxEntryKey = c.key;
	}
	if (i == 5) {
		out.entries.get(4).comboBoxRecordKey = r.getField("id").toString().toNumber();
	}
}

	c = null;
	c.key = 99;
	c.title = "aaa";
	out.comboBoxEntries.add(c);' #txt
Cs0 f6 type ch.ivyteam.ivy.demo.table.CustomTableCellWidgets.CustomTableCellWidgetsData #txt
Cs0 f6 190 84 36 24 20 -2 #rect
Cs0 f6 @|RichDialogProcessStepIcon #fIcon
Cs0 f5 expr out #txt
Cs0 f5 208 108 208 139 #arcP
Cs0 f2 guid 1213E7721EFE524E #txt
Cs0 f2 type ch.ivyteam.ivy.demo.table.CustomTableCellWidgets.CustomTableCellWidgetsData #txt
Cs0 f2 actionDecl 'ch.ivyteam.ivy.demo.table.CustomTableCellWidgets.CustomTableCellWidgetsData out;
' #txt
Cs0 f2 actionTable 'out=in;
' #txt
Cs0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>doDatabinding</name>
        <nameStyle>13,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f2 326 38 20 20 13 0 #rect
Cs0 f2 @|RichDialogProcessStartIcon #fIcon
Cs0 f9 type ch.ivyteam.ivy.demo.table.CustomTableCellWidgets.CustomTableCellWidgetsData #txt
Cs0 f9 323 139 26 26 14 0 #rect
Cs0 f9 @|RichDialogProcessEndIcon #fIcon
Cs0 f7 expr out #txt
Cs0 f7 80 58 80 139 #arcP
Cs0 f7 0 0.9507641132493889 0 0 #arcLabel
Cs0 f8 expr out #txt
Cs0 f8 208 58 208 84 #arcP
Cs0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set log entries</name>
        <nameStyle>15,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f10 actionDecl 'ch.ivyteam.ivy.demo.table.CustomTableCellWidgets.CustomTableCellWidgetsData out;
' #txt
Cs0 f10 actionTable 'out=in;
' #txt
Cs0 f10 actionCode 'import ch.ivyteam.ivy.demo.table.CustomTableEntry;
in.log.clear();

CustomTableEntry e;
if (panel.cellWidgetsTable.#selectedListEntry != null)
{
	e = panel.cellWidgetsTable.selectedListEntry as CustomTableEntry;
	
	in.log.add("Boolean value: " + e.booleanValue);
	in.log.add("Combobox Entry: " + e.comboBoxEntry);
	in.log.add("Combobox Entry Key: " + e.comboBoxEntryKey);
	in.log.add("Combobox Record: " + e.comboBoxRecord);
	in.log.add("Combobox Record Key: " + e.comboBoxRecordKey);
	in.log.add("Simple Text: " + e.simpleText);
	in.log.add("Button title: " + e.buttonTitle);	
}' #txt
Cs0 f10 type ch.ivyteam.ivy.demo.table.CustomTableCellWidgets.CustomTableCellWidgetsData #txt
Cs0 f10 318 84 36 24 20 -2 #rect
Cs0 f10 @|RichDialogProcessStepIcon #fIcon
Cs0 f11 expr out #txt
Cs0 f11 336 58 336 84 #arcP
Cs0 f12 expr out #txt
Cs0 f12 336 108 336 139 #arcP
Cs0 f13 guid 12235329A32BDFC6 #txt
Cs0 f13 type ch.ivyteam.ivy.demo.table.CustomTableCellWidgets.CustomTableCellWidgetsData #txt
Cs0 f13 actionDecl 'ch.ivyteam.ivy.demo.table.CustomTableCellWidgets.CustomTableCellWidgetsData out;
' #txt
Cs0 f13 actionTable 'out=in;
' #txt
Cs0 f13 actionCode 'import ch.ivyteam.ivy.richdialog.widgets.components.customrenderers.RButtonCellWidget;


RButtonCellWidget button = (event.getSource() as RButtonCellWidget);

int row = button.getRow();
int column = button.getColumn();

in.log.add("Button pressed at row "+row+" in column "+column);' #txt
Cs0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>button pressed
log button coordinates</name>
        <nameStyle>37,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f13 534 38 20 20 13 0 #rect
Cs0 f13 @|RichDialogProcessStartIcon #fIcon
Cs0 f14 type ch.ivyteam.ivy.demo.table.CustomTableCellWidgets.CustomTableCellWidgetsData #txt
Cs0 f14 531 139 26 26 14 0 #rect
Cs0 f14 @|RichDialogProcessEndIcon #fIcon
Cs0 f15 expr out #txt
Cs0 f15 544 58 544 139 #arcP
>Proto Cs0 .type ch.ivyteam.ivy.demo.table.CustomTableCellWidgets.CustomTableCellWidgetsData #txt
>Proto Cs0 .processKind RICH_DIALOG #txt
>Proto Cs0 .rdData2UIAction 'panel.cellWidgetsTable.listData=in.entries;
panel.entryComboBoxCellWidget.listData=in.comboBoxEntries;
panel.entryKeyComboBoxCellWidget.listData=in.comboBoxEntries;
panel.recordComboBoxCellWidget.recordsetData=in.comboBoxRecordset;
panel.recordKeyComboBoxCellWidget.recordsetData=in.comboBoxRecordset;
panel.logList.listData=in.log;
' #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f6 mainOut f5 tail #connect
Cs0 f5 head f4 mainIn #connect
Cs0 f0 mainOut f7 tail #connect
Cs0 f7 head f1 mainIn #connect
Cs0 f3 mainOut f8 tail #connect
Cs0 f8 head f6 mainIn #connect
Cs0 f2 mainOut f11 tail #connect
Cs0 f11 head f10 mainIn #connect
Cs0 f10 mainOut f12 tail #connect
Cs0 f12 head f9 mainIn #connect
Cs0 f13 mainOut f15 tail #connect
Cs0 f15 head f14 mainIn #connect
