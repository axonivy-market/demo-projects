[Ivy]
[>Created: Tue Oct 05 12:49:42 CEST 2010]
012B7BDBD6C14528 3.13.1 #module
>Proto >Proto Collection #zClass
Ts0 TableWithExcelExportProcess Big #zClass
Ts0 RD #cInfo
Ts0 #process
Ts0 @TextInP .resExport .resExport #zField
Ts0 @TextInP .type .type #zField
Ts0 @TextInP .processKind .processKind #zField
Ts0 @MessageFlowInP-0n messageIn messageIn #zField
Ts0 @MessageFlowOutP-0n messageOut messageOut #zField
Ts0 @AnnotationInP-0n ai ai #zField
Ts0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ts0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ts0 @TextInP .xml .xml #zField
Ts0 @TextInP .responsibility .responsibility #zField
Ts0 @RichDialogInitStart f3 '' #zField
Ts0 @RichDialogProcessEnd f4 '' #zField
Ts0 @RichDialogProcessStep f5 '' #zField
Ts0 @RichDialogProcessEnd f10 '' #zField
Ts0 @InfoButton f16 '' #zField
Ts0 @InfoButton f7 '' #zField
Ts0 @RichDialogMethodStart f9 '' #zField
Ts0 @RichDialog f11 '' #zField
Ts0 @InfoButton f14 '' #zField
Ts0 @PushWFArc f17 '' #zField
Ts0 @PushWFArc f18 '' #zField
Ts0 @AnnotationArc f19 '' #zField
Ts0 @AnnotationArc f20 '' #zField
Ts0 @PushWFArc f0 '' #zField
Ts0 @RichDialogProcessStep f1 '' #zField
Ts0 @PushWFArc f2 '' #zField
Ts0 @PushWFArc f6 '' #zField
>Proto Ts0 Ts0 TableWithExcelExportProcess #zField
Ts0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>15,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f3 guid 12B7BDEC42A6EC9B #txt
Ts0 f3 type ch.ivyteam.ivy.demo.table.TableWithExcelExport.TableWithExcelExportData #txt
Ts0 f3 method start() #txt
Ts0 f3 disableUIEvents true #txt
Ts0 f3 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ts0 f3 outParameterDecl '<> result;
' #txt
Ts0 f3 embeddedRdInitializations '* ' #txt
Ts0 f3 134 134 20 20 13 0 #rect
Ts0 f3 @|RichDialogInitStartIcon #fIcon
Ts0 f4 type ch.ivyteam.ivy.demo.table.TableWithExcelExport.TableWithExcelExportData #txt
Ts0 f4 134 334 20 20 13 0 #rect
Ts0 f4 @|RichDialogProcessEndIcon #fIcon
Ts0 f5 actionDecl 'ch.ivyteam.ivy.demo.table.TableWithExcelExport.TableWithExcelExportData out;
' #txt
Ts0 f5 actionTable 'out=in;
' #txt
Ts0 f5 actionCode 'import ch.ivyteam.ivy.addons.widgets.RTableWithExcelExport;

if (panel.Table instanceof RTableWithExcelExport)
{
	RTableWithExcelExport table;
	
	table = panel.Table as RTableWithExcelExport;
	
	table.setFailureCallbackRDMethod("exportError");
}' #txt
Ts0 f5 type ch.ivyteam.ivy.demo.table.TableWithExcelExport.TableWithExcelExportData #txt
Ts0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Set the callback method</name>
        <nameStyle>23,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f5 126 180 36 24 20 -2 #rect
Ts0 f5 @|RichDialogProcessStepIcon #fIcon
Ts0 f10 type ch.ivyteam.ivy.demo.table.TableWithExcelExport.TableWithExcelExportData #txt
Ts0 f10 438 230 20 20 13 0 #rect
Ts0 f10 @|RichDialogProcessEndIcon #fIcon
Ts0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Set the specific callback method to call if an
error happens.
If that is not done, a default error message
is displayed in case of error.</name>
        <nameStyle>137,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f16 381 299 247 74 -118 -32 #rect
Ts0 f16 @|IBIcon #fIcon
Ts0 f16 -993312|-1|-16777216 #nodeStyle
Ts0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>In the panel java source code, the line
          Table = new RTable();
is replaced by
          Table = new RTableWithExcelExport();</name>
        <nameStyle>133,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f7 20 35 248 74 -119 -32 #rect
Ts0 f7 @|IBIcon #fIcon
Ts0 f7 -7484683|-1|-16777216 #nodeStyle
Ts0 f9 guid 12B7BDEC4107320E #txt
Ts0 f9 type ch.ivyteam.ivy.demo.table.TableWithExcelExport.TableWithExcelExportData #txt
Ts0 f9 method exportError() #txt
Ts0 f9 disableUIEvents false #txt
Ts0 f9 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ts0 f9 outParameterDecl '<> result;
' #txt
Ts0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>exportError()</name>
        <nameStyle>13,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f9 438 134 20 20 13 0 #rect
Ts0 f9 @|RichDialogMethodStartIcon #fIcon
Ts0 f11 targetWindow NEW:card: #txt
Ts0 f11 targetDisplay TOP #txt
Ts0 f11 richDialogId ch.ivyteam.ivy.addons.commondialogs.MessageDialog #txt
Ts0 f11 startMethod showMessage(String) #txt
Ts0 f11 type ch.ivyteam.ivy.demo.table.TableWithExcelExport.TableWithExcelExportData #txt
Ts0 f11 requestActionDecl '<String message> param;' #txt
Ts0 f11 requestMappingAction 'param.message="Unable to create the file on the client work station.<BR/>Displayed by the call back method ''exportError()''.";
' #txt
Ts0 f11 responseActionDecl 'ch.ivyteam.ivy.demo.table.TableWithExcelExport.TableWithExcelExportData out;
' #txt
Ts0 f11 responseMappingAction 'out=in;
' #txt
Ts0 f11 windowConfiguration '{/title "Unable to export ..."/width 0 /height 0 /centered true /resizable true /maximized false /close_after_last_rd true }' #txt
Ts0 f11 isAsynch true #txt
Ts0 f11 isInnerRd true #txt
Ts0 f11 isDialog false #txt
Ts0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Display a message dialog</name>
        <nameStyle>24,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f11 430 180 36 24 20 -2 #rect
Ts0 f11 @|RichDialogIcon #fIcon
Ts0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>This method is called when the file can not be created on the client side.
It can be because of :
- not enough free disk size
- file already exists and is in use
- file name or path is not valid</name>
        <nameStyle>194,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f14 687 139 403 90 -196 -40 #rect
Ts0 f14 @|IBIcon #fIcon
Ts0 f14 -613726|-1|-16777216 #nodeStyle
Ts0 f17 expr out #txt
Ts0 f17 448 154 448 180 #arcP
Ts0 f18 expr out #txt
Ts0 f18 448 204 448 230 #arcP
Ts0 f19 686 184 457 145 #arcP
Ts0 f20 380 336 162 203 #arcP
Ts0 f0 expr out #txt
Ts0 f0 144 154 144 180 #arcP
Ts0 f1 actionDecl 'ch.ivyteam.ivy.demo.table.TableWithExcelExport.TableWithExcelExportData out;
' #txt
Ts0 f1 actionTable 'out=in;
' #txt
Ts0 f1 actionCode 'import ch.ivyteam.ivy.demo.table.TableWithExcelExportEntry;

TableWithExcelExportEntry entry;

for (int i = 1; i <= 20; i++)
{
	entry = null;
	entry.simpleText = "Simple text " + i;
	entry.numberValue = i;
	entry.booleanValue = i % 2 == 0;
	entry.dateTimeValue = new DateTime(2000 + i, 1, i, i, i, i);
	
	out.list.add(entry);
}' #txt
Ts0 f1 type ch.ivyteam.ivy.demo.table.TableWithExcelExport.TableWithExcelExportData #txt
Ts0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Fill table data</name>
        <nameStyle>15,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f1 126 252 36 24 20 -2 #rect
Ts0 f1 @|RichDialogProcessStepIcon #fIcon
Ts0 f2 expr out #txt
Ts0 f2 144 204 144 252 #arcP
Ts0 f6 expr out #txt
Ts0 f6 144 276 144 334 #arcP
>Proto Ts0 .type ch.ivyteam.ivy.demo.table.TableWithExcelExport.TableWithExcelExportData #txt
>Proto Ts0 .processKind RICH_DIALOG #txt
>Proto Ts0 .rdData2UIAction 'panel.Table.listData=in.list;
' #txt
>Proto Ts0 -8 -8 16 16 16 26 #rect
>Proto Ts0 '' #fIcon
Ts0 f9 mainOut f17 tail #connect
Ts0 f17 head f11 mainIn #connect
Ts0 f11 mainOut f18 tail #connect
Ts0 f18 head f10 mainIn #connect
Ts0 f14 ao f19 tail #connect
Ts0 f19 head f9 @CG|ai #connect
Ts0 f16 ao f20 tail #connect
Ts0 f20 head f5 @CG|ai #connect
Ts0 f3 mainOut f0 tail #connect
Ts0 f0 head f5 mainIn #connect
Ts0 f5 mainOut f2 tail #connect
Ts0 f2 head f1 mainIn #connect
Ts0 f1 mainOut f6 tail #connect
Ts0 f6 head f4 mainIn #connect
