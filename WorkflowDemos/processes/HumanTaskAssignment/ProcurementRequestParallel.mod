[Ivy]
[>Created: Tue Jan 26 11:47:59 CET 2016]
15254DC87A1B183B 3.18 #module
>Proto >Proto Collection #zClass
Pt0 ProcurementRequestParallel Big #zClass
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
Pt0 @RichDialog f6 '' #zField
Pt0 @StartRequest f0 '' #zField
Pt0 @EndTask f1 '' #zField
Pt0 @TaskSwitch f7 '' #zField
Pt0 @RichDialog f3 '' #zField
Pt0 @TaskSwitch f2 '' #zField
Pt0 @RichDialog f5 '' #zField
Pt0 @EMail f8 '' #zField
Pt0 @PushWFArc f4 '' #zField
Pt0 @TkArc f9 '' #zField
Pt0 @PushWFArc f10 '' #zField
Pt0 @PushWFArc f11 '' #zField
Pt0 @PushWFArc f15 '' #zField
Pt0 @RichDialog f16 '' #zField
Pt0 @PushWFArc f17 '' #zField
Pt0 @Alternative f19 '' #zField
Pt0 @PushWFArc f20 '' #zField
Pt0 @PushWFArc f21 '' #zField
Pt0 @TaskSwitch f22 '' #zField
Pt0 @TkArc f23 '' #zField
Pt0 @PushWFArc f18 '' #zField
Pt0 @TkArc f12 '' #zField
Pt0 @TkArc f13 '' #zField
Pt0 @InfoButton f14 '' #zField
>Proto Pt0 Pt0 ProcurementRequestParallel #zField
Pt0 f6 targetWindow NEW:card: #txt
Pt0 f6 targetDisplay TOP #txt
Pt0 f6 richDialogId workflow.demo.MgrVerifyProcurementRequest #txt
Pt0 f6 startMethod start(workflow.demo.ProcurementRequestData) #txt
Pt0 f6 type workflow.demo.ProcurementRequestData #txt
Pt0 f6 requestActionDecl '<workflow.demo.ProcurementRequestData procurementRequestData> param;' #txt
Pt0 f6 requestMappingAction 'param.procurementRequestData=in;
' #txt
Pt0 f6 responseActionDecl 'workflow.demo.ProcurementRequestData out;
' #txt
Pt0 f6 responseMappingAction 'out=in;
out.dataOkManager=result.procurementRequestData.dataOkManager;
' #txt
Pt0 f6 windowConfiguration '* ' #txt
Pt0 f6 isAsynch false #txt
Pt0 f6 isInnerRd false #txt
Pt0 f6 userContext '* ' #txt
Pt0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Verify Request</name>
        <nameStyle>14,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Pt0 f6 360 554 112 44 -39 -8 #rect
Pt0 f6 @|RichDialogIcon #fIcon
Pt0 f0 outLink start.ivp #txt
Pt0 f0 type workflow.demo.ProcurementRequestData #txt
Pt0 f0 inParamDecl '<> param;' #txt
Pt0 f0 actionDecl 'workflow.demo.ProcurementRequestData out;
' #txt
Pt0 f0 guid 1501DA0247919A53 #txt
Pt0 f0 requestEnabled true #txt
Pt0 f0 triggerEnabled false #txt
Pt0 f0 callSignature start() #txt
Pt0 f0 persist false #txt
Pt0 f0 startName '<%=ivy.cms.co("/ProcessDescriptions/procurementRequest")%> (<%=ivy.cms.co("/ProcessDescriptions/parallelTaskExample")%>)' #txt
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
Pt0 f0 65 145 30 30 -21 17 #rect
Pt0 f0 @|StartRequestIcon #fIcon
Pt0 f1 type workflow.demo.ProcurementRequestData #txt
Pt0 f1 857 145 30 30 0 15 #rect
Pt0 f1 @|EndIcon #fIcon
Pt0 f7 actionDecl 'workflow.demo.ProcurementRequestData out;
' #txt
Pt0 f7 actionTable 'out=in1;
out.dataOkManager=in2.dataOkManager;
' #txt
Pt0 f7 outTypes "workflow.demo.ProcurementRequestData" #txt
Pt0 f7 outLinks "TaskB.ivp" #txt
Pt0 f7 taskData 'TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.PRI=2
TaskA.ROL=SYSTEM
TaskA.SKIP_TASK_LIST=true
TaskA.TYPE=0
TaskB.EXPRI=2
TaskB.EXROL=Everybody
TaskB.EXTYPE=0
TaskB.PRI=2
TaskB.ROL=SYSTEM
TaskB.SKIP_TASK_LIST=true
TaskB.TYPE=0' #txt
Pt0 f7 taskAction 'import ch.ivyteam.ivy.workflow.TaskDefinition;
List<TaskDefinition> taskDefinitions;
TaskDefinition taskDef;import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskDef = new TaskDefinition();
taskDef.setStartRequestPath("TaskB.ivp");
taskDef.setAutoStartTask(true);
taskDef.setActivator("SYSTEM");
taskDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskDef.setExpiryActivator("Everybody");
taskDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskDefinitions.add(taskDef);
' #txt
Pt0 f7 type workflow.demo.ProcurementRequestData #txt
Pt0 f7 template "" #txt
Pt0 f7 512 328 32 32 0 16 #rect
Pt0 f7 @|TaskSwitchIcon #fIcon
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
        <name>Enter Request</name>
        <nameStyle>13,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Pt0 f3 152 138 112 44 -39 -8 #rect
Pt0 f3 @|RichDialogIcon #fIcon
Pt0 f2 actionDecl 'workflow.demo.ProcurementRequestData out;
' #txt
Pt0 f2 actionTable 'out=in1;
out.totalPrice=in1.amount * in1.pricePerUnit;
' #txt
Pt0 f2 outTypes "workflow.demo.ProcurementRequestData","workflow.demo.ProcurementRequestData" #txt
Pt0 f2 outLinks "TaskA.ivp","TaskB.ivp" #txt
Pt0 f2 taskData 'TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.NAM=<%\=ivy.cms.co("/TaskDescriptions/verifyRequest")%>\: <%\=in1.amount%> <%\=ivy.cms.co("/Dialogs/procurementRequest/piecesOf")%>  ''<%\=in1.description%>'' <%\=ivy.cms.co("/Dialogs/procurementRequest/forTotal")%> <%\=in1.totalPrice%><%\=ivy.cms.co("/TaskDescriptions/currencySymbol")%>
TaskA.PRI=2
TaskA.ROL=Teamleader
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=0
TaskB.EXPRI=2
TaskB.EXROL=Everybody
TaskB.EXTYPE=0
TaskB.NAM=<%\=ivy.cms.co("/TaskDescriptions/verifyRequest")%>\: <%\=in1.amount%> <%\=ivy.cms.co("/Dialogs/procurementRequest/piecesOf")%> ''<%\=in1.description%>'' <%\=ivy.cms.co("/Dialogs/procurementRequest/forTotal")%> <%\=in1.totalPrice%><%\=ivy.cms.co("/TaskDescriptions/currencySymbol")%>
TaskB.PRI=2
TaskB.ROL=Manager
TaskB.SKIP_TASK_LIST=false
TaskB.TYPE=0' #txt
Pt0 f2 taskAction 'import ch.ivyteam.ivy.workflow.TaskDefinition;
List<TaskDefinition> taskDefinitions;
TaskDefinition taskDef;import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskDef = new TaskDefinition();
taskDef.setStartRequestPath("TaskA.ivp");
taskDef.setName(engine.expandMacros("<%=ivy.cms.co(\"/TaskDescriptions/verifyRequest\")%>: <%=in1.amount%> <%=ivy.cms.co(\"/Dialogs/procurementRequest/piecesOf\")%>  ''<%=in1.description%>'' <%=ivy.cms.co(\"/Dialogs/procurementRequest/forTotal\")%> <%=in1.totalPrice%><%=ivy.cms.co(\"/TaskDescriptions/currencySymbol\")%>"));
taskDef.setAutoStartTask(false);
taskDef.setActivator("Teamleader");
taskDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskDef.setExpiryActivator("Everybody");
taskDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskDefinitions.add(taskDef);
taskDef = new TaskDefinition();
taskDef.setStartRequestPath("TaskB.ivp");
taskDef.setName(engine.expandMacros("<%=ivy.cms.co(\"/TaskDescriptions/verifyRequest\")%>: <%=in1.amount%> <%=ivy.cms.co(\"/Dialogs/procurementRequest/piecesOf\")%> ''<%=in1.description%>'' <%=ivy.cms.co(\"/Dialogs/procurementRequest/forTotal\")%> <%=in1.totalPrice%><%=ivy.cms.co(\"/TaskDescriptions/currencySymbol\")%>"));
taskDef.setAutoStartTask(false);
taskDef.setActivator("Manager");
taskDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskDef.setExpiryActivator("Everybody");
taskDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskDefinitions.add(taskDef);
' #txt
Pt0 f2 type workflow.demo.ProcurementRequestData #txt
Pt0 f2 template "" #txt
Pt0 f2 296 328 32 32 0 16 #rect
Pt0 f2 @|TaskSwitchIcon #fIcon
Pt0 f5 targetWindow NEW:card: #txt
Pt0 f5 targetDisplay TOP #txt
Pt0 f5 richDialogId workflow.demo.TLVerifyProcurementRequest #txt
Pt0 f5 startMethod start(workflow.demo.ProcurementRequestData) #txt
Pt0 f5 type workflow.demo.ProcurementRequestData #txt
Pt0 f5 requestActionDecl '<workflow.demo.ProcurementRequestData procurementRequestData> param;' #txt
Pt0 f5 requestMappingAction 'param.procurementRequestData=in;
' #txt
Pt0 f5 responseActionDecl 'workflow.demo.ProcurementRequestData out;
' #txt
Pt0 f5 responseMappingAction 'out=in;
out.dataOkTeamLeader=result.procurementRequestData.dataOkTeamLeader;
' #txt
Pt0 f5 windowConfiguration '* ' #txt
Pt0 f5 isAsynch false #txt
Pt0 f5 isInnerRd false #txt
Pt0 f5 userContext '* ' #txt
Pt0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Verify Request</name>
        <nameStyle>14,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Pt0 f5 360 322 112 44 -39 -8 #rect
Pt0 f5 @|RichDialogIcon #fIcon
Pt0 f8 beanConfig '"{/emailSubject ""<%=ivy.cms.co(\\""/Emails/yourRequestHasBeen\\"")%><%=(in.accepted ? ivy.cms.co(\\""/Emails/accepted\\"") : ivy.cms.co(\\""/Emails/declined\\""))%>: <%=in.amount%> <%=ivy.cms.co(\\""/Dialogs/procurementRequest/piecesOf\\"")%>  \\''<%=in.description%>\\'' <%=ivy.cms.co(\\""/Dialogs/procurementRequest/forTotal\\"")%> <%=in.totalPrice%> <%=ivy.cms.co(\\""/Dialogs/procurementRequest/currencySymbol\\"")%>""/emailFrom ""<%=ivy.cms.co(\\""/Emails/senderMail\\"")%>""/emailReplyTo """"/emailTo ""<%=in.user.email%>""/emailCC """"/emailBCC """"/exceptionMissingEmailAttachments ""false""/emailMessage ""<%=ivy.cms.co(\\""/Emails/procurementRequestNotification\\"")%>""/emailAttachments * }"' #txt
Pt0 f8 type workflow.demo.ProcurementRequestData #txt
Pt0 f8 timeout 0 #txt
Pt0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Notify Requester</name>
        <nameStyle>16,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Pt0 f8 696 138 112 44 -45 -8 #rect
Pt0 f8 @|EMailIcon #fIcon
Pt0 f4 expr out #txt
Pt0 f4 95 160 152 160 #arcP
Pt0 f9 expr out #txt
Pt0 f9 type workflow.demo.ProcurementRequestData #txt
Pt0 f9 var in1 #txt
Pt0 f9 264 160 312 328 #arcP
Pt0 f9 1 312 160 #addKink
Pt0 f9 1 0.06965079247016907 0 0 #arcLabel
Pt0 f10 expr data #txt
Pt0 f10 outCond ivp=="TaskA.ivp" #txt
Pt0 f10 328 344 360 344 #arcP
Pt0 f10 0 0.5752865296136699 0 0 #arcLabel
Pt0 f11 expr data #txt
Pt0 f11 outCond ivp=="TaskB.ivp" #txt
Pt0 f11 312 360 360 576 #arcP
Pt0 f11 1 312 576 #addKink
Pt0 f11 1 0.13308345915844264 0 0 #arcLabel
Pt0 f15 expr out #txt
Pt0 f15 808 160 857 160 #arcP
Pt0 f16 targetWindow NEW:card: #txt
Pt0 f16 targetDisplay TOP #txt
Pt0 f16 richDialogId workflow.demo.AcceptProcurementRequest #txt
Pt0 f16 startMethod start(workflow.demo.ProcurementRequestData) #txt
Pt0 f16 type workflow.demo.ProcurementRequestData #txt
Pt0 f16 requestActionDecl '<workflow.demo.ProcurementRequestData procurementRequestData> param;' #txt
Pt0 f16 requestMappingAction 'param.procurementRequestData=in;
' #txt
Pt0 f16 responseActionDecl 'workflow.demo.ProcurementRequestData out;
' #txt
Pt0 f16 responseMappingAction 'out=in;
out.accepted=result.accepted;
' #txt
Pt0 f16 windowConfiguration '* ' #txt
Pt0 f16 isAsynch false #txt
Pt0 f16 isInnerRd false #txt
Pt0 f16 userContext '* ' #txt
Pt0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Accept Request</name>
        <nameStyle>14,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Pt0 f16 608 722 112 44 -43 -8 #rect
Pt0 f16 @|RichDialogIcon #fIcon
Pt0 f17 expr out #txt
Pt0 f17 720 744 752 182 #arcP
Pt0 f17 1 752 744 #addKink
Pt0 f17 1 0.4192986443384443 0 0 #arcLabel
Pt0 f19 type workflow.demo.ProcurementRequestData #txt
Pt0 f19 648 328 32 32 0 16 #rect
Pt0 f19 @|AlternativeIcon #fIcon
Pt0 f20 expr data #txt
Pt0 f20 outCond ivp=="TaskB.ivp" #txt
Pt0 f20 544 344 648 344 #arcP
Pt0 f20 0 0.7298707237003984 0 0 #arcLabel
Pt0 f21 expr in #txt
Pt0 f21 664 328 696 160 #arcP
Pt0 f21 1 664 160 #addKink
Pt0 f21 0 0.7620533603631884 0 0 #arcLabel
Pt0 f22 actionDecl 'workflow.demo.ProcurementRequestData out;
' #txt
Pt0 f22 actionTable 'out=in1;
' #txt
Pt0 f22 outTypes "workflow.demo.ProcurementRequestData" #txt
Pt0 f22 outLinks "TaskA.ivp" #txt
Pt0 f22 taskData 'TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.NAM=<%\=ivy.cms.co("/TaskDescriptions/acceptRequest")%>\: <%\=in1.amount%> <%\=ivy.cms.co("/Dialogs/procurementRequest/piecesOf")%> ''<%\=in1.description%>'' <%\=ivy.cms.co("/Dialogs/procurementRequest/forTotal")%> <%\=in1.totalPrice%><%\=ivy.cms.co("/TaskDescriptions/currencySymbol")%>
TaskA.PRI=2
TaskA.ROL=Executive
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=0' #txt
Pt0 f22 taskAction 'import ch.ivyteam.ivy.workflow.TaskDefinition;
List<TaskDefinition> taskDefinitions;
TaskDefinition taskDef;import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskDef = new TaskDefinition();
taskDef.setStartRequestPath("TaskA.ivp");
taskDef.setName(engine.expandMacros("<%=ivy.cms.co(\"/TaskDescriptions/acceptRequest\")%>: <%=in1.amount%> <%=ivy.cms.co(\"/Dialogs/procurementRequest/piecesOf\")%> ''<%=in1.description%>'' <%=ivy.cms.co(\"/Dialogs/procurementRequest/forTotal\")%> <%=in1.totalPrice%><%=ivy.cms.co(\"/TaskDescriptions/currencySymbol\")%>"));
taskDef.setAutoStartTask(false);
taskDef.setActivator("Executive");
taskDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskDef.setExpiryActivator("Everybody");
taskDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskDefinitions.add(taskDef);
' #txt
Pt0 f22 type workflow.demo.ProcurementRequestData #txt
Pt0 f22 template "" #txt
Pt0 f22 648 632 32 32 0 16 #rect
Pt0 f22 @|TaskSwitchIcon #fIcon
Pt0 f23 expr in #txt
Pt0 f23 outCond 'in.dataOkManager && in.dataOkTeamLeader' #txt
Pt0 f23 type workflow.demo.ProcurementRequestData #txt
Pt0 f23 var in1 #txt
Pt0 f23 664 360 664 632 #arcP
Pt0 f23 0 0.32467680925099585 0 0 #arcLabel
Pt0 f18 expr data #txt
Pt0 f18 outCond ivp=="TaskA.ivp" #txt
Pt0 f18 664 664 664 722 #arcP
Pt0 f18 0 0.32467680925099585 0 0 #arcLabel
Pt0 f12 expr out #txt
Pt0 f12 type workflow.demo.ProcurementRequestData #txt
Pt0 f12 var in1 #txt
Pt0 f12 472 344 512 344 #arcP
Pt0 f13 expr out #txt
Pt0 f13 type workflow.demo.ProcurementRequestData #txt
Pt0 f13 var in2 #txt
Pt0 f13 472 576 528 360 #arcP
Pt0 f13 1 528 576 #addKink
Pt0 f13 1 0.24183017286938835 0 0 #arcLabel
Pt0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>This example shows the use of a Gateway with a Task Switch.
A procurement request is made by an employee, verified by the team leader and by a manager 
and accepted by an executive.</name>
        <nameStyle>181,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Pt0 f14 16 2 528 60 -258 -24 #rect
Pt0 f14 @|IBIcon #fIcon
>Proto Pt0 .type workflow.demo.ProcurementRequestData #txt
>Proto Pt0 .processKind NORMAL #txt
>Proto Pt0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel></swimlaneLabel>
        <swimlaneLabel>Employee</swimlaneLabel>
        <swimlaneLabel>Team Leader</swimlaneLabel>
        <swimlaneLabel>Manager</swimlaneLabel>
        <swimlaneLabel>Executive</swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
    <swimlaneSize>768</swimlaneSize>
    <swimlaneSize>192</swimlaneSize>
    <swimlaneSize>192</swimlaneSize>
    <swimlaneSize>192</swimlaneSize>
    <swimlaneSize>192</swimlaneSize>
    <swimlaneColor gradient="false">-1</swimlaneColor>
    <swimlaneColor gradient="false">-3342388</swimlaneColor>
    <swimlaneColor gradient="false">1922680575</swimlaneColor>
    <swimlaneColor gradient="false">-52</swimlaneColor>
    <swimlaneColor gradient="false">-13108</swimlaneColor>
    <swimlaneType>POOL</swimlaneType>
    <swimlaneType>LANE_IN_POOL</swimlaneType>
    <swimlaneType>LANE_IN_POOL</swimlaneType>
    <swimlaneType>LANE_IN_POOL</swimlaneType>
    <swimlaneType>LANE_IN_POOL</swimlaneType>
    <swimlaneSpaceBefore>72</swimlaneSpaceBefore>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
</elementInfo>
' #txt
>Proto Pt0 0 0 32 24 18 0 #rect
>Proto Pt0 @|BIcon #fIcon
Pt0 f0 mainOut f4 tail #connect
Pt0 f4 head f3 mainIn #connect
Pt0 f3 mainOut f9 tail #connect
Pt0 f9 head f2 in #connect
Pt0 f2 out f10 tail #connect
Pt0 f10 head f5 mainIn #connect
Pt0 f2 out f11 tail #connect
Pt0 f11 head f6 mainIn #connect
Pt0 f8 mainOut f15 tail #connect
Pt0 f15 head f1 mainIn #connect
Pt0 f16 mainOut f17 tail #connect
Pt0 f17 head f8 mainIn #connect
Pt0 f7 out f20 tail #connect
Pt0 f20 head f19 in #connect
Pt0 f21 head f8 mainIn #connect
Pt0 f19 out f23 tail #connect
Pt0 f23 head f22 in #connect
Pt0 f19 out f21 tail #connect
Pt0 f22 out f18 tail #connect
Pt0 f18 head f16 mainIn #connect
Pt0 f5 mainOut f12 tail #connect
Pt0 f12 head f7 in #connect
Pt0 f6 mainOut f13 tail #connect
Pt0 f13 head f7 in #connect
