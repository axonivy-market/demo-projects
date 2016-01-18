[Ivy]
[>Created: Mon Jan 18 14:08:02 CET 2016]
15254CF1CE56AE72 3.18 #module
>Proto >Proto Collection #zClass
Tr0 NewEmployee Big #zClass
Tr0 B #cInfo
Tr0 #process
Tr0 @TextInP .resExport .resExport #zField
Tr0 @TextInP .type .type #zField
Tr0 @TextInP .processKind .processKind #zField
Tr0 @AnnotationInP-0n ai ai #zField
Tr0 @MessageFlowInP-0n messageIn messageIn #zField
Tr0 @MessageFlowOutP-0n messageOut messageOut #zField
Tr0 @TextInP .xml .xml #zField
Tr0 @TextInP .responsibility .responsibility #zField
Tr0 @StartRequest f0 '' #zField
Tr0 @RichDialog f5 '' #zField
Tr0 @EndTask f1 '' #zField
Tr0 @Alternative f7 '' #zField
Tr0 @EMail f10 '' #zField
Tr0 @PushWFArc f2 '' #zField
Tr0 @PushWFArc f12 '' #zField
Tr0 @PushWFArc f6 '' #zField
Tr0 @PushWFArc f8 '' #zField
Tr0 @InfoButton f9 '' #zField
Tr0 @Trigger f13 '' #zField
Tr0 @PushWFArc f14 '' #zField
Tr0 @PushWFArc f4 '' #zField
>Proto Tr0 Tr0 NewEmployee #zField
Tr0 f0 outLink start.ivp #txt
Tr0 f0 type workflow.trigger.NewEmployeeData #txt
Tr0 f0 inParamDecl '<> param;' #txt
Tr0 f0 actionDecl 'workflow.trigger.NewEmployeeData out;
' #txt
Tr0 f0 guid 1501DB8A8DDD836E #txt
Tr0 f0 requestEnabled true #txt
Tr0 f0 triggerEnabled false #txt
Tr0 f0 callSignature start() #txt
Tr0 f0 persist false #txt
Tr0 f0 startName 'New Employee (Trigger example)' #txt
Tr0 f0 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
Tr0 f0 showInStartList 1 #txt
Tr0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Tr0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Tr0 f0 @C|.responsibility Everybody #txt
Tr0 f0 73 169 30 30 -21 17 #rect
Tr0 f0 @|StartRequestIcon #fIcon
Tr0 f5 targetWindow NEW:card: #txt
Tr0 f5 targetDisplay TOP #txt
Tr0 f5 richDialogId workflow.trigger.EnterNewEmployeeData #txt
Tr0 f5 startMethod start(workflow.trigger.NewEmployeeData) #txt
Tr0 f5 type workflow.trigger.NewEmployeeData #txt
Tr0 f5 requestActionDecl '<workflow.trigger.NewEmployeeData newEmployeeData> param;' #txt
Tr0 f5 responseActionDecl 'workflow.trigger.NewEmployeeData out;
' #txt
Tr0 f5 responseMappingAction 'out=result.newEmployeeData;
' #txt
Tr0 f5 windowConfiguration '* ' #txt
Tr0 f5 isAsynch false #txt
Tr0 f5 isInnerRd false #txt
Tr0 f5 userContext '* ' #txt
Tr0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Enter new employees
personal data</name>
        <nameStyle>33,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Tr0 f5 176 162 144 44 -53 -16 #rect
Tr0 f5 @|RichDialogIcon #fIcon
Tr0 f1 type workflow.trigger.NewEmployeeData #txt
Tr0 f1 801 169 30 30 0 15 #rect
Tr0 f1 @|EndIcon #fIcon
Tr0 f7 type workflow.trigger.NewEmployeeData #txt
Tr0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Needs parking lot?</name>
        <nameStyle>18,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Tr0 f7 384 168 32 32 -52 18 #rect
Tr0 f7 @|AlternativeIcon #fIcon
Tr0 f10 beanConfig '"{/emailSubject """"/emailFrom """"/emailReplyTo """"/emailTo """"/emailCC """"/emailBCC """"/exceptionMissingEmailAttachments ""false""/emailMessage """"/emailAttachments * }"' #txt
Tr0 f10 type workflow.trigger.NewEmployeeData #txt
Tr0 f10 timeout 0 #txt
Tr0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Send welcome mail</name>
        <nameStyle>17,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Tr0 f10 624 162 128 44 -54 -8 #rect
Tr0 f10 @|EMailIcon #fIcon
Tr0 f2 expr out #txt
Tr0 f2 752 184 801 184 #arcP
Tr0 f12 expr in #txt
Tr0 f12 400 168 688 162 #arcP
Tr0 f12 1 400 144 #addKink
Tr0 f12 2 688 144 #addKink
Tr0 f12 1 0.5020161290322581 0 0 #arcLabel
Tr0 f6 expr out #txt
Tr0 f6 103 184 176 184 #arcP
Tr0 f8 expr out #txt
Tr0 f8 320 184 384 184 #arcP
Tr0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>This example shows the use of a trigger step.
If a new employee needs a parking lot the Parking Lot Reservation process is started by a trigger.</name>
        <nameStyle>45,7
1,7
97,7
1,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Tr0 f9 64 58 544 44 -264 -16 #rect
Tr0 f9 @|IBIcon #fIcon
Tr0 f13 type workflow.trigger.NewEmployeeData #txt
Tr0 f13 processCall Trigger/ParkingLotReservation:start(workflow.trigger.NewEmployeeData) #txt
Tr0 f13 doCall true #txt
Tr0 f13 requestActionDecl '<workflow.trigger.NewEmployeeData newEmployeeData> param;
' #txt
Tr0 f13 requestMappingAction 'param.newEmployeeData=in;
' #txt
Tr0 f13 responseActionDecl 'workflow.trigger.NewEmployeeData out;
' #txt
Tr0 f13 responseMappingAction 'out=in;
' #txt
Tr0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Reserve parking lot</name>
        <nameStyle>19,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Tr0 f13 480 162 112 44 -53 -8 #rect
Tr0 f13 @|TriggerIcon #fIcon
Tr0 f14 expr in #txt
Tr0 f14 outCond in.needsParkingLot #txt
Tr0 f14 416 184 480 184 #arcP
Tr0 f4 expr out #txt
Tr0 f4 592 184 624 184 #arcP
>Proto Tr0 .type workflow.trigger.NewEmployeeData #txt
>Proto Tr0 .processKind NORMAL #txt
>Proto Tr0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>New Employee</swimlaneLabel>
        <swimlaneLabel>HR Manager</swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
    <swimlaneSize>224</swimlaneSize>
    <swimlaneSize>224</swimlaneSize>
    <swimlaneColor gradient="false">-52</swimlaneColor>
    <swimlaneColor gradient="false">-52</swimlaneColor>
    <swimlaneType>POOL</swimlaneType>
    <swimlaneType>LANE_IN_POOL</swimlaneType>
    <swimlaneSpaceBefore>32</swimlaneSpaceBefore>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
</elementInfo>
' #txt
>Proto Tr0 0 0 32 24 18 0 #rect
>Proto Tr0 @|BIcon #fIcon
Tr0 f10 mainOut f2 tail #connect
Tr0 f2 head f1 mainIn #connect
Tr0 f12 head f10 mainIn #connect
Tr0 f0 mainOut f6 tail #connect
Tr0 f6 head f5 mainIn #connect
Tr0 f5 mainOut f8 tail #connect
Tr0 f8 head f7 in #connect
Tr0 f7 out f14 tail #connect
Tr0 f14 head f13 mainIn #connect
Tr0 f7 out f12 tail #connect
Tr0 f13 mainOut f4 tail #connect
Tr0 f4 head f10 mainIn #connect
