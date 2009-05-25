[Ivy]
[>Created: Mon May 04 10:38:05 CEST 2009]
11B2C0E8BDAE4231 3.11 #module
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
Rs0 @RichDialogProcessStep f5 '' #zField
Rs0 @PushWFArc f6 '' #zField
Rs0 @PushWFArc f2 '' #zField
Rs0 @PushWFArc f7 '' #zField
Rs0 @RichDialogMethodStart f4 '' #zField
Rs0 @RichDialogProcessStep f9 '' #zField
Rs0 @PushWFArc f10 '' #zField
Rs0 @PushWFArc f8 '' #zField
Rs0 @RichDialogProcessStart f11 '' #zField
Rs0 @RichDialogEnd f12 '' #zField
Rs0 @PushWFArc f13 '' #zField
>Proto Rs0 Rs0 RunningTaskDisplayListProcess #zField
Rs0 f0 guid 11B2C0E8C763AE45 #txt
Rs0 f0 type ch.ivyteam.ivy.workflow.ui.task.RunningTaskDisplayList.RunningTaskDisplayListData #txt
Rs0 f0 method start() #txt
Rs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Rs0 f0 outParameterDecl '<> result;
' #txt
Rs0 f0 embeddedRdInitializations '{/taskDisplayListRDC {/fieldName "taskDisplayListRDC"/startMethod "start()"/parameterMapping ""/initScript ""}/headerRDC {/fieldName "headerRDC"/startMethod "start(String,String,String)"/parameterMapping "param.iconUri=\"<%=ivy.cms.cr(\\\"/ch/ivyteam/ivy/workflow/ui/task/images/runningTasks48\\\")%>\";\nparam.title=\"<%=ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/runningTasksShortDesc\\\")%>\";\nparam.text=\"<%=ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/runningTasksLongDesc\\\")%>\";\n"/initScript ""}}' #txt
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
Rs0 f1 type ch.ivyteam.ivy.workflow.ui.task.RunningTaskDisplayList.RunningTaskDisplayListData #txt
Rs0 f1 83 291 26 26 14 0 #rect
Rs0 f1 @|RichDialogProcessEndIcon #fIcon
Rs0 f3 guid 11B2C26EA70B4830 #txt
Rs0 f3 type ch.ivyteam.ivy.workflow.ui.task.RunningTaskDisplayList.RunningTaskDisplayListData #txt
Rs0 f3 method start(Boolean,ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay,ch.ivyteam.ivy.workflow.IPropertyFilter,Number,Boolean) #txt
Rs0 f3 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Boolean aRunningTaskMode,ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay aTaskDisplayListParentDisplay,ch.ivyteam.ivy.workflow.IPropertyFilter aPropertyFilter,java.lang.Number aTaskDisplayMode,java.lang.Boolean aHasWfAdministratorPermissions> param = methodEvent.getInputArguments();
' #txt
Rs0 f3 inParameterMapAction 'out.hasWfAdministratorPermissions=param.aHasWfAdministratorPermissions;
out.propertyFilter=param.#aPropertyFilter;
out.runningTaskMode=param.aRunningTaskMode;
out.taskDisplayListParentDisplay=param.aTaskDisplayListParentDisplay;
out.taskDisplayMode=param.aTaskDisplayMode;
' #txt
Rs0 f3 outParameterDecl '<> result;
' #txt
Rs0 f3 embeddedRdInitializations '{/taskDisplayListRDC {/fieldName "taskDisplayListRDC"/startMethod "start(Boolean,ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay,ch.ivyteam.ivy.workflow.IPropertyFilter,Number,Boolean)"/parameterMapping "param.aRunningTaskMode=callParam.aRunningTaskMode;\nparam.aTaskDisplayListParentDisplay=callParam.aTaskDisplayListParentDisplay;\nparam.aPropertyFilter=callParam.aPropertyFilter;\nparam.aTaskDisplayMode=callParam.aTaskDisplayMode;\nparam.aHasWfAdministratorPermissions=callParam.aHasWfAdministratorPermissions;\n"/initScript "import ch.ivyteam.ivy.workflow.ui.utils.WorkflowUIAccessPermissionHandler;\n"}/headerRDC {/fieldName "headerRDC"/startMethod "start(String,String,String)"/parameterMapping "param.iconUri=\"<%=ivy.cms.cr(\\\"/ch/ivyteam/ivy/workflow/ui/task/images/runningTasks48\\\")%>\";\nparam.title=\"<%=ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/runningTasksShortDesc\\\")%>\";\nparam.text=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/taskDisplayMode\" + callParam.aTaskDisplayMode + \"LongDesc\");\n"/initScript ""}}' #txt
Rs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Boolean,RTabbedDisplay,IPropertyFilter,Number)</name>
        <nameStyle>52,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f3 182 46 20 20 13 0 #rect
Rs0 f3 @|RichDialogInitStartIcon #fIcon
Rs0 f5 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.RunningTaskDisplayList.RunningTaskDisplayListData out;
' #txt
Rs0 f5 actionTable 'out=in;
' #txt
Rs0 f5 type ch.ivyteam.ivy.workflow.ui.task.RunningTaskDisplayList.RunningTaskDisplayListData #txt
Rs0 f5 78 172 36 24 20 -2 #rect
Rs0 f5 @|RichDialogProcessStepIcon #fIcon
Rs0 f6 expr out #txt
Rs0 f6 96 66 96 172 #arcP
Rs0 f2 expr out #txt
Rs0 f2 96 196 96 291 #arcP
Rs0 f7 expr out #txt
Rs0 f7 192 66 114 184 #arcP
Rs0 f7 1 192 184 #addKink
Rs0 f7 0 0.8654754700414173 0 0 #arcLabel
Rs0 f4 guid 11B2C2AB5437D93C #txt
Rs0 f4 type ch.ivyteam.ivy.workflow.ui.task.RunningTaskDisplayList.RunningTaskDisplayListData #txt
Rs0 f4 method refresh() #txt
Rs0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refresh()</name>
    </language>
</elementInfo>
' #txt
Rs0 f4 470 54 20 20 13 0 #rect
Rs0 f4 @|RichDialogMethodStartIcon #fIcon
Rs0 f9 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.RunningTaskDisplayList.RunningTaskDisplayListData out;
' #txt
Rs0 f9 actionTable 'out=in;
' #txt
Rs0 f9 actionCode panel.taskDisplayListRDC.refresh(); #txt
Rs0 f9 type ch.ivyteam.ivy.workflow.ui.task.RunningTaskDisplayList.RunningTaskDisplayListData #txt
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
Rs0 f9 462 116 36 24 20 -2 #rect
Rs0 f9 @|RichDialogProcessStepIcon #fIcon
Rs0 f10 expr out #txt
Rs0 f10 480 74 480 116 #arcP
Rs0 f10 0 0.4889230095591479 0 0 #arcLabel
Rs0 f8 expr out #txt
Rs0 f8 480 140 114 184 #arcP
Rs0 f8 1 480 184 #addKink
Rs0 f8 1 0.3917343337662792 0 0 #arcLabel
Rs0 f11 guid 11DABDF34B0C6262 #txt
Rs0 f11 type ch.ivyteam.ivy.workflow.ui.task.RunningTaskDisplayList.RunningTaskDisplayListData #txt
Rs0 f11 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.RunningTaskDisplayList.RunningTaskDisplayListData out;
' #txt
Rs0 f11 actionTable 'out=in;
' #txt
Rs0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
        <nameStyle>5,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f11 646 46 20 20 13 0 #rect
Rs0 f11 @|RichDialogProcessStartIcon #fIcon
Rs0 f12 type ch.ivyteam.ivy.workflow.ui.task.RunningTaskDisplayList.RunningTaskDisplayListData #txt
Rs0 f12 guid 11DABDF3FCCA4939 #txt
Rs0 f12 643 331 26 26 14 0 #rect
Rs0 f12 @|RichDialogEndIcon #fIcon
Rs0 f13 expr out #txt
Rs0 f13 656 66 656 331 #arcP
>Proto Rs0 .type ch.ivyteam.ivy.workflow.ui.task.RunningTaskDisplayList.RunningTaskDisplayListData #txt
>Proto Rs0 .processKind RICH_DIALOG #txt
>Proto Rs0 -8 -8 16 16 16 26 #rect
>Proto Rs0 '' #fIcon
Rs0 f0 mainOut f6 tail #connect
Rs0 f6 head f5 mainIn #connect
Rs0 f5 mainOut f2 tail #connect
Rs0 f2 head f1 mainIn #connect
Rs0 f3 mainOut f7 tail #connect
Rs0 f7 head f5 mainIn #connect
Rs0 f4 mainOut f10 tail #connect
Rs0 f10 head f9 mainIn #connect
Rs0 f9 mainOut f8 tail #connect
Rs0 f8 head f5 mainIn #connect
Rs0 f11 mainOut f13 tail #connect
Rs0 f13 head f12 mainIn #connect
