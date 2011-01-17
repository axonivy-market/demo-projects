[Ivy]
[>Created: Tue Sep 07 14:03:34 CEST 2010]
1199E38F3CE5247C 3.12 #module
>Proto >Proto Collection #zClass
Fs0 FinishedCaseDisplayListProcess Big #zClass
Fs0 RD #cInfo
Fs0 #process
Fs0 @TextInP .resExport .resExport #zField
Fs0 @TextInP .type .type #zField
Fs0 @TextInP .processKind .processKind #zField
Fs0 @TextInP .xml .xml #zField
Fs0 @TextInP .responsibility .responsibility #zField
Fs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Fs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Fs0 @MessageFlowInP-0n messageIn messageIn #zField
Fs0 @MessageFlowOutP-0n messageOut messageOut #zField
Fs0 @AnnotationInP-0n ai ai #zField
Fs0 @RichDialogInitStart f0 '' #zField
Fs0 @RichDialogProcessEnd f1 '' #zField
Fs0 @RichDialogMethodStart f3 '' #zField
Fs0 @RichDialogProcessStart f4 '' #zField
Fs0 @RichDialogProcessStep f5 '' #zField
Fs0 @PushWFArc f6 '' #zField
Fs0 @PushWFArc f2 '' #zField
Fs0 @RichDialogProcessStep f9 '' #zField
Fs0 @PushWFArc f10 '' #zField
Fs0 @PushWFArc f7 '' #zField
Fs0 @PushWFArc f11 '' #zField
Fs0 @RichDialogInitStart f8 '' #zField
Fs0 @PushWFArc f12 '' #zField
Fs0 @RichDialogEnd f13 '' #zField
Fs0 @RichDialogProcessStart f14 '' #zField
Fs0 @PushWFArc f15 '' #zField
>Proto Fs0 Fs0 FinishedCaseDisplayListProcess #zField
Fs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f0 guid 119A41C46D04C543 #txt
Fs0 f0 type ch.ivyteam.ivy.workflow.ui.cases.FinishedCaseDisplayList.FinishedCaseDisplayListData #txt
Fs0 f0 method start() #txt
Fs0 f0 disableUIEvents false #txt
Fs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Fs0 f0 outParameterDecl '<> result;
' #txt
Fs0 f0 embeddedRdInitializations '{/caseDisplayListRDC {/fieldName "caseDisplayListRDC"/startMethod "start()"/parameterMapping ""/initScript ""}/headerRDC {/fieldName "headerRDC"/startMethod "start(String,String,String)"/parameterMapping "param.iconUri=\"<%=ivy.cms.cr(\\\"/ch/ivyteam/ivy/workflow/ui/case/images/finishedCases48\\\")%>\";\nparam.title=\"<%=ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/finishedCasesShortDesc\\\")%>\";\nparam.text=\"<%=ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/finishedCasesLongDesc\\\")%>\";\n"/initScript ""}}' #txt
Fs0 f0 38 78 20 20 13 0 #rect
Fs0 f0 @|RichDialogInitStartIcon #fIcon
Fs0 f1 type ch.ivyteam.ivy.workflow.ui.cases.FinishedCaseDisplayList.FinishedCaseDisplayListData #txt
Fs0 f1 35 355 26 26 14 0 #rect
Fs0 f1 @|RichDialogProcessEndIcon #fIcon
Fs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refresh()</name>
    </language>
</elementInfo>
' #txt
Fs0 f3 guid 119BE7D59DFB59BF #txt
Fs0 f3 type ch.ivyteam.ivy.workflow.ui.cases.FinishedCaseDisplayList.FinishedCaseDisplayListData #txt
Fs0 f3 method refresh() #txt
Fs0 f3 disableUIEvents false #txt
Fs0 f3 390 78 20 20 13 0 #rect
Fs0 f3 @|RichDialogMethodStartIcon #fIcon
Fs0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refresh</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f4 guid 119BE7D65C69C085 #txt
Fs0 f4 type ch.ivyteam.ivy.workflow.ui.cases.FinishedCaseDisplayList.FinishedCaseDisplayListData #txt
Fs0 f4 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.FinishedCaseDisplayList.FinishedCaseDisplayListData out;
' #txt
Fs0 f4 actionTable 'out=in;
' #txt
Fs0 f4 582 78 20 20 13 0 #rect
Fs0 f4 @|RichDialogProcessStartIcon #fIcon
Fs0 f5 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.FinishedCaseDisplayList.FinishedCaseDisplayListData out;
' #txt
Fs0 f5 actionTable 'out=in;
' #txt
Fs0 f5 type ch.ivyteam.ivy.workflow.ui.cases.FinishedCaseDisplayList.FinishedCaseDisplayListData #txt
Fs0 f5 30 220 36 24 20 -2 #rect
Fs0 f5 @|RichDialogProcessStepIcon #fIcon
Fs0 f6 expr out #txt
Fs0 f6 48 98 48 220 #arcP
Fs0 f2 expr out #txt
Fs0 f2 48 244 48 355 #arcP
Fs0 f9 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.FinishedCaseDisplayList.FinishedCaseDisplayListData out;
' #txt
Fs0 f9 actionTable 'out=in;
' #txt
Fs0 f9 actionCode panel.caseDisplayListRDC.refresh(); #txt
Fs0 f9 type ch.ivyteam.ivy.workflow.ui.cases.FinishedCaseDisplayList.FinishedCaseDisplayListData #txt
Fs0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>call the refresh on
embedded rd</name>
        <nameStyle>31,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f9 382 156 36 24 20 -2 #rect
Fs0 f9 @|RichDialogProcessStepIcon #fIcon
Fs0 f10 expr out #txt
Fs0 f10 400 98 400 156 #arcP
Fs0 f10 0 0.5259840320366025 0 0 #arcLabel
Fs0 f7 expr out #txt
Fs0 f7 400 180 66 232 #arcP
Fs0 f7 1 400 232 #addKink
Fs0 f7 1 0.12221781032570991 0 0 #arcLabel
Fs0 f11 expr out #txt
Fs0 f11 592 98 418 168 #arcP
Fs0 f11 1 592 168 #addKink
Fs0 f11 1 0.07189652213353165 0 0 #arcLabel
Fs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(RTabbedDisplay, IPropertyFilter, Number,Boolean)</name>
        <nameStyle>54,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f8 guid 119C26E340310735 #txt
Fs0 f8 type ch.ivyteam.ivy.workflow.ui.cases.FinishedCaseDisplayList.FinishedCaseDisplayListData #txt
Fs0 f8 method start(ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay,ch.ivyteam.ivy.workflow.IPropertyFilter,Number,Boolean) #txt
Fs0 f8 disableUIEvents false #txt
Fs0 f8 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay aCaseDisplayListParentDisplay,ch.ivyteam.ivy.workflow.IPropertyFilter aPropertyFilter,java.lang.Number aCaseDisplayMode,java.lang.Boolean aHasWfAdministratorPermissions> param = methodEvent.getInputArguments();
' #txt
Fs0 f8 inParameterMapAction 'out.caseDisplayListParentDisplay=param.aCaseDisplayListParentDisplay;
out.caseDisplayMode=param.aCaseDisplayMode;
out.hasWfAdministratorPermissions=param.aHasWfAdministratorPermissions;
out.propertyFilter=param.aPropertyFilter;
' #txt
Fs0 f8 outParameterDecl '<> result;
' #txt
Fs0 f8 embeddedRdInitializations '{/caseDisplayListRDC {/fieldName "caseDisplayListRDC"/startMethod "start(Boolean,ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay,ch.ivyteam.ivy.workflow.IPropertyFilter,Number,Boolean)"/parameterMapping "param.aRunningCaseMode=false;\nparam.aCaseDisplayListParentDisplay=callParam.aCaseDisplayListParentDisplay;\nparam.aPropertyFilter=callParam.aPropertyFilter;\nparam.aCaseDisplayMode=callParam.aCaseDisplayMode;\nparam.aHasWfAdministratorPermissions=callParam.aHasWfAdministratorPermissions;\n"/initScript ""}/headerRDC {/fieldName "headerRDC"/startMethod "start(String,String,String)"/parameterMapping "param.iconUri=\"<%=ivy.cms.cr(\\\"/ch/ivyteam/ivy/workflow/ui/case/images/finishedCases48\\\")%>\";\nparam.text=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseDisplayMode\" + callParam.aCaseDisplayMode + \"LongDesc\");\n"/initScript "param.title = ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/finishedCaseDisplayMode\" + callParam.aCaseDisplayMode + \"ShortDesc\");\n\n// ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseDisplayMode\" + callParam.aCaseDisplayMode + \"ShortDesc\")"}}' #txt
Fs0 f8 102 78 20 20 13 0 #rect
Fs0 f8 @|RichDialogInitStartIcon #fIcon
Fs0 f12 expr out #txt
Fs0 f12 112 98 66 232 #arcP
Fs0 f12 1 112 232 #addKink
Fs0 f12 0 0.6688407801290683 0 0 #arcLabel
Fs0 f13 type ch.ivyteam.ivy.workflow.ui.cases.FinishedCaseDisplayList.FinishedCaseDisplayListData #txt
Fs0 f13 guid 11DABCAF75A9CD39 #txt
Fs0 f13 715 347 26 26 14 0 #rect
Fs0 f13 @|RichDialogEndIcon #fIcon
Fs0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
        <nameStyle>5,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f14 guid 11DABCB050646930 #txt
Fs0 f14 type ch.ivyteam.ivy.workflow.ui.cases.FinishedCaseDisplayList.FinishedCaseDisplayListData #txt
Fs0 f14 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.FinishedCaseDisplayList.FinishedCaseDisplayListData out;
' #txt
Fs0 f14 actionTable 'out=in;
' #txt
Fs0 f14 718 78 20 20 13 0 #rect
Fs0 f14 @|RichDialogProcessStartIcon #fIcon
Fs0 f15 expr out #txt
Fs0 f15 728 98 728 347 #arcP
>Proto Fs0 .type ch.ivyteam.ivy.workflow.ui.cases.FinishedCaseDisplayList.FinishedCaseDisplayListData #txt
>Proto Fs0 .processKind RICH_DIALOG #txt
>Proto Fs0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Start methods</swimlaneLabel>
        <swimlaneLabel>Methods</swimlaneLabel>
        <swimlaneLabel>Events</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>360</swimlaneSize>
    <swimlaneSize>187</swimlaneSize>
    <swimlaneSize>250</swimlaneSize>
    <swimlaneColor>-16724788</swimlaneColor>
    <swimlaneColor>-16751002</swimlaneColor>
    <swimlaneColor>-6697729</swimlaneColor>
</elementInfo>
' #txt
>Proto Fs0 -8 -8 16 16 16 26 #rect
>Proto Fs0 '' #fIcon
Fs0 f0 mainOut f6 tail #connect
Fs0 f6 head f5 mainIn #connect
Fs0 f5 mainOut f2 tail #connect
Fs0 f2 head f1 mainIn #connect
Fs0 f3 mainOut f10 tail #connect
Fs0 f10 head f9 mainIn #connect
Fs0 f9 mainOut f7 tail #connect
Fs0 f7 head f5 mainIn #connect
Fs0 f4 mainOut f11 tail #connect
Fs0 f11 head f9 mainIn #connect
Fs0 f8 mainOut f12 tail #connect
Fs0 f12 head f5 mainIn #connect
Fs0 f14 mainOut f15 tail #connect
Fs0 f15 head f13 mainIn #connect
