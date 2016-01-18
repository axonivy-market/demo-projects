[Ivy]
[>Created: Mon Jan 18 14:18:16 CET 2016]
15254DCC8C860E15 3.18 #module
>Proto >Proto Collection #zClass
Pt0 ProcurementRequestSequence Big #zClass
Pt0 B #cInfo
Pt0 #process
Pt0 @TextInP .resExport .resExport #zField
Pt0 @TextInP .type .type #zField
Pt0 @TextInP .processKind .processKind #zField
Pt0 @AnnotationInP-0n ai ai #zField
Pt0 @MessageFlowInP-0n messageIn messageIn #zField
Pt0 @MessageFlowOutP-0n messageOut messageOut #zField
Pt0 @TextInP .xml .xml #zField
Pt0 @TextInP .responsibility .responsibility #zField
Pt0 @RichDialog f6 '' #zField
Pt0 @StartRequest f0 '' #zField
Pt0 @EndTask f1 '' #zField
Pt0 @RichDialog f3 '' #zField
Pt0 @RichDialog f5 '' #zField
Pt0 @EMail f8 '' #zField
Pt0 @PushWFArc f4 '' #zField
Pt0 @PushWFArc f15 '' #zField
Pt0 @TaskSwitchSimple f2 '' #zField
Pt0 @TkArc f9 '' #zField
Pt0 @PushWFArc f10 '' #zField
Pt0 @TaskSwitchSimple f7 '' #zField
Pt0 @PushWFArc f13 '' #zField
Pt0 @Alternative f14 '' #zField
Pt0 @PushWFArc f16 '' #zField
Pt0 @TkArc f11 '' #zField
Pt0 @PushWFArc f17 '' #zField
Pt0 @RichDialog f18 '' #zField
Pt0 @PushWFArc f19 '' #zField
Pt0 @Alternative f20 '' #zField
Pt0 @PushWFArc f21 '' #zField
Pt0 @PushWFArc f22 '' #zField
Pt0 @TaskSwitchSimple f23 '' #zField
Pt0 @TkArc f24 '' #zField
Pt0 @PushWFArc f12 '' #zField
Pt0 @InfoButton f25 '' #zField
>Proto Pt0 Pt0 ProcurementRequestSequence #zField
Pt0 f6 targetWindow NEW:card: #txt
Pt0 f6 targetDisplay TOP #txt
Pt0 f6 richDialogId workflow.demo.AcceptProcurementRequest #txt
Pt0 f6 startMethod start(workflow.demo.ProcurementRequestData) #txt
Pt0 f6 type workflow.demo.ProcurementRequestData #txt
Pt0 f6 requestActionDecl '<workflow.demo.ProcurementRequestData procurementRequestData> param;' #txt
Pt0 f6 requestMappingAction 'param.procurementRequestData=in;
' #txt
Pt0 f6 responseActionDecl 'workflow.demo.ProcurementRequestData out;
' #txt
Pt0 f6 responseMappingAction 'out.accepted=result.accepted;
' #txt
Pt0 f6 windowConfiguration '* ' #txt
Pt0 f6 isAsynch false #txt
Pt0 f6 isInnerRd false #txt
Pt0 f6 userContext '* ' #txt
Pt0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Accept Request</name>
        <nameStyle>14,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Pt0 f6 728 754 112 44 -43 -8 #rect
Pt0 f6 @|RichDialogIcon #fIcon
Pt0 f0 outLink start.ivp #txt
Pt0 f0 type workflow.demo.ProcurementRequestData #txt
Pt0 f0 inParamDecl '<> param;' #txt
Pt0 f0 actionDecl 'workflow.demo.ProcurementRequestData out;
' #txt
Pt0 f0 guid 1501DA0247919A53 #txt
Pt0 f0 requestEnabled true #txt
Pt0 f0 triggerEnabled false #txt
Pt0 f0 callSignature start() #txt
Pt0 f0 persist false #txt
Pt0 f0 startName 'Procurement Request (Serial Task example)' #txt
Pt0 f0 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
Pt0 f0 showInStartList 1 #txt
Pt0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Pt0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Pt0 f0 @C|.responsibility Everybody #txt
Pt0 f0 57 153 30 30 -21 17 #rect
Pt0 f0 @|StartRequestIcon #fIcon
Pt0 f1 type workflow.demo.ProcurementRequestData #txt
Pt0 f1 897 153 30 30 0 15 #rect
Pt0 f1 @|EndIcon #fIcon
Pt0 f3 targetWindow NEW:card: #txt
Pt0 f3 targetDisplay TOP #txt
Pt0 f3 richDialogId workflow.demo.EnterProcurementRequest #txt
Pt0 f3 startMethod start() #txt
Pt0 f3 type workflow.demo.ProcurementRequestData #txt
Pt0 f3 requestActionDecl '<> param;' #txt
Pt0 f3 responseActionDecl 'workflow.demo.ProcurementRequestData out;
' #txt
Pt0 f3 responseMappingAction 'out=result.procurementRequestData;
' #txt
Pt0 f3 windowConfiguration '* ' #txt
Pt0 f3 isAsynch false #txt
Pt0 f3 isInnerRd false #txt
Pt0 f3 userContext '* ' #txt
Pt0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Enter Request</name>
        <nameStyle>13,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Pt0 f3 120 146 112 44 -39 -8 #rect
Pt0 f3 @|RichDialogIcon #fIcon
Pt0 f5 targetWindow NEW:card: #txt
Pt0 f5 targetDisplay TOP #txt
Pt0 f5 richDialogId workflow.demo.TLVerifyProcurementRequest #txt
Pt0 f5 startMethod start(workflow.demo.ProcurementRequestData) #txt
Pt0 f5 type workflow.demo.ProcurementRequestData #txt
Pt0 f5 requestActionDecl '<workflow.demo.ProcurementRequestData procurementRequestData> param;' #txt
Pt0 f5 requestMappingAction 'param.procurementRequestData=in;
param.procurementRequestData.totalPrice=in.amount * in.pricePerUnit;
' #txt
Pt0 f5 responseActionDecl 'workflow.demo.ProcurementRequestData out;
' #txt
Pt0 f5 responseMappingAction 'out=result.procurementRequestData;
' #txt
Pt0 f5 windowConfiguration '* ' #txt
Pt0 f5 isAsynch false #txt
Pt0 f5 isInnerRd false #txt
Pt0 f5 userContext '* ' #txt
Pt0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Verify Request</name>
        <nameStyle>14,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Pt0 f5 280 330 112 44 -39 -8 #rect
Pt0 f5 @|RichDialogIcon #fIcon
Pt0 f8 beanConfig '"{/emailSubject """"/emailFrom """"/emailReplyTo """"/emailTo """"/emailCC """"/emailBCC """"/exceptionMissingEmailAttachments ""false""/emailMessage """"/emailAttachments * }"' #txt
Pt0 f8 type workflow.demo.ProcurementRequestData #txt
Pt0 f8 timeout 0 #txt
Pt0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Notify Requester</name>
        <nameStyle>16,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Pt0 f8 728 146 112 44 -45 -8 #rect
Pt0 f8 @|EMailIcon #fIcon
Pt0 f4 expr out #txt
Pt0 f4 87 168 120 168 #arcP
Pt0 f15 expr out #txt
Pt0 f15 840 168 897 168 #arcP
Pt0 f2 actionDecl 'workflow.demo.ProcurementRequestData out;
' #txt
Pt0 f2 actionTable 'out=in1;
' #txt
Pt0 f2 outTypes "workflow.demo.ProcurementRequestData" #txt
Pt0 f2 outLinks "TaskA.ivp" #txt
Pt0 f2 taskData 'TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.NAM=Verify Request
TaskA.PRI=2
TaskA.ROL=Everybody
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=0' #txt
Pt0 f2 taskAction 'import ch.ivyteam.ivy.workflow.TaskDefinition;
List<TaskDefinition> taskDefinitions;
TaskDefinition taskDef;import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskDef = new TaskDefinition();
taskDef.setStartRequestPath("TaskA.ivp");
taskDef.setName(engine.expandMacros("Verify Request"));
taskDef.setAutoStartTask(false);
taskDef.setActivator("Everybody");
taskDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskDef.setExpiryActivator("Everybody");
taskDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskDefinitions.add(taskDef);
' #txt
Pt0 f2 type workflow.demo.ProcurementRequestData #txt
Pt0 f2 template "" #txt
Pt0 f2 225 337 30 30 0 16 #rect
Pt0 f2 @|TaskSwitchSimpleIcon #fIcon
Pt0 f9 expr out #txt
Pt0 f9 type workflow.demo.ProcurementRequestData #txt
Pt0 f9 var in1 #txt
Pt0 f9 232 168 240 337 #arcP
Pt0 f9 1 240 168 #addKink
Pt0 f9 1 0.050362642347758634 0 0 #arcLabel
Pt0 f10 expr data #txt
Pt0 f10 outCond ivp=="TaskA.ivp" #txt
Pt0 f10 255 352 280 352 #arcP
Pt0 f10 0 0.8388065516642389 0 0 #arcLabel
Pt0 f7 actionDecl 'workflow.demo.ProcurementRequestData out;
' #txt
Pt0 f7 actionTable 'out=in1;
' #txt
Pt0 f7 outTypes "workflow.demo.ProcurementRequestData" #txt
Pt0 f7 outLinks "TaskA.ivp" #txt
Pt0 f7 taskData 'TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.NAM=Verify Request
TaskA.PRI=2
TaskA.ROL=Everybody
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=0' #txt
Pt0 f7 taskAction 'import ch.ivyteam.ivy.workflow.TaskDefinition;
List<TaskDefinition> taskDefinitions;
TaskDefinition taskDef;import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskDef = new TaskDefinition();
taskDef.setStartRequestPath("TaskA.ivp");
taskDef.setName(engine.expandMacros("Verify Request"));
taskDef.setAutoStartTask(false);
taskDef.setActivator("Everybody");
taskDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskDef.setExpiryActivator("Everybody");
taskDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskDefinitions.add(taskDef);
' #txt
Pt0 f7 type workflow.demo.ProcurementRequestData #txt
Pt0 f7 template "" #txt
Pt0 f7 441 545 30 30 0 16 #rect
Pt0 f7 @|TaskSwitchSimpleIcon #fIcon
Pt0 f13 expr out #txt
Pt0 f13 784 754 784 190 #arcP
Pt0 f13 0 0.6821670957339938 0 0 #arcLabel
Pt0 f14 type workflow.demo.ProcurementRequestData #txt
Pt0 f14 440 336 32 32 0 16 #rect
Pt0 f14 @|AlternativeIcon #fIcon
Pt0 f16 expr out #txt
Pt0 f16 392 352 440 352 #arcP
Pt0 f11 expr in #txt
Pt0 f11 outCond in.dataOkTeamLeader #txt
Pt0 f11 type workflow.demo.ProcurementRequestData #txt
Pt0 f11 var in1 #txt
Pt0 f11 456 368 456 545 #arcP
Pt0 f11 0 0.2212181234249427 0 0 #arcLabel
Pt0 f17 expr in #txt
Pt0 f17 456 336 728 168 #arcP
Pt0 f17 1 456 168 #addKink
Pt0 f17 1 0.062186496364021265 0 0 #arcLabel
Pt0 f18 targetWindow NEW:card: #txt
Pt0 f18 targetDisplay TOP #txt
Pt0 f18 richDialogId workflow.demo.MgrVerifyProcurementRequest #txt
Pt0 f18 startMethod start(workflow.demo.ProcurementRequestData) #txt
Pt0 f18 type workflow.demo.ProcurementRequestData #txt
Pt0 f18 requestActionDecl '<workflow.demo.ProcurementRequestData procurementRequestData> param;' #txt
Pt0 f18 requestMappingAction 'param.procurementRequestData=in;
' #txt
Pt0 f18 responseActionDecl 'workflow.demo.ProcurementRequestData out;
' #txt
Pt0 f18 responseMappingAction 'out=result.procurementRequestData;
' #txt
Pt0 f18 windowConfiguration '* ' #txt
Pt0 f18 isAsynch false #txt
Pt0 f18 isInnerRd false #txt
Pt0 f18 userContext '* ' #txt
Pt0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Verify Request</name>
        <nameStyle>14,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Pt0 f18 512 538 112 44 -39 -8 #rect
Pt0 f18 @|RichDialogIcon #fIcon
Pt0 f19 expr data #txt
Pt0 f19 outCond ivp=="TaskA.ivp" #txt
Pt0 f19 471 560 512 560 #arcP
Pt0 f19 0 0.2740279152972329 0 0 #arcLabel
Pt0 f20 type workflow.demo.ProcurementRequestData #txt
Pt0 f20 656 544 32 32 0 16 #rect
Pt0 f20 @|AlternativeIcon #fIcon
Pt0 f21 expr out #txt
Pt0 f21 624 560 656 560 #arcP
Pt0 f21 0 0.8034962778248148 0 0 #arcLabel
Pt0 f22 expr in #txt
Pt0 f22 672 544 728 168 #arcP
Pt0 f22 1 672 168 #addKink
Pt0 f22 0 0.6605174231037737 0 0 #arcLabel
Pt0 f23 actionDecl 'workflow.demo.ProcurementRequestData out;
' #txt
Pt0 f23 actionTable 'out=in1;
' #txt
Pt0 f23 outTypes "workflow.demo.ProcurementRequestData" #txt
Pt0 f23 outLinks "TaskA.ivp" #txt
Pt0 f23 taskData 'TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.NAM=accept request
TaskA.PRI=2
TaskA.ROL=Everybody
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=0' #txt
Pt0 f23 taskAction 'import ch.ivyteam.ivy.workflow.TaskDefinition;
List<TaskDefinition> taskDefinitions;
TaskDefinition taskDef;import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskDef = new TaskDefinition();
taskDef.setStartRequestPath("TaskA.ivp");
taskDef.setName(engine.expandMacros("accept request"));
taskDef.setAutoStartTask(false);
taskDef.setActivator("Everybody");
taskDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskDef.setExpiryActivator("Everybody");
taskDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskDefinitions.add(taskDef);
' #txt
Pt0 f23 type workflow.demo.ProcurementRequestData #txt
Pt0 f23 template "" #txt
Pt0 f23 657 761 30 30 0 16 #rect
Pt0 f23 @|TaskSwitchSimpleIcon #fIcon
Pt0 f24 expr in #txt
Pt0 f24 outCond in.dataOkManager #txt
Pt0 f24 type workflow.demo.ProcurementRequestData #txt
Pt0 f24 var in1 #txt
Pt0 f24 672 576 672 761 #arcP
Pt0 f12 expr data #txt
Pt0 f12 outCond ivp=="TaskA.ivp" #txt
Pt0 f12 687 776 728 776 #arcP
Pt0 f25 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>This example shows the use of an Event with a Task Switch.
A procurement request is made by an employee, verified by the team leader and by a manager
and accepted by an executive.</name>
        <nameStyle>179,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Pt0 f25 8 10 528 60 -256 -24 #rect
Pt0 f25 @|IBIcon #fIcon
>Proto Pt0 .type workflow.demo.ProcurementRequestData #txt
>Proto Pt0 .processKind NORMAL #txt
>Proto Pt0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Procurement Request</swimlaneLabel>
        <swimlaneLabel>Employee</swimlaneLabel>
        <swimlaneLabel>Team Leader</swimlaneLabel>
        <swimlaneLabel>Manager</swimlaneLabel>
        <swimlaneLabel>Executive</swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
    <swimlaneSize>768</swimlaneSize>
    <swimlaneSize>192</swimlaneSize>
    <swimlaneSize>192</swimlaneSize>
    <swimlaneSize>192</swimlaneSize>
    <swimlaneSize>192</swimlaneSize>
    <swimlaneColor gradient="false">-1</swimlaneColor>
    <swimlaneColor gradient="false">-3342388</swimlaneColor>
    <swimlaneColor gradient="false">1922680575</swimlaneColor>
    <swimlaneColor gradient="false">-52</swimlaneColor>
    <swimlaneColor gradient="false">-13108</swimlaneColor>
    <swimlaneType>POOL</swimlaneType>
    <swimlaneType>LANE_IN_POOL</swimlaneType>
    <swimlaneType>LANE_IN_POOL</swimlaneType>
    <swimlaneType>LANE_IN_POOL</swimlaneType>
    <swimlaneType>LANE_IN_POOL</swimlaneType>
    <swimlaneSpaceBefore>80</swimlaneSpaceBefore>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
</elementInfo>
' #txt
>Proto Pt0 0 0 32 24 18 0 #rect
>Proto Pt0 @|BIcon #fIcon
Pt0 f0 mainOut f4 tail #connect
Pt0 f4 head f3 mainIn #connect
Pt0 f8 mainOut f15 tail #connect
Pt0 f15 head f1 mainIn #connect
Pt0 f3 mainOut f9 tail #connect
Pt0 f9 head f2 in #connect
Pt0 f2 out f10 tail #connect
Pt0 f10 head f5 mainIn #connect
Pt0 f6 mainOut f13 tail #connect
Pt0 f13 head f8 mainIn #connect
Pt0 f5 mainOut f16 tail #connect
Pt0 f16 head f14 in #connect
Pt0 f14 out f11 tail #connect
Pt0 f11 head f7 in #connect
Pt0 f14 out f17 tail #connect
Pt0 f17 head f8 mainIn #connect
Pt0 f7 out f19 tail #connect
Pt0 f19 head f18 mainIn #connect
Pt0 f18 mainOut f21 tail #connect
Pt0 f21 head f20 in #connect
Pt0 f22 head f8 mainIn #connect
Pt0 f20 out f24 tail #connect
Pt0 f24 head f23 in #connect
Pt0 f20 out f22 tail #connect
Pt0 f23 out f12 tail #connect
Pt0 f12 head f6 mainIn #connect
