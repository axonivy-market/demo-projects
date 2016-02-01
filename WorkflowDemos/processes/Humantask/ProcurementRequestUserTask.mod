[Ivy]
[>Created: Wed Jan 27 08:34:05 CET 2016]
15254DCE818AD7A2 3.18 #module
>Proto >Proto Collection #zClass
Pt0 ProcurementRequestUserTask Big #zClass
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
Pt0 @InfoButton f14 '' #zField
Pt0 @AnnotationArc f15 '' #zField
Pt0 @InfoButton f16 '' #zField
>Proto Pt0 Pt0 ProcurementRequestUserTask #zField
Pt0 f0 outLink start.ivp #txt
Pt0 f0 type workflow.humantask.ProcurementRequest #txt
Pt0 f0 inParamDecl '<> param;' #txt
Pt0 f0 actionDecl 'workflow.humantask.ProcurementRequest out;
' #txt
Pt0 f0 guid 14FADED4F577D319 #txt
Pt0 f0 requestEnabled true #txt
Pt0 f0 triggerEnabled false #txt
Pt0 f0 callSignature start() #txt
Pt0 f0 persist false #txt
Pt0 f0 startName '<%=ivy.cms.co("/ProcessDescriptions/procurementRequest")%> (<%=ivy.cms.co("/ProcessDescriptions/userTaskExample")%>)' #txt
Pt0 f0 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
Pt0 f0 showInStartList 1 #txt
Pt0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Pt0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Pt0 f0 @C|.responsibility Employee #txt
Pt0 f0 81 129 30 30 -21 17 #rect
Pt0 f0 @|StartRequestIcon #fIcon
Pt0 f1 type workflow.humantask.ProcurementRequest #txt
Pt0 f1 913 129 30 30 0 15 #rect
Pt0 f1 @|EndIcon #fIcon
Pt0 f3 targetWindow NEW:card: #txt
Pt0 f3 targetDisplay TOP #txt
Pt0 f3 richDialogId workflow.humantask.EnterProcurementRequest #txt
Pt0 f3 startMethod start() #txt
Pt0 f3 type workflow.humantask.ProcurementRequest #txt
Pt0 f3 requestActionDecl '<> param;' #txt
Pt0 f3 responseActionDecl 'workflow.humantask.ProcurementRequest out;
' #txt
Pt0 f3 responseMappingAction 'out=result.procurementRequestData;
out.totalPrice=result.procurementRequestData.amount * result.procurementRequestData.pricePerUnit;
' #txt
Pt0 f3 windowConfiguration '* ' #txt
Pt0 f3 isAsynch false #txt
Pt0 f3 isInnerRd false #txt
Pt0 f3 userContext '* ' #txt
Pt0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Enter Request</name>
        <nameStyle>13,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Pt0 f3 168 122 112 44 -39 -8 #rect
Pt0 f3 @|RichDialogIcon #fIcon
Pt0 f4 expr out #txt
Pt0 f4 111 144 168 144 #arcP
Pt0 f5 richDialogId workflow.humantask.MgrVerifyProcurementRequest #txt
Pt0 f5 startMethod start(workflow.humantask.ProcurementRequest) #txt
Pt0 f5 requestActionDecl '<workflow.humantask.ProcurementRequest procurementRequestData> param;' #txt
Pt0 f5 requestMappingAction 'param.procurementRequestData=in;
param.procurementRequestData.totalPrice=in.amount * in.pricePerUnit;
' #txt
Pt0 f5 responseActionDecl 'workflow.humantask.ProcurementRequest out;
' #txt
Pt0 f5 responseMappingAction 'out=result.procurementRequestData;
' #txt
Pt0 f5 outLinks "TaskA.ivp" #txt
Pt0 f5 taskData 'TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.NAM=<%\=ivy.cms.co("/TaskDescriptions/verifyRequest")%>\: <%\=in.amount%> <%\=ivy.cms.co("/Dialogs/procurementRequest/piecesOf")%> ''<%\=in.description%>'' <%\=ivy.cms.co("/Dialogs/procurementRequest/forTotal")%> <%\=in.totalPrice%><%\=ivy.cms.co("/TaskDescriptions/currencySymbol")%>
TaskA.PRI=2
TaskA.ROL=Manager
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=0' #txt
Pt0 f5 type workflow.humantask.ProcurementRequest #txt
Pt0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Verify Request</name>
        <nameStyle>14,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Pt0 f5 328 314 112 44 -39 -8 #rect
Pt0 f5 @|UserTaskIcon #fIcon
Pt0 f6 expr out #txt
Pt0 f6 type workflow.humantask.ProcurementRequest #txt
Pt0 f6 var in1 #txt
Pt0 f6 224 166 328 336 #arcP
Pt0 f6 1 224 336 #addKink
Pt0 f6 0 0.9750159348993512 0 0 #arcLabel
Pt0 f7 richDialogId workflow.humantask.AcceptProcurementRequest #txt
Pt0 f7 startMethod start(workflow.humantask.ProcurementRequest) #txt
Pt0 f7 requestActionDecl '<workflow.humantask.ProcurementRequest procurementRequestData> param;' #txt
Pt0 f7 requestMappingAction 'param.procurementRequestData=in;
' #txt
Pt0 f7 responseActionDecl 'workflow.humantask.ProcurementRequest out;
' #txt
Pt0 f7 responseMappingAction 'out=in;
out.accepted=result.accepted;
' #txt
Pt0 f7 outLinks "TaskA.ivp" #txt
Pt0 f7 taskData 'TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.NAM=<%\=ivy.cms.co("/TaskDescriptions/acceptRequest")%>\: <%\=in.amount%> <%\=ivy.cms.co("/Dialogs/procurementRequest/piecesOf")%> ''<%\=in.description%>'' <%\=ivy.cms.co("/Dialogs/procurementRequest/forTotal")%> <%\=in.totalPrice%><%\=ivy.cms.co("/TaskDescriptions/currencySymbol")%>
TaskA.PRI=2
TaskA.ROL=Executive Manager
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=0' #txt
Pt0 f7 type workflow.humantask.ProcurementRequest #txt
Pt0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Accept Request</name>
        <nameStyle>14,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Pt0 f7 584 506 112 44 -43 -8 #rect
Pt0 f7 @|UserTaskIcon #fIcon
Pt0 f9 beanConfig '"{/emailSubject ""<%=ivy.cms.co(\\""/Emails/yourRequestHasBeen\\"")%><%=(in.accepted ? ivy.cms.co(\\""/Emails/accepted\\"") : ivy.cms.co(\\""/Emails/declined\\""))%>: <%=in.amount%> <%=ivy.cms.co(\\""/Dialogs/procurementRequest/piecesOf\\"")%> \\''<%=in.description%>\\'' <%=ivy.cms.co(\\""/Dialogs/procurementRequest/forTotal\\"")%> <%=in.totalPrice%> <%=ivy.cms.co(\\""/Dialogs/procurementRequest/currencySymbol\\"")%>""/emailFrom ""<%=ivy.cms.co(\\""/Emails/senderMail\\"")%>""/emailReplyTo """"/emailTo ""<%=in.user.email%>""/emailCC """"/emailBCC """"/exceptionMissingEmailAttachments ""false""/emailMessage ""<%=ivy.cms.co(\\""/Emails/procurementRequestNotification\\"")%>""/emailAttachments * }"' #txt
Pt0 f9 type workflow.humantask.ProcurementRequest #txt
Pt0 f9 timeout 0 #txt
Pt0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Notify Requester</name>
        <nameStyle>16,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Pt0 f9 744 120 112 48 -45 -8 #rect
Pt0 f9 @|EMailIcon #fIcon
Pt0 f10 expr data #txt
Pt0 f10 outCond ivp=="TaskA.ivp" #txt
Pt0 f10 696 528 800 168 #arcP
Pt0 f10 1 800 528 #addKink
Pt0 f10 1 0.2769262184174318 0 0 #arcLabel
Pt0 f2 expr out #txt
Pt0 f2 856 144 913 144 #arcP
Pt0 f11 type workflow.humantask.ProcurementRequest #txt
Pt0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Verified?</name>
        <nameStyle>9,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Pt0 f11 496 320 32 32 27 -7 #rect
Pt0 f11 @|AlternativeIcon #fIcon
Pt0 f12 expr data #txt
Pt0 f12 outCond ivp=="TaskA.ivp" #txt
Pt0 f12 440 336 496 336 #arcP
Pt0 f8 expr in #txt
Pt0 f8 outCond in.dataOkManager #txt
Pt0 f8 type workflow.humantask.ProcurementRequest #txt
Pt0 f8 var in1 #txt
Pt0 f8 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Yes</name>
        <nameStyle>3,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Pt0 f8 512 352 584 528 #arcP
Pt0 f8 1 512 528 #addKink
Pt0 f8 0 0.8465909090909091 15 0 #arcLabel
Pt0 f13 expr in #txt
Pt0 f13 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>No</name>
        <nameStyle>2,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Pt0 f13 512 320 744 144 #arcP
Pt0 f13 1 512 144 #addKink
Pt0 f13 1 0.16810344827586207 0 9 #arcLabel
Pt0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Combines a task switch
and a User Dialog step.</name>
        <nameStyle>46,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Pt0 f14 240 386 144 44 -66 -16 #rect
Pt0 f14 @|IBIcon #fIcon
Pt0 f15 312 386 340 358 #arcP
Pt0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>This example shows the usage of a User Task step
A procurement request is made by an employee, verified by the manager and accepted by an executive.
The User Task step is used instead of a Task Switch and a User Dialog step.</name>
        <nameStyle>224,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Pt0 f16 8 10 576 60 -280 -24 #rect
Pt0 f16 @|IBIcon #fIcon
>Proto Pt0 .type workflow.humantask.ProcurementRequest #txt
>Proto Pt0 .processKind NORMAL #txt
>Proto Pt0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Procurement Request</swimlaneLabel>
        <swimlaneLabel>Employee</swimlaneLabel>
        <swimlaneLabel>Manager</swimlaneLabel>
        <swimlaneLabel>Executive</swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
    <swimlaneSize>576</swimlaneSize>
    <swimlaneSize>192</swimlaneSize>
    <swimlaneSize>192</swimlaneSize>
    <swimlaneSize>192</swimlaneSize>
    <swimlaneColor gradient="false">-1</swimlaneColor>
    <swimlaneColor gradient="false">684510412</swimlaneColor>
    <swimlaneColor gradient="false">687865804</swimlaneColor>
    <swimlaneColor gradient="false">687852748</swimlaneColor>
    <swimlaneType>POOL</swimlaneType>
    <swimlaneType>LANE_IN_POOL</swimlaneType>
    <swimlaneType>LANE_IN_POOL</swimlaneType>
    <swimlaneType>LANE_IN_POOL</swimlaneType>
    <swimlaneSpaceBefore>80</swimlaneSpaceBefore>
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
Pt0 f14 ao f15 tail #connect
Pt0 f15 head f5 @CG|ai #connect
