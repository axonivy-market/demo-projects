[Ivy]
[>Created: Thu May 08 16:05:22 CEST 2014]
13F2E007FE178DD4 3.17 #module
>Proto >Proto Collection #zClass
Ty0 TaskHistory Big #zClass
Ty0 B #cInfo
Ty0 #process
Ty0 @TextInP .resExport .resExport #zField
Ty0 @TextInP .type .type #zField
Ty0 @TextInP .processKind .processKind #zField
Ty0 @AnnotationInP-0n ai ai #zField
Ty0 @TextInP .xml .xml #zField
Ty0 @TextInP .responsibility .responsibility #zField
Ty0 @StartRequest f0 '' #zField
Ty0 @RichDialog f1 '' #zField
Ty0 @PushWFArc f2 '' #zField
>Proto Ty0 Ty0 TaskHistory #zField
Ty0 f0 outLink TaskHistory.ivp #txt
Ty0 f0 type ch.ivyteam.wf.Data #txt
Ty0 f0 inParamDecl '<> param;' #txt
Ty0 f0 actionDecl 'ch.ivyteam.wf.Data out;
' #txt
Ty0 f0 guid 13F2E00E6BD3DF0A #txt
Ty0 f0 requestEnabled true #txt
Ty0 f0 triggerEnabled false #txt
Ty0 f0 callSignature TaskHistory() #txt
Ty0 f0 persist false #txt
Ty0 f0 taskData '#
#Thu Jun 13 11:23:42 CEST 2013
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Ty0 f0 caseData '#
#Thu Jun 13 11:23:42 CEST 2013
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
Ty0 f0 showInStartList 0 #txt
Ty0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Ty0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>TaskHistory.ivp</name>
        <nameStyle>15,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ty0 f0 @C|.responsibility Everybody #txt
Ty0 f0 81 49 30 30 -41 15 #rect
Ty0 f0 @|StartRequestIcon #fIcon
Ty0 f0 -1|-1|-9671572 #nodeStyle
Ty0 f1 targetWindow NEW:card: #txt
Ty0 f1 targetDisplay TOP #txt
Ty0 f1 richDialogId ch.ivyteam.wf.history.TaskHistory #txt
Ty0 f1 startMethod start() #txt
Ty0 f1 type ch.ivyteam.wf.Data #txt
Ty0 f1 requestActionDecl '<> param;' #txt
Ty0 f1 responseActionDecl 'ch.ivyteam.wf.Data out;
' #txt
Ty0 f1 responseMappingAction 'out=in;
' #txt
Ty0 f1 windowConfiguration '* ' #txt
Ty0 f1 isAsynch false #txt
Ty0 f1 isInnerRd false #txt
Ty0 f1 userContext '* ' #txt
Ty0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>task history</name>
        <nameStyle>12,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ty0 f1 168 42 112 44 -31 -8 #rect
Ty0 f1 @|RichDialogIcon #fIcon
Ty0 f1 -1|-1|-9671572 #nodeStyle
Ty0 f2 expr out #txt
Ty0 f2 111 64 168 64 #arcP
>Proto Ty0 .type ch.ivyteam.wf.Data #txt
>Proto Ty0 .processKind NORMAL #txt
>Proto Ty0 0 0 32 24 18 0 #rect
>Proto Ty0 @|BIcon #fIcon
Ty0 f0 mainOut f2 tail #connect
Ty0 f2 head f1 mainIn #connect
