[Ivy]
[>Created: Fri May 24 08:00:09 CEST 2013]
13ED18655F6A1538 3.17 #module
>Proto >Proto Collection #zClass
Pt0 Processlist Big #zClass
Pt0 B #cInfo
Pt0 #process
Pt0 @TextInP .resExport .resExport #zField
Pt0 @TextInP .type .type #zField
Pt0 @TextInP .processKind .processKind #zField
Pt0 @AnnotationInP-0n ai ai #zField
Pt0 @TextInP .xml .xml #zField
Pt0 @TextInP .responsibility .responsibility #zField
Pt0 @StartRequest f0 '' #zField
Pt0 @RichDialog f1 '' #zField
Pt0 @PushWFArc f2 '' #zField
>Proto Pt0 Pt0 Processlist #zField
Pt0 f0 outLink DefaultProcessStartListPage.ivp #txt
Pt0 f0 type ch.ivyteam.wf.Data #txt
Pt0 f0 inParamDecl '<> param;' #txt
Pt0 f0 actionDecl 'ch.ivyteam.wf.Data out;
' #txt
Pt0 f0 guid 13ED18677CDB0DF2 #txt
Pt0 f0 requestEnabled true #txt
Pt0 f0 triggerEnabled false #txt
Pt0 f0 callSignature DefaultProcessStartListPage() #txt
Pt0 f0 persist false #txt
Pt0 f0 startName ProcessStartList #txt
Pt0 f0 startDescription 'This is used to overwrite the default process start list.' #txt
Pt0 f0 taskData '#
#Fri May 24 08:00:08 CEST 2013
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Pt0 f0 caseData '#
#Fri May 24 08:00:08 CEST 2013
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
Pt0 f0 showInStartList 0 #txt
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
        <name>DefaultProcessStartListPage</name>
        <nameStyle>27,5,7
</nameStyle>
        <desc>This start is used to overwrite the default process start list.
Use /ivy/wf/processStartList to call it.
ivy.html.processStartListRef() will return a link to this process.</desc>
    </language>
</elementInfo>
' #txt
Pt0 f0 @C|.responsibility Everybody #txt
Pt0 f0 115 51 26 26 14 0 #rect
Pt0 f0 @|StartRequestIcon #fIcon
Pt0 f1 targetWindow NEW:card: #txt
Pt0 f1 targetDisplay TOP #txt
Pt0 f1 richDialogId ch.ivyteam.wf.workflow.ProcessList #txt
Pt0 f1 startMethod start() #txt
Pt0 f1 type ch.ivyteam.wf.Data #txt
Pt0 f1 requestActionDecl '<> param;' #txt
Pt0 f1 responseActionDecl 'ch.ivyteam.wf.Data out;
' #txt
Pt0 f1 responseMappingAction 'out=in;
' #txt
Pt0 f1 windowConfiguration '* ' #txt
Pt0 f1 isAsynch false #txt
Pt0 f1 isInnerRd false #txt
Pt0 f1 userContext '* ' #txt
Pt0 f1 110 116 36 24 20 -2 #rect
Pt0 f1 @|RichDialogIcon #fIcon
Pt0 f2 expr out #txt
Pt0 f2 128 77 128 116 #arcP
>Proto Pt0 .type ch.ivyteam.wf.Data #txt
>Proto Pt0 .processKind NORMAL #txt
>Proto Pt0 0 0 32 24 18 0 #rect
>Proto Pt0 @|BIcon #fIcon
Pt0 f0 mainOut f2 tail #connect
Pt0 f2 head f1 mainIn #connect
