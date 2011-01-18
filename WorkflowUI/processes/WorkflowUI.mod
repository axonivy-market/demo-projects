[Ivy]
[>Created: Tue Jan 18 10:09:21 CET 2011]
128BA95BFF41EBC6 3.15 #module
>Proto >Proto Collection #zClass
WI0 WorkflowUI Big #zClass
WI0 B #cInfo
WI0 #process
WI0 @MessageFlowInP-0n messageIn messageIn #zField
WI0 @MessageFlowOutP-0n messageOut messageOut #zField
WI0 @TextInP .resExport .resExport #zField
WI0 @TextInP .type .type #zField
WI0 @TextInP .processKind .processKind #zField
WI0 @AnnotationInP-0n ai ai #zField
WI0 @TextInP .xml .xml #zField
WI0 @TextInP .responsibility .responsibility #zField
WI0 @StartRequest f0 '' #zField
WI0 @EndTask f11 '' #zField
WI0 @CallSub f13 '' #zField
WI0 @PushWFArc f12 '' #zField
WI0 @PushWFArc f15 '' #zField
>Proto WI0 WI0 WorkflowUI #zField
WI0 f0 outLink start.ivp #txt
WI0 f0 type workflowui.Data #txt
WI0 f0 inParamDecl '<> param;' #txt
WI0 f0 actionDecl 'workflowui.Data out;
' #txt
WI0 f0 requestEnabled true #txt
WI0 f0 triggerEnabled false #txt
WI0 f0 callSignature start() #txt
WI0 f0 persist false #txt
WI0 f0 startDescription 'It loads WorkflowUI application and then gives you a possibility to start a processes, 
create cases and work on the tasks.' #txt
WI0 f0 taskData '#
#Tue Jan 18 10:09:19 CET 2011
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
.DESC=It loads WorkflowUI application and then gives you a possibility to start a processes, \ncreate cases and work on the tasks
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
.NAM=
' #txt
WI0 f0 caseData '#
#Tue Jan 18 10:09:19 CET 2011
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
WI0 f0 showInStartList 1 #txt
WI0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
WI0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start</name>
        <nameStyle>5,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
WI0 f0 @C|.responsibility Everybody #txt
WI0 f0 123 75 26 26 14 0 #rect
WI0 f0 @|StartRequestIcon #fIcon
WI0 f11 type workflowui.Data #txt
WI0 f11 123 187 26 26 14 0 #rect
WI0 f11 @|EndIcon #fIcon
WI0 f13 type workflowui.Data #txt
WI0 f13 processCall 'Functional Processes/technical/WorkflowUIStartServices:call()' #txt
WI0 f13 doCall true #txt
WI0 f13 requestActionDecl '<> param;
' #txt
WI0 f13 responseActionDecl 'workflowui.Data out;
' #txt
WI0 f13 responseMappingAction 'out=in;
out.authentificationSuccessful=result.authentificationSuccessful;
' #txt
WI0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>call
WorkflowUIStartServices</name>
        <nameStyle>28,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
WI0 f13 118 132 36 24 20 -2 #rect
WI0 f13 @|CallSubIcon #fIcon
WI0 f12 expr out #txt
WI0 f12 136 156 136 187 #arcP
WI0 f15 expr out #txt
WI0 f15 136 101 136 132 #arcP
>Proto WI0 .type workflowui.Data #txt
>Proto WI0 .processKind NORMAL #txt
>Proto WI0 0 0 32 24 18 0 #rect
>Proto WI0 @|BIcon #fIcon
WI0 f13 mainOut f12 tail #connect
WI0 f12 head f11 mainIn #connect
WI0 f0 mainOut f15 tail #connect
WI0 f15 head f13 mainIn #connect
