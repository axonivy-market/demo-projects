[Ivy]
[>Created: Tue Feb 08 09:31:09 CET 2011]
1284D7DC62A3BA67 3.15 #module
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
Es0 @PushWFArc f5 '' #zField
Es0 @PushWFArc f20 '' #zField
Es0 @PushWFArc f10 '' #zField
Es0 @RichDialogMethodStart f23 '' #zField
Es0 @RichDialogProcessEnd f25 '' #zField
Es0 @PushWFArc f26 '' #zField
Es0 @RichDialogProcessStep f24 '' #zField
Es0 @PushWFArc f27 '' #zField
Es0 @PushWFArc f18 '' #zField
Es0 @RichDialogInitStart f31 '' #zField
Es0 @PushWFArc f32 '' #zField
Es0 @CallSub f33 '' #zField
Es0 @PushWFArc f34 '' #zField
Es0 @PushWFArc f35 '' #zField
Es0 @PushWFArc f22 '' #zField
Es0 @RichDialogMethodStart f30 '' #zField
Es0 @RichDialogMethodStart f36 '' #zField
Es0 @RichDialogProcessEnd f37 '' #zField
Es0 @PushWFArc f38 '' #zField
Es0 @PushWFArc f39 '' #zField
>Proto Es0 Es0 EventLogDisplayListProcess #zField
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
Es0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f0 190 46 20 20 13 0 #rect
Es0 f0 @|RichDialogInitStartIcon #fIcon
Es0 f1 type ch.ivyteam.ivy.addons.eventlog.EventLogDisplayList.EventLogDisplayListData #txt
Es0 f1 190 470 20 20 13 0 #rect
Es0 f1 @|RichDialogProcessEndIcon #fIcon
Es0 f3 guid 1284947F445EC90C #txt
Es0 f3 type ch.ivyteam.ivy.addons.eventlog.EventLogDisplayList.EventLogDisplayListData #txt
Es0 f3 method start(ch.ivyteam.ivy.workflow.ICase) #txt
Es0 f3 disableUIEvents true #txt
Es0 f3 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.workflow.ICase wfCase> param = methodEvent.getInputArguments();
' #txt
Es0 f3 inActionCode '// this is all events display mode
out.displayMode = 0;

if (param.#wfCase is initialized)
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
Es0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(ICase)</name>
        <nameStyle>12,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f3 326 46 20 20 13 0 #rect
Es0 f3 @|RichDialogInitStartIcon #fIcon
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
Es0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>getWfCase()</name>
        <nameStyle>11,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f7 942 46 20 20 13 0 #rect
Es0 f7 @|RichDialogMethodStartIcon #fIcon
Es0 f8 guid 128494D427C5DAA1 #txt
Es0 f8 type ch.ivyteam.ivy.addons.eventlog.EventLogDisplayList.EventLogDisplayListData #txt
Es0 f8 method setWfCase(ch.ivyteam.ivy.workflow.ICase) #txt
Es0 f8 disableUIEvents false #txt
Es0 f8 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.workflow.ICase wfCase> param = methodEvent.getInputArguments();
' #txt
Es0 f8 inActionCode '
// set the case
if (param.#wfCase is initialized)
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
Es0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setWfCase(ICase)</name>
        <nameStyle>16,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f8 790 46 20 20 13 0 #rect
Es0 f8 @|RichDialogMethodStartIcon #fIcon
Es0 f9 type ch.ivyteam.ivy.addons.eventlog.EventLogDisplayList.EventLogDisplayListData #txt
Es0 f9 326 470 20 20 13 0 #rect
Es0 f9 @|RichDialogProcessEndIcon #fIcon
Es0 f2 type ch.ivyteam.ivy.addons.eventlog.EventLogDisplayList.EventLogDisplayListData #txt
Es0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>case is initialized? which display mode?</name>
        <nameStyle>40,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f2 322 122 28 28 14 0 #rect
Es0 f2 @|AlternativeIcon #fIcon
Es0 f12 expr out #txt
Es0 f12 800 66 349 135 #arcP
Es0 f12 1 800 96 #addKink
Es0 f12 1 0.2884876321120504 0 0 #arcLabel
Es0 f13 expr out #txt
Es0 f13 336 66 336 122 #arcP
Es0 f13 0 0.32152818721790627 0 0 #arcLabel
Es0 f6 type ch.ivyteam.ivy.addons.eventlog.EventLogDisplayList.EventLogDisplayListData #txt
Es0 f6 942 158 20 20 13 0 #rect
Es0 f6 @|RichDialogProcessEndIcon #fIcon
Es0 f15 expr out #txt
Es0 f15 952 66 952 158 #arcP
Es0 f15 0 0.334994637801797 0 0 #arcLabel
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
Es0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>read
event list</name>
        <nameStyle>15,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f11 246 212 36 24 20 -2 #rect
Es0 f11 @|CallSubIcon #fIcon
Es0 f16 expr in #txt
Es0 f16 outCond 'in.#wfCase is initialized && in.displayMode==0' #txt
Es0 f16 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>all 
events</name>
        <nameStyle>11,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f16 326 140 264 212 #arcP
Es0 f16 1 264 160 #addKink
Es0 f16 1 0.46153846153846156 3 0 #arcLabel
Es0 f17 type ch.ivyteam.ivy.addons.eventlog.EventLogDisplayList.EventLogDisplayListData #txt
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
Es0 f17 322 346 28 28 12 -19 #rect
Es0 f17 @|AlternativeIcon #fIcon
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
Es0 f19 470 412 36 24 20 -2 #rect
Es0 f19 @|RichDialogIcon #fIcon
Es0 f21 expr out #txt
Es0 f21 488 436 345 478 #arcP
Es0 f21 1 488 464 #addKink
Es0 f21 1 0.14711653590268986 0 0 #arcLabel
Es0 f4 expr out #txt
Es0 f4 200 66 200 470 #arcP
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
Es0 f14 582 316 36 24 20 -2 #rect
Es0 f14 @|RichDialogProcessStepIcon #fIcon
Es0 f5 expr out #txt
Es0 f5 600 340 345 479 #arcP
Es0 f5 1 600 472 #addKink
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
Es0 f20 350 360 488 412 #arcP
Es0 f20 1 488 360 #addKink
Es0 f20 0 0.7414335424923689 0 0 #arcLabel
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
Es0 f10 336 374 336 470 #arcP
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
Es0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setSilentMode(Boolean)</name>
        <nameStyle>22,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f23 1046 46 20 20 13 0 #rect
Es0 f23 @|RichDialogMethodStartIcon #fIcon
Es0 f25 type ch.ivyteam.ivy.addons.eventlog.EventLogDisplayList.EventLogDisplayListData #txt
Es0 f25 1046 158 20 20 13 0 #rect
Es0 f25 @|RichDialogProcessEndIcon #fIcon
Es0 f26 expr out #txt
Es0 f26 1056 66 1056 158 #arcP
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
    <language>
        <name>if operation not successful
clear list</name>
        <nameStyle>38,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f24 318 276 36 24 20 -2 #rect
Es0 f24 @|RichDialogProcessStepIcon #fIcon
Es0 f27 expr out #txt
Es0 f27 278 236 323 276 #arcP
Es0 f18 expr out #txt
Es0 f18 336 300 336 346 #arcP
Es0 f31 guid 12C548D933113C6D #txt
Es0 f31 type ch.ivyteam.ivy.addons.eventlog.EventLogDisplayList.EventLogDisplayListData #txt
Es0 f31 method startWithBusinessEventsOnly(ch.ivyteam.ivy.workflow.ICase) #txt
Es0 f31 disableUIEvents true #txt
Es0 f31 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.workflow.ICase wfCase> param = methodEvent.getInputArguments();
' #txt
Es0 f31 inActionCode '// this is business events display mode
out.displayMode = 1;


if (param.#wfCase is initialized)
{
	out.setWfCase(param.wfCase);
	ivy.log.debug("Event log display param case {0} {1} recieved for the event logs.", param.wfCase.getIdentifier(), param.wfCase.name);
}
else
{
	ivy.log.info("Event log display Param case is not initialized...");
}' #txt
Es0 f31 outParameterDecl '<> result;
' #txt
Es0 f31 embeddedRdInitializations '* ' #txt
Es0 f31 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startWithBusinessEventsOnly(ICase)</name>
        <nameStyle>34,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f31 462 46 20 20 13 0 #rect
Es0 f31 @|RichDialogInitStartIcon #fIcon
Es0 f32 expr out #txt
Es0 f32 472 66 347 133 #arcP
Es0 f32 1 472 104 #addKink
Es0 f32 1 0.37881927117440817 0 0 #arcLabel
Es0 f33 type ch.ivyteam.ivy.addons.eventlog.EventLogDisplayList.EventLogDisplayListData #txt
Es0 f33 processCall 'Functional Processes/technical/EventLogServices:readBusinessEventListByCaseId(ch.ivyteam.ivy.addons.data.technical.eventlog.EventLogSearchByCaseId)' #txt
Es0 f33 doCall true #txt
Es0 f33 requestActionDecl '<ch.ivyteam.ivy.addons.data.technical.eventlog.EventLogSearchByCaseId searchByCaseId> param;
' #txt
Es0 f33 requestMappingAction 'param.searchByCaseId.caseId=in.wfCase.getIdentifier();
' #txt
Es0 f33 responseActionDecl 'ch.ivyteam.ivy.addons.eventlog.EventLogDisplayList.EventLogDisplayListData out;
' #txt
Es0 f33 responseMappingAction 'out=in;
out.eventLogs=result.eventLogEntries;
out.ivyResultStatus=result.ivyResultStatus;
' #txt
Es0 f33 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>read
business event list</name>
        <nameStyle>24,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f33 390 212 36 24 20 -2 #rect
Es0 f33 @|CallSubIcon #fIcon
Es0 f34 expr in #txt
Es0 f34 outCond 'in.#wfCase is initialized && in.displayMode==1' #txt
Es0 f34 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>business 
events</name>
        <nameStyle>16,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f34 347 140 408 212 #arcP
Es0 f34 1 408 160 #addKink
Es0 f34 1 0.5 1 0 #arcLabel
Es0 f35 expr out #txt
Es0 f35 395 236 350 276 #arcP
Es0 f22 expr in #txt
Es0 f22 350 136 600 316 #arcP
Es0 f22 1 600 136 #addKink
Es0 f22 1 0.008865222344643842 0 0 #arcLabel
Es0 f30 guid 12C557B3041245C4 #txt
Es0 f30 type ch.ivyteam.ivy.addons.eventlog.EventLogDisplayList.EventLogDisplayListData #txt
Es0 f30 method getDisplayMode() #txt
Es0 f30 disableUIEvents false #txt
Es0 f30 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Es0 f30 outParameterDecl '<java.lang.Number displayMode> result;
' #txt
Es0 f30 outActionCode 'result.displayMode = in.displayMode;' #txt
Es0 f30 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>getDisplayMode()</name>
        <nameStyle>16,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f30 798 310 20 20 13 0 #rect
Es0 f30 @|RichDialogMethodStartIcon #fIcon
Es0 f36 guid 12C557B3C1FE8FAB #txt
Es0 f36 type ch.ivyteam.ivy.addons.eventlog.EventLogDisplayList.EventLogDisplayListData #txt
Es0 f36 method setDisplayMode(Number) #txt
Es0 f36 disableUIEvents false #txt
Es0 f36 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Number displayMode> param = methodEvent.getInputArguments();
' #txt
Es0 f36 inActionCode 'out.displayMode = param.displayMode;' #txt
Es0 f36 outParameterDecl '<> result;
' #txt
Es0 f36 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setDisplayMode(Number)</name>
        <nameStyle>22,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f36 942 310 20 20 13 0 #rect
Es0 f36 @|RichDialogMethodStartIcon #fIcon
Es0 f37 type ch.ivyteam.ivy.addons.eventlog.EventLogDisplayList.EventLogDisplayListData #txt
Es0 f37 798 462 20 20 13 0 #rect
Es0 f37 @|RichDialogProcessEndIcon #fIcon
Es0 f38 expr out #txt
Es0 f38 808 330 808 462 #arcP
Es0 f39 expr out #txt
Es0 f39 952 330 817 470 #arcP
Es0 f39 1 952 448 #addKink
Es0 f39 1 0.17094702239766077 0 0 #arcLabel
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
    <swimlaneSize>166</swimlaneSize>
    <swimlaneSize>604</swimlaneSize>
    <swimlaneSize>634</swimlaneSize>
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
Es0 f31 mainOut f32 tail #connect
Es0 f32 head f2 in #connect
Es0 f2 out f34 tail #connect
Es0 f34 head f33 mainIn #connect
Es0 f33 mainOut f35 tail #connect
Es0 f35 head f24 mainIn #connect
Es0 f2 out f22 tail #connect
Es0 f22 head f14 mainIn #connect
Es0 f30 mainOut f38 tail #connect
Es0 f38 head f37 mainIn #connect
Es0 f36 mainOut f39 tail #connect
Es0 f39 head f37 mainIn #connect
