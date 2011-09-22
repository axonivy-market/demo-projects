[Ivy]
[>Created: Thu Sep 22 14:18:31 CEST 2011]
11B2C491C48D8B91 3.17 #module
>Proto >Proto Collection #zClass
Rs0 RunningTaskDisplayListProcess Big #zClass
Rs0 RD #cInfo
Rs0 #process
Rs0 @TextInP .resExport .resExport #zField
Rs0 @TextInP .type .type #zField
Rs0 @TextInP .processKind .processKind #zField
Rs0 @MessageFlowInP-0n messageIn messageIn #zField
Rs0 @MessageFlowOutP-0n messageOut messageOut #zField
Rs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Rs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Rs0 @TextInP .xml .xml #zField
Rs0 @TextInP .responsibility .responsibility #zField
Rs0 @AnnotationInP-0n ai ai #zField
Rs0 @RichDialogInitStart f0 '' #zField
Rs0 @RichDialogProcessEnd f1 '' #zField
Rs0 @RichDialogInitStart f3 '' #zField
Rs0 @RichDialogMethodStart f4 '' #zField
Rs0 @RichDialogProcessStep f9 '' #zField
Rs0 @PushWFArc f10 '' #zField
Rs0 @Alternative f17 '' #zField
Rs0 @PushWFArc f18 '' #zField
Rs0 @PushWFArc f19 '' #zField
Rs0 @PushWFArc f7 '' #zField
Rs0 @PushWFArc f8 '' #zField
Rs0 @RichDialogMethodStart f2 '' #zField
Rs0 @RichDialogEnd f5 '' #zField
Rs0 @PushWFArc f6 '' #zField
>Proto Rs0 Rs0 RunningTaskDisplayListProcess #zField
Rs0 f0 guid 11B2C0E8C763AE45 #txt
Rs0 f0 type ch.ivyteam.ivy.workflow.ui.task.FinishedTaskDisplayList.FinishedTaskDisplayListData #txt
Rs0 f0 method start() #txt
Rs0 f0 disableUIEvents false #txt
Rs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Rs0 f0 outParameterDecl '<> result;
' #txt
Rs0 f0 embeddedRdInitializations '{/taskDisplayListRDC {/fieldName "taskDisplayListRDC"/startMethod "start()"/parameterMapping ""/initScript ""}/headerRDC {/fieldName "headerRDC"/startMethod "start(String,String,String)"/parameterMapping "param.iconUri=\"<%=ivy.cms.cr(\\\"/ch/ivyteam/ivy/workflow/ui/enduser/images/finishedTasks48\\\")%>\";\nparam.title=\"<%=ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/enduser/plainStrings/finishedTasksShortDesc\\\")%>\";\nparam.text=\"<%=ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/finishedTasksLongDesc\\\")%>\";\n"/initScript ""}}' #txt
Rs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f0 86 46 20 20 13 0 #rect
Rs0 f0 @|RichDialogInitStartIcon #fIcon
Rs0 f1 type ch.ivyteam.ivy.workflow.ui.task.FinishedTaskDisplayList.FinishedTaskDisplayListData #txt
Rs0 f1 83 291 26 26 14 0 #rect
Rs0 f1 @|RichDialogProcessEndIcon #fIcon
Rs0 f3 guid 11B2C26EA70B4830 #txt
Rs0 f3 type ch.ivyteam.ivy.workflow.ui.task.FinishedTaskDisplayList.FinishedTaskDisplayListData #txt
Rs0 f3 method start(Boolean,ch.ivyteam.ivy.richdialog.widgets.displays.RCloseableTabbedDisplay,ch.ivyteam.ivy.workflow.IPropertyFilter,Number,Boolean) #txt
Rs0 f3 disableUIEvents false #txt
Rs0 f3 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Boolean aRunningTaskMode,ch.ivyteam.ivy.richdialog.widgets.displays.RCloseableTabbedDisplay aTaskDisplayListParentDisplay,ch.ivyteam.ivy.workflow.IPropertyFilter aPropertyFilter,java.lang.Number aTaskDisplayMode,java.lang.Boolean aHasWfAdministratorPermissions> param = methodEvent.getInputArguments();
' #txt
Rs0 f3 inParameterMapAction 'out.hasWfAdministratorPermissions=param.aHasWfAdministratorPermissions;
out.propertyFilter=param.aPropertyFilter;
out.taskDisplayListParentDisplay=param.aTaskDisplayListParentDisplay;
out.taskDisplayMode=param.aTaskDisplayMode;
' #txt
Rs0 f3 outParameterDecl '<> result;
' #txt
Rs0 f3 embeddedRdInitializations '{/headerRDC {/fieldName "headerRDC"/startMethod "start(String,String,String)"/parameterMapping ""/initScript "param.iconUri = \"<%=ivy.cms.cr(\\\"/ch/ivyteam/ivy/workflow/ui/task/images/finishedTasks48\\\")%>\";\nparam.title = ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/finishedTaskDisplayMode\" + callParam.aTaskDisplayMode + \"ShortDesc\");\nparam.text = ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/taskDisplayMode\" + callParam.aTaskDisplayMode + \"LongDesc\");\n"/userContext * }/taskDisplayListRDC {/fieldName "taskDisplayListRDC"/startMethod "start(Boolean,ch.ivyteam.ivy.richdialog.widgets.displays.RCloseableTabbedDisplay,ch.ivyteam.ivy.workflow.IPropertyFilter,Number,Boolean)"/parameterMapping ""/initScript "param.aRunningTaskMode = callParam.aRunningTaskMode;\nparam.aTaskDisplayListParentDisplay = callParam.aTaskDisplayListParentDisplay;\nparam.aPropertyFilter = callParam.aPropertyFilter;\nparam.aTaskDisplayMode = callParam.aTaskDisplayMode;\nparam.aHasWfAdministratorPermissions = callParam.aHasWfAdministratorPermissions;"/userContext * }}' #txt
Rs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Boolean,RCloseableTabbedDisplay,IPropertyFilter,Number,Boolean)</name>
        <nameStyle>69,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f3 182 46 20 20 13 0 #rect
Rs0 f3 @|RichDialogInitStartIcon #fIcon
Rs0 f4 guid 11B2C2AB5437D93C #txt
Rs0 f4 type ch.ivyteam.ivy.workflow.ui.task.FinishedTaskDisplayList.FinishedTaskDisplayListData #txt
Rs0 f4 method refresh() #txt
Rs0 f4 disableUIEvents false #txt
Rs0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refresh()</name>
    </language>
</elementInfo>
' #txt
Rs0 f4 622 54 20 20 13 0 #rect
Rs0 f4 @|RichDialogMethodStartIcon #fIcon
Rs0 f9 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.FinishedTaskDisplayList.FinishedTaskDisplayListData out;
' #txt
Rs0 f9 actionTable 'out=in;
' #txt
Rs0 f9 actionCode panel.taskDisplayListRDC.refresh(); #txt
Rs0 f9 type ch.ivyteam.ivy.workflow.ui.task.FinishedTaskDisplayList.FinishedTaskDisplayListData #txt
Rs0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>call the refresh 
on embedded RD</name>
        <nameStyle>32,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f9 614 116 36 24 20 -2 #rect
Rs0 f9 @|RichDialogProcessStepIcon #fIcon
Rs0 f10 expr out #txt
Rs0 f10 632 74 632 116 #arcP
Rs0 f10 0 0.4889230095591479 0 0 #arcLabel
Rs0 f17 type ch.ivyteam.ivy.workflow.ui.task.FinishedTaskDisplayList.FinishedTaskDisplayListData #txt
Rs0 f17 82 162 28 28 14 0 #rect
Rs0 f17 @|AlternativeIcon #fIcon
Rs0 f18 expr out #txt
Rs0 f18 96 66 96 162 #arcP
Rs0 f19 expr out #txt
Rs0 f19 192 66 110 176 #arcP
Rs0 f19 1 192 176 #addKink
Rs0 f19 0 0.8654754700414173 0 0 #arcLabel
Rs0 f7 expr out #txt
Rs0 f7 632 140 110 176 #arcP
Rs0 f7 1 632 176 #addKink
Rs0 f7 1 0.3917343337662792 0 0 #arcLabel
Rs0 f8 expr in #txt
Rs0 f8 96 190 96 291 #arcP
Rs0 f2 guid 132910D37F3B3D11 #txt
Rs0 f2 type ch.ivyteam.ivy.workflow.ui.task.FinishedTaskDisplayList.FinishedTaskDisplayListData #txt
Rs0 f2 method close() #txt
Rs0 f2 disableUIEvents false #txt
Rs0 f2 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Rs0 f2 inActionCode '// call close on embedded task list
panel.taskDisplayListRDC.close();' #txt
Rs0 f2 outParameterDecl '<> result;
' #txt
Rs0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f2 622 190 20 20 13 0 #rect
Rs0 f2 @|RichDialogMethodStartIcon #fIcon
Rs0 f5 type ch.ivyteam.ivy.workflow.ui.task.FinishedTaskDisplayList.FinishedTaskDisplayListData #txt
Rs0 f5 guid 132910D482B4A0A9 #txt
Rs0 f5 622 270 20 20 13 0 #rect
Rs0 f5 @|RichDialogEndIcon #fIcon
Rs0 f6 expr out #txt
Rs0 f6 632 210 632 270 #arcP
>Proto Rs0 .type ch.ivyteam.ivy.workflow.ui.task.FinishedTaskDisplayList.FinishedTaskDisplayListData #txt
>Proto Rs0 .processKind RICH_DIALOG #txt
>Proto Rs0 -8 -8 16 16 16 26 #rect
>Proto Rs0 '' #fIcon
Rs0 f4 mainOut f10 tail #connect
Rs0 f10 head f9 mainIn #connect
Rs0 f0 mainOut f18 tail #connect
Rs0 f18 head f17 in #connect
Rs0 f3 mainOut f19 tail #connect
Rs0 f19 head f17 in #connect
Rs0 f9 mainOut f7 tail #connect
Rs0 f7 head f17 in #connect
Rs0 f17 out f8 tail #connect
Rs0 f8 head f1 mainIn #connect
Rs0 f2 mainOut f6 tail #connect
Rs0 f6 head f5 mainIn #connect
