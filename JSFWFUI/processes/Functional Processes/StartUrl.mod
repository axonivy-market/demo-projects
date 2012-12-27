[Ivy]
[>Created: Wed Oct 31 16:27:19 CET 2012]
13AAD5B1E99AC6D4 3.17 #module
>Proto >Proto Collection #zClass
Sl0 StartUrl Big #zClass
Sl0 B #cInfo
Sl0 #process
Sl0 @TextInP .resExport .resExport #zField
Sl0 @TextInP .type .type #zField
Sl0 @TextInP .processKind .processKind #zField
Sl0 @AnnotationInP-0n ai ai #zField
Sl0 @TextInP .xml .xml #zField
Sl0 @TextInP .responsibility .responsibility #zField
Sl0 @StartRequest f0 '' #zField
Sl0 @RichDialog f1 '' #zField
Sl0 @PushWFArc f2 '' #zField
>Proto Sl0 Sl0 StartUrl #zField
Sl0 f0 outLink start.ivp #txt
Sl0 f0 type htmlwfui.Data #txt
Sl0 f0 inParamDecl '<java.lang.String url> param;' #txt
Sl0 f0 inParamTable 'out.temp.url=param.url;
' #txt
Sl0 f0 actionDecl 'htmlwfui.Data out;
' #txt
Sl0 f0 guid 13AAD5B2EE31B01F #txt
Sl0 f0 requestEnabled true #txt
Sl0 f0 triggerEnabled false #txt
Sl0 f0 callSignature start(String) #txt
Sl0 f0 persist false #txt
Sl0 f0 startName StartUrl #txt
Sl0 f0 taskData '#
#Mon Oct 29 17:34:24 CET 2012
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Sl0 f0 caseData '#
#Mon Oct 29 17:34:24 CET 2012
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
Sl0 f0 showInStartList 1 #txt
Sl0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Sl0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Sl0 f0 @C|.responsibility Everybody #txt
Sl0 f0 83 51 26 26 14 0 #rect
Sl0 f0 @|StartRequestIcon #fIcon
Sl0 f1 targetWindow NEW:card: #txt
Sl0 f1 targetDisplay TOP #txt
Sl0 f1 richDialogId htmlwfui.WFPage #txt
Sl0 f1 startMethod start(String) #txt
Sl0 f1 type htmlwfui.Data #txt
Sl0 f1 requestActionDecl '<String url> param;' #txt
Sl0 f1 requestMappingAction 'param.url=in.temp.url;
' #txt
Sl0 f1 responseActionDecl 'htmlwfui.Data out;
' #txt
Sl0 f1 responseMappingAction 'out=in;
' #txt
Sl0 f1 windowConfiguration '* ' #txt
Sl0 f1 isAsynch false #txt
Sl0 f1 isInnerRd false #txt
Sl0 f1 userContext '* ' #txt
Sl0 f1 78 132 36 24 20 -2 #rect
Sl0 f1 @|RichDialogIcon #fIcon
Sl0 f2 expr out #txt
Sl0 f2 96 77 96 132 #arcP
>Proto Sl0 .type htmlwfui.Data #txt
>Proto Sl0 .processKind NORMAL #txt
>Proto Sl0 0 0 32 24 18 0 #rect
>Proto Sl0 @|BIcon #fIcon
Sl0 f0 mainOut f2 tail #connect
Sl0 f2 head f1 mainIn #connect
