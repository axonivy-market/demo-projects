[Ivy]
[>Created: Mon Jan 18 17:14:09 CET 2016]
151CA0D8CBDD2DEC 3.18 #module
>Proto >Proto Collection #zClass
cr0 CreateUser Big #zClass
cr0 B #cInfo
cr0 #process
cr0 @TextInP .resExport .resExport #zField
cr0 @TextInP .type .type #zField
cr0 @TextInP .processKind .processKind #zField
cr0 @AnnotationInP-0n ai ai #zField
cr0 @MessageFlowInP-0n messageIn messageIn #zField
cr0 @MessageFlowOutP-0n messageOut messageOut #zField
cr0 @TextInP .xml .xml #zField
cr0 @TextInP .responsibility .responsibility #zField
cr0 @StartRequest f0 '' #zField
cr0 @RichDialog f3 '' #zField
cr0 @PushWFArc f4 '' #zField
cr0 @EndTask f6 '' #zField
cr0 @UserTask f8 '' #zField
cr0 @PushWFArc f7 '' #zField
cr0 @EndTask f10 '' #zField
cr0 @UserTask f11 '' #zField
cr0 @PushWFArc f14 '' #zField
cr0 @SignalBoundaryEvent St0 SignalBoundaryEvent #zField
cr0 @SignalBoundaryEvent St1 SignalBoundaryEvent #zField
cr0 @GridStep f19 '' #zField
cr0 @PushWFArc f20 '' #zField
cr0 @GridStep f21 '' #zField
cr0 @PushWFArc f22 '' #zField
cr0 @EndTask f23 '' #zField
cr0 @PushWFArc f24 '' #zField
cr0 @EndTask f25 '' #zField
cr0 @PushWFArc f26 '' #zField
cr0 @InfoButton f27 '' #zField
cr0 @SignalStartEvent f28 '' #zField
cr0 @TkArc f29 '' #zField
cr0 @GridStep f30 '' #zField
cr0 @PushWFArc f31 '' #zField
cr0 @SignalStartEvent f32 '' #zField
cr0 @TkArc f33 '' #zField
cr0 @EndTask f34 '' #zField
cr0 @PushWFArc f35 '' #zField
>Proto cr0 cr0 CreateUser #zField
cr0 f0 outLink addUser.ivp #txt
cr0 f0 type workflow.signal.CreateUserProcess #txt
cr0 f0 inParamDecl '<> param;' #txt
cr0 f0 inParamTable 'out.user.userKey=(new DateTime()).getMinutes().toString() + (new DateTime()).getSeconds().toString();
' #txt
cr0 f0 actionDecl 'workflow.signal.CreateUserProcess out;
' #txt
cr0 f0 guid 151CA0D8CCB8A925 #txt
cr0 f0 requestEnabled true #txt
cr0 f0 triggerEnabled false #txt
cr0 f0 callSignature addUser() #txt
cr0 f0 persist false #txt
cr0 f0 startName 'Create User Process (Signal example)' #txt
cr0 f0 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
cr0 f0 showInStartList 1 #txt
cr0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
cr0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>addUser.ivp</name>
        <nameStyle>11,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
cr0 f0 @C|.responsibility Everybody #txt
cr0 f0 49 81 30 30 -33 17 #rect
cr0 f0 @|StartRequestIcon #fIcon
cr0 f3 targetWindow NEW:card: #txt
cr0 f3 targetDisplay TOP #txt
cr0 f3 richDialogId workflow.signal.CreateUser #txt
cr0 f3 startMethod start(workflow.signal.User) #txt
cr0 f3 type workflow.signal.CreateUserProcess #txt
cr0 f3 requestActionDecl '<workflow.signal.User user> param;' #txt
cr0 f3 requestMappingAction 'param.user=in.user;
' #txt
cr0 f3 responseActionDecl 'workflow.signal.CreateUserProcess out;
' #txt
cr0 f3 responseMappingAction 'out=in;
out.user=result.user;
' #txt
cr0 f3 windowConfiguration '* ' #txt
cr0 f3 isAsynch false #txt
cr0 f3 isInnerRd false #txt
cr0 f3 userContext '* ' #txt
cr0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>add user data</name>
        <nameStyle>13,7
</nameStyle>
    </language>
</elementInfo>
' #txt
cr0 f3 136 74 112 44 -38 -8 #rect
cr0 f3 @|RichDialogIcon #fIcon
cr0 f4 expr out #txt
cr0 f4 79 96 136 96 #arcP
cr0 f6 type workflow.signal.CreateUserProcess #txt
cr0 f6 337 241 30 30 0 15 #rect
cr0 f6 @|EndIcon #fIcon
cr0 f8 richDialogId workflow.signal.TaskForm #txt
cr0 f8 startMethod start(workflow.signal.User) #txt
cr0 f8 requestActionDecl '<workflow.signal.User user> param;' #txt
cr0 f8 requestMappingAction 'param.user=in.user;
' #txt
cr0 f8 responseActionDecl 'workflow.signal.CreateUserProcess out;
' #txt
cr0 f8 responseMappingAction 'out.user=result.user;
' #txt
cr0 f8 outLinks "TaskA.ivp" #txt
cr0 f8 taskData 'TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.NAM=Setup Workstation for <%\=in.user.name%> [<%\=in.user.userKey%>]
TaskA.PRI=2
TaskA.ROL=Everybody
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=0' #txt
cr0 f8 type workflow.signal.CreateUserProcess #txt
cr0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Task for
IT Department</name>
        <nameStyle>22,7
</nameStyle>
    </language>
</elementInfo>
' #txt
cr0 f8 160 234 128 44 -41 -15 #rect
cr0 f8 @|UserTaskIcon #fIcon
cr0 f7 expr data #txt
cr0 f7 outCond ivp=="TaskA.ivp" #txt
cr0 f7 288 256 337 256 #arcP
cr0 f10 type workflow.signal.CreateUserProcess #txt
cr0 f10 337 465 30 30 0 15 #rect
cr0 f10 @|EndIcon #fIcon
cr0 f11 richDialogId workflow.signal.TaskForm #txt
cr0 f11 startMethod start(workflow.signal.User) #txt
cr0 f11 requestActionDecl '<workflow.signal.User user> param;' #txt
cr0 f11 requestMappingAction 'param.user=in.user;
' #txt
cr0 f11 responseActionDecl 'workflow.signal.CreateUserProcess out;
' #txt
cr0 f11 responseMappingAction 'out=in;
' #txt
cr0 f11 outLinks "TaskA.ivp" #txt
cr0 f11 taskData 'TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.NAM=Prepare Office Key for <%\=in.user.name%> [<%\=in.user.userKey%>]
TaskA.PRI=2
TaskA.ROL=Everybody
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=0' #txt
cr0 f11 type workflow.signal.CreateUserProcess #txt
cr0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Task for
Office Manager</name>
        <nameStyle>23,7
</nameStyle>
    </language>
</elementInfo>
' #txt
cr0 f11 160 458 128 44 -41 -15 #rect
cr0 f11 @|UserTaskIcon #fIcon
cr0 f14 expr data #txt
cr0 f14 outCond ivp=="TaskA.ivp" #txt
cr0 f14 288 480 337 480 #arcP
cr0 St0 actionDecl 'workflow.signal.CreateUserProcess out;
' #txt
cr0 St0 actionTable 'out=in;
out.quitUserEvent=signal.getSignalData() as workflow.signal.QuitUserEvent;
' #txt
cr0 St0 actionCode 'ivy.task.setName("CANCEL TASK: " + ivy.task.getName());' #txt
cr0 St0 type workflow.signal.CreateUserProcess #txt
cr0 St0 signalCode admin:quit:<%=in.user.userKey%> #txt
cr0 St0 attachedToRef 151CA0D8CBDD2DEC-f8 #txt
cr0 St0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>admin:quit:[userKey]</name>
        <nameStyle>20,7
</nameStyle>
    </language>
</elementInfo>
' #txt
cr0 St0 249 273 30 30 11 7 #rect
cr0 St0 @|SignalBoundaryEventIcon #fIcon
cr0 St1 actionDecl 'workflow.signal.CreateUserProcess out;
' #txt
cr0 St1 actionTable 'out=in;
out.quitUserEvent=signal.getSignalData() as workflow.signal.QuitUserEvent;
' #txt
cr0 St1 actionCode 'ivy.task.setName("CANCEL TASK: " + ivy.task.getName());' #txt
cr0 St1 type workflow.signal.CreateUserProcess #txt
cr0 St1 signalCode admin:quit:<%=in.user.userKey%> #txt
cr0 St1 attachedToRef 151CA0D8CBDD2DEC-f11 #txt
cr0 St1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>admin:quit:[userKey]</name>
        <nameStyle>20,7
</nameStyle>
    </language>
</elementInfo>
' #txt
cr0 St1 249 497 30 30 11 9 #rect
cr0 St1 @|SignalBoundaryEventIcon #fIcon
cr0 f19 actionDecl 'workflow.signal.CreateUserProcess out;
' #txt
cr0 f19 actionTable 'out=in;
' #txt
cr0 f19 actionCode 'ivy.log.debug("setup of workstation cancelled for user " + in.user.toString() + ", reason: " + in.quitUserEvent.toString());' #txt
cr0 f19 type workflow.signal.CreateUserProcess #txt
cr0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>log event data</name>
        <nameStyle>14,7
</nameStyle>
    </language>
</elementInfo>
' #txt
cr0 f19 296 322 112 44 -38 -8 #rect
cr0 f19 @|StepIcon #fIcon
cr0 f20 264 303 296 344 #arcP
cr0 f20 1 264 344 #addKink
cr0 f20 1 0.49201405627653794 0 0 #arcLabel
cr0 f21 actionDecl 'workflow.signal.CreateUserProcess out;
' #txt
cr0 f21 actionTable 'out=in;
' #txt
cr0 f21 actionCode 'ivy.log.debug("setup of office key prepration cancelled for user " + in.user.toString() + ", reason: " + in.quitUserEvent.toString());' #txt
cr0 f21 type workflow.signal.CreateUserProcess #txt
cr0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>log event data</name>
        <nameStyle>14,7
</nameStyle>
    </language>
</elementInfo>
' #txt
cr0 f21 296 546 112 44 -38 -8 #rect
cr0 f21 @|StepIcon #fIcon
cr0 f22 264 527 296 568 #arcP
cr0 f22 1 264 568 #addKink
cr0 f22 1 0.22727272727272738 0 0 #arcLabel
cr0 f23 type workflow.signal.CreateUserProcess #txt
cr0 f23 449 329 30 30 0 15 #rect
cr0 f23 @|EndIcon #fIcon
cr0 f24 expr out #txt
cr0 f24 408 344 449 344 #arcP
cr0 f25 type workflow.signal.CreateUserProcess #txt
cr0 f25 449 553 30 30 0 15 #rect
cr0 f25 @|EndIcon #fIcon
cr0 f26 expr out #txt
cr0 f26 408 568 449 568 #arcP
cr0 f27 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>This examples illustrates use cases for Signals. 
* Several concurrent process are started by a signal.
* Signal Boundary Events are used to interrupt (destroy) User Tasks.

The example consists of two main processes:
The CreateUser process starts concurrent processes with the signal ''user:created''. 
The user object is added as payload to the signal. 

The QuitUser process sends a signal that cancels User Tasks that have become obsolete. 
The sent signal ''admin:quit:xyz'' includes a user key that is used to find 
involved tasks.

Steps to execute the example:
Start at least one CreateUser process. The new user will have an auto created user key. 
After the completion of the CreateUser main process, you start a QuitUser process.
If you enter a user key of one of the previously started CreateUser business cases, any involved 
and not completed User Task is destroyed. 


</name>
        <nameStyle>49,0,7
124,7
1,7
43,0,7
301,7
16,7
1,7
29,0,7
1,7
314,7
1,7
</nameStyle>
    </language>
</elementInfo>
' #txt
cr0 f27 536 50 528 332 -260 -160 #rect
cr0 f27 @|IBIcon #fIcon
cr0 f28 actionDecl 'workflow.signal.CreateUserProcess out;
' #txt
cr0 f28 actionTable 'out.user=signal.getSignalData() as workflow.signal.User;
' #txt
cr0 f28 actionCode 'ivy.case.setBusinessObjectCode(out.user.userKey);
ivy.case.setBusinessObjectName(out.user.name);' #txt
cr0 f28 type workflow.signal.CreateUserProcess #txt
cr0 f28 signalCode user:created #txt
cr0 f28 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>user:created</name>
        <nameStyle>12,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
cr0 f28 81 241 30 30 -34 17 #rect
cr0 f28 @|SignalStartEventIcon #fIcon
cr0 f29 type workflow.signal.CreateUserProcess #txt
cr0 f29 var in2 #txt
cr0 f29 111 256 160 256 #arcP
cr0 f30 actionDecl 'workflow.signal.CreateUserProcess out;
' #txt
cr0 f30 actionTable 'out=in;
' #txt
cr0 f30 actionCode 'import ch.ivyteam.ivy.process.model.value.SignalCode;

ivy.wf.signals().sendSignal(new SignalCode("user:created"), in.user);' #txt
cr0 f30 type workflow.signal.CreateUserProcess #txt
cr0 f30 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Send Signal
''user:created''</name>
        <nameStyle>26
</nameStyle>
    </language>
</elementInfo>
' #txt
cr0 f30 296 74 112 44 -36 -16 #rect
cr0 f30 @|StepIcon #fIcon
cr0 f31 expr out #txt
cr0 f31 248 96 296 96 #arcP
cr0 f32 actionDecl 'workflow.signal.CreateUserProcess out;
' #txt
cr0 f32 actionTable 'out.user=signal.getSignalData() as workflow.signal.User;
' #txt
cr0 f32 actionCode 'ivy.case.setBusinessObjectCode(out.user.userKey);
ivy.case.setBusinessObjectName(out.user.name);' #txt
cr0 f32 type workflow.signal.CreateUserProcess #txt
cr0 f32 signalCode user:created #txt
cr0 f32 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>user:created</name>
        <nameStyle>12,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
cr0 f32 81 465 30 30 -34 17 #rect
cr0 f32 @|SignalStartEventIcon #fIcon
cr0 f33 type workflow.signal.CreateUserProcess #txt
cr0 f33 var in2 #txt
cr0 f33 111 480 160 480 #arcP
cr0 f34 type workflow.signal.CreateUserProcess #txt
cr0 f34 465 81 30 30 0 15 #rect
cr0 f34 @|EndIcon #fIcon
cr0 f35 expr out #txt
cr0 f35 408 96 465 96 #arcP
>Proto cr0 .type workflow.signal.CreateUserProcess #txt
>Proto cr0 .processKind NORMAL #txt
>Proto cr0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel></swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
    <swimlaneSize>192</swimlaneSize>
    <swimlaneSize>224</swimlaneSize>
    <swimlaneSize>224</swimlaneSize>
    <swimlaneColor gradient="false">-1</swimlaneColor>
    <swimlaneColor gradient="false">-1</swimlaneColor>
    <swimlaneColor gradient="false">-1</swimlaneColor>
    <swimlaneType>LANE</swimlaneType>
    <swimlaneType>LANE</swimlaneType>
    <swimlaneType>LANE</swimlaneType>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
</elementInfo>
' #txt
>Proto cr0 0 0 32 24 18 0 #rect
>Proto cr0 @|BIcon #fIcon
cr0 f0 mainOut f4 tail #connect
cr0 f4 head f3 mainIn #connect
cr0 f8 out f7 tail #connect
cr0 f7 head f6 mainIn #connect
cr0 f11 out f14 tail #connect
cr0 f14 head f10 mainIn #connect
cr0 St0 mainOut f20 tail #connect
cr0 f20 head f19 mainIn #connect
cr0 St1 mainOut f22 tail #connect
cr0 f22 head f21 mainIn #connect
cr0 f19 mainOut f24 tail #connect
cr0 f24 head f23 mainIn #connect
cr0 f21 mainOut f26 tail #connect
cr0 f26 head f25 mainIn #connect
cr0 f28 mainOut f29 tail #connect
cr0 f29 head f8 in #connect
cr0 f3 mainOut f31 tail #connect
cr0 f31 head f30 mainIn #connect
cr0 f32 mainOut f33 tail #connect
cr0 f33 head f11 in #connect
cr0 f30 mainOut f35 tail #connect
cr0 f35 head f34 mainIn #connect
