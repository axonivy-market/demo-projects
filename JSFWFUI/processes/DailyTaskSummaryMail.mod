[Ivy]
[>Created: Fri Mar 04 15:30:00 CET 2011]
12E7BFEAB6F56A0A 3.16 #module
>Proto >Proto Collection #zClass
Dt0 DailyTaskSummaryMail Big #zClass
Dt0 B #cInfo
Dt0 #process
Dt0 @TextInP .resExport .resExport #zField
Dt0 @TextInP .type .type #zField
Dt0 @TextInP .processKind .processKind #zField
Dt0 @AnnotationInP-0n ai ai #zField
Dt0 @TextInP .xml .xml #zField
Dt0 @TextInP .responsibility .responsibility #zField
Dt0 @StartRequest f0 '' #zField
Dt0 @EndRequest f1 '' #zField
Dt0 @PushWFArc f2 '' #zField
>Proto Dt0 Dt0 DailyTaskSummaryMail #zField
Dt0 f0 outLink MailNotification_DailyTaskSummary.ivp #txt
Dt0 f0 type htmlwfui.DailyMail #txt
Dt0 f0 inParamDecl '<java.lang.Number notificationUserId> param;' #txt
Dt0 f0 inParamTable 'out.tasks=ivy.wf.findWorkTasks(ivy.wf.getSecurityContext().findUser(param.notificationUserId), 0, -1).getResultList();
out.user=ivy.wf.getSecurityContext().findUser(param.notificationUserId);
' #txt
Dt0 f0 actionDecl 'htmlwfui.DailyMail out;
' #txt
Dt0 f0 guid 129CB5A5B13B5ACA #txt
Dt0 f0 requestEnabled true #txt
Dt0 f0 triggerEnabled false #txt
Dt0 f0 callSignature MailNotification_DailyTaskSummary(Number) #txt
Dt0 f0 persist false #txt
Dt0 f0 taskData '#
#Fri Mar 04 15:29:58 CET 2011
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Dt0 f0 caseData '#
#Fri Mar 04 15:29:58 CET 2011
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
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
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
Dt0 f0 75 59 26 26 25 -9 #rect
Dt0 f0 @|StartRequestIcon #fIcon
Dt0 f1 type htmlwfui.DailyMail #txt
Dt0 f1 template "DailyTaskSummeryMailContent.ivc" #txt
Dt0 f1 75 163 26 26 14 0 #rect
Dt0 f1 @|EndRequestIcon #fIcon
Dt0 f2 expr out #txt
Dt0 f2 88 85 88 163 #arcP
>Proto Dt0 .type htmlwfui.DailyMail #txt
>Proto Dt0 .processKind NORMAL #txt
>Proto Dt0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto Dt0 0 0 32 24 18 0 #rect
>Proto Dt0 @|BIcon #fIcon
Dt0 f0 mainOut f2 tail #connect
Dt0 f2 head f1 mainIn #connect
