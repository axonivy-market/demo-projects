[Ivy]
[>Created: Thu May 08 16:05:59 CEST 2014]
13F51835BF0FECEF 3.17 #module
>Proto >Proto Collection #zClass
Mn0 MailNotification Big #zClass
Mn0 B #cInfo
Mn0 #process
Mn0 @TextInP .resExport .resExport #zField
Mn0 @TextInP .type .type #zField
Mn0 @TextInP .processKind .processKind #zField
Mn0 @AnnotationInP-0n ai ai #zField
Mn0 @TextInP .xml .xml #zField
Mn0 @TextInP .responsibility .responsibility #zField
Mn0 @StartRequest f0 '' #zField
Mn0 @RichDialog f1 '' #zField
Mn0 @PushWFArc f4 '' #zField
>Proto Mn0 Mn0 MailNotification #zField
Mn0 f0 outLink MailNotificationSettings.ivp #txt
Mn0 f0 type ch.ivyteam.wf.Data #txt
Mn0 f0 inParamDecl '<> param;' #txt
Mn0 f0 actionDecl 'ch.ivyteam.wf.Data out;
' #txt
Mn0 f0 guid 13F518516A5198D9 #txt
Mn0 f0 requestEnabled true #txt
Mn0 f0 triggerEnabled false #txt
Mn0 f0 callSignature MailNotificationSettings() #txt
Mn0 f0 persist false #txt
Mn0 f0 taskData '#
#Tue Jul 02 10:51:54 CEST 2013
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Mn0 f0 caseData '#
#Tue Jul 02 10:51:54 CEST 2013
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
Mn0 f0 showInStartList 0 #txt
Mn0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Mn0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>MailNotificationSettings.ivp</name>
        <nameStyle>28,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Mn0 f0 @C|.responsibility Everybody #txt
Mn0 f0 81 49 30 30 -73 15 #rect
Mn0 f0 @|StartRequestIcon #fIcon
Mn0 f0 -1|-1|-9671572 #nodeStyle
Mn0 f1 targetWindow NEW:card: #txt
Mn0 f1 targetDisplay TOP #txt
Mn0 f1 richDialogId ch.ivyteam.wf.settings.MailNotification #txt
Mn0 f1 startMethod start() #txt
Mn0 f1 type ch.ivyteam.wf.Data #txt
Mn0 f1 requestActionDecl '<> param;' #txt
Mn0 f1 responseActionDecl 'ch.ivyteam.wf.Data out;
' #txt
Mn0 f1 responseMappingAction 'out=in;
' #txt
Mn0 f1 windowConfiguration '* ' #txt
Mn0 f1 isAsynch false #txt
Mn0 f1 isInnerRd false #txt
Mn0 f1 userContext '* ' #txt
Mn0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>mail notification
settings</name>
        <nameStyle>26,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Mn0 f1 168 42 112 44 -41 -16 #rect
Mn0 f1 @|RichDialogIcon #fIcon
Mn0 f1 -1|-1|-9671572 #nodeStyle
Mn0 f4 expr out #txt
Mn0 f4 111 64 168 64 #arcP
>Proto Mn0 .type ch.ivyteam.wf.Data #txt
>Proto Mn0 .processKind NORMAL #txt
>Proto Mn0 0 0 32 24 18 0 #rect
>Proto Mn0 @|BIcon #fIcon
Mn0 f0 mainOut f4 tail #connect
Mn0 f4 head f1 mainIn #connect
