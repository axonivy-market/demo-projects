[Ivy]
[>Created: Thu Jun 05 13:25:05 CEST 2014]
145A7190339D94FD 3.17 #module
>Proto >Proto Collection #zClass
Ck0 CreateTask Big #zClass
Ck0 B #cInfo
Ck0 #process
Ck0 @TextInP .resExport .resExport #zField
Ck0 @TextInP .type .type #zField
Ck0 @TextInP .processKind .processKind #zField
Ck0 @AnnotationInP-0n ai ai #zField
Ck0 @MessageFlowInP-0n messageIn messageIn #zField
Ck0 @MessageFlowOutP-0n messageOut messageOut #zField
Ck0 @TextInP .xml .xml #zField
Ck0 @TextInP .responsibility .responsibility #zField
Ck0 @StartRequest f0 '' #zField
Ck0 @TaskSwitchSimple f1 '' #zField
Ck0 @EndTask f8 '' #zField
Ck0 @PushWFArc f9 '' #zField
Ck0 @TkArc f2 '' #zField
>Proto Ck0 Ck0 CreateTask #zField
Ck0 f0 outLink start.ivp #txt
Ck0 f0 type ch.ivyteam.wf.test.Data #txt
Ck0 f0 inParamDecl '<> param;' #txt
Ck0 f0 actionDecl 'ch.ivyteam.wf.test.Data out;
' #txt
Ck0 f0 guid 145A7190DE3D3B65 #txt
Ck0 f0 requestEnabled true #txt
Ck0 f0 triggerEnabled false #txt
Ck0 f0 callSignature start() #txt
Ck0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
Ck0 f0 @C|.responsibility Everybody #txt
Ck0 f0 81 49 30 30 -21 17 #rect
Ck0 f0 @|StartRequestIcon #fIcon
Ck0 f0 -1|-1|-9671572 #nodeStyle
Ck0 f1 actionDecl 'ch.ivyteam.wf.test.Data out;
' #txt
Ck0 f1 actionTable 'out=in1;
' #txt
Ck0 f1 outTypes "ch.ivyteam.wf.test.Data" #txt
Ck0 f1 outLinks "TaskA.ivp" #txt
Ck0 f1 caseData '#
#Mon Apr 28 09:02:19 CEST 2014
businessCalendarName=
businessCreator.user=
businessMilestone.timestamp=
businessObject.code=
businessObject.docDb.code=
businessObject.folder.id=
businessObject.name=
businessPriority=
businessStart.timestamp=
case.description=
case.name=
correspondent.id=
mainContact.docDb.code=
mainContact.folder.id=
mainContact.id=
mainContact.name=
mainContact.type=
process.code=
process.name=
processCategory.code=
processCategory.name=
subType.code=
subType.name=
type.code=
type.name=
' #txt
Ck0 f1 taskData '#
#Mon Apr 28 09:02:19 CEST 2014
TaskA.DESC=test
TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.NAM=test
TaskA.PRI=2
TaskA.ROL=Everybody
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=0
' #txt
Ck0 f1 taskAction 'import ch.ivyteam.ivy.workflow.TaskDefinition;
List<TaskDefinition> taskDefinitions;
TaskDefinition taskDef;import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskDef = new TaskDefinition();
taskDef.setStartRequestPath("TaskA.ivp");
taskDef.setName(engine.expandMacros("test"));
taskDef.setDescription(engine.expandMacros("test"));
taskDef.setAutoStartTask(false);
taskDef.setActivator("Everybody");
taskDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskDef.setExpiryActivator("Everybody");
taskDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskDefinitions.add(taskDef);
' #txt
Ck0 f1 type ch.ivyteam.wf.test.Data #txt
Ck0 f1 template "" #txt
Ck0 f1 209 49 30 30 0 16 #rect
Ck0 f1 @|TaskSwitchSimpleIcon #fIcon
Ck0 f1 -1|-1|-9671572 #nodeStyle
Ck0 f8 type ch.ivyteam.wf.test.Data #txt
Ck0 f8 337 49 30 30 0 15 #rect
Ck0 f8 @|EndIcon #fIcon
Ck0 f8 -1|-1|-9671572 #nodeStyle
Ck0 f9 expr data #txt
Ck0 f9 outCond ivp=="TaskA.ivp" #txt
Ck0 f9 239 64 337 64 #arcP
Ck0 f9 0 0.5530946662371942 0 0 #arcLabel
Ck0 f2 expr out #txt
Ck0 f2 type ch.ivyteam.wf.test.Data #txt
Ck0 f2 var in1 #txt
Ck0 f2 111 64 209 64 #arcP
Ck0 f2 0 0.6279852565753072 0 0 #arcLabel
>Proto Ck0 .type ch.ivyteam.wf.test.Data #txt
>Proto Ck0 .processKind NORMAL #txt
>Proto Ck0 0 0 32 24 18 0 #rect
>Proto Ck0 @|BIcon #fIcon
Ck0 f1 out f9 tail #connect
Ck0 f9 head f8 mainIn #connect
Ck0 f0 mainOut f2 tail #connect
Ck0 f2 head f1 in #connect
