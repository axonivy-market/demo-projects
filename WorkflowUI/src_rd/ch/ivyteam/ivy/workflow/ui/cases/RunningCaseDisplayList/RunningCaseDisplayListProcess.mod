[Ivy]
[>Created: Thu Sep 22 14:11:31 CEST 2011]
1199E3C12A2FEF93 3.17 #module
>Proto >Proto Collection #zClass
Rs0 RunningCaseDisplayListProcess Big #zClass
Rs0 RD #cInfo
Rs0 #process
Rs0 @TextInP .resExport .resExport #zField
Rs0 @TextInP .type .type #zField
Rs0 @TextInP .processKind .processKind #zField
Rs0 @TextInP .xml .xml #zField
Rs0 @TextInP .responsibility .responsibility #zField
Rs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Rs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Rs0 @MessageFlowInP-0n messageIn messageIn #zField
Rs0 @MessageFlowOutP-0n messageOut messageOut #zField
Rs0 @AnnotationInP-0n ai ai #zField
Rs0 @RichDialogInitStart f0 '' #zField
Rs0 @RichDialogProcessEnd f2 '' #zField
Rs0 @RichDialogMethodStart f3 '' #zField
Rs0 @RichDialogProcessStep f4 '' #zField
Rs0 @PushWFArc f5 '' #zField
Rs0 @PushWFArc f1 '' #zField
Rs0 @RichDialogProcessStart f7 '' #zField
Rs0 @RichDialogProcessStep f9 '' #zField
Rs0 @PushWFArc f10 '' #zField
Rs0 @PushWFArc f6 '' #zField
Rs0 @PushWFArc f8 '' #zField
Rs0 @RichDialogInitStart f11 '' #zField
Rs0 @PushWFArc f12 '' #zField
Rs0 @RichDialogEnd f14 '' #zField
Rs0 @RichDialogMethodStart f16 '' #zField
Rs0 @PushWFArc f13 '' #zField
>Proto Rs0 Rs0 RunningCaseDisplayListProcess #zField
Rs0 f0 guid 1199E414380C2BA7 #txt
Rs0 f0 type ch.ivyteam.ivy.workflow.ui.cases.RunningCaseDisplayList.RunningCaseDisplayListData #txt
Rs0 f0 method start() #txt
Rs0 f0 disableUIEvents false #txt
Rs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Rs0 f0 outParameterDecl '<> result;
' #txt
Rs0 f0 embeddedRdInitializations '{/caseDisplayListRDC {/fieldName "caseDisplayListRDC"/startMethod "start()"/parameterMapping ""/initScript ""}/headerRDC {/fieldName "headerRDC"/startMethod "start(String,String,String)"/parameterMapping "param.iconUri=\"<%=ivy.cms.cr(\\\"/ch/ivyteam/ivy/workflow/ui/case/images/runningCases48\\\")%>\";\nparam.title=\"<%=ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/runningCasesShortDesc\\\")%>\";\nparam.text=\"<%=ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/runningCasesLongDesc\\\")%>\";\n"/initScript ""}}' #txt
Rs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f0 46 78 20 20 13 0 #rect
Rs0 f0 @|RichDialogInitStartIcon #fIcon
Rs0 f2 type ch.ivyteam.ivy.workflow.ui.cases.RunningCaseDisplayList.RunningCaseDisplayListData #txt
Rs0 f2 43 363 26 26 14 0 #rect
Rs0 f2 @|RichDialogProcessEndIcon #fIcon
Rs0 f3 guid 119BEB6F22072FAC #txt
Rs0 f3 type ch.ivyteam.ivy.workflow.ui.cases.RunningCaseDisplayList.RunningCaseDisplayListData #txt
Rs0 f3 method refresh() #txt
Rs0 f3 disableUIEvents false #txt
Rs0 f3 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Rs0 f3 outParameterDecl '<> result;
' #txt
Rs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refresh()</name>
        <nameStyle>9,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f3 454 78 20 20 13 0 #rect
Rs0 f3 @|RichDialogMethodStartIcon #fIcon
Rs0 f4 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.RunningCaseDisplayList.RunningCaseDisplayListData out;
' #txt
Rs0 f4 actionTable 'out=in;
' #txt
Rs0 f4 type ch.ivyteam.ivy.workflow.ui.cases.RunningCaseDisplayList.RunningCaseDisplayListData #txt
Rs0 f4 38 204 36 24 20 -2 #rect
Rs0 f4 @|RichDialogProcessStepIcon #fIcon
Rs0 f5 expr out #txt
Rs0 f5 56 98 56 204 #arcP
Rs0 f1 expr out #txt
Rs0 f1 56 228 56 363 #arcP
Rs0 f7 guid 119BEB77FE7CDD20 #txt
Rs0 f7 type ch.ivyteam.ivy.workflow.ui.cases.RunningCaseDisplayList.RunningCaseDisplayListData #txt
Rs0 f7 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.RunningCaseDisplayList.RunningCaseDisplayListData out;
' #txt
Rs0 f7 actionTable 'out=in;
' #txt
Rs0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refresh</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f7 614 78 20 20 13 0 #rect
Rs0 f7 @|RichDialogProcessStartIcon #fIcon
Rs0 f9 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.RunningCaseDisplayList.RunningCaseDisplayListData out;
' #txt
Rs0 f9 actionTable 'out=in;
' #txt
Rs0 f9 actionCode panel.caseDisplayListRDC.refresh(); #txt
Rs0 f9 type ch.ivyteam.ivy.workflow.ui.cases.RunningCaseDisplayList.RunningCaseDisplayListData #txt
Rs0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>call the refresh on
embedded rd</name>
        <nameStyle>31,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f9 446 140 36 24 20 -2 #rect
Rs0 f9 @|RichDialogProcessStepIcon #fIcon
Rs0 f10 expr out #txt
Rs0 f10 464 98 464 140 #arcP
Rs0 f10 0 0.5026742257057253 0 0 #arcLabel
Rs0 f6 expr out #txt
Rs0 f6 624 98 482 152 #arcP
Rs0 f6 1 624 152 #addKink
Rs0 f6 1 0.23899708634895983 0 0 #arcLabel
Rs0 f8 expr out #txt
Rs0 f8 464 164 74 216 #arcP
Rs0 f8 1 464 216 #addKink
Rs0 f8 1 0.25132607916808825 0 0 #arcLabel
Rs0 f11 guid 119C271BFBBCE033 #txt
Rs0 f11 type ch.ivyteam.ivy.workflow.ui.cases.RunningCaseDisplayList.RunningCaseDisplayListData #txt
Rs0 f11 method start(ch.ivyteam.ivy.richdialog.widgets.displays.RCloseableTabbedDisplay,ch.ivyteam.ivy.workflow.IPropertyFilter,Number,Boolean) #txt
Rs0 f11 disableUIEvents false #txt
Rs0 f11 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.richdialog.widgets.displays.RCloseableTabbedDisplay aCaseDisplayListParentDisplay,ch.ivyteam.ivy.workflow.IPropertyFilter aPropertyFilter,java.lang.Number aCaseDisplayMode,java.lang.Boolean aHasWfAdministratorPermissions> param = methodEvent.getInputArguments();
' #txt
Rs0 f11 inParameterMapAction 'out.caseDisplayListParentDisplay=param.aCaseDisplayListParentDisplay;
out.caseDisplayMode=param.aCaseDisplayMode;
out.hasWfAdministratorPermissions=param.aHasWfAdministratorPermissions;
out.propertyFilter=param.aPropertyFilter;
' #txt
Rs0 f11 outParameterDecl '<> result;
' #txt
Rs0 f11 embeddedRdInitializations '{/headerRDC {/fieldName "headerRDC"/startMethod "start(String,String,String)"/parameterMapping ""/initScript "param.iconUri = \"<%=ivy.cms.cr(\\\"/ch/ivyteam/ivy/workflow/ui/case/images/runningCases48\\\")%>\";\nparam.title = ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/runningCaseDisplayMode\" + callParam.aCaseDisplayMode + \"ShortDesc\");\nparam.text = ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseDisplayMode\" + callParam.aCaseDisplayMode + \"LongDesc\");"/userContext * }/caseDisplayListRDC {/fieldName "caseDisplayListRDC"/startMethod "start(Boolean,ch.ivyteam.ivy.richdialog.widgets.displays.RCloseableTabbedDisplay,ch.ivyteam.ivy.workflow.IPropertyFilter,Number,Boolean)"/parameterMapping ""/initScript "param.aRunningCaseMode = true;\nparam.aCaseDisplayListParentDisplay = callParam.aCaseDisplayListParentDisplay;\nparam.aPropertyFilter = callParam.aPropertyFilter;\nparam.aCaseDisplayMode = callParam.aCaseDisplayMode;\nparam.aHasWfAdministratorPermissions = callParam.aHasWfAdministratorPermissions;"/userContext * }}' #txt
Rs0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(RCloseableTabbedDisplay,IPropertyFilter,Number,Boolean)</name>
    </language>
</elementInfo>
' #txt
Rs0 f11 118 78 20 20 13 0 #rect
Rs0 f11 @|RichDialogInitStartIcon #fIcon
Rs0 f12 expr out #txt
Rs0 f12 128 98 74 216 #arcP
Rs0 f12 1 128 216 #addKink
Rs0 f12 0 0.7751712874465806 0 0 #arcLabel
Rs0 f14 type ch.ivyteam.ivy.workflow.ui.cases.RunningCaseDisplayList.RunningCaseDisplayListData #txt
Rs0 f14 guid 11DABD4B6A7DDF04 #txt
Rs0 f14 459 371 26 26 14 0 #rect
Rs0 f14 @|RichDialogEndIcon #fIcon
Rs0 f16 guid 132910B9043330A0 #txt
Rs0 f16 type ch.ivyteam.ivy.workflow.ui.cases.RunningCaseDisplayList.RunningCaseDisplayListData #txt
Rs0 f16 method close() #txt
Rs0 f16 disableUIEvents false #txt
Rs0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close()</name>
    </language>
</elementInfo>
' #txt
Rs0 f16 462 254 20 20 13 0 #rect
Rs0 f16 @|RichDialogMethodStartIcon #fIcon
Rs0 f13 expr out #txt
Rs0 f13 472 274 472 371 #arcP
>Proto Rs0 .type ch.ivyteam.ivy.workflow.ui.cases.RunningCaseDisplayList.RunningCaseDisplayListData #txt
>Proto Rs0 .processKind RICH_DIALOG #txt
>Proto Rs0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Start methods</swimlaneLabel>
        <swimlaneLabel>Methods</swimlaneLabel>
        <swimlaneLabel>Events</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>380</swimlaneSize>
    <swimlaneSize>195</swimlaneSize>
    <swimlaneSize>187</swimlaneSize>
    <swimlaneColor>-16724788</swimlaneColor>
    <swimlaneColor>-16751002</swimlaneColor>
    <swimlaneColor>-6697729</swimlaneColor>
</elementInfo>
' #txt
>Proto Rs0 -8 -8 16 16 16 26 #rect
>Proto Rs0 '' #fIcon
Rs0 f0 mainOut f5 tail #connect
Rs0 f5 head f4 mainIn #connect
Rs0 f4 mainOut f1 tail #connect
Rs0 f1 head f2 mainIn #connect
Rs0 f3 mainOut f10 tail #connect
Rs0 f10 head f9 mainIn #connect
Rs0 f7 mainOut f6 tail #connect
Rs0 f6 head f9 mainIn #connect
Rs0 f9 mainOut f8 tail #connect
Rs0 f8 head f4 mainIn #connect
Rs0 f11 mainOut f12 tail #connect
Rs0 f12 head f4 mainIn #connect
Rs0 f16 mainOut f13 tail #connect
Rs0 f13 head f14 mainIn #connect
