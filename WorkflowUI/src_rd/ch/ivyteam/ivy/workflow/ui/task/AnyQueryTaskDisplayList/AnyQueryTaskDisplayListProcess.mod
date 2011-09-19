[Ivy]
[>Created: Thu Sep 15 14:10:05 CEST 2011]
13262B040E02EAEB 3.17 #module
>Proto >Proto Collection #zClass
Rs0 AnyQueryTaskDisplayListProcess Big #zClass
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
Rs0 @RichDialogEnd f12 '' #zField
Rs0 @RichDialogProcessStart f14 '' #zField
Rs0 @RichDialogProcessEnd f16 '' #zField
Rs0 @RichDialogProcessStart f15 '' #zField
Rs0 @RichDialogProcessEnd f18 '' #zField
Rs0 @PushWFArc f19 '' #zField
Rs0 @RichDialogProcessStart f20 '' #zField
Rs0 @RichDialogProcessEnd f21 '' #zField
Rs0 @PushWFArc f22 '' #zField
Rs0 @RichDialogMethodStart f23 '' #zField
Rs0 @RichDialogProcessStep f24 '' #zField
Rs0 @PushWFArc f25 '' #zField
Rs0 @PushWFArc f26 '' #zField
Rs0 @Alternative f11 '' #zField
Rs0 @PushWFArc f13 '' #zField
Rs0 @PushWFArc f27 '' #zField
Rs0 @PushWFArc f17 '' #zField
>Proto Rs0 Rs0 AnyQueryTaskDisplayListProcess #zField
Rs0 f0 guid 11B2C0E8C763AE45 #txt
Rs0 f0 type ch.ivyteam.ivy.workflow.ui.task.AnyQueryTaskDisplayList.AnyQueryTaskDisplayListData #txt
Rs0 f0 method start() #txt
Rs0 f0 disableUIEvents false #txt
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
Rs0 f0 38 46 20 20 13 0 #rect
Rs0 f0 @|RichDialogInitStartIcon #fIcon
Rs0 f1 type ch.ivyteam.ivy.workflow.ui.task.AnyQueryTaskDisplayList.AnyQueryTaskDisplayListData #txt
Rs0 f1 35 291 26 26 14 0 #rect
Rs0 f1 @|RichDialogProcessEndIcon #fIcon
Rs0 f3 guid 11B2C26EA70B4830 #txt
Rs0 f3 type ch.ivyteam.ivy.workflow.ui.task.AnyQueryTaskDisplayList.AnyQueryTaskDisplayListData #txt
Rs0 f3 method start(Boolean,ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay,ch.ivyteam.ivy.workflow.ui.data.task.AnyQueryTaskListParameter,Number,Boolean) #txt
Rs0 f3 disableUIEvents false #txt
Rs0 f3 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Boolean aRunningTaskMode,ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay aTaskDisplayListParentDisplay,ch.ivyteam.ivy.workflow.ui.data.task.AnyQueryTaskListParameter aAnyQueryTaskListParameter,java.lang.Number aTaskDisplayMode,java.lang.Boolean aHasWfAdministratorPermissions> param = methodEvent.getInputArguments();
' #txt
Rs0 f3 inParameterMapAction 'out.hasWfAdministratorPermissions=param.aHasWfAdministratorPermissions;
out.propertyFilter=param.aAnyQueryTaskListParameter.#criterias;
out.runningTaskMode=param.aRunningTaskMode;
out.taskDisplayListParentDisplay=param.aTaskDisplayListParentDisplay;
out.taskDisplayMode=param.aTaskDisplayMode;
' #txt
Rs0 f3 outParameterDecl '<> result;
' #txt
Rs0 f3 embeddedRdInitializations '{/headerRDC {/fieldName "headerRDC"/startMethod "start(String,String,String)"/parameterMapping ""/initScript "param.iconUri = \"<%=ivy.cms.cr(\\\"/ch/ivyteam/ivy/workflow/ui/task/images/runningTasks48\\\")%>\";\nparam.title = callParam.aAnyQueryTaskListParameter.title;\nparam.text = callParam.aAnyQueryTaskListParameter.text;"/userContext * }/taskDisplayListRDC {/fieldName "taskDisplayListRDC"/startMethod "start(Boolean,ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay,ch.ivyteam.ivy.workflow.IPropertyFilter,Number,Boolean)"/parameterMapping ""/initScript "param.aRunningTaskMode = callParam.aRunningTaskMode;\nparam.aTaskDisplayListParentDisplay = callParam.aTaskDisplayListParentDisplay;\nparam.aPropertyFilter = callParam.aAnyQueryTaskListParameter.criterias;\nparam.aTaskDisplayMode = callParam.aTaskDisplayMode;\nparam.aHasWfAdministratorPermissions = callParam.aHasWfAdministratorPermissions;\n"/userContext * }}' #txt
Rs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Boolean,RTabbedDisplay,AnyQueryTaskListParameter,Number,Boolean)</name>
    </language>
</elementInfo>
' #txt
Rs0 f3 134 46 20 20 13 0 #rect
Rs0 f3 @|RichDialogInitStartIcon #fIcon
Rs0 f5 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.AnyQueryTaskDisplayList.AnyQueryTaskDisplayListData out;
' #txt
Rs0 f5 actionTable 'out=in;
' #txt
Rs0 f5 type ch.ivyteam.ivy.workflow.ui.task.AnyQueryTaskDisplayList.AnyQueryTaskDisplayListData #txt
Rs0 f5 30 172 36 24 20 -2 #rect
Rs0 f5 @|RichDialogProcessStepIcon #fIcon
Rs0 f6 expr out #txt
Rs0 f6 48 66 48 172 #arcP
Rs0 f2 expr out #txt
Rs0 f2 48 196 48 291 #arcP
Rs0 f7 expr out #txt
Rs0 f7 144 66 66 184 #arcP
Rs0 f7 1 144 184 #addKink
Rs0 f7 0 0.8654754700414173 0 0 #arcLabel
Rs0 f4 guid 11B2C2AB5437D93C #txt
Rs0 f4 type ch.ivyteam.ivy.workflow.ui.task.AnyQueryTaskDisplayList.AnyQueryTaskDisplayListData #txt
Rs0 f4 method refresh() #txt
Rs0 f4 disableUIEvents false #txt
Rs0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refresh()</name>
    </language>
</elementInfo>
' #txt
Rs0 f4 438 46 20 20 13 0 #rect
Rs0 f4 @|RichDialogMethodStartIcon #fIcon
Rs0 f9 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.AnyQueryTaskDisplayList.AnyQueryTaskDisplayListData out;
' #txt
Rs0 f9 actionTable 'out=in;
' #txt
Rs0 f9 actionCode panel.taskDisplayListRDC.refresh(); #txt
Rs0 f9 type ch.ivyteam.ivy.workflow.ui.task.AnyQueryTaskDisplayList.AnyQueryTaskDisplayListData #txt
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
Rs0 f9 430 116 36 24 20 -2 #rect
Rs0 f9 @|RichDialogProcessStepIcon #fIcon
Rs0 f10 expr out #txt
Rs0 f10 448 66 448 116 #arcP
Rs0 f10 0 0.4889230095591479 0 0 #arcLabel
Rs0 f8 expr out #txt
Rs0 f8 448 140 66 184 #arcP
Rs0 f8 1 448 184 #addKink
Rs0 f8 1 0.3917343337662792 0 0 #arcLabel
Rs0 f12 type ch.ivyteam.ivy.workflow.ui.task.AnyQueryTaskDisplayList.AnyQueryTaskDisplayListData #txt
Rs0 f12 guid 11DABDF3FCCA4939 #txt
Rs0 f12 587 251 26 26 14 0 #rect
Rs0 f12 @|RichDialogEndIcon #fIcon
Rs0 f14 guid 129602698E4985E6 #txt
Rs0 f14 type ch.ivyteam.ivy.workflow.ui.task.AnyQueryTaskDisplayList.AnyQueryTaskDisplayListData #txt
Rs0 f14 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.AnyQueryTaskDisplayList.AnyQueryTaskDisplayListData out;
' #txt
Rs0 f14 actionTable 'out=in;
' #txt
Rs0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
        <nameStyle>5,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f14 750 46 20 20 13 0 #rect
Rs0 f14 @|RichDialogProcessStartIcon #fIcon
Rs0 f16 type ch.ivyteam.ivy.workflow.ui.task.AnyQueryTaskDisplayList.AnyQueryTaskDisplayListData #txt
Rs0 f16 662 254 20 20 13 0 #rect
Rs0 f16 @|RichDialogProcessEndIcon #fIcon
Rs0 f15 guid 129604AF1E27612E #txt
Rs0 f15 type ch.ivyteam.ivy.workflow.ui.task.AnyQueryTaskDisplayList.AnyQueryTaskDisplayListData #txt
Rs0 f15 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.AnyQueryTaskDisplayList.AnyQueryTaskDisplayListData out;
' #txt
Rs0 f15 actionTable 'out=in;
' #txt
Rs0 f15 actionCode '// enable the button to stop the automatic execution

ivy.log.debug("Automatic tasks execution started.");
out.automaticTasksExecutionMode = true;
' #txt
Rs0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startAutomaticTasksExecution</name>
        <nameStyle>28,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f15 830 46 20 20 13 0 #rect
Rs0 f15 @|RichDialogProcessStartIcon #fIcon
Rs0 f18 type ch.ivyteam.ivy.workflow.ui.task.AnyQueryTaskDisplayList.AnyQueryTaskDisplayListData #txt
Rs0 f18 830 254 20 20 13 0 #rect
Rs0 f18 @|RichDialogProcessEndIcon #fIcon
Rs0 f19 expr out #txt
Rs0 f19 840 66 840 254 #arcP
Rs0 f20 guid 12964167CE912EDC #txt
Rs0 f20 type ch.ivyteam.ivy.workflow.ui.task.AnyQueryTaskDisplayList.AnyQueryTaskDisplayListData #txt
Rs0 f20 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.AnyQueryTaskDisplayList.AnyQueryTaskDisplayListData out;
' #txt
Rs0 f20 actionTable 'out=in;
' #txt
Rs0 f20 actionCode 'panel.taskDisplayListRDC.stopAutomaticTasksExecution();

out.automaticTasksExecutionMode = false;' #txt
Rs0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>stopAutomaticTasksExecution</name>
        <nameStyle>27,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f20 1062 46 20 20 13 0 #rect
Rs0 f20 @|RichDialogProcessStartIcon #fIcon
Rs0 f21 type ch.ivyteam.ivy.workflow.ui.task.AnyQueryTaskDisplayList.AnyQueryTaskDisplayListData #txt
Rs0 f21 1062 254 20 20 13 0 #rect
Rs0 f21 @|RichDialogProcessEndIcon #fIcon
Rs0 f22 expr out #txt
Rs0 f22 1072 66 1072 254 #arcP
Rs0 f23 guid 12969E094022B55E #txt
Rs0 f23 type ch.ivyteam.ivy.workflow.ui.task.AnyQueryTaskDisplayList.AnyQueryTaskDisplayListData #txt
Rs0 f23 method close() #txt
Rs0 f23 disableUIEvents false #txt
Rs0 f23 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Rs0 f23 outParameterDecl '<java.lang.Boolean closeCanceled> result;
' #txt
Rs0 f23 outActionCode 'result.closeCanceled = in.closeCanceled;' #txt
Rs0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close()</name>
        <nameStyle>7,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f23 590 46 20 20 13 0 #rect
Rs0 f23 @|RichDialogMethodStartIcon #fIcon
Rs0 f24 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.AnyQueryTaskDisplayList.AnyQueryTaskDisplayListData out;
' #txt
Rs0 f24 actionTable 'out=in;
' #txt
Rs0 f24 actionCode 'out.closeCanceled = panel.taskDisplayListRDC.close();' #txt
Rs0 f24 type ch.ivyteam.ivy.workflow.ui.task.AnyQueryTaskDisplayList.AnyQueryTaskDisplayListData #txt
Rs0 f24 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>call close on 
task display list</name>
        <nameStyle>32,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f24 582 108 36 24 20 -2 #rect
Rs0 f24 @|RichDialogProcessStepIcon #fIcon
Rs0 f25 expr out #txt
Rs0 f25 600 66 600 108 #arcP
Rs0 f26 expr out #txt
Rs0 f26 760 66 618 120 #arcP
Rs0 f26 1 760 120 #addKink
Rs0 f26 1 0.02705608445902768 0 0 #arcLabel
Rs0 f11 type ch.ivyteam.ivy.workflow.ui.task.AnyQueryTaskDisplayList.AnyQueryTaskDisplayListData #txt
Rs0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close?</name>
        <nameStyle>6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f11 586 162 28 28 14 0 #rect
Rs0 f11 @|AlternativeIcon #fIcon
Rs0 f13 expr out #txt
Rs0 f13 600 132 600 162 #arcP
Rs0 f27 expr in #txt
Rs0 f27 outCond !in.closeCanceled #txt
Rs0 f27 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f27 600 190 600 251 #arcP
Rs0 f17 expr in #txt
Rs0 f17 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>no</name>
        <nameStyle>2,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f17 609 181 672 254 #arcP
Rs0 f17 1 672 216 #addKink
Rs0 f17 0 0.8540858246785534 0 0 #arcLabel
>Proto Rs0 .type ch.ivyteam.ivy.workflow.ui.task.AnyQueryTaskDisplayList.AnyQueryTaskDisplayListData #txt
>Proto Rs0 .processKind RICH_DIALOG #txt
>Proto Rs0 .rdData2UIAction 'panel.closeHyperlink.visible=!in.automaticTasksExecutionMode;
panel.stopAutomaticTasksExecutionToggleHyperlink.visible=in.automaticTasksExecutionMode;
' #txt
>Proto Rs0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Start methods</swimlaneLabel>
        <swimlaneLabel>Methods</swimlaneLabel>
        <swimlaneLabel>Events</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>400</swimlaneSize>
    <swimlaneSize>315</swimlaneSize>
    <swimlaneSize>542</swimlaneSize>
    <swimlaneColor>-16724890</swimlaneColor>
    <swimlaneColor>-10066177</swimlaneColor>
    <swimlaneColor>-6697729</swimlaneColor>
</elementInfo>
' #txt
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
Rs0 f15 mainOut f19 tail #connect
Rs0 f19 head f18 mainIn #connect
Rs0 f20 mainOut f22 tail #connect
Rs0 f22 head f21 mainIn #connect
Rs0 f23 mainOut f25 tail #connect
Rs0 f25 head f24 mainIn #connect
Rs0 f14 mainOut f26 tail #connect
Rs0 f26 head f24 mainIn #connect
Rs0 f24 mainOut f13 tail #connect
Rs0 f13 head f11 in #connect
Rs0 f11 out f27 tail #connect
Rs0 f27 head f12 mainIn #connect
Rs0 f11 out f17 tail #connect
Rs0 f17 head f16 mainIn #connect
