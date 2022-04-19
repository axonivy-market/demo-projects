[Ivy]
15254CF1CE56AE72 9.4.8 #module
>Proto >Proto Collection #zClass
Tr0 NewEmployee Big #zClass
Tr0 B #cInfo
Tr0 #process
Tr0 @TextInP .colors .colors #zField
Tr0 @TextInP color color #zField
Tr0 @TextInP .type .type #zField
Tr0 @TextInP .processKind .processKind #zField
Tr0 @AnnotationInP-0n ai ai #zField
Tr0 @MessageFlowInP-0n messageIn messageIn #zField
Tr0 @MessageFlowOutP-0n messageOut messageOut #zField
Tr0 @TextInP .xml .xml #zField
Tr0 @TextInP .responsibility .responsibility #zField
Tr0 @StartRequest f0 '' #zField
Tr0 @UserDialog f5 '' #zField
Tr0 @EndTask f1 '' #zField
Tr0 @Alternative f7 '' #zField
Tr0 @EMail f10 '' #zField
Tr0 @PushWFArc f2 '' #zField
Tr0 @PushWFArc f12 '' #zField
Tr0 @PushWFArc f6 '' #zField
Tr0 @InfoButton f9 '' #zField
Tr0 @Trigger f13 '' #zField
Tr0 @PushWFArc f14 '' #zField
Tr0 @PushWFArc f4 '' #zField
Tr0 @GridStep f3 '' #zField
Tr0 @PushWFArc f11 '' #zField
Tr0 @PushWFArc f8 '' #zField
>Proto Tr0 Tr0 NewEmployee #zField
Tr0 f0 outLink start.ivp #txt
Tr0 f0 inParamDecl '<> param;' #txt
Tr0 f0 requestEnabled true #txt
Tr0 f0 triggerEnabled false #txt
Tr0 f0 callSignature start() #txt
Tr0 f0 persist false #txt
Tr0 f0 startName '4: <%=ivy.cms.co("/ProcessDescriptions/newEmployee")%> (<%=ivy.cms.co("/ProcessDescriptions/triggerExample")%>)' #txt
Tr0 f0 startDescription <%=ivy.cms.co("/ProcessDescriptions/triggerDescription")%> #txt
Tr0 f0 startCategory trigger #txt
Tr0 f0 startCustomFields 'cssIcon=fa fa-bolt' #txt
Tr0 f0 taskData 'TaskTriggered.CATEGORY=Input/Employee
TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Tr0 f0 caseData case.category=HR/Employee/Entry #txt
Tr0 f0 showInStartList true #txt
Tr0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
Tr0 f0 @C|.responsibility 'HR Manager' #txt
Tr0 f0 73 209 30 30 -21 17 #rect
Tr0 f5 dialogId workflow.trigger.CreateNewEmployee #txt
Tr0 f5 startMethod start(workflow.trigger.NewEmployeeData) #txt
Tr0 f5 requestActionDecl '<workflow.trigger.NewEmployeeData newEmployeeData> param;' #txt
Tr0 f5 responseActionDecl 'workflow.trigger.NewEmployeeData out;
' #txt
Tr0 f5 responseMappingAction 'out=result.newEmployeeData;
' #txt
Tr0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Enter new employees
personal data</name>
    </language>
</elementInfo>
' #txt
Tr0 f5 176 202 144 44 -53 -16 #rect
Tr0 f1 977 209 30 30 0 15 #rect
Tr0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Needs parking lot?</name>
    </language>
</elementInfo>
' #txt
Tr0 f7 560 208 32 32 -52 18 #rect
Tr0 f10 beanConfig '"{/emailSubject ""<%=ivy.cms.co(\\""/Emails/welcomeHeader\\"")%> <%=in.name%>!""/emailFrom ""<%=ivy.cms.co(\\""/Emails/senderMail\\"")%>""/emailReplyTo """"/emailTo ""<%=in.email%>""/emailCC """"/emailBCC """"/exceptionMissingEmailAttachments ""false""/emailMessage "" <html> \\n\\t<style type=\\""text/css\\"">\\n     \\t\\t<%=ivy.cms.co(\\""/Styles/Classic\\"")%>\\n\\t</style>\\n\\t\\n\\t<%=ivy.cms.co(\\""/Images/Logo\\"")%>\\n\\t\\n\\t<%=ivy.cms.co(\\""/Emails/welcomeMail\\"")%>\\n</html>""/emailAttachments * }"' #txt
Tr0 f10 type workflow.trigger.NewEmployeeData #txt
Tr0 f10 timeout 0 #txt
Tr0 f10 exceptionHandler '>> Ignore Exception' #txt
Tr0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Send welcome mail</name>
    </language>
</elementInfo>
' #txt
Tr0 f10 800 202 128 44 -54 -8 #rect
Tr0 f2 expr out #txt
Tr0 f2 928 224 977 224 #arcP
Tr0 f12 expr in #txt
Tr0 f12 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>No</name>
        <nameStyle>2,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Tr0 f12 576 208 864 202 #arcP
Tr0 f12 1 576 160 #addKink
Tr0 f12 2 864 160 #addKink
Tr0 f12 1 0.3888888888888889 0 -9 #arcLabel
Tr0 f6 expr out #txt
Tr0 f6 103 224 176 224 #arcP
Tr0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>This example shows the use of a trigger step.
If a new employee needs a parking lot the Parking Lot Reservation process is started by a trigger.</name>
    </language>
</elementInfo>
' #txt
Tr0 f9 64 26 544 44 -264 -16 #rect
Tr0 f13 processCall Trigger/ParkingLotReservation:start(workflow.trigger.NewEmployeeData) #txt
Tr0 f13 requestActionDecl '<workflow.trigger.NewEmployeeData newEmployeeData> param;' #txt
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
    </language>
</elementInfo>
' #txt
Tr0 f13 656 202 112 44 -53 -8 #rect
Tr0 f14 expr in #txt
Tr0 f14 outCond in.needsParkingLot #txt
Tr0 f14 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Yes</name>
        <nameStyle>3,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Tr0 f14 592 224 656 224 #arcP
Tr0 f14 0 0.46875 0 -6 #arcLabel
Tr0 f4 expr out #txt
Tr0 f4 768 224 800 224 #arcP
Tr0 f3 actionTable 'out=in;
' #txt
Tr0 f3 actionCode 'ivy.case.getBusinessCase().setName("4: New Employee: " + in.name);' #txt
Tr0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Set Business Case Name</name>
    </language>
</elementInfo>
' #txt
Tr0 f3 352 200 160 48 -69 -7 #rect
Tr0 f11 expr out #txt
Tr0 f11 320 224 352 224 #arcP
Tr0 f8 expr out #txt
Tr0 f8 512 224 560 224 #arcP
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
    <swimlaneColor gradient="false">687865804</swimlaneColor>
    <swimlaneColor gradient="false">687865804</swimlaneColor>
    <swimlaneType>POOL</swimlaneType>
    <swimlaneType>LANE_IN_POOL</swimlaneType>
    <swimlaneSpaceBefore>96</swimlaneSpaceBefore>
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
Tr0 f7 out f14 tail #connect
Tr0 f14 head f13 mainIn #connect
Tr0 f7 out f12 tail #connect
Tr0 f13 mainOut f4 tail #connect
Tr0 f4 head f10 mainIn #connect
Tr0 f5 mainOut f11 tail #connect
Tr0 f11 head f3 mainIn #connect
Tr0 f3 mainOut f8 tail #connect
Tr0 f8 head f7 in #connect
