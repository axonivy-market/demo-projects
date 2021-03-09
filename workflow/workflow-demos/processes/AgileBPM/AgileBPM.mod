[Ivy]
15255056043EE914 9.2.0 #module
>Proto >Proto Collection #zClass
AF0 AgileBPM Big #zClass
AF0 B #cInfo
AF0 #process
1b1 '1 Sub' Big #zClass
1b1 B #cInfo
Ct0 Component Big #zClass
Ct0 B #cInfo
AF0 1b1 1b0 '1 Sub' #zField
AF0 @TextInP .type .type #zField
AF0 @TextInP .processKind .processKind #zField
AF0 @AnnotationInP-0n ai ai #zField
AF0 @MessageFlowInP-0n messageIn messageIn #zField
AF0 @MessageFlowOutP-0n messageOut messageOut #zField
AF0 @TextInP .xml .xml #zField
AF0 @TextInP .responsibility .responsibility #zField
AF0 @StartRequest f0 '' #zField
AF0 @UserDialog f1 '' #zField
AF0 @PushWFArc f2 '' #zField
AF0 @Alternative f5 '' #zField
AF0 @PushWFArc f6 '' #zField
AF0 @PushWFArc f4 '' #zField
AF0 @EndTask f7 '' #zField
AF0 @PushWFArc f8 '' #zField
AF0 @EndTask f9 '' #zField
AF0 @PushWFArc f3 '' #zField
AF0 @InfoButton f10 '' #zField
>Proto AF0 AF0 AgileBPM #zField
1b1 Ct0 S10 'Sub 1' #zField
1b1 @TextInP .type .type #zField
1b1 @TextInP .processKind .processKind #zField
1b1 @AnnotationInP-0n ai ai #zField
1b1 @MessageFlowInP-0n messageIn messageIn #zField
1b1 @MessageFlowOutP-0n messageOut messageOut #zField
1b1 @TextInP .xml .xml #zField
1b1 @TextInP .responsibility .responsibility #zField
1b1 @Alternative f6 '' #zField
1b1 @PushTrueWFInG-01 g0 '' #zField
1b1 @PushWFArc f0 '' #zField
1b1 @PushTrueWFOutG-01 g1 '' #zField
1b1 @PushWFArc f1 '' #zField
1b1 @GridStep f5 '' #zField
1b1 @PushWFArc f4 '' #zField
1b1 @EMail f3 '' #zField
1b1 @Alternative f8 '' #zField
1b1 @PushWFArc f10 '' #zField
1b1 @TaskSwitchSimple f13 '' #zField
1b1 @TkArc f14 '' #zField
1b1 @PushWFArc f16 '' #zField
1b1 @GridStep f17 '' #zField
1b1 @PushWFArc f18 '' #zField
1b1 @PushWFArc f15 '' #zField
1b1 @PushWFArc f19 '' #zField
1b1 @PushWFArc f20 '' #zField
>Proto 1b1 1b0 '1 Sub' #zField
Ct0 @TextInP .type .type #zField
Ct0 @TextInP .processKind .processKind #zField
Ct0 @AnnotationInP-0n ai ai #zField
Ct0 @MessageFlowInP-0n messageIn messageIn #zField
Ct0 @MessageFlowOutP-0n messageOut messageOut #zField
Ct0 @TextInP .xml .xml #zField
Ct0 @TextInP .responsibility .responsibility #zField
Ct0 @TaskSwitchSimple f9 '' #zField
Ct0 @UserDialog f11 '' #zField
Ct0 @PushWFArc f12 '' #zField
Ct0 @PushTrueWFInG-01 g0 '' #zField
Ct0 @PushTrueWFOutG-01 g1 '' #zField
Ct0 @TaskSwitch f2 '' #zField
Ct0 @TaskSwitch f4 '' #zField
Ct0 @Alternative f6 '' #zField
Ct0 @TkArc f3 '' #zField
Ct0 @Alternative f8 '' #zField
Ct0 @PushWFArc f10 '' #zField
Ct0 @TkArc f0 '' #zField
Ct0 @Alternative f14 '' #zField
Ct0 @PushWFArc f15 '' #zField
Ct0 @Alternative f17 '' #zField
Ct0 @PushWFArc f18 '' #zField
Ct0 @GridStep f20 '' #zField
Ct0 @PushWFArc f7 '' #zField
Ct0 @GridStep f22 '' #zField
Ct0 @PushWFArc f23 '' #zField
Ct0 @PushWFArc f13 '' #zField
Ct0 @GridStep f24 '' #zField
Ct0 @PushWFArc f25 '' #zField
Ct0 @PushWFArc f19 '' #zField
Ct0 @PushWFArc f1 '' #zField
Ct0 @PushWFArc f21 '' #zField
Ct0 @TkArc f5 '' #zField
Ct0 @TkArc f16 '' #zField
>Proto Ct0 Ct0 Component #zField
AF0 1b0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language lang="en">
        <name>Execute Tasks</name>
        <nameStyle>13,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
AF0 1b0 392 170 112 44 -40 -8 #rect
AF0 1b0 @|BIcon #fIcon
AF0 f0 outLink start.ivp #txt
AF0 f0 inParamDecl '<> param;' #txt
AF0 f0 requestEnabled true #txt
AF0 f0 triggerEnabled false #txt
AF0 f0 callSignature start() #txt
AF0 f0 persist false #txt
AF0 f0 startName '1: <%=ivy.cms.co("/ProcessDescriptions/SelfServiceBPM")%> (<%=ivy.cms.co("/ProcessDescriptions/AdHocName")%>)' #txt
AF0 f0 startDescription <%=ivy.cms.co("/ProcessDescriptions/AdHocDescription")%> #txt
AF0 f0 startCategory agile #txt
AF0 f0 startCustomFields 'cssIcon=fa fa-map-signs' #txt
AF0 f0 taskData 'TaskTriggered.CATEGORY=Input/Adhoc
TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.NAM=Self Service Workflow
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0
TaskTriggered.customFields.STRING.KindCode="CREATOR"' #txt
AF0 f0 caseData 'case.category=AdHoc
customFields.STRING.ProcessCategoryCode="Self Service WF"
customFields.STRING.ProcessCategoryName="Self Service WF"' #txt
AF0 f0 wfuser 1 #txt
AF0 f0 showInStartList 1 #txt
AF0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
AF0 f0 @C|.responsibility Employee #txt
AF0 f0 83 179 26 26 -21 15 #rect
AF0 f0 @|StartRequestIcon #fIcon
AF0 f1 dialogId workflow.agileBPM.define_WF #txt
AF0 f1 startMethod start() #txt
AF0 f1 requestActionDecl '<> param;' #txt
AF0 f1 responseActionDecl 'workflow.agileBPM.Data out;
' #txt
AF0 f1 responseMappingAction 'out.caseInfo=result.caseInfo;
out.definedTasks=result.definedTasks;
' #txt
AF0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>define ad hoc WF</name>
        <nameStyle>16,7
</nameStyle>
    </language>
</elementInfo>
' #txt
AF0 f1 168 170 112 44 -47 -8 #rect
AF0 f1 @|UserDialogIcon #fIcon
AF0 f2 expr out #txt
AF0 f2 109 192 168 192 #arcP
AF0 f2 0 0.5643877852180716 0 0 #arcLabel
AF0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Abort ?</name>
        <nameStyle>7
</nameStyle>
    </language>
</elementInfo>
' #txt
AF0 f5 322 178 28 28 -14 -34 #rect
AF0 f5 @|AlternativeIcon #fIcon
AF0 f6 expr out #txt
AF0 f6 280 192 322 192 #arcP
AF0 f4 expr in #txt
AF0 f4 outCond 'in.definedTasks.size() > 0' #txt
AF0 f4 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>No</name>
        <nameStyle>2,7
</nameStyle>
    </language>
</elementInfo>
' #txt
AF0 f4 350 192 392 192 #arcP
AF0 f4 0 0.5 0 -8 #arcLabel
AF0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Aborted</name>
        <nameStyle>7
</nameStyle>
    </language>
</elementInfo>
' #txt
AF0 f7 563 243 26 26 -21 21 #rect
AF0 f7 @|EndIcon #fIcon
AF0 f8 expr in #txt
AF0 f8 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Yes</name>
        <nameStyle>3,7
</nameStyle>
    </language>
</elementInfo>
' #txt
AF0 f8 336 206 563 256 #arcP
AF0 f8 1 336 256 #addKink
AF0 f8 1 0.3832599118942731 0 -6 #arcLabel
AF0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Finished</name>
        <nameStyle>8
</nameStyle>
    </language>
</elementInfo>
' #txt
AF0 f9 563 179 26 26 -22 17 #rect
AF0 f9 @|EndIcon #fIcon
AF0 f3 504 192 563 192 #arcP
AF0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Self Service Process: Launch an ad-hoc Workflow based on a predefined flow pattern.</name>
        <nameStyle>83,7
</nameStyle>
    </language>
</elementInfo>
' #txt
AF0 f10 64 33 480 30 -233 -8 #rect
AF0 f10 @|IBIcon #fIcon
>Proto AF0 .type workflow.agileBPM.Data #txt
>Proto AF0 .processKind NORMAL #txt
>Proto AF0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Ad hoc WF</swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
    <swimlaneSize>225</swimlaneSize>
    <swimlaneColor gradient="false">-52</swimlaneColor>
    <swimlaneType>POOL</swimlaneType>
    <swimlaneSpaceBefore>96</swimlaneSpaceBefore>
</elementInfo>
' #txt
>Proto AF0 0 0 32 24 18 0 #rect
>Proto AF0 @|BIcon #fIcon
1b1 S10 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language lang="en">
        <name>User Task</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
1b1 S10 520 202 112 44 -28 -8 #rect
1b1 S10 @|BIcon #fIcon
1b1 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>more Tasks?</name>
        <nameStyle>11
</nameStyle>
    </language>
</elementInfo>
' #txt
1b1 f6 114 210 28 28 2 19 #rect
1b1 f6 @|AlternativeIcon #fIcon
1b1 g0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language lang="en">
        <name>in 1</name>
    </language>
</elementInfo>
' #txt
1b1 g0 35 211 26 26 -13 18 #rect
1b1 g0 @|MIGIcon #fIcon
1b1 f0 61 224 114 224 #arcP
1b1 g1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language lang="en">
        <name>out 1</name>
    </language>
</elementInfo>
' #txt
1b1 g1 243 403 26 26 -19 15 #rect
1b1 g1 @|MOGIcon #fIcon
1b1 f1 expr in #txt
1b1 f1 outCond in.definedTasks.size()==0 #txt
1b1 f1 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>No</name>
        <nameStyle>2,7
</nameStyle>
    </language>
</elementInfo>
' #txt
1b1 f1 128 238 243 416 #arcP
1b1 f1 1 128 416 #addKink
1b1 f1 0 0.2752808988764045 12 0 #arcLabel
1b1 f5 actionTable 'out=in;
' #txt
1b1 f5 actionCode 'out.nextTask = in.definedTasks.removeGet(0);

out.nextTask.setSubject(in.caseInfo.subject);


' #txt
1b1 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>next Task</name>
        <nameStyle>9
</nameStyle>
    </language>
</elementInfo>
' #txt
1b1 f5 220 204 104 40 -24 -8 #rect
1b1 f5 @|StepIcon #fIcon
1b1 f4 expr in #txt
1b1 f4 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Yes</name>
        <nameStyle>3,7
</nameStyle>
    </language>
</elementInfo>
' #txt
1b1 f4 142 224 220 224 #arcP
1b1 f4 0 0.5 0 -5 #arcLabel
1b1 f3 beanConfig '"{/emailSubject ""<%=in.caseInfo.kind%> <%=in.caseInfo.subject%>""/emailFrom ""noreply@ivyserver.local""/emailReplyTo """"/emailTo ""<%=ivy.case.getCreatorUser().getEMailAddress()%>""/emailCC """"/emailBCC """"/exceptionMissingEmailAttachments ""false""/emailMessage ""<html>\\n<head>\\n<meta http-equiv=\\""Content-Type\\"" content=\\""text/html; charset=iso-8859-1\\""></head>\\n<body \\tstyle=\\""font-family: \\''Segoe UI\\'', \\''Helvetica Neue\\'', Helvetica, Arial, sans-serif; font-size:10pt;\\"">\\n<div style=\\""background-color:#575656; height:100px\\"">\\n<%=ivy.cms.co(\\""/Project/Banner\\"")%>\\n</div>\\n<div style=\\""background-color:#eaeaea; height:30px; padding-top:10px\\"">AXON IVY Self Service Ad-hoc Workflow</div>\\n<div>\\n<p>\\n<b><%=in.caseInfo.kind%> <%=in.caseInfo.subject%></b>\\n</p>\\n<%=in.caseInfo.description%>\\n<hr>\\n<p>\\n<%=in.answer%>\\n</p>\\n<p> Autogenerated Mail <br>\\nPowered by Axon Ivy Workflow </p>\\n</div>\\n</body>\\n</html>\\n""/emailAttachments * }"' #txt
1b1 f3 type workflow.agileBPM.Data #txt
1b1 f3 timeout 0 #txt
1b1 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>send Mail</name>
        <nameStyle>9,7
</nameStyle>
    </language>
</elementInfo>
' #txt
1b1 f3 680 298 112 44 -26 -8 #rect
1b1 f3 @|EMailIcon #fIcon
1b1 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Next actor = "SYSTEM"?</name>
        <nameStyle>22,7
</nameStyle>
    </language>
</elementInfo>
' #txt
1b1 f8 368 208 32 32 -65 -45 #rect
1b1 f8 @|AlternativeIcon #fIcon
1b1 f10 expr out #txt
1b1 f10 324 224 368 224 #arcP
1b1 f13 actionTable 'out=in1;
' #txt
1b1 f13 outLinks "TaskA.ivp" #txt
1b1 f13 taskData 'TaskA.CATEGORY=System/Mail
TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.NAM=SYSTEM Send <%\=in1.caseInfo.kind%> Mail 
TaskA.PRI=2
TaskA.ROL=SYSTEM
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=0' #txt
1b1 f13 template "" #txt
1b1 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>SYSTEM</name>
        <nameStyle>6,7
</nameStyle>
    </language>
</elementInfo>
' #txt
1b1 f13 417 305 30 30 -23 17 #rect
1b1 f13 @|TaskSwitchSimpleIcon #fIcon
1b1 f14 expr in #txt
1b1 f14 type workflow.agileBPM.Data #txt
1b1 f14 var in1 #txt
1b1 f14 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Yes</name>
        <nameStyle>3,7
</nameStyle>
    </language>
</elementInfo>
' #txt
1b1 f14 384 240 417 320 #arcP
1b1 f14 1 384 320 #addKink
1b1 f14 0 1.0 6 6 #arcLabel
1b1 f16 expr out #txt
1b1 f16 792 320 128 210 #arcP
1b1 f16 1 840 320 #addKink
1b1 f16 2 840 144 #addKink
1b1 f16 3 128 144 #addKink
1b1 f16 2 0.00843115672759725 0 0 #arcLabel
1b1 f17 actionTable 'out=in;
' #txt
1b1 f17 actionCode 'import ch.ivyteam.ivy.workflow.INote;
StringBuffer sb = new StringBuffer();
for(INote note: ivy.case.getNotes())
{
	sb.append(note.getCreationTimestamp());
	sb.append(" ");
	sb.append(note.getWritterName());
	sb.append(": ");
	sb.append(note.getMessage());
	sb.append("<br>");
}	

out.answer = sb.toString();

ivy.log.debug("Email: {0}", ivy.case.getCreatorUser().getEMailAddress());' #txt
1b1 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setup Mail</name>
        <nameStyle>10
</nameStyle>
    </language>
</elementInfo>
' #txt
1b1 f17 520 298 112 44 -28 -8 #rect
1b1 f17 @|StepIcon #fIcon
1b1 f18 expr data #txt
1b1 f18 outCond ivp=="TaskA.ivp" #txt
1b1 f18 447 320 520 320 #arcP
1b1 f15 expr out #txt
1b1 f15 632 320 680 320 #arcP
1b1 f19 expr in #txt
1b1 f19 outCond 'in.nextTask.actor !="SYSTEM"' #txt
1b1 f19 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>No</name>
        <nameStyle>2,7
</nameStyle>
    </language>
</elementInfo>
' #txt
1b1 f19 400 224 520 224 #arcP
1b1 f19 0 0.5 0 7 #arcLabel
1b1 f20 632 224 128 210 #arcP
1b1 f20 1 840 224 #addKink
1b1 f20 2 840 144 #addKink
1b1 f20 3 128 144 #addKink
1b1 f20 2 0.3478475756443725 0 0 #arcLabel
>Proto 1b0 0 0 32 24 18 0 #rect
>Proto 1b0 @|BIcon #fIcon
Ct0 f9 actionTable 'out=in1;
' #txt
Ct0 f9 outLinks "TaskA.ivp" #txt
Ct0 f9 taskData 'TaskA.DESC=<%\=in1.nextTask.description%>
TaskA.EXP=in1.nextTask.until\!\=null ? in1.nextTask.until - new DateTime() \: null
TaskA.EXPRI=0
TaskA.EXROL=in1.nextTask.actoruser
TaskA.EXTYPE=3
TaskA.NAM=<%\=in1.nextTask.kind%> <%\=in1.nextTask.subject%>
TaskA.PRI=2
TaskA.ROL=in1.nextTask.actoruser
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=3
TaskA.customFields.STRING.KindCode=in1.nextTask.kind' #txt
Ct0 f9 template "" #txt
Ct0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>task list</name>
        <nameStyle>9,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f9 474 250 28 28 -17 20 #rect
Ct0 f9 @|TaskSwitchSimpleIcon #fIcon
Ct0 f11 dialogId workflow.agileBPM.task_Form #txt
Ct0 f11 startMethod start(workflow.agileBPM.CaseDef,workflow.agileBPM.TaskDef,List<workflow.agileBPM.TaskDef>) #txt
Ct0 f11 requestActionDecl '<workflow.agileBPM.CaseDef caseInfo,workflow.agileBPM.TaskDef nextTask,List<workflow.agileBPM.TaskDef> definedTasks> param;' #txt
Ct0 f11 requestMappingAction 'param.caseInfo=in.caseInfo;
param.nextTask=in.nextTask;
param.definedTasks=in.definedTasks;
' #txt
Ct0 f11 responseActionDecl 'workflow.agileBPM.Data out;
' #txt
Ct0 f11 responseMappingAction 'out=in;
out.definedTasks=result.definedTasks;
' #txt
Ct0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>taskForm</name>
        <nameStyle>8,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f11 544 242 112 44 -26 -8 #rect
Ct0 f11 @|UserDialogIcon #fIcon
Ct0 f12 expr data #txt
Ct0 f12 outCond ivp=="TaskA.ivp" #txt
Ct0 f12 502 264 544 264 #arcP
Ct0 g0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language lang="en">
        <name>in 1</name>
    </language>
</elementInfo>
' #txt
Ct0 g0 51 147 26 26 2 14 #rect
Ct0 g0 @|MIGIcon #fIcon
Ct0 g1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language lang="en">
        <name>out 1</name>
    </language>
</elementInfo>
' #txt
Ct0 g1 979 147 26 26 -16 13 #rect
Ct0 g1 @|MOGIcon #fIcon
Ct0 f2 actionTable 'out=in1;
' #txt
Ct0 f2 outLinks "TaskA.ivp","TaskB.ivp" #txt
Ct0 f2 taskData 'TaskA.CATEGORY=System/Split
TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.NAM=Split SYSTEM
TaskA.PRI=2
TaskA.ROL=SYSTEM
TaskA.SKIP_TASK_LIST=true
TaskA.TYPE=0
TaskB.CATEGORY=System/CreateUserTask
TaskB.EXPRI=2
TaskB.EXROL=Everybody
TaskB.EXTYPE=0
TaskB.NAM=Split Usertask
TaskB.PRI=2
TaskB.ROL=SYSTEM
TaskB.SKIP_TASK_LIST=false
TaskB.TYPE=0' #txt
Ct0 f2 template "" #txt
Ct0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>SYSTEM spilt</name>
        <nameStyle>12,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f2 336 144 32 32 9 -32 #rect
Ct0 f2 @|TaskSwitchIcon #fIcon
Ct0 f4 actionTable 'out=in1;
out.definedTasks=in2.definedTasks;
' #txt
Ct0 f4 outLinks "TaskA.ivp" #txt
Ct0 f4 taskData 'TaskA.CATEGORY=System/Join
TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.NAM=SYSTEM join
TaskA.PRI=2
TaskA.ROL=SYSTEM
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=0' #txt
Ct0 f4 template "" #txt
Ct0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>SYSTEM join</name>
        <nameStyle>11,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f4 720 144 32 32 12 -29 #rect
Ct0 f4 @|TaskSwitchIcon #fIcon
Ct0 f6 264 144 32 32 0 16 #rect
Ct0 f6 @|AlternativeIcon #fIcon
Ct0 f3 expr in #txt
Ct0 f3 type workflow.agileBPM.Data #txt
Ct0 f3 var in1 #txt
Ct0 f3 296 160 336 160 #arcP
Ct0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>more?</name>
        <nameStyle>5
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f8 472 144 32 32 -18 18 #rect
Ct0 f8 @|AlternativeIcon #fIcon
Ct0 f10 expr data #txt
Ct0 f10 outCond ivp=="TaskA.ivp" #txt
Ct0 f10 368 160 472 160 #arcP
Ct0 f0 expr data #txt
Ct0 f0 outCond ivp=="TaskB.ivp" #txt
Ct0 f0 type workflow.agileBPM.Data #txt
Ct0 f0 var in1 #txt
Ct0 f0 352 176 474 264 #arcP
Ct0 f0 1 352 264 #addKink
Ct0 f0 1 0.19818879887184085 0 0 #arcLabel
Ct0 f14 664 144 32 32 0 16 #rect
Ct0 f14 @|AlternativeIcon #fIcon
Ct0 f15 expr in #txt
Ct0 f15 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>No</name>
        <nameStyle>2,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f15 504 160 664 160 #arcP
Ct0 f15 0 0.1625 0 7 #arcLabel
Ct0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>more?</name>
        <nameStyle>5
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f17 848 144 32 32 -18 18 #rect
Ct0 f17 @|AlternativeIcon #fIcon
Ct0 f18 expr data #txt
Ct0 f18 outCond ivp=="TaskA.ivp" #txt
Ct0 f18 752 160 848 160 #arcP
Ct0 f18 0 0.06855791962174941 0 0 #arcLabel
Ct0 f20 actionTable 'out=in;
' #txt
Ct0 f20 actionCode 'out.nextTask.actorusers.clear();

List<String> names = in.nextTask.actor.split(",");
for(String name: names)
{
	if(name.trim().length()>0)
	{
		out.nextTask.actorusers.add(name.trim());
	}	
}	

out.nextTask.n = out.nextTask.actorusers.size();
out.nextTask.count = out.nextTask.actorusers.size();

out.nextTask.actoruser = in.nextTask.actorusers.get(out.nextTask.n-1);

' #txt
Ct0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>init</name>
        <nameStyle>4
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f20 112 138 112 44 -8 -8 #rect
Ct0 f20 @|StepIcon #fIcon
Ct0 f7 expr out #txt
Ct0 f7 224 160 264 160 #arcP
Ct0 f22 actionTable 'out=in;
out.nextTask.n=in.nextTask.n-1;
' #txt
Ct0 f22 actionCode 'out.nextTask.actoruser = in.nextTask.actorusers.get(out.nextTask.n-1);' #txt
Ct0 f22 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>n-1</name>
        <nameStyle>3,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f22 336 66 112 44 -9 -8 #rect
Ct0 f22 @|StepIcon #fIcon
Ct0 f23 expr in #txt
Ct0 f23 outCond in.nextTask.n>1 #txt
Ct0 f23 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Yes</name>
        <nameStyle>3,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f23 488 144 448 88 #arcP
Ct0 f23 1 488 88 #addKink
Ct0 f23 0 0.7857142857142857 14 0 #arcLabel
Ct0 f13 expr out #txt
Ct0 f13 336 88 280 144 #arcP
Ct0 f13 1 280 88 #addKink
Ct0 f13 1 0.5969001398703495 0 0 #arcLabel
Ct0 f24 actionTable 'out=in;
out.nextTask.n=in.nextTask.n+1;
' #txt
Ct0 f24 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>n+1</name>
        <nameStyle>3,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f24 712 66 112 44 -10 -8 #rect
Ct0 f24 @|StepIcon #fIcon
Ct0 f25 expr in #txt
Ct0 f25 outCond 'in.nextTask.n <in.nextTask.count' #txt
Ct0 f25 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Yes</name>
        <nameStyle>3,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f25 864 144 824 88 #arcP
Ct0 f25 1 864 88 #addKink
Ct0 f25 0 0.7678571428571429 13 0 #arcLabel
Ct0 f19 expr out #txt
Ct0 f19 712 88 680 144 #arcP
Ct0 f19 1 680 88 #addKink
Ct0 f19 1 0.6083441154037813 0 0 #arcLabel
Ct0 f1 expr in #txt
Ct0 f1 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>No</name>
        <nameStyle>2,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f1 880 160 979 160 #arcP
Ct0 f1 0 0.46464646464646464 0 8 #arcLabel
Ct0 f21 77 160 112 160 #arcP
Ct0 f5 expr in #txt
Ct0 f5 type workflow.agileBPM.Data #txt
Ct0 f5 var in1 #txt
Ct0 f5 696 160 720 160 #arcP
Ct0 f16 expr out #txt
Ct0 f16 type workflow.agileBPM.Data #txt
Ct0 f16 var in2 #txt
Ct0 f16 656 264 736 176 #arcP
Ct0 f16 1 736 264 #addKink
Ct0 f16 0 0.9183817963969344 0 0 #arcLabel
>Proto Ct0 0 0 32 24 18 0 #rect
>Proto Ct0 @|BIcon #fIcon
AF0 f0 mainOut f2 tail #connect
AF0 f2 head f1 mainIn #connect
AF0 f1 mainOut f6 tail #connect
AF0 f6 head f5 in #connect
AF0 f5 out f4 tail #connect
AF0 f4 head 1b0 g0 #connect
AF0 f5 out f8 tail #connect
AF0 f8 head f7 mainIn #connect
AF0 1b0 g1 f3 tail #connect
AF0 f3 head f9 mainIn #connect
1b1 g0 m f0 tail #connect
1b1 f0 head f6 in #connect
1b1 f1 head g1 m #connect
1b1 f6 out f1 tail #connect
1b1 f6 out f4 tail #connect
1b1 f4 head f5 mainIn #connect
1b1 f5 mainOut f10 tail #connect
1b1 f10 head f8 in #connect
1b1 f14 head f13 in #connect
1b1 f3 mainOut f16 tail #connect
1b1 f16 head f6 in #connect
1b1 f13 out f18 tail #connect
1b1 f18 head f17 mainIn #connect
1b1 f17 mainOut f15 tail #connect
1b1 f15 head f3 mainIn #connect
1b1 f19 head S10 g0 #connect
1b1 S10 g1 f20 tail #connect
1b1 f20 head f6 in #connect
1b1 f8 out f19 tail #connect
1b1 f8 out f14 tail #connect
1b1 0 0 944 488 0 #ivRect
Ct0 f9 out f12 tail #connect
Ct0 f12 head f11 mainIn #connect
Ct0 f6 out f3 tail #connect
Ct0 f3 head f2 in #connect
Ct0 f2 out f10 tail #connect
Ct0 f10 head f8 in #connect
Ct0 f2 out f0 tail #connect
Ct0 f0 head f9 in #connect
Ct0 f15 head f14 in #connect
Ct0 f4 out f18 tail #connect
Ct0 f18 head f17 in #connect
Ct0 f20 mainOut f7 tail #connect
Ct0 f7 head f6 in #connect
Ct0 f8 out f23 tail #connect
Ct0 f23 head f22 mainIn #connect
Ct0 f8 out f15 tail #connect
Ct0 f22 mainOut f13 tail #connect
Ct0 f13 head f6 in #connect
Ct0 f17 out f25 tail #connect
Ct0 f25 head f24 mainIn #connect
Ct0 f24 mainOut f19 tail #connect
Ct0 f19 head f14 in #connect
Ct0 f17 out f1 tail #connect
Ct0 f1 head g1 m #connect
Ct0 g0 m f21 tail #connect
Ct0 f21 head f20 mainIn #connect
Ct0 f14 out f5 tail #connect
Ct0 f5 head f4 in #connect
Ct0 f11 mainOut f16 tail #connect
Ct0 f16 head f4 in #connect
Ct0 0 0 1072 408 0 #ivRect
