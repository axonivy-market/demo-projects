[Ivy]
15254CF47A16DEA1 9.4.6 #module
>Proto >Proto Collection #zClass
Pn0 ParkingLotReservation Big #zClass
Pn0 B #cInfo
Pn0 #process
Pn0 @TextInP .colors .colors #zField
Pn0 @TextInP color color #zField
Pn0 @TextInP .type .type #zField
Pn0 @TextInP .processKind .processKind #zField
Pn0 @AnnotationInP-0n ai ai #zField
Pn0 @MessageFlowInP-0n messageIn messageIn #zField
Pn0 @MessageFlowOutP-0n messageOut messageOut #zField
Pn0 @TextInP .xml .xml #zField
Pn0 @TextInP .responsibility .responsibility #zField
Pn0 @StartRequest f0 '' #zField
Pn0 @EndTask f1 '' #zField
Pn0 @UserDialog f3 '' #zField
Pn0 @PushWFArc f4 '' #zField
Pn0 @EMail f5 '' #zField
Pn0 @PushWFArc f6 '' #zField
Pn0 @PushWFArc f2 '' #zField
Pn0 @InfoButton f7 '' #zField
Pn0 @AnnotationArc f8 '' #zField
Pn0 @InfoButton f9 '' #zField
>Proto Pn0 Pn0 ParkingLotReservation #zField
Pn0 f0 outLink start.ivp #txt
Pn0 f0 inParamDecl '<workflow.trigger.NewEmployeeData newEmployeeData> param;' #txt
Pn0 f0 inParamTable 'out=param.newEmployeeData;
' #txt
Pn0 f0 requestEnabled false #txt
Pn0 f0 triggerEnabled true #txt
Pn0 f0 callSignature start(workflow.trigger.NewEmployeeData) #txt
Pn0 f0 persist false #txt
Pn0 f0 taskData 'TaskTriggered.CATEGORY=Assign/ParkingLot
TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.NAM=<%\=ivy.cms.co("/TaskDescriptions/reserveParkingLotFor")%> <%\=param.newEmployeeData.name%>
TaskTriggered.PRI=2
TaskTriggered.ROL=Facility Manager
TaskTriggered.TYPE=0' #txt
Pn0 f0 caseData case.category=Facility/ParkingLot/Reservation #txt
Pn0 f0 showInStartList true #txt
Pn0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(NewEmployeeData)</name>
    </language>
</elementInfo>
' #txt
Pn0 f0 @C|.responsibility Everybody #txt
Pn0 f0 97 249 30 30 -69 17 #rect
Pn0 f1 553 249 30 30 0 15 #rect
Pn0 f3 dialogId workflow.trigger.ReserveParkingLot #txt
Pn0 f3 startMethod start(workflow.trigger.NewEmployeeData) #txt
Pn0 f3 requestActionDecl '<workflow.trigger.NewEmployeeData employee> param;' #txt
Pn0 f3 requestMappingAction 'param.employee=in;
' #txt
Pn0 f3 responseActionDecl 'workflow.trigger.NewEmployeeData out;
' #txt
Pn0 f3 responseMappingAction 'out=result.employee;
' #txt
Pn0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Reserve parking lot</name>
    </language>
</elementInfo>
' #txt
Pn0 f3 184 242 112 44 -53 -8 #rect
Pn0 f4 expr out #txt
Pn0 f4 127 264 184 264 #arcP
Pn0 f5 beanConfig '"{/emailSubject ""<%=ivy.cms.co(\\""/Emails/parkingLotReservationHeader\\"")%>""/emailFrom ""<%=ivy.cms.co(\\""/Emails/senderMail\\"")%>""/emailReplyTo """"/emailTo ""<%=in.email%>""/emailCC """"/emailBCC """"/exceptionMissingEmailAttachments ""false""/emailMessage "" <html> \\n\\t<style type=\\""text/css\\"">\\n     \\t\\t<%=ivy.cms.co(\\""/Styles/Classic\\"")%>\\n\\t</style>\\n\\t\\n\\t<%=ivy.cms.co(\\""/Images/Logo\\"")%>\\n\\n\\t<%=ivy.cms.co(\\""/Emails/confirmParkingLot\\"")%>\\n</html>""/emailAttachments * }"' #txt
Pn0 f5 type workflow.trigger.NewEmployeeData #txt
Pn0 f5 timeout 0 #txt
Pn0 f5 exceptionHandler '>> Ignore Exception' #txt
Pn0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Inform employee</name>
    </language>
</elementInfo>
' #txt
Pn0 f5 376 242 112 44 -46 -8 #rect
Pn0 f6 expr out #txt
Pn0 f6 296 264 376 264 #arcP
Pn0 f2 expr out #txt
Pn0 f2 488 264 553 264 #arcP
Pn0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>This Request Start is defined to be 
startable by a trigger step.</name>
    </language>
</elementInfo>
' #txt
Pn0 f7 104 130 208 44 -96 -16 #rect
Pn0 f8 208 174 110 249 #arcP
Pn0 f8 0 0.5346056776585273 0 0 #arcLabel
Pn0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>This process can be started by a trigger step. It is part of the Trigger demo case.</name>
    </language>
</elementInfo>
' #txt
Pn0 f9 72 33 448 30 -217 -8 #rect
>Proto Pn0 .type workflow.trigger.NewEmployeeData #txt
>Proto Pn0 .processKind NORMAL #txt
>Proto Pn0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Parking Lot Reservation</swimlaneLabel>
        <swimlaneLabel>Facility Manager</swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
    <swimlaneSize>248</swimlaneSize>
    <swimlaneSize>248</swimlaneSize>
    <swimlaneColor gradient="false">687865804</swimlaneColor>
    <swimlaneColor gradient="false">16777215</swimlaneColor>
    <swimlaneType>POOL</swimlaneType>
    <swimlaneType>LANE_IN_POOL</swimlaneType>
    <swimlaneSpaceBefore>96</swimlaneSpaceBefore>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
</elementInfo>
' #txt
>Proto Pn0 0 0 32 24 18 0 #rect
>Proto Pn0 @|BIcon #fIcon
Pn0 f0 mainOut f4 tail #connect
Pn0 f4 head f3 mainIn #connect
Pn0 f3 mainOut f6 tail #connect
Pn0 f6 head f5 mainIn #connect
Pn0 f5 mainOut f2 tail #connect
Pn0 f2 head f1 mainIn #connect
Pn0 f7 ao f8 tail #connect
Pn0 f8 head f0 @CG|ai #connect
