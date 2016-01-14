[Ivy]
[>Created: Thu Jan 14 12:59:01 CET 2016]
1523FF963044280C 3.18 #module
>Proto >Proto Collection #zClass
ft0 facilityManagement Big #zClass
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
>Proto ft0 ft0 facilityManagement #zField
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
ft0 f19 312 202 112 44 -38 -8 #rect
ft0 f19 @|StepIcon #fIcon
ft0 f6 type workflow.signal.FacilityManagementData #txt
ft0 f6 337 113 30 30 0 15 #rect
ft0 f6 @|EndIcon #fIcon
ft0 f28 actionDecl 'workflow.signal.FacilityManagementData out;
' #txt
ft0 f28 actionTable 'out.user=signal.getSignalData() as workflow.signal.User;
' #txt
ft0 f28 type workflow.signal.FacilityManagementData #txt
ft0 f28 signalCode user:created #txt
ft0 f28 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>user:created</name>
    </language>
</elementInfo>
' #txt
ft0 f28 81 113 30 30 -36 17 #rect
ft0 f28 @|SignalStartEventIcon #fIcon
ft0 f8 requestActionDecl '<> param;' #txt
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
ft0 f8 152 106 144 44 -53 -15 #rect
ft0 f8 @|UserTaskIcon #fIcon
ft0 f23 type workflow.signal.FacilityManagementData #txt
ft0 f23 465 209 30 30 0 15 #rect
ft0 f23 @|EndIcon #fIcon
ft0 f7 expr data #txt
ft0 f7 outCond ivp=="TaskA.ivp" #txt
ft0 f7 296 128 337 128 #arcP
ft0 f20 expr out #txt
ft0 f20 272 175 312 224 #arcP
ft0 f20 1 272 224 #addKink
ft0 f20 1 0.7005862508301713 0 0 #arcLabel
ft0 f24 expr out #txt
ft0 f24 424 224 465 224 #arcP
ft0 f29 expr out #txt
ft0 f29 type workflow.signal.FacilityManagementData #txt
ft0 f29 var in2 #txt
ft0 f29 111 128 152 128 #arcP
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
ft0 St0 257 145 30 30 15 6 #rect
ft0 St0 @|SignalBoundaryEventIcon #fIcon
ft0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>A Signal Start can also reside in another process or project (even an without a dependency).
As long as the the projects are deployed into the same application.</name>
        <nameStyle>2
12,0
146
</nameStyle>
    </language>
</elementInfo>
' #txt
ft0 f0 160 42 544 44 -269 -15 #rect
ft0 f0 @|IBIcon #fIcon
ft0 f1 160 64 106 117 #arcP
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
