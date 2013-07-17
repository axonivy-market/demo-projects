[Ivy]
[>Created: Wed Jul 17 10:41:53 CEST 2013]
13FE81B1A4AD784C 3.17 #module
>Proto >Proto Collection #zClass
Cs0 CaseDetails Big #zClass
Cs0 B #cInfo
Cs0 #process
Cs0 @TextInP .resExport .resExport #zField
Cs0 @TextInP .type .type #zField
Cs0 @TextInP .processKind .processKind #zField
Cs0 @AnnotationInP-0n ai ai #zField
Cs0 @TextInP .xml .xml #zField
Cs0 @TextInP .responsibility .responsibility #zField
Cs0 @StartRequest f0 '' #zField
Cs0 @RichDialog f1 '' #zField
Cs0 @PushWFArc f2 '' #zField
>Proto Cs0 Cs0 CaseDetails #zField
Cs0 f0 outLink CaseDetails.ivp #txt
Cs0 f0 type ch.ivyteam.wf.Data #txt
Cs0 f0 inParamDecl '<java.lang.Number detailCaseId> param;' #txt
Cs0 f0 inParamTable 'out.caseId=param.detailCaseId;
' #txt
Cs0 f0 actionDecl 'ch.ivyteam.wf.Data out;
' #txt
Cs0 f0 guid 13FE81B334A814ED #txt
Cs0 f0 requestEnabled true #txt
Cs0 f0 triggerEnabled false #txt
Cs0 f0 callSignature CaseDetails(Number) #txt
Cs0 f0 persist false #txt
Cs0 f0 taskData '#
#Wed Jul 17 10:37:09 CEST 2013
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Cs0 f0 caseData '#
#Wed Jul 17 10:37:09 CEST 2013
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
Cs0 f0 showInStartList 1 #txt
Cs0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>CaseDetails.ivp</name>
        <nameStyle>15,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f0 @C|.responsibility Everybody #txt
Cs0 f0 115 51 26 26 14 0 #rect
Cs0 f0 @|StartRequestIcon #fIcon
Cs0 f1 targetWindow NEW:card: #txt
Cs0 f1 targetDisplay TOP #txt
Cs0 f1 richDialogId ch.ivyteam.wf.history.CaseDetails #txt
Cs0 f1 startMethod start(Number) #txt
Cs0 f1 type ch.ivyteam.wf.Data #txt
Cs0 f1 requestActionDecl '<Number caseId> param;' #txt
Cs0 f1 requestMappingAction 'param.caseId=in.caseId;
' #txt
Cs0 f1 responseActionDecl 'ch.ivyteam.wf.Data out;
' #txt
Cs0 f1 responseMappingAction 'out=in;
' #txt
Cs0 f1 windowConfiguration '* ' #txt
Cs0 f1 isAsynch false #txt
Cs0 f1 isInnerRd false #txt
Cs0 f1 userContext '* ' #txt
Cs0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>case details</name>
        <nameStyle>12
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f1 110 116 36 24 20 -2 #rect
Cs0 f1 @|RichDialogIcon #fIcon
Cs0 f2 expr out #txt
Cs0 f2 128 77 128 116 #arcP
>Proto Cs0 .type ch.ivyteam.wf.Data #txt
>Proto Cs0 .processKind NORMAL #txt
>Proto Cs0 0 0 32 24 18 0 #rect
>Proto Cs0 @|BIcon #fIcon
Cs0 f0 mainOut f2 tail #connect
Cs0 f2 head f1 mainIn #connect
