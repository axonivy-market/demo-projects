[Ivy]
[>Created: Tue Sep 07 17:04:50 CEST 2010]
1284D7DC62A3BA67 3.12 #module
>Proto >Proto Collection #zClass
Es0 EventLogDisplayListProcess Big #zClass
Es0 RD #cInfo
Es0 #process
Es0 @MessageFlowInP-0n messageIn messageIn #zField
Es0 @MessageFlowOutP-0n messageOut messageOut #zField
Es0 @TextInP .resExport .resExport #zField
Es0 @TextInP .type .type #zField
Es0 @TextInP .processKind .processKind #zField
Es0 @TextInP .xml .xml #zField
Es0 @TextInP .responsibility .responsibility #zField
Es0 @AnnotationInP-0n ai ai #zField
Es0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Es0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Es0 @RichDialogInitStart f0 '' #zField
Es0 @RichDialogProcessEnd f1 '' #zField
Es0 @RichDialogInitStart f3 '' #zField
Es0 @RichDialogMethodStart f7 '' #zField
Es0 @RichDialogMethodStart f8 '' #zField
Es0 @RichDialogProcessEnd f9 '' #zField
Es0 @Alternative f2 '' #zField
Es0 @PushWFArc f12 '' #zField
Es0 @PushWFArc f13 '' #zField
Es0 @RichDialogProcessEnd f6 '' #zField
Es0 @PushWFArc f15 '' #zField
Es0 @CallSub f11 '' #zField
Es0 @PushWFArc f16 '' #zField
Es0 @Alternative f17 '' #zField
Es0 @RichDialog f19 '' #zField
Es0 @PushWFArc f21 '' #zField
Es0 @PushWFArc f4 '' #zField
Es0 @RichDialogProcessStep f14 '' #zField
Es0 @PushWFArc f22 '' #zField
Es0 @PushWFArc f5 '' #zField
Es0 @PushWFArc f20 '' #zField
Es0 @PushWFArc f10 '' #zField
Es0 @RichDialogMethodStart f23 '' #zField
Es0 @RichDialogProcessEnd f25 '' #zField
Es0 @PushWFArc f26 '' #zField
Es0 @RichDialogProcessStep f24 '' #zField
Es0 @PushWFArc f27 '' #zField
Es0 @PushWFArc f18 '' #zField
Es0 @RichDialogMethodStart f28 '' #zField
Es0 @RichDialogProcessEnd f29 '' #zField
Es0 @PushWFArc f30 '' #zField
>Proto Es0 Es0 EventLogDisplayListProcess #zField
Es0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f0 guid 12844DD6E1FC7357 #txt
Es0 f0 type ch.ivyteam.ivy.addons.eventlog.EventLogDisplayList.EventLogDisplayListData #txt
Es0 f0 method start() #txt
Es0 f0 disableUIEvents true #txt
Es0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Es0 f0 inActionCode 'out.eventLogs = [];' #txt
Es0 f0 outParameterDecl '<> result;
' #txt
Es0 f0 embeddedRdInitializations '* ' #txt
Es0 f0 246 46 20 20 13 0 #rect
Es0 f0 @|RichDialogInitStartIcon #fIcon
Es0 f1 type ch.ivyteam.ivy.addons.eventlog.EventLogDisplayList.EventLogDisplayListData #txt
Es0 f1 246 342 20 20 13 0 #rect
Es0 f1 @|RichDialogProcessEndIcon #fIcon
Es0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(ICase)</name>
        <nameStyle>12,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f3 guid 1284947F445EC90C #txt
Es0 f3 type ch.ivyteam.ivy.addons.eventlog.EventLogDisplayList.EventLogDisplayListData #txt
Es0 f3 method start(ch.ivyteam.ivy.workflow.ICase) #txt
Es0 f3 disableUIEvents true #txt
Es0 f3 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.workflow.ICase wfCase> param = methodEvent.getInputArguments();
' #txt
Es0 f3 inActionCode 'if (param.#wfCase is initialized)
{
	out.setWfCase(param.wfCase);
	ivy.log.debug("Event log display param case {0} {1} recieved for the event logs.", param.wfCase.getIdentifier(), param.wfCase.name);
}
else
{
	ivy.log.info("Event log display Param case is not initialized...");
}' #txt
Es0 f3 outParameterDecl '<> result;
' #txt
Es0 f3 embeddedRdInitializations '* ' #txt
Es0 f3 326 46 20 20 13 0 #rect
Es0 f3 @|RichDialogInitStartIcon #fIcon
Es0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>getWfCase()</name>
        <nameStyle>11,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f7 guid 128494D2F14F43E9 #txt
Es0 f7 type ch.ivyteam.ivy.addons.eventlog.EventLogDisplayList.EventLogDisplayListData #txt
Es0 f7 method getWfCase() #txt
Es0 f7 disableUIEvents false #txt
Es0 f7 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Es0 f7 outParameterDecl '<ch.ivyteam.ivy.workflow.ICase wfCase> result;
' #txt
Es0 f7 outActionCode 'if (in.#wfCase is initialized)
{
	result.wfCase = in.wfCase;
}
else
{
	ivy.log.info("Event log display result case is not initialized...");
}' #txt
Es0 f7 1022 46 20 20 13 0 #rect
Es0 f7 @|RichDialogMethodStartIcon #fIcon
Es0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setWfCase(ICase)</name>
        <nameStyle>16,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f8 guid 128494D427C5DAA1 #txt
Es0 f8 type ch.ivyteam.ivy.addons.eventlog.EventLogDisplayList.EventLogDisplayListData #txt
Es0 f8 method setWfCase(ch.ivyteam.ivy.workflow.ICase) #txt
Es0 f8 disableUIEvents false #txt
Es0 f8 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.workflow.ICase wfCase> param = methodEvent.getInputArguments();
' #txt
Es0 f8 inActionCode 'if (param.#wfCase is initialized)
{
	out.setWfCase(param.wfCase);
	ivy.log.debug("Event log display param case {0} {1} recieved for the event logs.", param.wfCase.getIdentifier(), param.wfCase.name);
}
else
{
	ivy.log.info("Event log display Param case is not initialized...");
}' #txt
Es0 f8 outParameterDecl '<> result;
' #txt
Es0 f8 726 46 20 20 13 0 #rect
Es0 f8 @|RichDialogMethodStartIcon #fIcon
Es0 f9 type ch.ivyteam.ivy.addons.eventlog.EventLogDisplayList.EventLogDisplayListData #txt
Es0 f9 326 342 20 20 13 0 #rect
Es0 f9 @|RichDialogProcessEndIcon #fIcon
Es0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>case is initialized?</name>
        <nameStyle>20,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f2 type ch.ivyteam.ivy.addons.eventlog.EventLogDisplayList.EventLogDisplayListData #txt
Es0 f2 322 122 28 28 14 0 #rect
Es0 f2 @|AlternativeIcon #fIcon
Es0 f12 expr out #txt
Es0 f12 736 66 349 135 #arcP
Es0 f12 1 736 104 #addKink
Es0 f12 1 0.2884876321120504 0 0 #arcLabel
Es0 f13 expr out #txt
Es0 f13 336 66 336 122 #arcP
Es0 f13 0 0.32152818721790627 0 0 #arcLabel
Es0 f6 type ch.ivyteam.ivy.addons.eventlog.EventLogDisplayList.EventLogDisplayListData #txt
Es0 f6 1022 158 20 20 13 0 #rect
Es0 f6 @|RichDialogProcessEndIcon #fIcon
Es0 f15 expr out #txt
Es0 f15 1032 66 1032 158 #arcP
Es0 f15 0 0.334994637801797 0 0 #arcLabel
Es0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>call 
EventLogServices</name>
        <nameStyle>22,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f11 type ch.ivyteam.ivy.addons.eventlog.EventLogDisplayList.EventLogDisplayListData #txt
Es0 f11 processCall 'Functional Processes/technical/EventLogServices:readListByCaseId(ch.ivyteam.ivy.addons.data.technical.eventlog.EventLogSearchByCaseId)' #txt
Es0 f11 doCall true #txt
Es0 f11 requestActionDecl '<ch.ivyteam.ivy.addons.data.technical.eventlog.EventLogSearchByCaseId searchByCaseId> param;
' #txt
Es0 f11 requestMappingAction 'param.searchByCaseId.caseId=in.wfCase.getIdentifier();
' #txt
Es0 f11 responseActionDecl 'ch.ivyteam.ivy.addons.eventlog.EventLogDisplayList.EventLogDisplayListData out;
' #txt
Es0 f11 responseMappingAction 'out=in;
out.eventLogs=result.eventLogEntries;
out.ivyResultStatus=result.ivyResultStatus;
' #txt
Es0 f11 318 164 36 24 20 -2 #rect
Es0 f11 @|CallSubIcon #fIcon
Es0 f16 expr in #txt
Es0 f16 outCond 'in.#wfCase is initialized' #txt
Es0 f16 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f16 336 150 336 164 #arcP
Es0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>operation NOT successful
and NOT silent mode?</name>
        <nameStyle>25,7,9
19,7,9
1,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f17 type ch.ivyteam.ivy.addons.eventlog.EventLogDisplayList.EventLogDisplayListData #txt
Es0 f17 322 242 28 28 12 -19 #rect
Es0 f17 @|AlternativeIcon #fIcon
Es0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>show 
ErrorDialog</name>
        <nameStyle>17,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f19 targetDisplay TOP #txt
Es0 f19 richDialogId ch.ivyteam.ivy.addons.commondialogs.ErrorDialog #txt
Es0 f19 startMethod showError(ch.ivyteam.ivy.addons.data.technical.IvyResultStatus,Boolean,Boolean) #txt
Es0 f19 type ch.ivyteam.ivy.addons.eventlog.EventLogDisplayList.EventLogDisplayListData #txt
Es0 f19 requestActionDecl '<ch.ivyteam.ivy.addons.data.technical.IvyResultStatus ivyResultStatus, Boolean showCopyButton, Boolean showDetailButton> param;' #txt
Es0 f19 requestActionCode 'param.ivyResultStatus = in.ivyResultStatus;

param.showCopyButton = true;
param.showDetailButton = true;

in.windowTitle = ivy.cms.co("/ch/ivyteam/ivy/addons/eventlog/plainStrings/eventLogError");' #txt
Es0 f19 responseActionDecl 'ch.ivyteam.ivy.addons.eventlog.EventLogDisplayList.EventLogDisplayListData out;
' #txt
Es0 f19 responseMappingAction 'out=in;
' #txt
Es0 f19 windowConfiguration '{/title "<%=in.windowTitle%>"/width 0 /height 0 /centered true /resizable true /maximized false /close_after_last_rd true }' #txt
Es0 f19 isAsynch false #txt
Es0 f19 isInnerRd true #txt
Es0 f19 isDialog true #txt
Es0 f19 390 292 36 24 20 -2 #rect
Es0 f19 @|RichDialogIcon #fIcon
Es0 f21 expr out #txt
Es0 f21 408 316 345 349 #arcP
Es0 f21 1 408 336 #addKink
Es0 f21 1 0.14711653590268986 0 0 #arcLabel
Es0 f4 expr out #txt
Es0 f4 256 66 256 342 #arcP
Es0 f14 actionDecl 'ch.ivyteam.ivy.addons.eventlog.EventLogDisplayList.EventLogDisplayListData out;
' #txt
Es0 f14 actionTable 'out=in;
' #txt
Es0 f14 actionCode 'ivy.log.error("Event logs display {0}.",
							ivy.cms.co("/ch/ivyteam/ivy/addons/eventlog/plainStrings/eventLogsDisplayFailedCaseIsNotInitialized"));' #txt
Es0 f14 type ch.ivyteam.ivy.addons.eventlog.EventLogDisplayList.EventLogDisplayListData #txt
Es0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>it is not possible to 
display event logs,
the case is not initialized,
display warning on the log</name>
        <nameStyle>98,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f14 502 228 36 24 20 -2 #rect
Es0 f14 @|RichDialogProcessStepIcon #fIcon
Es0 f22 expr in #txt
Es0 f22 350 136 520 228 #arcP
Es0 f22 1 520 136 #addKink
Es0 f22 0 0.7752993400933473 0 0 #arcLabel
Es0 f5 expr out #txt
Es0 f5 520 252 345 351 #arcP
Es0 f5 1 520 336 #addKink
Es0 f5 1 0.3260308304956644 0 0 #arcLabel
Es0 f20 expr in #txt
Es0 f20 outCond '!in.ivyResultStatus.successful && 
!in.silentMode' #txt
Es0 f20 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f20 344 262 390 292 #arcP
Es0 f10 expr in #txt
Es0 f10 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>no</name>
        <nameStyle>2,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f10 336 270 336 342 #arcP
Es0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setSilentMode(Boolean)</name>
        <nameStyle>22,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f23 guid 12A32B719A4B5CD8 #txt
Es0 f23 type ch.ivyteam.ivy.addons.eventlog.EventLogDisplayList.EventLogDisplayListData #txt
Es0 f23 method setSilentMode(Boolean) #txt
Es0 f23 disableUIEvents false #txt
Es0 f23 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Boolean silentMode> param = methodEvent.getInputArguments();
' #txt
Es0 f23 inActionCode 'out.silentMode = param.silentMode;
ivy.log.debug("Turning the silent mode to {0}.", out.silentMode);' #txt
Es0 f23 outParameterDecl '<> result;
' #txt
Es0 f23 1126 46 20 20 13 0 #rect
Es0 f23 @|RichDialogMethodStartIcon #fIcon
Es0 f25 type ch.ivyteam.ivy.addons.eventlog.EventLogDisplayList.EventLogDisplayListData #txt
Es0 f25 1126 158 20 20 13 0 #rect
Es0 f25 @|RichDialogProcessEndIcon #fIcon
Es0 f26 expr out #txt
Es0 f26 1136 66 1136 158 #arcP
Es0 f26 0 0.49171150495909915 0 0 #arcLabel
Es0 f24 actionDecl 'ch.ivyteam.ivy.addons.eventlog.EventLogDisplayList.EventLogDisplayListData out;
' #txt
Es0 f24 actionTable 'out=in;
' #txt
Es0 f24 actionCode 'if (!out.ivyResultStatus.successful)
{
	out.eventLogs.clear();
}' #txt
Es0 f24 type ch.ivyteam.ivy.addons.eventlog.EventLogDisplayList.EventLogDisplayListData #txt
Es0 f24 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Es0 f24 318 196 36 24 20 -2 #rect
Es0 f24 @|RichDialogProcessStepIcon #fIcon
Es0 f27 expr out #txt
Es0 f27 336 188 336 196 #arcP
Es0 f18 expr out #txt
Es0 f18 336 220 336 242 #arcP
Es0 f28 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setWfCase(List&lt;EventLog&gt;)</name>
        <nameStyle>25,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f28 guid 12AECB98D6532084 #txt
Es0 f28 type ch.ivyteam.ivy.addons.eventlog.EventLogDisplayList.EventLogDisplayListData #txt
Es0 f28 method setWfCase(List<ch.ivyteam.ivy.addons.data.technical.eventlog.EventLog>) #txt
Es0 f28 disableUIEvents false #txt
Es0 f28 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<List<ch.ivyteam.ivy.addons.data.technical.eventlog.EventLog> events> param = methodEvent.getInputArguments();
' #txt
Es0 f28 inActionCode 'out.eventLogs = param.events;' #txt
Es0 f28 outParameterDecl '<> result;
' #txt
Es0 f28 870 46 20 20 13 0 #rect
Es0 f28 @|RichDialogMethodStartIcon #fIcon
Es0 f29 type ch.ivyteam.ivy.addons.eventlog.EventLogDisplayList.EventLogDisplayListData #txt
Es0 f29 870 158 20 20 13 0 #rect
Es0 f29 @|RichDialogProcessEndIcon #fIcon
Es0 f30 expr out #txt
Es0 f30 880 66 880 158 #arcP
>Proto Es0 .type ch.ivyteam.ivy.addons.eventlog.EventLogDisplayList.EventLogDisplayListData #txt
>Proto Es0 .processKind RICH_DIALOG #txt
>Proto Es0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>History</swimlaneLabel>
        <swimlaneLabel>Start methods</swimlaneLabel>
        <swimlaneLabel>Methods</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>200</swimlaneSize>
    <swimlaneSize>497</swimlaneSize>
    <swimlaneSize>576</swimlaneSize>
    <swimlaneColor>-3355393</swimlaneColor>
    <swimlaneColor>-10053121</swimlaneColor>
    <swimlaneColor>-10066177</swimlaneColor>
</elementInfo>
' #txt
>Proto Es0 .rdData2UIAction 'panel.eventLogsTable.listData=in.eventLogs;
' #txt
>Proto Es0 -8 -8 16 16 16 26 #rect
>Proto Es0 '' #fIcon
Es0 f8 mainOut f12 tail #connect
Es0 f12 head f2 in #connect
Es0 f3 mainOut f13 tail #connect
Es0 f13 head f2 in #connect
Es0 f7 mainOut f15 tail #connect
Es0 f15 head f6 mainIn #connect
Es0 f2 out f16 tail #connect
Es0 f16 head f11 mainIn #connect
Es0 f19 mainOut f21 tail #connect
Es0 f21 head f9 mainIn #connect
Es0 f0 mainOut f4 tail #connect
Es0 f4 head f1 mainIn #connect
Es0 f2 out f22 tail #connect
Es0 f22 head f14 mainIn #connect
Es0 f14 mainOut f5 tail #connect
Es0 f5 head f9 mainIn #connect
Es0 f17 out f20 tail #connect
Es0 f20 head f19 mainIn #connect
Es0 f17 out f10 tail #connect
Es0 f10 head f9 mainIn #connect
Es0 f23 mainOut f26 tail #connect
Es0 f26 head f25 mainIn #connect
Es0 f11 mainOut f27 tail #connect
Es0 f27 head f24 mainIn #connect
Es0 f24 mainOut f18 tail #connect
Es0 f18 head f17 in #connect
Es0 f28 mainOut f30 tail #connect
Es0 f30 head f29 mainIn #connect
