[Ivy]
14ED397D47F3083D 9.4.6 #module
>Proto >Proto Collection #zClass
al0 Approval Big #zClass
al0 B #cInfo
al0 #process
al0 @TextInP .colors .colors #zField
al0 @TextInP color color #zField
al0 @TextInP .type .type #zField
al0 @TextInP .processKind .processKind #zField
al0 @AnnotationInP-0n ai ai #zField
al0 @MessageFlowInP-0n messageIn messageIn #zField
al0 @MessageFlowOutP-0n messageOut messageOut #zField
al0 @TextInP .xml .xml #zField
al0 @TextInP .responsibility .responsibility #zField
al0 @StartRequest f0 '' #zField
al0 @EndTask f1 '' #zField
al0 @EndTask f6 '' #zField
al0 @InfoButton f16 '' #zField
al0 @UserTask f3 '' #zField
al0 @TkArc f9 '' #zField
al0 @UserTask f11 '' #zField
al0 @UserTask f12 '' #zField
al0 @TkArc f13 '' #zField
al0 @ErrorBoundaryEvent Et0 ErrorBoundaryEvent #zField
al0 @TkArc f14 '' #zField
al0 @PushWFArc f15 '' #zField
al0 @UserTask f17 '' #zField
al0 @PushWFArc f10 '' #zField
al0 @TkArc f19 '' #zField
>Proto al0 al0 Approval #zField
al0 f0 outLink start.ivp #txt
al0 f0 inParamDecl '<> param;' #txt
al0 f0 requestEnabled true #txt
al0 f0 triggerEnabled false #txt
al0 f0 callSignature start() #txt
al0 f0 persist false #txt
al0 f0 startName 'Business Error initiates an alternative flow' #txt
al0 f0 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
al0 f0 wfuser 1 #txt
al0 f0 showInStartList true #txt
al0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
al0 f0 @C|.responsibility Team #txt
al0 f0 81 177 30 30 -21 17 #rect
al0 f1 753 241 30 30 0 15 #rect
al0 f6 753 177 30 30 0 15 #rect
al0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Demonstrates the handling of a Business Error
The error `approval:declined ` initiates an alternative flow</name>
    </language>
</elementInfo>
' #txt
al0 f16 @C|color NodeStyle3 #txt
al0 f16 80 34 336 44 -163 -19 #rect
al0 f3 dialogId error.handling.demo.approval.RequestForm #txt
al0 f3 startMethod start() #txt
al0 f3 requestActionDecl '<> param;' #txt
al0 f3 responseActionDecl 'error.handling.demo.Approval out;
' #txt
al0 f3 responseMappingAction 'out=result.approval;
' #txt
al0 f3 taskData 'TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.PRI=2
TaskA.ROL=Everybody
TaskA.SKIP_TASK_LIST=true
TaskA.TYPE=0' #txt
al0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Request From</name>
    </language>
</elementInfo>
' #txt
al0 f3 168 170 112 44 -39 -8 #rect
al0 f9 expr out #txt
al0 f9 type error.handling.demo.Approval #txt
al0 f9 var in1 #txt
al0 f9 111 192 168 192 #arcP
al0 f11 dialogId error.handling.demo.approval.RequestApproval #txt
al0 f11 startMethod start(error.handling.demo.Approval) #txt
al0 f11 requestActionDecl '<error.handling.demo.Approval approval> param;' #txt
al0 f11 requestMappingAction 'param.approval=in;
' #txt
al0 f11 responseActionDecl 'error.handling.demo.Approval out;
' #txt
al0 f11 responseMappingAction 'out=in;
' #txt
al0 f11 taskData 'TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.NAM=Approve Request for a <%\=in.description%>
TaskA.PRI=2
TaskA.ROL=Boss
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=0' #txt
al0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>approve</name>
    </language>
</elementInfo>
' #txt
al0 f11 336 362 112 44 -22 -8 #rect
al0 f12 dialogId error.handling.demo.approval.RequestApproved #txt
al0 f12 startMethod start(error.handling.demo.Approval) #txt
al0 f12 requestActionDecl '<error.handling.demo.Approval approval> param;' #txt
al0 f12 requestMappingAction 'param.approval=in;
' #txt
al0 f12 responseActionDecl 'error.handling.demo.Approval out;
' #txt
al0 f12 responseMappingAction 'out=in;
' #txt
al0 f12 taskData 'TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.NAM=Request for <%\=in.description%> approved
TaskA.PRI=2
TaskA.ROL=ivy.case.getCreatorUser().getName()
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=3' #txt
al0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>request approved</name>
    </language>
</elementInfo>
' #txt
al0 f12 584 234 112 44 -48 -8 #rect
al0 f13 expr data #txt
al0 f13 outCond ivp=="TaskA.ivp" #txt
al0 f13 type error.handling.demo.Approval #txt
al0 f13 var in1 #txt
al0 f13 448 384 584 256 #arcP
al0 f13 1 544 384 #addKink
al0 f13 2 544 256 #addKink
al0 f13 1 0.05459785214852457 0 0 #arcLabel
al0 Et0 actionTable 'out=in;
' #txt
al0 Et0 actionCode 'out.declineReason = error.getAttribute("declineReason") as String;' #txt
al0 Et0 errorCode approval:declined #txt
al0 Et0 attachedToRef 14ED397D47F3083D-f11 #txt
al0 Et0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Declined</name>
    </language>
</elementInfo>
' #txt
al0 Et0 409 345 30 30 18 -25 #rect
al0 f14 expr data #txt
al0 f14 outCond ivp=="TaskA.ivp" #txt
al0 f14 type error.handling.demo.Approval #txt
al0 f14 var in1 #txt
al0 f14 224 214 336 384 #arcP
al0 f14 1 224 384 #addKink
al0 f14 0 0.9744908376711137 0 0 #arcLabel
al0 f15 expr data #txt
al0 f15 outCond ivp=="TaskA.ivp" #txt
al0 f15 696 256 753 256 #arcP
al0 f17 dialogId error.handling.demo.approval.RequestDeclined #txt
al0 f17 startMethod start(error.handling.demo.Approval) #txt
al0 f17 requestActionDecl '<error.handling.demo.Approval approval> param;' #txt
al0 f17 requestMappingAction 'param.approval=in;
' #txt
al0 f17 responseActionDecl 'error.handling.demo.Approval out;
' #txt
al0 f17 responseMappingAction 'out=in;
' #txt
al0 f17 taskData 'TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.NAM=Request for <%\=in.description%> declined
TaskA.PRI=2
TaskA.ROL=ivy.case.getCreatorUserName()
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=3' #txt
al0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>request declined</name>
    </language>
</elementInfo>
' #txt
al0 f17 584 170 112 44 -46 -8 #rect
al0 f10 expr data #txt
al0 f10 outCond ivp=="TaskA.ivp" #txt
al0 f10 696 192 753 192 #arcP
al0 f19 expr out #txt
al0 f19 type error.handling.demo.Approval #txt
al0 f19 var in2 #txt
al0 f19 424 345 584 192 #arcP
al0 f19 1 424 192 #addKink
al0 f19 0 0.8002504882268449 0 0 #arcLabel
>Proto al0 .colors 'NodeStyle3=rgb(255, 0, 0);
' #txt
>Proto al0 .type error.handling.demo.Approval #txt
>Proto al0 .processKind NORMAL #txt
>Proto al0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Team</swimlaneLabel>
        <swimlaneLabel>Boss
</swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
    <swimlaneSize>192</swimlaneSize>
    <swimlaneSize>128</swimlaneSize>
    <swimlaneColor gradient="false">-1</swimlaneColor>
    <swimlaneColor gradient="false">-1</swimlaneColor>
    <swimlaneType>LANE</swimlaneType>
    <swimlaneType>LANE</swimlaneType>
    <swimlaneSpaceBefore>128</swimlaneSpaceBefore>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
</elementInfo>
' #txt
>Proto al0 0 0 32 24 18 0 #rect
>Proto al0 @|BIcon #fIcon
al0 f0 mainOut f9 tail #connect
al0 f9 head f3 in #connect
al0 f11 out f13 tail #connect
al0 f13 head f12 in #connect
al0 f3 out f14 tail #connect
al0 f14 head f11 in #connect
al0 f12 out f15 tail #connect
al0 f15 head f1 mainIn #connect
al0 f17 out f10 tail #connect
al0 f10 head f6 mainIn #connect
al0 Et0 mainOut f19 tail #connect
al0 f19 head f17 in #connect
