[Ivy]
[>Created: Wed Jun 04 10:10:19 CEST 2014]
1447289CE234B167 3.17 #module
>Proto >Proto Collection #zClass
Se0 StatisticAverage Big #zClass
Se0 B #cInfo
Se0 #process
Se0 @TextInP .resExport .resExport #zField
Se0 @TextInP .type .type #zField
Se0 @TextInP .processKind .processKind #zField
Se0 @AnnotationInP-0n ai ai #zField
Se0 @MessageFlowInP-0n messageIn messageIn #zField
Se0 @MessageFlowOutP-0n messageOut messageOut #zField
Se0 @TextInP .xml .xml #zField
Se0 @TextInP .responsibility .responsibility #zField
Se0 @StartRequest f0 '' #zField
Se0 @RichDialog f1 '' #zField
Se0 @PushWFArc f2 '' #zField
>Proto Se0 Se0 StatisticAverage #zField
Se0 f0 outLink StatisticAverage.ivp #txt
Se0 f0 type ch.ivyteam.wf.Data #txt
Se0 f0 inParamDecl '<java.lang.String categoryCode,java.lang.String processCode> param;' #txt
Se0 f0 inParamTable 'out.categoryCode=param.categoryCode;
out.processCode=param.processCode;
' #txt
Se0 f0 actionDecl 'ch.ivyteam.wf.Data out;
' #txt
Se0 f0 guid 144728AB334D5703 #txt
Se0 f0 requestEnabled true #txt
Se0 f0 triggerEnabled false #txt
Se0 f0 callSignature StatisticAverage(String,String) #txt
Se0 f0 persist false #txt
Se0 f0 startName StatisticAverage #txt
Se0 f0 taskData '#
#Tue Jun 03 09:05:26 CEST 2014
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Se0 f0 caseData '#
#Tue Jun 03 09:05:26 CEST 2014
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
Se0 f0 showInStartList 0 #txt
Se0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Se0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>StatisticAverage.ivp</name>
        <nameStyle>20,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Se0 f0 @C|.responsibility Everybody #txt
Se0 f0 81 49 30 30 -52 15 #rect
Se0 f0 @|StartRequestIcon #fIcon
Se0 f0 -1|-1|-9671572 #nodeStyle
Se0 f1 targetWindow NEW:card: #txt
Se0 f1 targetDisplay TOP #txt
Se0 f1 richDialogId ch.ivyteam.wf.admin.StatisticAverage #txt
Se0 f1 startMethod start(String,String) #txt
Se0 f1 type ch.ivyteam.wf.Data #txt
Se0 f1 requestActionDecl '<String processCode, String categoryCode> param;' #txt
Se0 f1 requestMappingAction 'param.processCode=in.processCode;
param.categoryCode=in.categoryCode;
' #txt
Se0 f1 responseActionDecl 'ch.ivyteam.wf.Data out;
' #txt
Se0 f1 responseMappingAction 'out=in;
' #txt
Se0 f1 windowConfiguration '* ' #txt
Se0 f1 isAsynch false #txt
Se0 f1 isInnerRd false #txt
Se0 f1 userContext '* ' #txt
Se0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Statistic average</name>
        <nameStyle>17,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Se0 f1 168 42 112 44 -45 -8 #rect
Se0 f1 @|RichDialogIcon #fIcon
Se0 f1 -1|-1|-9671572 #nodeStyle
Se0 f2 expr out #txt
Se0 f2 111 64 168 64 #arcP
>Proto Se0 .type ch.ivyteam.wf.Data #txt
>Proto Se0 .processKind NORMAL #txt
>Proto Se0 0 0 32 24 18 0 #rect
>Proto Se0 @|BIcon #fIcon
Se0 f0 mainOut f2 tail #connect
Se0 f2 head f1 mainIn #connect
