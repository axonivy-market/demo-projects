[Ivy]
[>Created: Thu Mar 03 16:31:00 CET 2011]
12E7BFEFCD6D0E30 3.16 #module
>Proto >Proto Collection #zClass
Nt0 NewTaskMail Big #zClass
Nt0 B #cInfo
Nt0 #process
Nt0 @TextInP .resExport .resExport #zField
Nt0 @TextInP .type .type #zField
Nt0 @TextInP .processKind .processKind #zField
Nt0 @AnnotationInP-0n ai ai #zField
Nt0 @TextInP .xml .xml #zField
Nt0 @TextInP .responsibility .responsibility #zField
Nt0 @StartRequest f0 '' #zField
Nt0 @EndRequest f1 '' #zField
Nt0 @PushWFArc f2 '' #zField
>Proto Nt0 Nt0 NewTaskMail #zField
Nt0 f0 outLink MailNotification_NewTask.ivp #txt
Nt0 f0 type htmlwfui.NewTaskMail #txt
Nt0 f0 inParamDecl '<java.lang.Number notificationTaskId,java.lang.Number notificationUserId> param;' #txt
Nt0 f0 inParamTable 'out.task=ivy.wf.findTask(param.notificationTaskId);
out.user=ivy.wf.getSecurityContext().findUser(param.notificationUserId);
' #txt
Nt0 f0 actionDecl 'htmlwfui.NewTaskMail out;
' #txt
Nt0 f0 guid 129CB772CF9658F0 #txt
Nt0 f0 requestEnabled true #txt
Nt0 f0 triggerEnabled false #txt
Nt0 f0 callSignature MailNotification_NewTask(Number,Number) #txt
Nt0 f0 persist false #txt
Nt0 f0 taskData '#
#Thu Mar 03 16:24:57 CET 2011
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Nt0 f0 caseData '#
#Thu Mar 03 16:24:57 CET 2011
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
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
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
Nt0 f0 155 35 26 26 14 0 #rect
Nt0 f0 @|StartRequestIcon #fIcon
Nt0 f1 type htmlwfui.NewTaskMail #txt
Nt0 f1 template "NewTaskMailContent.ivc" #txt
Nt0 f1 155 107 26 26 14 0 #rect
Nt0 f1 @|EndRequestIcon #fIcon
Nt0 f2 expr out #txt
Nt0 f2 168 61 168 107 #arcP
>Proto Nt0 .type htmlwfui.NewTaskMail #txt
>Proto Nt0 .processKind NORMAL #txt
>Proto Nt0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto Nt0 0 0 32 24 18 0 #rect
>Proto Nt0 @|BIcon #fIcon
Nt0 f0 mainOut f2 tail #connect
Nt0 f2 head f1 mainIn #connect
