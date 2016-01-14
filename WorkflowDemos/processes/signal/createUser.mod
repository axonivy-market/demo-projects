[Ivy]
[>Created: Thu Jan 14 13:01:47 CET 2016]
151CA0D8CBDD2DEC 3.18 #module
>Proto >Proto Collection #zClass
cr0 createUser Big #zClass
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
>Proto cr0 cr0 createUser #zField
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
cr0 f0 81 49 30 30 -33 17 #rect
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
cr0 f3 168 42 112 44 -38 -8 #rect
cr0 f3 @|RichDialogIcon #fIcon
cr0 f4 expr out #txt
cr0 f4 111 64 168 64 #arcP
cr0 f6 type workflow.signal.CreateUserProcess #txt
cr0 f6 337 161 30 30 0 15 #rect
cr0 f6 @|EndIcon #fIcon
cr0 f8 requestActionDecl '<> param;' #txt
cr0 f8 responseActionDecl 'workflow.signal.CreateUserProcess out;
' #txt
cr0 f8 responseMappingAction 'out=in;
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
cr0 f8 160 154 128 44 -41 -15 #rect
cr0 f8 @|UserTaskIcon #fIcon
cr0 f7 expr data #txt
cr0 f7 outCond ivp=="TaskA.ivp" #txt
cr0 f7 288 176 337 176 #arcP
cr0 f10 type workflow.signal.CreateUserProcess #txt
cr0 f10 337 337 30 30 0 15 #rect
cr0 f10 @|EndIcon #fIcon
cr0 f11 requestActionDecl '<> param;' #txt
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
cr0 f11 160 330 128 44 -41 -15 #rect
cr0 f11 @|UserTaskIcon #fIcon
cr0 f14 expr data #txt
cr0 f14 outCond ivp=="TaskA.ivp" #txt
cr0 f14 288 352 337 352 #arcP
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
cr0 St0 249 193 30 30 11 7 #rect
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
cr0 St1 249 369 30 30 11 9 #rect
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
cr0 f19 296 242 112 44 -38 -8 #rect
cr0 f19 @|StepIcon #fIcon
cr0 f20 264 223 296 264 #arcP
cr0 f20 1 264 264 #addKink
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
cr0 f21 296 418 112 44 -38 -8 #rect
cr0 f21 @|StepIcon #fIcon
cr0 f22 264 399 296 440 #arcP
cr0 f22 1 264 440 #addKink
cr0 f22 1 0.22727272727272738 0 0 #arcLabel
cr0 f23 type workflow.signal.CreateUserProcess #txt
cr0 f23 449 249 30 30 0 15 #rect
cr0 f23 @|EndIcon #fIcon
cr0 f24 expr out #txt
cr0 f24 408 264 449 264 #arcP
cr0 f25 type workflow.signal.CreateUserProcess #txt
cr0 f25 449 425 30 30 0 15 #rect
cr0 f25 @|EndIcon #fIcon
cr0 f26 expr out #txt
cr0 f26 408 440 449 440 #arcP
cr0 f27 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>This examples shows how a Signal Boundary Event can be used to destroy/interrupt created User Tasks.
It illustrates processes that are executed when a new user starts working at the company - respectively when an 
employee leaves the company.

The example consists of two processes, the ''addUser'' and the ''quitUser'' process. The ''addUser'' process creates 
two User Tasks with the signal ''user:created''. 
With the ''quitUser'' process the two created User Tasks get destroyed by using signals, since they became obsolete.

Steps to execute the example:
Lets create some tasks, which listen to signal events:
1. Start the process ''addUser'' and add a User, e.g. with the name ''Meier''.
2. Start the process ''addUser'' again, e.g. with the name ''Müller''.

Now there should exist four tasks. For each user one task to setup the workstation and a second one the perpare the office key. 
Each user has been assigned to an autocreated user-key, it''s the number dispalyed on the end of  the task name 
in square brackets, e.g. "Setup Workstation for Meier [1713]", the "1713" is the generated user-key.

Now, lets destroy the created tasks of a user, by sending a signal
3. Copy or note the number of the employee you want to fire
4. Start the process ''quitUser'', use the copied number as ''User Key'' and add a reason, e.g. ''never appeared''.
5. Proceed the process and follow the simulation.

What happened?
- After the creation of the user a ''user:created'' signal has been sent.
- Three signal starts received the signal and User Tasks were created afterwards.
- At the creation of the two User Tasks ''task to IT'' and ''task to Office Manager'', for each user task, 
   a signal receiver entry was stored in the system database with the configured signal code ''admin:quit:[user-key]'' (e.g. admin:quit:1713). 
- The process step ''send quit signal'' sends a signal with the signal code ''admin:quit:[user-key]'' (e.g. admin:quit:1713). This matches 
   on both Signal Boundary Elements for the task with the coresponding user-key. Therefore the Signal Boundary Element on those 
   two tasks gets executed. 
   This means, that the current waiting task gets destroyed and a new system task is created and executed, to proceed the process of the
   Signal Boundary Event.
- The two tasks for the other user will remain unchanged, since the signal code does not match due to the different user-key.
- The process steps ''log event data'' shows that the process data from the process still exists (e.g. in.user) and that it is possible to
   pass event data from the ''signal send'' process the receiver process.

</name>
        <nameStyle>101,7
417,7
1,7
1,7
29,0,7
199,7
410,7
60,7
110,7
51,7
15,0,7
153,7
1039,7
1,7
</nameStyle>
    </language>
</elementInfo>
' #txt
cr0 f27 536 146 816 556 -403 -277 #rect
cr0 f27 @|IBIcon #fIcon
cr0 f28 actionDecl 'workflow.signal.CreateUserProcess out;
' #txt
cr0 f28 actionTable 'out.user=signal.getSignalData() as workflow.signal.User;
' #txt
cr0 f28 type workflow.signal.CreateUserProcess #txt
cr0 f28 signalCode user:created #txt
cr0 f28 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>user:created</name>
    </language>
</elementInfo>
' #txt
cr0 f28 81 161 30 30 -36 17 #rect
cr0 f28 @|SignalStartEventIcon #fIcon
cr0 f29 type workflow.signal.CreateUserProcess #txt
cr0 f29 var in2 #txt
cr0 f29 111 176 160 176 #arcP
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
        <name>Send Signal ''user:created''</name>
        <nameStyle>26
</nameStyle>
    </language>
</elementInfo>
' #txt
cr0 f30 320 42 160 44 -74 -7 #rect
cr0 f30 @|StepIcon #fIcon
cr0 f31 expr out #txt
cr0 f31 280 64 320 64 #arcP
cr0 f32 actionDecl 'workflow.signal.CreateUserProcess out;
' #txt
cr0 f32 actionTable 'out.user=signal.getSignalData() as workflow.signal.User;
' #txt
cr0 f32 type workflow.signal.CreateUserProcess #txt
cr0 f32 signalCode user:created #txt
cr0 f32 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>user:created</name>
    </language>
</elementInfo>
' #txt
cr0 f32 81 337 30 30 -36 17 #rect
cr0 f32 @|SignalStartEventIcon #fIcon
cr0 f33 type workflow.signal.CreateUserProcess #txt
cr0 f33 var in2 #txt
cr0 f33 111 352 160 352 #arcP
cr0 f34 type workflow.signal.CreateUserProcess #txt
cr0 f34 529 49 30 30 0 15 #rect
cr0 f34 @|EndIcon #fIcon
cr0 f35 expr out #txt
cr0 f35 480 64 529 64 #arcP
>Proto cr0 .type workflow.signal.CreateUserProcess #txt
>Proto cr0 .processKind NORMAL #txt
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
