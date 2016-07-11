[Ivy]
[>Created: Thu Nov 05 13:51:30 CET 2015]
150425B095B4FB54 3.18 #module
>Proto >Proto Collection #zClass
Oe0 Offline Big #zClass
Oe0 B #cInfo
Oe0 #process
Oe0 @TextInP .resExport .resExport #zField
Oe0 @TextInP .type .type #zField
Oe0 @TextInP .processKind .processKind #zField
Oe0 @AnnotationInP-0n ai ai #zField
Oe0 @MessageFlowInP-0n messageIn messageIn #zField
Oe0 @MessageFlowOutP-0n messageOut messageOut #zField
Oe0 @TextInP .xml .xml #zField
Oe0 @TextInP .responsibility .responsibility #zField
Oe0 @EndRequest f5 '' #zField
Oe0 @StartRequest f0 '' #zField
Oe0 @UserTask f3 '' #zField
Oe0 @TkArc f4 '' #zField
Oe0 @PushWFArc f6 '' #zField
>Proto Oe0 Oe0 Offline #zField
Oe0 f5 type htmlDialogDemos.Data #txt
Oe0 f5 template "/ProcessPages/Other/RedirectToMainPage.ivc" #txt
Oe0 f5 433 81 30 30 0 15 #rect
Oe0 f5 @|EndRequestIcon #fIcon
Oe0 f0 outLink ClientSideValidationDemo.ivp #txt
Oe0 f0 type htmlDialogDemos.Data #txt
Oe0 f0 inParamDecl '<> param;' #txt
Oe0 f0 actionDecl 'htmlDialogDemos.Data out;
' #txt
Oe0 f0 guid 150425B4729B6D4A #txt
Oe0 f0 requestEnabled true #txt
Oe0 f0 triggerEnabled false #txt
Oe0 f0 callSignature ClientSideValidationDemo() #txt
Oe0 f0 persist false #txt
Oe0 f0 startName ClientSideValidationDemo #txt
Oe0 f0 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
Oe0 f0 showInStartList 1 #txt
Oe0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Oe0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ClientSideValidationDemo.ivp</name>
        <nameStyle>28,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Oe0 f0 @C|.responsibility Everybody #txt
Oe0 f0 81 81 30 30 -90 17 #rect
Oe0 f0 @|StartRequestIcon #fIcon
Oe0 f3 richDialogId ch.ivyteam.htmldialog.demo.offline.ClientSideValidation #txt
Oe0 f3 startMethod start() #txt
Oe0 f3 requestActionDecl '<> param;' #txt
Oe0 f3 responseActionDecl 'htmlDialogDemos.Data out;
' #txt
Oe0 f3 responseMappingAction 'out=in;
' #txt
Oe0 f3 outLinks "TaskA.ivp" #txt
Oe0 f3 taskData 'TaskA.DESC=Expires after one hour so that it''s deleted automatically.
TaskA.EXP=''1h''
TaskA.EXPRI=2
TaskA.EXTYPE=-1
TaskA.NAM=Continue with ''Client Side Validation Demo''
TaskA.PRI=2
TaskA.ROL=Everybody
TaskA.SKIP_TASK_LIST=true
TaskA.TYPE=0' #txt
Oe0 f3 type htmlDialogDemos.Data #txt
Oe0 f3 216 74 112 44 0 -7 #rect
Oe0 f3 @|UserTaskIcon #fIcon
Oe0 f4 expr out #txt
Oe0 f4 type htmlDialogDemos.Data #txt
Oe0 f4 var in1 #txt
Oe0 f4 111 96 216 96 #arcP
Oe0 f6 expr data #txt
Oe0 f6 outCond ivp=="TaskA.ivp" #txt
Oe0 f6 328 96 433 96 #arcP
>Proto Oe0 .type htmlDialogDemos.Data #txt
>Proto Oe0 .processKind NORMAL #txt
>Proto Oe0 0 0 32 24 18 0 #rect
>Proto Oe0 @|BIcon #fIcon
Oe0 f0 mainOut f4 tail #connect
Oe0 f4 head f3 in #connect
Oe0 f3 out f6 tail #connect
Oe0 f6 head f5 mainIn #connect
