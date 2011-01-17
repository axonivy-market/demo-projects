[Ivy]
[>Created: Tue Oct 05 16:07:12 CEST 2010]
12A18D39B393044D 3.12 #module
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
Cs0 @RichDialogProcessEnd f1 '' #zField
Cs0 @RichDialogMethodStart f2 '' #zField
Cs0 @RichDialogProcessStep f3 '' #zField
Cs0 @RichDialogProcessEnd f4 '' #zField
Cs0 @PushWFArc f7 '' #zField
Cs0 @RichDialogProcessStart f8 '' #zField
Cs0 @PushWFArc f9 '' #zField
Cs0 @RichDialogInitStart f10 '' #zField
Cs0 @PushWFArc f5 '' #zField
Cs0 @PushWFArc f11 '' #zField
Cs0 @RichDialogMethodStart f12 '' #zField
Cs0 @PushWFArc f13 '' #zField
Cs0 @Alternative f14 '' #zField
Cs0 @PushWFArc f15 '' #zField
Cs0 @PushWFArc f6 '' #zField
Cs0 @RichDialogProcessEnd f16 '' #zField
Cs0 @PushWFArc f17 '' #zField
>Proto Cs0 Cs0 CaseWorkflowEventsDisplayListProcess #zField
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Cs0 f0 guid 119C245D92F6CE6F #txt
Cs0 f0 type ch.ivyteam.ivy.workflow.ui.cases.WorkflowEventsDisplayList.WorkflowEventsDisplayListData #txt
Cs0 f0 method start() #txt
Cs0 f0 disableUIEvents false #txt
Cs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Cs0 f0 outParameterDecl '<> result;
' #txt
Cs0 f0 134 86 20 20 13 0 #rect
Cs0 f0 @|RichDialogInitStartIcon #fIcon
Cs0 f1 type ch.ivyteam.ivy.workflow.ui.cases.WorkflowEventsDisplayList.WorkflowEventsDisplayListData #txt
Cs0 f1 131 371 26 26 14 0 #rect
Cs0 f1 @|RichDialogProcessEndIcon #fIcon
Cs0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refresh()</name>
    </language>
</elementInfo>
' #txt
Cs0 f2 guid 119C246BA6AFF105 #txt
Cs0 f2 type ch.ivyteam.ivy.workflow.ui.cases.WorkflowEventsDisplayList.WorkflowEventsDisplayListData #txt
Cs0 f2 method refresh() #txt
Cs0 f2 disableUIEvents false #txt
Cs0 f2 486 118 20 20 13 0 #rect
Cs0 f2 @|RichDialogMethodStartIcon #fIcon
Cs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>find the list of 
case workflow event</name>
        <nameStyle>37,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f3 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.WorkflowEventsDisplayList.WorkflowEventsDisplayListData out;
' #txt
Cs0 f3 actionTable 'out=in;
' #txt
Cs0 f3 actionCode 'import ch.ivyteam.ivy.workflow.ui.restricted.utils.PublicAPIHelper;

java.util.List listTmp = PublicAPIHelper.getWorkflowEventsAsSystemUser(in.fCase);

out.caseWorkflowEvents.clear();
out.caseWorkflowEvents.addAll(listTmp);' #txt
Cs0 f3 type ch.ivyteam.ivy.workflow.ui.cases.WorkflowEventsDisplayList.WorkflowEventsDisplayListData #txt
Cs0 f3 238 268 36 24 20 -2 #rect
Cs0 f3 @|RichDialogProcessStepIcon #fIcon
Cs0 f4 type ch.ivyteam.ivy.workflow.ui.cases.WorkflowEventsDisplayList.WorkflowEventsDisplayListData #txt
Cs0 f4 243 371 26 26 14 0 #rect
Cs0 f4 @|RichDialogProcessEndIcon #fIcon
Cs0 f7 expr out #txt
Cs0 f7 256 292 256 371 #arcP
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
Cs0 f8 type ch.ivyteam.ivy.workflow.ui.cases.WorkflowEventsDisplayList.WorkflowEventsDisplayListData #txt
Cs0 f8 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.WorkflowEventsDisplayList.WorkflowEventsDisplayListData out;
' #txt
Cs0 f8 actionTable 'out=in;
' #txt
Cs0 f8 558 86 20 20 13 0 #rect
Cs0 f8 @|RichDialogProcessStartIcon #fIcon
Cs0 f9 expr out #txt
Cs0 f9 568 106 274 280 #arcP
Cs0 f9 1 568 280 #addKink
Cs0 f9 0 0.7465709371284359 0 0 #arcLabel
Cs0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(ICase)</name>
        <nameStyle>20,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f10 guid 119C2633CA34AB52 #txt
Cs0 f10 type ch.ivyteam.ivy.workflow.ui.cases.WorkflowEventsDisplayList.WorkflowEventsDisplayListData #txt
Cs0 f10 method start(ch.ivyteam.ivy.workflow.ICase) #txt
Cs0 f10 disableUIEvents false #txt
Cs0 f10 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.workflow.ICase wfCase> param = methodEvent.getInputArguments();
' #txt
Cs0 f10 inParameterMapAction 'out.fCase=param.wfCase;
' #txt
Cs0 f10 outParameterDecl '<> result;
' #txt
Cs0 f10 embeddedRdInitializations '* ' #txt
Cs0 f10 246 86 20 20 13 0 #rect
Cs0 f10 @|RichDialogInitStartIcon #fIcon
Cs0 f5 expr out #txt
Cs0 f5 256 106 256 268 #arcP
Cs0 f11 expr out #txt
Cs0 f11 144 106 144 371 #arcP
Cs0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setCase(ICase)</name>
        <nameStyle>14,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f12 guid 12B7CB69D2E68C0F #txt
Cs0 f12 type ch.ivyteam.ivy.workflow.ui.cases.WorkflowEventsDisplayList.WorkflowEventsDisplayListData #txt
Cs0 f12 method setCase(ch.ivyteam.ivy.workflow.ICase) #txt
Cs0 f12 disableUIEvents false #txt
Cs0 f12 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.workflow.ICase wfCase> param = methodEvent.getInputArguments();
' #txt
Cs0 f12 inActionCode 'out.fCase = param.wfCase;' #txt
Cs0 f12 outParameterDecl '<> result;
' #txt
Cs0 f12 406 86 20 20 13 0 #rect
Cs0 f12 @|RichDialogMethodStartIcon #fIcon
Cs0 f13 expr out #txt
Cs0 f13 409 103 266 268 #arcP
Cs0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>case is set?</name>
        <nameStyle>12,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f14 type ch.ivyteam.ivy.workflow.ui.cases.WorkflowEventsDisplayList.WorkflowEventsDisplayListData #txt
Cs0 f14 482 170 28 28 14 0 #rect
Cs0 f14 @|AlternativeIcon #fIcon
Cs0 f15 expr out #txt
Cs0 f15 496 138 496 170 #arcP
Cs0 f15 0 0.8426395444605683 0 0 #arcLabel
Cs0 f6 expr in #txt
Cs0 f6 outCond 'in.#fCase is initialized' #txt
Cs0 f6 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f6 486 188 274 272 #arcP
Cs0 f6 0 0.5000000000000001 0 0 #arcLabel
Cs0 f16 type ch.ivyteam.ivy.workflow.ui.cases.WorkflowEventsDisplayList.WorkflowEventsDisplayListData #txt
Cs0 f16 486 230 20 20 13 0 #rect
Cs0 f16 @|RichDialogProcessEndIcon #fIcon
Cs0 f17 expr in #txt
Cs0 f17 496 198 496 230 #arcP
>Proto Cs0 .rdData2UIAction 'panel.caseWorkflowEventsTable.listData=in.caseWorkflowEvents;
' #txt
>Proto Cs0 .type ch.ivyteam.ivy.workflow.ui.cases.WorkflowEventsDisplayList.WorkflowEventsDisplayListData #txt
>Proto Cs0 .processKind RICH_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f3 mainOut f7 tail #connect
Cs0 f7 head f4 mainIn #connect
Cs0 f8 mainOut f9 tail #connect
Cs0 f9 head f3 mainIn #connect
Cs0 f10 mainOut f5 tail #connect
Cs0 f5 head f3 mainIn #connect
Cs0 f0 mainOut f11 tail #connect
Cs0 f11 head f1 mainIn #connect
Cs0 f12 mainOut f13 tail #connect
Cs0 f13 head f3 mainIn #connect
Cs0 f2 mainOut f15 tail #connect
Cs0 f15 head f14 in #connect
Cs0 f14 out f6 tail #connect
Cs0 f6 head f3 mainIn #connect
Cs0 f14 out f17 tail #connect
Cs0 f17 head f16 mainIn #connect
