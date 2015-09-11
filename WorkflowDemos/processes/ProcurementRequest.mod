[Ivy]
[>Created: Fri Sep 11 09:45:56 CEST 2015]
14FADED48D0AEF2C 3.17 #module
>Proto >Proto Collection #zClass
Pt0 ProcurementRequest Big #zClass
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
Pt0 @StartRequest f0 '' #zField
Pt0 @EndTask f1 '' #zField
Pt0 @RichDialog f3 '' #zField
Pt0 @PushWFArc f4 '' #zField
Pt0 @UserTask f5 '' #zField
Pt0 @TkArc f6 '' #zField
Pt0 @UserTask f7 '' #zField
Pt0 @EMail f9 '' #zField
Pt0 @PushWFArc f10 '' #zField
Pt0 @PushWFArc f2 '' #zField
Pt0 @Alternative f11 '' #zField
Pt0 @PushWFArc f12 '' #zField
Pt0 @TkArc f8 '' #zField
Pt0 @PushWFArc f13 '' #zField
>Proto Pt0 Pt0 ProcurementRequest #zField
Pt0 f0 outLink start.ivp #txt
Pt0 f0 type workflow.demo.ProcurementRequestData #txt
Pt0 f0 inParamDecl '<> param;' #txt
Pt0 f0 actionDecl 'workflow.demo.ProcurementRequestData out;
' #txt
Pt0 f0 guid 14FADED4F577D319 #txt
Pt0 f0 requestEnabled true #txt
Pt0 f0 triggerEnabled false #txt
Pt0 f0 callSignature start() #txt
Pt0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
Pt0 f0 @C|.responsibility Everybody #txt
Pt0 f0 81 81 30 30 -21 17 #rect
Pt0 f0 @|StartRequestIcon #fIcon
Pt0 f1 type workflow.demo.ProcurementRequestData #txt
Pt0 f1 913 81 30 30 0 15 #rect
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
        <name>enter request</name>
        <nameStyle>13,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Pt0 f3 168 74 112 44 -36 -8 #rect
Pt0 f3 @|RichDialogIcon #fIcon
Pt0 f4 expr out #txt
Pt0 f4 111 96 168 96 #arcP
Pt0 f5 richDialogId workflow.demo.VerifyProcurementRequest #txt
Pt0 f5 startMethod start(workflow.demo.ProcurementRequestData) #txt
Pt0 f5 requestActionDecl '<workflow.demo.ProcurementRequestData procurementRequestData> param;' #txt
Pt0 f5 requestMappingAction 'param.procurementRequestData=in;
' #txt
Pt0 f5 responseActionDecl 'workflow.demo.ProcurementRequestData out;
' #txt
Pt0 f5 responseMappingAction 'out=result.procurementRequestData;
' #txt
Pt0 f5 outLinks "TaskA.ivp" #txt
Pt0 f5 taskData 'TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.NAM=verify request
TaskA.PRI=2
TaskA.ROL=manager
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=0' #txt
Pt0 f5 type workflow.demo.ProcurementRequestData #txt
Pt0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>verify request</name>
        <nameStyle>14,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Pt0 f5 328 266 112 44 -36 -8 #rect
Pt0 f5 @|UserTaskIcon #fIcon
Pt0 f6 expr out #txt
Pt0 f6 type workflow.demo.ProcurementRequestData #txt
Pt0 f6 var in1 #txt
Pt0 f6 224 118 328 288 #arcP
Pt0 f6 1 224 288 #addKink
Pt0 f6 0 0.9750159348993512 0 0 #arcLabel
Pt0 f7 richDialogId workflow.demo.AcceptProcurementRequest #txt
Pt0 f7 startMethod start(workflow.demo.ProcurementRequestData) #txt
Pt0 f7 requestActionDecl '<workflow.demo.ProcurementRequestData procurementRequestData> param;' #txt
Pt0 f7 requestMappingAction 'param.procurementRequestData=in;
' #txt
Pt0 f7 responseActionDecl 'workflow.demo.ProcurementRequestData out;
' #txt
Pt0 f7 responseMappingAction 'out=in;
out.accepted=result.accepted;
' #txt
Pt0 f7 outLinks "TaskA.ivp" #txt
Pt0 f7 taskData 'TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.NAM=accept request
TaskA.PRI=2
TaskA.ROL=executive
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=0' #txt
Pt0 f7 type workflow.demo.ProcurementRequestData #txt
Pt0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>accept request</name>
        <nameStyle>14,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Pt0 f7 584 458 112 44 -40 -8 #rect
Pt0 f7 @|UserTaskIcon #fIcon
Pt0 f9 beanConfig '"{/emailSubject """"/emailFrom """"/emailReplyTo """"/emailTo """"/emailCC """"/emailBCC """"/exceptionMissingEmailAttachments ""false""/emailMessage """"/emailAttachments * }"' #txt
Pt0 f9 type workflow.demo.ProcurementRequestData #txt
Pt0 f9 timeout 0 #txt
Pt0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>notify requester</name>
        <nameStyle>16,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Pt0 f9 744 74 112 44 -42 -8 #rect
Pt0 f9 @|EMailIcon #fIcon
Pt0 f10 expr data #txt
Pt0 f10 outCond ivp=="TaskA.ivp" #txt
Pt0 f10 696 480 800 118 #arcP
Pt0 f10 1 800 480 #addKink
Pt0 f10 1 0.2769262184174318 0 0 #arcLabel
Pt0 f2 expr out #txt
Pt0 f2 856 96 913 96 #arcP
Pt0 f11 type workflow.demo.ProcurementRequestData #txt
Pt0 f11 496 272 32 32 0 16 #rect
Pt0 f11 @|AlternativeIcon #fIcon
Pt0 f12 expr data #txt
Pt0 f12 outCond ivp=="TaskA.ivp" #txt
Pt0 f12 440 288 496 288 #arcP
Pt0 f8 expr in #txt
Pt0 f8 outCond in.dataOk #txt
Pt0 f8 type workflow.demo.ProcurementRequestData #txt
Pt0 f8 var in1 #txt
Pt0 f8 512 304 584 480 #arcP
Pt0 f8 1 512 480 #addKink
Pt0 f8 0 0.8566108393076419 0 0 #arcLabel
Pt0 f13 expr in #txt
Pt0 f13 512 272 744 96 #arcP
Pt0 f13 1 512 96 #addKink
Pt0 f13 1 0.17158609267772046 0 0 #arcLabel
>Proto Pt0 .type workflow.demo.ProcurementRequestData #txt
>Proto Pt0 .processKind NORMAL #txt
>Proto Pt0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Employee</swimlaneLabel>
        <swimlaneLabel>Manager</swimlaneLabel>
        <swimlaneLabel>Executive</swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
    <swimlaneSize>192</swimlaneSize>
    <swimlaneSize>192</swimlaneSize>
    <swimlaneSize>192</swimlaneSize>
    <swimlaneColor gradient="false">-3342388</swimlaneColor>
    <swimlaneColor gradient="false">-52</swimlaneColor>
    <swimlaneColor gradient="false">-13108</swimlaneColor>
    <swimlaneType>LANE</swimlaneType>
    <swimlaneType>LANE</swimlaneType>
    <swimlaneType>LANE</swimlaneType>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
</elementInfo>
' #txt
>Proto Pt0 0 0 32 24 18 0 #rect
>Proto Pt0 @|BIcon #fIcon
Pt0 f0 mainOut f4 tail #connect
Pt0 f4 head f3 mainIn #connect
Pt0 f3 mainOut f6 tail #connect
Pt0 f6 head f5 in #connect
Pt0 f7 out f10 tail #connect
Pt0 f10 head f9 mainIn #connect
Pt0 f9 mainOut f2 tail #connect
Pt0 f2 head f1 mainIn #connect
Pt0 f5 out f12 tail #connect
Pt0 f12 head f11 in #connect
Pt0 f11 out f8 tail #connect
Pt0 f8 head f7 in #connect
Pt0 f11 out f13 tail #connect
Pt0 f13 head f9 mainIn #connect
