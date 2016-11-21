[Ivy]
[>Created: Mon Nov 21 12:38:29 CET 2016]
1523FF963044280C 3.18 #module
>Proto >Proto Collection #zClass
ft0 KeyCardDelivery Big #zClass
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
>Proto ft0 ft0 KeyCardDelivery #zField
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
ft0 f19 336 274 112 44 -38 -8 #rect
ft0 f19 @|StepIcon #fIcon
ft0 f6 type workflow.signal.FacilityManagementData #txt
ft0 f6 361 185 30 30 0 15 #rect
ft0 f6 @|EndIcon #fIcon
ft0 f28 actionDecl 'workflow.signal.FacilityManagementData out;
' #txt
ft0 f28 actionTable 'out.user=signal.getSignalData() as workflow.signal.User;
' #txt
ft0 f28 actionCode 'ivy.case.setBusinessObjectCode(out.user.userKey);
ivy.case.setBusinessObjectName(out.user.name);' #txt
ft0 f28 type workflow.signal.FacilityManagementData #txt
ft0 f28 signalCode user:createdV2 #txt
ft0 f28 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>user:created </name>
        <nameStyle>13,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ft0 f28 105 185 30 30 -36 17 #rect
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
ft0 f8 caseData case.category=Facility/ParkingLot/Reservation #txt
ft0 f8 taskData 'TaskA.CATEGORY=Assign/ParkingLot
TaskA.DESC=<%\=ivy.cms.co("/TaskDescriptions/DeliverKeyCardDesc")%><%\=in.user.name%> [<%\=in.user.userKey%>]
TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.NAM=<%\=ivy.cms.co("/TaskDescriptions/deliverKeyCardFor")%> <%\=in.user.name%> [<%\=in.user.userKey%>]
TaskA.PRI=2
TaskA.ROL=Facility Manager
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=0' #txt
ft0 f8 type workflow.signal.FacilityManagementData #txt
ft0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Deliver Key Card</name>
        <nameStyle>16,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ft0 f8 192 178 112 44 -45 -8 #rect
ft0 f8 @|UserTaskIcon #fIcon
ft0 f23 type workflow.signal.FacilityManagementData #txt
ft0 f23 489 281 30 30 0 15 #rect
ft0 f23 @|EndIcon #fIcon
ft0 f7 expr data #txt
ft0 f7 outCond ivp=="TaskA.ivp" #txt
ft0 f7 304 200 361 200 #arcP
ft0 f20 expr out #txt
ft0 f20 280 247 336 296 #arcP
ft0 f20 1 280 296 #addKink
ft0 f20 1 0.7005862508301713 0 0 #arcLabel
ft0 f24 expr out #txt
ft0 f24 448 296 489 296 #arcP
ft0 f29 expr out #txt
ft0 f29 type workflow.signal.FacilityManagementData #txt
ft0 f29 var in2 #txt
ft0 f29 135 200 192 200 #arcP
ft0 St0 actionDecl 'workflow.signal.FacilityManagementData out;
' #txt
ft0 St0 actionTable 'out=in;
out.quitUserEvent=signal.getSignalData() as workflow.signal.QuitUserEvent;
' #txt
ft0 St0 actionCode 'ivy.task.setName("CANCEL TASK: " + ivy.task.getName());' #txt
ft0 St0 type workflow.signal.FacilityManagementData #txt
ft0 St0 signalCode admin:quitV2:<%=in.user.userKey%> #txt
ft0 St0 attachedToRef 1523FF963044280C-f8 #txt
ft0 St0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>admin:quit:[userKey] </name>
        <nameStyle>21,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ft0 St0 265 217 30 30 15 6 #rect
ft0 St0 @|SignalBoundaryEventIcon #fIcon
ft0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>A Signal Start listening to a certain signal can also reside in another process or project.
As long as the projects are deployed into the same application.</name>
        <nameStyle>2,7
12,0,7
141,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ft0 f0 144 114 496 44 -238 -16 #rect
ft0 f0 @|IBIcon #fIcon
ft0 f1 144 136 125 185 #arcP
ft0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>This process is part of the signal demo process. It is started by a signal sent from the CreateUser process. </name>
        <nameStyle>109,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ft0 f2 60 33 592 30 -293 -8 #rect
ft0 f2 @|IBIcon #fIcon
>Proto ft0 .type workflow.signal.FacilityManagementData #txt
>Proto ft0 .processKind NORMAL #txt
>Proto ft0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Parking lot reservation</swimlaneLabel>
        <swimlaneLabel>Facility Manager</swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
    <swimlaneSize>240</swimlaneSize>
    <swimlaneSize>240</swimlaneSize>
    <swimlaneColor gradient="false">1694498764</swimlaneColor>
    <swimlaneColor gradient="false">1694498764</swimlaneColor>
    <swimlaneType>POOL</swimlaneType>
    <swimlaneType>LANE_IN_POOL</swimlaneType>
    <swimlaneSpaceBefore>96</swimlaneSpaceBefore>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
</elementInfo>
' #txt
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
