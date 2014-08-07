[Ivy]
[>Created: Thu Aug 07 15:43:01 CEST 2014]
1478CBF817011BDA 3.17 #module
>Proto >Proto Collection #zClass
Dt0 DailyTaskSummaryMailContent Big #zClass
Dt0 B #cInfo
Dt0 #process
Dt0 @TextInP .resExport .resExport #zField
Dt0 @TextInP .type .type #zField
Dt0 @TextInP .processKind .processKind #zField
Dt0 @AnnotationInP-0n ai ai #zField
Dt0 @MessageFlowInP-0n messageIn messageIn #zField
Dt0 @MessageFlowOutP-0n messageOut messageOut #zField
Dt0 @TextInP .xml .xml #zField
Dt0 @TextInP .responsibility .responsibility #zField
Dt0 @StartRequest f0 '' #zField
Dt0 @RichDialog f1 '' #zField
Dt0 @PushWFArc f2 '' #zField
>Proto Dt0 Dt0 DailyTaskSummaryMailContent #zField
Dt0 f0 outLink MailNotification_DailyTaskSummary.ivp #txt
Dt0 f0 type ch.ivyteam.wf.DailyMailContent #txt
Dt0 f0 inParamDecl '<java.lang.Number notificationUserId> param;' #txt
Dt0 f0 inParamTable 'out.tasks=ivy.wf.findWorkTasks(ivy.wf.getSecurityContext().findUser(param.notificationUserId), 0, -1).getResultList();
out.user=ivy.wf.getSecurityContext().findUser(param.notificationUserId);
' #txt
Dt0 f0 actionDecl 'ch.ivyteam.wf.DailyMailContent out;
' #txt
Dt0 f0 guid 1478CBF81706169A #txt
Dt0 f0 requestEnabled true #txt
Dt0 f0 triggerEnabled false #txt
Dt0 f0 callSignature MailNotification_DailyTaskSummary(Number) #txt
Dt0 f0 persist false #txt
Dt0 f0 taskData '#
#Wed Aug 06 09:02:04 CEST 2014
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Dt0 f0 caseData '#
#Wed Aug 06 09:02:04 CEST 2014
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
Dt0 f0 showInStartList 0 #txt
Dt0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Dt0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>MailNotification_DailyTaskSummary.ivp</name>
        <nameStyle>37,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Dt0 f0 @C|.responsibility Everybody #txt
Dt0 f0 113 49 30 30 -107 17 #rect
Dt0 f0 @|StartRequestIcon #fIcon
Dt0 f1 targetWindow NEW:card: #txt
Dt0 f1 targetDisplay TOP #txt
Dt0 f1 richDialogId ch.ivyteam.wf.workflow.DailyTaskSummaryMailContent #txt
Dt0 f1 startMethod start(ch.ivyteam.ivy.security.IUser,List<ch.ivyteam.ivy.workflow.ITask>) #txt
Dt0 f1 type ch.ivyteam.wf.DailyMailContent #txt
Dt0 f1 requestActionDecl '<ch.ivyteam.ivy.security.IUser user, List<ch.ivyteam.ivy.workflow.ITask> tasks> param;' #txt
Dt0 f1 requestMappingAction 'param.user=in.user;
param.tasks=in.tasks;
' #txt
Dt0 f1 responseActionDecl 'ch.ivyteam.wf.DailyMailContent out;
' #txt
Dt0 f1 responseMappingAction 'out=in;
' #txt
Dt0 f1 windowConfiguration '* ' #txt
Dt0 f1 isAsynch false #txt
Dt0 f1 isInnerRd false #txt
Dt0 f1 userContext '* ' #txt
Dt0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Mail for daily
task summary</name>
        <nameStyle>15,7
1,7
11,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Dt0 f1 264 42 112 44 -39 -16 #rect
Dt0 f1 @|RichDialogIcon #fIcon
Dt0 f2 expr out #txt
Dt0 f2 143 64 264 64 #arcP
>Proto Dt0 .type ch.ivyteam.wf.DailyMailContent #txt
>Proto Dt0 .processKind NORMAL #txt
>Proto Dt0 0 0 32 24 18 0 #rect
>Proto Dt0 @|BIcon #fIcon
Dt0 f0 mainOut f2 tail #connect
Dt0 f2 head f1 mainIn #connect
