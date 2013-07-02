[Ivy]
[>Created: Fri Jun 28 07:34:15 CEST 2013]
13F5720218D18BA2 3.17 #module
>Proto >Proto Collection #zClass
Sn0 Substitution Big #zClass
Sn0 B #cInfo
Sn0 #process
Sn0 @TextInP .resExport .resExport #zField
Sn0 @TextInP .type .type #zField
Sn0 @TextInP .processKind .processKind #zField
Sn0 @AnnotationInP-0n ai ai #zField
Sn0 @TextInP .xml .xml #zField
Sn0 @TextInP .responsibility .responsibility #zField
Sn0 @StartRequest f0 '' #zField
Sn0 @RichDialog f1 '' #zField
Sn0 @PushWFArc f2 '' #zField
>Proto Sn0 Sn0 Substitution #zField
Sn0 f0 outLink Substitution.ivp #txt
Sn0 f0 type ch.ivyteam.wf.Data #txt
Sn0 f0 inParamDecl '<> param;' #txt
Sn0 f0 actionDecl 'ch.ivyteam.wf.Data out;
' #txt
Sn0 f0 guid 13F57214CDC63E06 #txt
Sn0 f0 requestEnabled true #txt
Sn0 f0 triggerEnabled false #txt
Sn0 f0 callSignature Substitution() #txt
Sn0 f0 persist false #txt
Sn0 f0 taskData '#
#Fri Jun 28 07:34:13 CEST 2013
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Sn0 f0 caseData '#
#Fri Jun 28 07:34:13 CEST 2013
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
Sn0 f0 showInStartList 0 #txt
Sn0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Sn0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Substitution.ivp</name>
        <nameStyle>16,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Sn0 f0 @C|.responsibility Everybody #txt
Sn0 f0 115 51 26 26 14 0 #rect
Sn0 f0 @|StartRequestIcon #fIcon
Sn0 f1 targetWindow NEW:card: #txt
Sn0 f1 targetDisplay TOP #txt
Sn0 f1 richDialogId ch.ivyteam.wf.settings.Substitution #txt
Sn0 f1 startMethod start() #txt
Sn0 f1 type ch.ivyteam.wf.Data #txt
Sn0 f1 requestActionDecl '<> param;' #txt
Sn0 f1 responseActionDecl 'ch.ivyteam.wf.Data out;
' #txt
Sn0 f1 responseMappingAction 'out=in;
' #txt
Sn0 f1 windowConfiguration '* ' #txt
Sn0 f1 isAsynch false #txt
Sn0 f1 isInnerRd false #txt
Sn0 f1 userContext '* ' #txt
Sn0 f1 110 116 36 24 20 -2 #rect
Sn0 f1 @|RichDialogIcon #fIcon
Sn0 f2 expr out #txt
Sn0 f2 128 77 128 116 #arcP
>Proto Sn0 .type ch.ivyteam.wf.Data #txt
>Proto Sn0 .processKind NORMAL #txt
>Proto Sn0 0 0 32 24 18 0 #rect
>Proto Sn0 @|BIcon #fIcon
Sn0 f0 mainOut f2 tail #connect
Sn0 f2 head f1 mainIn #connect
