[Ivy]
[>Created: Thu Aug 07 15:42:21 CEST 2014]
1478CBFDEBB1EDCA 3.17 #module
>Proto >Proto Collection #zClass
Nt0 NewTaskMailContent Big #zClass
Nt0 B #cInfo
Nt0 #process
Nt0 @TextInP .resExport .resExport #zField
Nt0 @TextInP .type .type #zField
Nt0 @TextInP .processKind .processKind #zField
Nt0 @AnnotationInP-0n ai ai #zField
Nt0 @MessageFlowInP-0n messageIn messageIn #zField
Nt0 @MessageFlowOutP-0n messageOut messageOut #zField
Nt0 @TextInP .xml .xml #zField
Nt0 @TextInP .responsibility .responsibility #zField
Nt0 @StartRequest f0 '' #zField
Nt0 @RichDialog f1 '' #zField
Nt0 @PushWFArc f2 '' #zField
>Proto Nt0 Nt0 NewTaskMailContent #zField
Nt0 f0 outLink MailNotification_NewTask.ivp #txt
Nt0 f0 type ch.ivyteam.wf.NewTaskMailContent #txt
Nt0 f0 inParamDecl '<java.lang.Number notificationTaskId,java.lang.Number notificationUserId> param;' #txt
Nt0 f0 inParamTable 'out.task=ivy.wf.findTask(param.notificationTaskId);
out.user=ivy.wf.getSecurityContext().findUser(param.notificationUserId);
' #txt
Nt0 f0 actionDecl 'ch.ivyteam.wf.NewTaskMailContent out;
' #txt
Nt0 f0 guid 1478CBFDEBB6CE54 #txt
Nt0 f0 requestEnabled true #txt
Nt0 f0 triggerEnabled false #txt
Nt0 f0 callSignature MailNotification_NewTask(Number,Number) #txt
Nt0 f0 persist false #txt
Nt0 f0 taskData '#
#Thu Jul 31 16:11:05 CEST 2014
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Nt0 f0 caseData '#
#Thu Jul 31 16:11:05 CEST 2014
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
Nt0 f0 showInStartList 0 #txt
Nt0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Nt0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>MailNotification_NewTask.ivp</name>
        <nameStyle>28,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Nt0 f0 @C|.responsibility Everybody #txt
Nt0 f0 81 49 30 30 -80 17 #rect
Nt0 f0 @|StartRequestIcon #fIcon
Nt0 f1 targetWindow NEW:card: #txt
Nt0 f1 targetDisplay TOP #txt
Nt0 f1 richDialogId ch.ivyteam.wf.workflow.NewTaskMailContent #txt
Nt0 f1 startMethod start(ch.ivyteam.ivy.security.IUser,ch.ivyteam.ivy.workflow.ITask) #txt
Nt0 f1 type ch.ivyteam.wf.NewTaskMailContent #txt
Nt0 f1 requestActionDecl '<ch.ivyteam.ivy.security.IUser user, ch.ivyteam.ivy.workflow.ITask task> param;' #txt
Nt0 f1 requestMappingAction 'param.user=in.user;
param.task=in.task;
' #txt
Nt0 f1 responseActionDecl 'ch.ivyteam.wf.NewTaskMailContent out;
' #txt
Nt0 f1 responseMappingAction 'out=in;
' #txt
Nt0 f1 windowConfiguration '* ' #txt
Nt0 f1 isAsynch false #txt
Nt0 f1 isInnerRd false #txt
Nt0 f1 userContext '* ' #txt
Nt0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Mail for 
new task</name>
        <nameStyle>18,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Nt0 f1 232 42 112 44 -24 -16 #rect
Nt0 f1 @|RichDialogIcon #fIcon
Nt0 f2 expr out #txt
Nt0 f2 111 64 232 64 #arcP
>Proto Nt0 .type ch.ivyteam.wf.NewTaskMailContent #txt
>Proto Nt0 .processKind NORMAL #txt
>Proto Nt0 0 0 32 24 18 0 #rect
>Proto Nt0 @|BIcon #fIcon
Nt0 f0 mainOut f2 tail #connect
Nt0 f2 head f1 mainIn #connect
