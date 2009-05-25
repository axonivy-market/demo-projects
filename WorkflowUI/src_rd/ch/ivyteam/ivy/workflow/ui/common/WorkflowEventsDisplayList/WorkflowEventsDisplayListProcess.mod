[Ivy]
[>Created: Wed May 07 14:30:16 CEST 2008]
119C23C1C7F54315 3.10 #module
>Proto >Proto Collection #zClass
Cs0 CaseWorkflowEventsDisplayListProcess Big #zClass
Cs0 RD #cInfo
Cs0 #process
Cs0 @AnnotationInP-0n ai ai #zField
Cs0 @TextInP .xml .xml #zField
Cs0 @TextInP .responsibility .responsibility #zField
Cs0 @MessageFlowInP-0n messageIn messageIn #zField
Cs0 @MessageFlowOutP-0n messageOut messageOut #zField
Cs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Cs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Cs0 @TextInP .resExport .resExport #zField
Cs0 @TextInP .type .type #zField
Cs0 @TextInP .processKind .processKind #zField
Cs0 @RichDialogInitStart f0 '' #zField
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Cs0 f0 guid 119C245D92F6CE6F #txt
Cs0 f0 type ch.ivyteam.ivy.workflow.ui.common.WorkflowEventsDisplayList.WorkflowEventsDisplayListData #txt
Cs0 f0 method start() #txt
Cs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Cs0 f0 outParameterDecl '<> result;
' #txt
Cs0 f0 134 86 20 20 13 0 #rect
Cs0 f0 @|RichDialogInitStartIcon #fIcon
Cs0 @RichDialogProcessEnd f1 '' #zField
Cs0 f1 type ch.ivyteam.ivy.workflow.ui.common.WorkflowEventsDisplayList.WorkflowEventsDisplayListData #txt
Cs0 f1 131 371 26 26 14 0 #rect
Cs0 f1 @|RichDialogProcessEndIcon #fIcon
Cs0 @RichDialogMethodStart f2 '' #zField
Cs0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refresh()</name>
    </language>
</elementInfo>
' #txt
Cs0 f2 guid 119C246BA6AFF105 #txt
Cs0 f2 type ch.ivyteam.ivy.workflow.ui.common.WorkflowEventsDisplayList.WorkflowEventsDisplayListData #txt
Cs0 f2 method refresh() #txt
Cs0 f2 398 86 20 20 13 0 #rect
Cs0 f2 @|RichDialogMethodStartIcon #fIcon
Cs0 @RichDialogProcessStep f3 '' #zField
Cs0 f3 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.WorkflowEventsDisplayList.WorkflowEventsDisplayListData out;
' #txt
Cs0 f3 actionTable 'out=in;
' #txt
Cs0 f3 actionCode 'java.util.List listTmp = in.fCase.getWorkflowEvents();


out.caseWorkflowEvents.clear();
out.caseWorkflowEvents.addAll(listTmp);' #txt
Cs0 f3 type ch.ivyteam.ivy.workflow.ui.common.WorkflowEventsDisplayList.WorkflowEventsDisplayListData #txt
Cs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>find the list of 
case workflow event</name>
        <nameStyle>37,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f3 390 236 36 24 20 -2 #rect
Cs0 f3 @|RichDialogProcessStepIcon #fIcon
Cs0 @RichDialogProcessEnd f4 '' #zField
Cs0 f4 type ch.ivyteam.ivy.workflow.ui.common.WorkflowEventsDisplayList.WorkflowEventsDisplayListData #txt
Cs0 f4 395 371 26 26 14 0 #rect
Cs0 f4 @|RichDialogProcessEndIcon #fIcon
Cs0 @PushWFArc f6 '' #zField
Cs0 f6 expr out #txt
Cs0 f6 408 106 408 236 #arcP
Cs0 @PushWFArc f7 '' #zField
Cs0 f7 expr out #txt
Cs0 f7 408 260 408 371 #arcP
Cs0 @RichDialogProcessStart f8 '' #zField
Cs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refresh</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f8 guid 119C2475AD5F579B #txt
Cs0 f8 type ch.ivyteam.ivy.workflow.ui.common.WorkflowEventsDisplayList.WorkflowEventsDisplayListData #txt
Cs0 f8 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.WorkflowEventsDisplayList.WorkflowEventsDisplayListData out;
' #txt
Cs0 f8 actionTable 'out=in;
' #txt
Cs0 f8 478 86 20 20 13 0 #rect
Cs0 f8 @|RichDialogProcessStartIcon #fIcon
Cs0 @PushWFArc f9 '' #zField
Cs0 f9 expr out #txt
Cs0 f9 488 106 426 248 #arcP
Cs0 f9 1 488 248 #addKink
Cs0 f9 0 0.7465709371284359 0 0 #arcLabel
Cs0 @RichDialogInitStart f10 '' #zField
Cs0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(ICase,Boolean)</name>
        <nameStyle>20,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f10 guid 119C2633CA34AB52 #txt
Cs0 f10 type ch.ivyteam.ivy.workflow.ui.common.WorkflowEventsDisplayList.WorkflowEventsDisplayListData #txt
Cs0 f10 method start(ch.ivyteam.ivy.workflow.ICase,Boolean) #txt
Cs0 f10 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.workflow.ICase aCase,java.lang.Boolean aLoadDataAtStart> param = methodEvent.getInputArguments();
' #txt
Cs0 f10 inParameterMapAction 'out.fCase=param.aCase;
out.loadDataAtStart=param.aLoadDataAtStart;
' #txt
Cs0 f10 outParameterDecl '<> result;
' #txt
Cs0 f10 embeddedRdInitializations '* ' #txt
Cs0 f10 214 86 20 20 13 0 #rect
Cs0 f10 @|RichDialogInitStartIcon #fIcon
Cs0 @Alternative f11 '' #zField
Cs0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Cs0 f11 type ch.ivyteam.ivy.workflow.ui.common.WorkflowEventsDisplayList.WorkflowEventsDisplayListData #txt
Cs0 f11 210 234 28 28 14 0 #rect
Cs0 f11 @|AlternativeIcon #fIcon
Cs0 @PushWFArc f12 '' #zField
Cs0 f12 expr out #txt
Cs0 f12 224 106 224 234 #arcP
Cs0 @PushWFArc f13 '' #zField
Cs0 f13 expr in #txt
Cs0 f13 outCond in.loadDataAtStart #txt
Cs0 f13 238 248 390 248 #arcP
Cs0 f13 0 0.550916677307051 0 0 #arcLabel
Cs0 @RichDialogProcessStep f14 '' #zField
Cs0 f14 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.WorkflowEventsDisplayList.WorkflowEventsDisplayListData out;
' #txt
Cs0 f14 actionTable 'out=in;
' #txt
Cs0 f14 type ch.ivyteam.ivy.workflow.ui.common.WorkflowEventsDisplayList.WorkflowEventsDisplayListData #txt
Cs0 f14 126 292 36 24 20 -2 #rect
Cs0 f14 @|RichDialogProcessStepIcon #fIcon
Cs0 @PushWFArc f15 '' #zField
Cs0 f15 expr out #txt
Cs0 f15 144 106 144 292 #arcP
Cs0 @PushWFArc f5 '' #zField
Cs0 f5 expr out #txt
Cs0 f5 144 316 144 371 #arcP
Cs0 @PushWFArc f16 '' #zField
Cs0 f16 expr in #txt
Cs0 f16 224 262 162 304 #arcP
Cs0 f16 1 224 304 #addKink
Cs0 f16 0 0.7910333036026436 0 0 #arcLabel
Cs0 f2 mainOut f6 tail #connect
Cs0 f6 head f3 mainIn #connect
Cs0 f3 mainOut f7 tail #connect
Cs0 f7 head f4 mainIn #connect
Cs0 f8 mainOut f9 tail #connect
Cs0 f9 head f3 mainIn #connect
Cs0 f10 mainOut f12 tail #connect
Cs0 f12 head f11 in #connect
Cs0 f11 out f13 tail #connect
Cs0 f13 head f3 mainIn #connect
Cs0 f0 mainOut f15 tail #connect
Cs0 f15 head f14 mainIn #connect
Cs0 f14 mainOut f5 tail #connect
Cs0 f5 head f1 mainIn #connect
Cs0 f11 out f16 tail #connect
Cs0 f16 head f14 mainIn #connect
>Proto Cs0 Cs0 CaseWorkflowEventsDisplayListProcess #zField
>Proto Cs0 .rdData2UIAction 'panel.caseWorkflowEventsTable.listData=in.caseWorkflowEvents;
' #txt
>Proto Cs0 .type ch.ivyteam.ivy.workflow.ui.common.WorkflowEventsDisplayList.WorkflowEventsDisplayListData #txt
>Proto Cs0 .processKind RICH_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
