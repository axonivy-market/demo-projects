[Ivy]
[>Created: Mon May 26 09:55:56 CEST 2014]
1446317E486F5562 3.17 #module
>Proto >Proto Collection #zClass
Wc0 WorkflowStatistic Big #zClass
Wc0 B #cInfo
Wc0 #process
Wc0 @TextInP .resExport .resExport #zField
Wc0 @TextInP .type .type #zField
Wc0 @TextInP .processKind .processKind #zField
Wc0 @AnnotationInP-0n ai ai #zField
Wc0 @MessageFlowInP-0n messageIn messageIn #zField
Wc0 @MessageFlowOutP-0n messageOut messageOut #zField
Wc0 @TextInP .xml .xml #zField
Wc0 @TextInP .responsibility .responsibility #zField
Wc0 @StartRequest f0 '' #zField
Wc0 @RichDialog f1 '' #zField
Wc0 @PushWFArc f2 '' #zField
>Proto Wc0 Wc0 WorkflowStatistic #zField
Wc0 f0 outLink WorkflowStatistic.ivp #txt
Wc0 f0 type ch.ivyteam.wf.Data #txt
Wc0 f0 inParamDecl '<> param;' #txt
Wc0 f0 actionDecl 'ch.ivyteam.wf.Data out;
' #txt
Wc0 f0 guid 1446318076730032 #txt
Wc0 f0 requestEnabled true #txt
Wc0 f0 triggerEnabled false #txt
Wc0 f0 callSignature WorkflowStatistic() #txt
Wc0 f0 persist false #txt
Wc0 f0 startName 'Workflow Statistic' #txt
Wc0 f0 taskData '#
#Mon Feb 24 09:54:53 CET 2014
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Wc0 f0 caseData '#
#Mon Feb 24 09:54:53 CET 2014
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
Wc0 f0 showInStartList 0 #txt
Wc0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Wc0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>WorkflowStatistic.ivp</name>
        <nameStyle>21,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Wc0 f0 @C|.responsibility Everybody #txt
Wc0 f0 81 49 30 30 -55 15 #rect
Wc0 f0 @|StartRequestIcon #fIcon
Wc0 f0 -1|-1|-9671572 #nodeStyle
Wc0 f1 targetWindow NEW:card: #txt
Wc0 f1 targetDisplay TOP #txt
Wc0 f1 richDialogId ch.ivyteam.wf.admin.Statistic #txt
Wc0 f1 startMethod start() #txt
Wc0 f1 type ch.ivyteam.wf.Data #txt
Wc0 f1 requestActionDecl '<> param;' #txt
Wc0 f1 responseActionDecl 'ch.ivyteam.wf.Data out;
' #txt
Wc0 f1 responseMappingAction 'out=in;
' #txt
Wc0 f1 windowConfiguration '* ' #txt
Wc0 f1 isAsynch false #txt
Wc0 f1 isInnerRd false #txt
Wc0 f1 userContext '* ' #txt
Wc0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Statistic</name>
        <nameStyle>9,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Wc0 f1 168 42 112 44 -21 -8 #rect
Wc0 f1 @|RichDialogIcon #fIcon
Wc0 f1 -1|-1|-9671572 #nodeStyle
Wc0 f2 expr out #txt
Wc0 f2 111 64 168 64 #arcP
>Proto Wc0 .type ch.ivyteam.wf.Data #txt
>Proto Wc0 .processKind NORMAL #txt
>Proto Wc0 0 0 32 24 18 0 #rect
>Proto Wc0 @|BIcon #fIcon
Wc0 f0 mainOut f2 tail #connect
Wc0 f2 head f1 mainIn #connect
