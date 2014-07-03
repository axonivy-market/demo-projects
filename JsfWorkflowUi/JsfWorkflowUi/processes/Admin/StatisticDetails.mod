[Ivy]
[>Created: Tue Jun 03 09:04:58 CEST 2014]
144697C904B165C8 3.17 #module
>Proto >Proto Collection #zClass
Ss0 StatisticDetails Big #zClass
Ss0 B #cInfo
Ss0 #process
Ss0 @TextInP .resExport .resExport #zField
Ss0 @TextInP .type .type #zField
Ss0 @TextInP .processKind .processKind #zField
Ss0 @AnnotationInP-0n ai ai #zField
Ss0 @MessageFlowInP-0n messageIn messageIn #zField
Ss0 @MessageFlowOutP-0n messageOut messageOut #zField
Ss0 @TextInP .xml .xml #zField
Ss0 @TextInP .responsibility .responsibility #zField
Ss0 @StartRequest f0 '' #zField
Ss0 @RichDialog f1 '' #zField
Ss0 @PushWFArc f2 '' #zField
Ss0 @StartRequest f3 '' #zField
Ss0 @PushWFArc f4 '' #zField
Ss0 @StartRequest f5 '' #zField
Ss0 @PushWFArc f6 '' #zField
>Proto Ss0 Ss0 StatisticDetails #zField
Ss0 f0 outLink StatisticDetailsMin.ivp #txt
Ss0 f0 type ch.ivyteam.wf.Data #txt
Ss0 f0 inParamDecl '<java.lang.String categoryCode,java.lang.String processCode> param;' #txt
Ss0 f0 inParamTable 'out.categoryCode=param.categoryCode;
out.mode="min";
out.processCode=param.processCode;
' #txt
Ss0 f0 actionDecl 'ch.ivyteam.wf.Data out;
' #txt
Ss0 f0 guid 144697CA254E5FF7 #txt
Ss0 f0 requestEnabled true #txt
Ss0 f0 triggerEnabled false #txt
Ss0 f0 callSignature StatisticDetailsMin(String,String) #txt
Ss0 f0 persist false #txt
Ss0 f0 startName StatisticDetailsMin #txt
Ss0 f0 taskData '#
#Tue Jun 03 09:04:57 CEST 2014
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Ss0 f0 caseData '#
#Tue Jun 03 09:04:57 CEST 2014
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
Ss0 f0 showInStartList 0 #txt
Ss0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>StatisticDetailsMin.ivp</name>
        <nameStyle>23,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f0 @C|.responsibility Everybody #txt
Ss0 f0 81 177 30 30 -59 15 #rect
Ss0 f0 @|StartRequestIcon #fIcon
Ss0 f0 -1|-1|-9671572 #nodeStyle
Ss0 f1 targetWindow NEW:card: #txt
Ss0 f1 targetDisplay TOP #txt
Ss0 f1 richDialogId ch.ivyteam.wf.admin.StatisticDetails #txt
Ss0 f1 startMethod start(String,String,String,Number) #txt
Ss0 f1 type ch.ivyteam.wf.Data #txt
Ss0 f1 requestActionDecl '<String process, String categoryCode, String mode, Number caseId> param;' #txt
Ss0 f1 requestMappingAction 'param.process=in.processCode;
param.categoryCode=in.categoryCode;
param.mode=in.mode;
param.caseId=in.caseId;
' #txt
Ss0 f1 responseActionDecl 'ch.ivyteam.wf.Data out;
' #txt
Ss0 f1 responseMappingAction 'out=in;
' #txt
Ss0 f1 windowConfiguration '* ' #txt
Ss0 f1 isAsynch false #txt
Ss0 f1 isInnerRd false #txt
Ss0 f1 userContext '* ' #txt
Ss0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Statistic details</name>
        <nameStyle>17,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f1 168 106 112 44 -41 -8 #rect
Ss0 f1 @|RichDialogIcon #fIcon
Ss0 f1 -1|-1|-9671572 #nodeStyle
Ss0 f2 expr out #txt
Ss0 f2 111 192 224 150 #arcP
Ss0 f2 1 224 192 #addKink
Ss0 f2 0 0.7017184678752515 0 0 #arcLabel
Ss0 f3 outLink StatisticDetailsMax.ivp #txt
Ss0 f3 type ch.ivyteam.wf.Data #txt
Ss0 f3 inParamDecl '<java.lang.String categoryCode,java.lang.String processCode> param;' #txt
Ss0 f3 inParamTable 'out.categoryCode=param.categoryCode;
out.mode="max";
out.processCode=param.processCode;
' #txt
Ss0 f3 actionDecl 'ch.ivyteam.wf.Data out;
' #txt
Ss0 f3 guid 144732C025B674FA #txt
Ss0 f3 requestEnabled true #txt
Ss0 f3 triggerEnabled false #txt
Ss0 f3 callSignature StatisticDetailsMax(String,String) #txt
Ss0 f3 persist false #txt
Ss0 f3 startName StatisticDetailsMax #txt
Ss0 f3 taskData '#
#Tue Jun 03 09:04:38 CEST 2014
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Ss0 f3 caseData '#
#Tue Jun 03 09:04:38 CEST 2014
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
Ss0 f3 showInStartList 0 #txt
Ss0 f3 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Ss0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>StatisticDetailsMax.ivp</name>
        <nameStyle>23,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f3 @C|.responsibility Everybody #txt
Ss0 f3 81 113 30 30 -60 15 #rect
Ss0 f3 @|StartRequestIcon #fIcon
Ss0 f3 -1|-1|-9671572 #nodeStyle
Ss0 f4 expr out #txt
Ss0 f4 111 128 168 128 #arcP
Ss0 f5 outLink StatisticDetailsAvg.ivp #txt
Ss0 f5 type ch.ivyteam.wf.Data #txt
Ss0 f5 inParamDecl '<java.lang.String caseId> param;' #txt
Ss0 f5 inParamTable 'out.caseId=param.caseId.toNumber();
out.mode="avg";
' #txt
Ss0 f5 actionDecl 'ch.ivyteam.wf.Data out;
' #txt
Ss0 f5 guid 14619A451C316BC1 #txt
Ss0 f5 requestEnabled true #txt
Ss0 f5 triggerEnabled false #txt
Ss0 f5 callSignature StatisticDetailsAvg(String) #txt
Ss0 f5 persist false #txt
Ss0 f5 startName StatisticDetailsAvg #txt
Ss0 f5 taskData '#
#Tue May 20 14:56:38 CEST 2014
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Ss0 f5 caseData '#
#Tue May 20 14:56:38 CEST 2014
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
Ss0 f5 showInStartList 0 #txt
Ss0 f5 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Ss0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>StatisticDetailsAvg.ivp</name>
        <nameStyle>23,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f5 @C|.responsibility Everybody #txt
Ss0 f5 81 49 30 30 -59 15 #rect
Ss0 f5 @|StartRequestIcon #fIcon
Ss0 f5 -1|-1|-9671572 #nodeStyle
Ss0 f6 expr out #txt
Ss0 f6 111 64 224 106 #arcP
Ss0 f6 1 224 64 #addKink
Ss0 f6 0 0.7017471009568155 0 0 #arcLabel
>Proto Ss0 .type ch.ivyteam.wf.Data #txt
>Proto Ss0 .processKind NORMAL #txt
>Proto Ss0 0 0 32 24 18 0 #rect
>Proto Ss0 @|BIcon #fIcon
Ss0 f0 mainOut f2 tail #connect
Ss0 f2 head f1 mainIn #connect
Ss0 f3 mainOut f4 tail #connect
Ss0 f4 head f1 mainIn #connect
Ss0 f5 mainOut f6 tail #connect
Ss0 f6 head f1 mainIn #connect
