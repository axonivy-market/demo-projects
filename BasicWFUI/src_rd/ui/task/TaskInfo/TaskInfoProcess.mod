[Ivy]
[>Created: Mon Feb 22 17:38:14 CET 2010]
125E01F5818792DF 3.13 #module
>Proto >Proto Collection #zClass
Ts0 TaskInfoProcess Big #zClass
Ts0 RD #cInfo
Ts0 #process
Ts0 @AnnotationInP-0n ai ai #zField
Ts0 @MessageFlowInP-0n messageIn messageIn #zField
Ts0 @MessageFlowOutP-0n messageOut messageOut #zField
Ts0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ts0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ts0 @TextInP .resExport .resExport #zField
Ts0 @TextInP .type .type #zField
Ts0 @TextInP .processKind .processKind #zField
Ts0 @TextInP .xml .xml #zField
Ts0 @TextInP .responsibility .responsibility #zField
Ts0 @RichDialogInitStart f0 '' #zField
Ts0 @RichDialogProcessEnd f1 '' #zField
Ts0 @PushWFArc f2 '' #zField
Ts0 @RichDialogInitStart f3 '' #zField
Ts0 @PushWFArc f4 '' #zField
Ts0 @RichDialogProcessStart f5 '' #zField
Ts0 @RichDialogEnd f6 '' #zField
Ts0 @PushWFArc f7 '' #zField
>Proto Ts0 Ts0 TaskInfoProcess #zField
Ts0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ts0 f0 guid 125E01F5847947EB #txt
Ts0 f0 type ui.task.TaskInfo.TaskInfoData #txt
Ts0 f0 method start() #txt
Ts0 f0 disableUIEvents true #txt
Ts0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ts0 f0 outParameterDecl '<> result;
' #txt
Ts0 f0 90 40 20 20 13 0 #rect
Ts0 f0 @|RichDialogInitStartIcon #fIcon
Ts0 f1 type ui.task.TaskInfo.TaskInfoData #txt
Ts0 f1 90 140 20 20 13 0 #rect
Ts0 f1 @|RichDialogProcessEndIcon #fIcon
Ts0 f2 expr out #txt
Ts0 f2 100 60 100 140 #arcP
Ts0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(ITask)</name>
        <nameStyle>12,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f3 guid 125E021BFC364FB9 #txt
Ts0 f3 type ui.task.TaskInfo.TaskInfoData #txt
Ts0 f3 method start(ch.ivyteam.ivy.workflow.ITask) #txt
Ts0 f3 disableUIEvents true #txt
Ts0 f3 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.workflow.ITask task> param = methodEvent.getInputArguments();
' #txt
Ts0 f3 inParameterMapAction 'out.info=param.task.getName();
' #txt
Ts0 f3 outParameterDecl '<> result;
' #txt
Ts0 f3 embeddedRdInitializations '{/taskInfoCustomFieldsPanel {/fieldName "taskInfoCustomFieldsPanel"/startMethod "start(ch.ivyteam.ivy.workflow.ITask)"/parameterMapping "param.aTask=callParam.task;\n"/initScript ""}/caseInfoCategorizationPanel {/fieldName "caseInfoCategorizationPanel"/startMethod "start(ch.ivyteam.ivy.workflow.ICase)"/parameterMapping "param.aCase=callParam.task.getCase();\n"/initScript ""}/caseInfoCustomFieldsPanel {/fieldName "caseInfoCustomFieldsPanel"/startMethod "start(ch.ivyteam.ivy.workflow.ICase)"/parameterMapping "param.aCase=callParam.task.getCase();\n"/initScript ""}/caseInfoBusinessDetailsPanel {/fieldName "caseInfoBusinessDetailsPanel"/startMethod "start(ch.ivyteam.ivy.workflow.ICase)"/parameterMapping "param.aCase=callParam.task.getCase();\n"/initScript ""}/taskInfoDetailsPanel {/fieldName "taskInfoDetailsPanel"/startMethod "start(ch.ivyteam.ivy.workflow.ITask)"/parameterMapping "param.aTask=callParam.task;\n"/initScript ""}}' #txt
Ts0 f3 182 38 20 20 13 0 #rect
Ts0 f3 @|RichDialogInitStartIcon #fIcon
Ts0 f4 expr out #txt
Ts0 f4 185 55 106 142 #arcP
Ts0 f5 guid 125E46F49C5514ED #txt
Ts0 f5 type ui.task.TaskInfo.TaskInfoData #txt
Ts0 f5 actionDecl 'ui.task.TaskInfo.TaskInfoData out;
' #txt
Ts0 f5 actionTable 'out=in;
' #txt
Ts0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>RD_Event_Exit</name>
        <nameStyle>13,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f5 326 30 20 20 13 0 #rect
Ts0 f5 @|RichDialogProcessStartIcon #fIcon
Ts0 f6 type ui.task.TaskInfo.TaskInfoData #txt
Ts0 f6 guid 125E46F59DA60B15 #txt
Ts0 f6 326 142 20 20 13 0 #rect
Ts0 f6 @|RichDialogEndIcon #fIcon
Ts0 f7 expr out #txt
Ts0 f7 336 50 336 142 #arcP
>Proto Ts0 .rdData2UIAction 'panel.Label.text=in.info;
' #txt
>Proto Ts0 .type ui.task.TaskInfo.TaskInfoData #txt
>Proto Ts0 .processKind RICH_DIALOG #txt
>Proto Ts0 -8 -8 16 16 16 26 #rect
>Proto Ts0 '' #fIcon
Ts0 f0 mainOut f2 tail #connect
Ts0 f2 head f1 mainIn #connect
Ts0 f3 mainOut f4 tail #connect
Ts0 f4 head f1 mainIn #connect
Ts0 f5 mainOut f7 tail #connect
Ts0 f7 head f6 mainIn #connect
