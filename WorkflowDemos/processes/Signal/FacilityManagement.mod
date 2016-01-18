[Ivy]
[>Created: Mon Jan 18 16:48:03 CET 2016]
1523FF963044280C 3.18 #module
>Proto >Proto Collection #zClass
ft0 FacilityManagement Big #zClass
ft0 B #cInfo
ft0 #process
ft0 @TextInP .resExport .resExport #zField
ft0 @TextInP .type .type #zField
ft0 @TextInP .processKind .processKind #zField
ft0 @AnnotationInP-0n ai ai #zField
ft0 @MessageFlowInP-0n messageIn messageIn #zField
ft0 @MessageFlowOutP-0n messageOut messageOut #zField
ft0 @TextInP .xml .xml #zField
ft0 @TextInP .responsibility .responsibility #zField
ft0 @GridStep f19 '' #zField
ft0 @EndTask f6 '' #zField
ft0 @SignalStartEvent f28 '' #zField
ft0 @UserTask f8 '' #zField
ft0 @EndTask f23 '' #zField
ft0 @PushWFArc f7 '' #zField
ft0 @PushWFArc f20 '' #zField
ft0 @PushWFArc f24 '' #zField
ft0 @TkArc f29 '' #zField
ft0 @SignalBoundaryEvent St0 SignalBoundaryEvent #zField
ft0 @InfoButton f0 '' #zField
ft0 @AnnotationArc f1 '' #zField
ft0 @InfoButton f2 '' #zField
>Proto ft0 ft0 FacilityManagement #zField
ft0 f19 actionDecl 'workflow.signal.FacilityManagementData out;
' #txt
ft0 f19 actionTable 'out=in;
' #txt
ft0 f19 actionCode 'ivy.log.debug("delivery of keycard cancelled for user " + in.user.toString() + ", reason: " + in.quitUserEvent.toString());' #txt
ft0 f19 type workflow.signal.FacilityManagementData #txt
ft0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>log event data</name>
        <nameStyle>14,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ft0 f19 312 298 112 44 -38 -8 #rect
ft0 f19 @|StepIcon #fIcon
ft0 f6 type workflow.signal.FacilityManagementData #txt
ft0 f6 337 209 30 30 0 15 #rect
ft0 f6 @|EndIcon #fIcon
ft0 f28 actionDecl 'workflow.signal.FacilityManagementData out;
' #txt
ft0 f28 actionTable 'out.user=signal.getSignalData() as workflow.signal.User;
' #txt
ft0 f28 actionCode 'ivy.case.setBusinessObjectCode(out.user.userKey);
ivy.case.setBusinessObjectName(out.user.name);' #txt
ft0 f28 type workflow.signal.FacilityManagementData #txt
ft0 f28 signalCode user:created #txt
ft0 f28 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>user:created</name>
        <nameStyle>12,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ft0 f28 81 209 30 30 -34 17 #rect
ft0 f28 @|SignalStartEventIcon #fIcon
ft0 f8 richDialogId workflow.signal.TaskForm #txt
ft0 f8 startMethod start(workflow.signal.User) #txt
ft0 f8 requestActionDecl '<workflow.signal.User user> param;' #txt
ft0 f8 requestMappingAction 'param.user=in.user;
' #txt
ft0 f8 responseActionDecl 'workflow.signal.FacilityManagementData out;
' #txt
ft0 f8 responseMappingAction 'out=in;
' #txt
ft0 f8 outLinks "TaskA.ivp" #txt
ft0 f8 taskData 'TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.NAM=Deliver keycard for <%\=in.user.name%> [<%\=in.user.userKey%>]
TaskA.PRI=2
TaskA.ROL=Everybody
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=0' #txt
ft0 f8 type workflow.signal.FacilityManagementData #txt
ft0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Task for
Facility Management</name>
        <nameStyle>28,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ft0 f8 152 202 144 44 -53 -15 #rect
ft0 f8 @|UserTaskIcon #fIcon
ft0 f23 type workflow.signal.FacilityManagementData #txt
ft0 f23 465 305 30 30 0 15 #rect
ft0 f23 @|EndIcon #fIcon
ft0 f7 expr data #txt
ft0 f7 outCond ivp=="TaskA.ivp" #txt
ft0 f7 296 224 337 224 #arcP
ft0 f20 expr out #txt
ft0 f20 272 271 312 320 #arcP
ft0 f20 1 272 320 #addKink
ft0 f20 1 0.7005862508301713 0 0 #arcLabel
ft0 f24 expr out #txt
ft0 f24 424 320 465 320 #arcP
ft0 f29 expr out #txt
ft0 f29 type workflow.signal.FacilityManagementData #txt
ft0 f29 var in2 #txt
ft0 f29 111 224 152 224 #arcP
ft0 St0 actionDecl 'workflow.signal.FacilityManagementData out;
' #txt
ft0 St0 actionTable 'out=in;
out.quitUserEvent=signal.getSignalData() as workflow.signal.QuitUserEvent;
' #txt
ft0 St0 actionCode 'ivy.task.setName("CANCEL TASK: " + ivy.task.getName());' #txt
ft0 St0 type workflow.signal.FacilityManagementData #txt
ft0 St0 signalCode admin:quit:<%=in.user.userKey%> #txt
ft0 St0 attachedToRef 1523FF963044280C-f8 #txt
ft0 St0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>admin:quit:[userKey]</name>
        <nameStyle>20,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ft0 St0 257 241 30 30 15 6 #rect
ft0 St0 @|SignalBoundaryEventIcon #fIcon
ft0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>A Signal Start listening to a certain signal can also reside in another process or project.
As long as the the projects are deployed into the same application.</name>
        <nameStyle>2
12,0
145
</nameStyle>
    </language>
</elementInfo>
' #txt
ft0 f0 120 130 496 44 -238 -16 #rect
ft0 f0 @|IBIcon #fIcon
ft0 f1 120 152 100 209 #arcP
ft0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>This process is part of the signal demo process. It is stared by a signal sent from the CreateUser process. </name>
        <nameStyle>108,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ft0 f2 56 49 592 30 -291 -8 #rect
ft0 f2 @|IBIcon #fIcon
>Proto ft0 .type workflow.signal.FacilityManagementData #txt
>Proto ft0 .processKind NORMAL #txt
>Proto ft0 0 0 32 24 18 0 #rect
>Proto ft0 @|BIcon #fIcon
ft0 f8 out f7 tail #connect
ft0 f7 head f6 mainIn #connect
ft0 St0 mainOut f20 tail #connect
ft0 f20 head f19 mainIn #connect
ft0 f19 mainOut f24 tail #connect
ft0 f24 head f23 mainIn #connect
ft0 f28 mainOut f29 tail #connect
ft0 f29 head f8 in #connect
ft0 f0 ao f1 tail #connect
ft0 f1 head f28 @CG|ai #connect
