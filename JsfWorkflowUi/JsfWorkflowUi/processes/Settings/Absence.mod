[Ivy]
[>Created: Thu May 08 16:05:53 CEST 2014]
13F3C911395912D4 3.17 #module
>Proto >Proto Collection #zClass
Ae0 Absence Big #zClass
Ae0 B #cInfo
Ae0 #process
Ae0 @TextInP .resExport .resExport #zField
Ae0 @TextInP .type .type #zField
Ae0 @TextInP .processKind .processKind #zField
Ae0 @AnnotationInP-0n ai ai #zField
Ae0 @TextInP .xml .xml #zField
Ae0 @TextInP .responsibility .responsibility #zField
Ae0 @StartRequest f0 '' #zField
Ae0 @RichDialog f1 '' #zField
Ae0 @PushWFArc f2 '' #zField
>Proto Ae0 Ae0 Absence #zField
Ae0 f0 outLink Absence.ivp #txt
Ae0 f0 type ch.ivyteam.wf.Data #txt
Ae0 f0 inParamDecl '<> param;' #txt
Ae0 f0 actionDecl 'ch.ivyteam.wf.Data out;
' #txt
Ae0 f0 guid 13F3CDF27F3E9CBE #txt
Ae0 f0 requestEnabled true #txt
Ae0 f0 triggerEnabled false #txt
Ae0 f0 callSignature Absence() #txt
Ae0 f0 persist false #txt
Ae0 f0 startName Absence #txt
Ae0 f0 startDescription 'My absences' #txt
Ae0 f0 taskData '#
#Mon Jun 17 11:31:05 CEST 2013
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Ae0 f0 caseData '#
#Mon Jun 17 11:31:05 CEST 2013
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
Ae0 f0 showInStartList 0 #txt
Ae0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Ae0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Absence.ivp</name>
        <nameStyle>11,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ae0 f0 @C|.responsibility Everybody #txt
Ae0 f0 81 49 30 30 -33 15 #rect
Ae0 f0 @|StartRequestIcon #fIcon
Ae0 f0 -1|-1|-9671572 #nodeStyle
Ae0 f1 targetWindow NEW:card: #txt
Ae0 f1 targetDisplay TOP #txt
Ae0 f1 richDialogId ch.ivyteam.wf.settings.Absence #txt
Ae0 f1 startMethod start() #txt
Ae0 f1 type ch.ivyteam.wf.Data #txt
Ae0 f1 requestActionDecl '<> param;' #txt
Ae0 f1 responseActionDecl 'ch.ivyteam.wf.Data out;
' #txt
Ae0 f1 responseMappingAction 'out=in;
' #txt
Ae0 f1 windowConfiguration '* ' #txt
Ae0 f1 isAsynch false #txt
Ae0 f1 isInnerRd false #txt
Ae0 f1 userContext '* ' #txt
Ae0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>absence</name>
        <nameStyle>7,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ae0 f1 168 42 112 44 -24 -8 #rect
Ae0 f1 @|RichDialogIcon #fIcon
Ae0 f1 -1|-1|-9671572 #nodeStyle
Ae0 f2 expr out #txt
Ae0 f2 111 64 168 64 #arcP
>Proto Ae0 .type ch.ivyteam.wf.Data #txt
>Proto Ae0 .processKind NORMAL #txt
>Proto Ae0 0 0 32 24 18 0 #rect
>Proto Ae0 @|BIcon #fIcon
Ae0 f0 mainOut f2 tail #connect
Ae0 f2 head f1 mainIn #connect
