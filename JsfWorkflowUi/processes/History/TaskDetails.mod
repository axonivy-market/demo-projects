[Ivy]
[>Created: Wed Jul 17 09:33:27 CEST 2013]
13FE81AF3A82F57F 3.17 #module
>Proto >Proto Collection #zClass
Ts0 TaskDetails Big #zClass
Ts0 B #cInfo
Ts0 #process
Ts0 @TextInP .resExport .resExport #zField
Ts0 @TextInP .type .type #zField
Ts0 @TextInP .processKind .processKind #zField
Ts0 @AnnotationInP-0n ai ai #zField
Ts0 @TextInP .xml .xml #zField
Ts0 @TextInP .responsibility .responsibility #zField
Ts0 @StartRequest f0 '' #zField
Ts0 @RichDialog f1 '' #zField
Ts0 @PushWFArc f2 '' #zField
Ts0 @StartRequest f3 '' #zField
Ts0 @PushWFArc f4 '' #zField
>Proto Ts0 Ts0 TaskDetails #zField
Ts0 f0 outLink TaskDetails.ivp #txt
Ts0 f0 type ch.ivyteam.wf.TaskDetails #txt
Ts0 f0 inParamDecl '<java.lang.Number detailTaskId> param;' #txt
Ts0 f0 inParamTable 'out.isHistory=false;
out.taskId=param.detailTaskId;
' #txt
Ts0 f0 actionDecl 'ch.ivyteam.wf.TaskDetails out;
' #txt
Ts0 f0 guid 13FE81BAEB478CE5 #txt
Ts0 f0 requestEnabled true #txt
Ts0 f0 triggerEnabled false #txt
Ts0 f0 callSignature TaskDetails(Number) #txt
Ts0 f0 persist false #txt
Ts0 f0 startName TaskDetails #txt
Ts0 f0 taskData '#
#Wed Jul 17 09:33:13 CEST 2013
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Ts0 f0 caseData '#
#Wed Jul 17 09:33:13 CEST 2013
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
Ts0 f0 showInStartList 0 #txt
Ts0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Ts0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>TaskDetails.ivp</name>
        <nameStyle>15,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f0 @C|.responsibility Everybody #txt
Ts0 f0 115 51 26 26 14 0 #rect
Ts0 f0 @|StartRequestIcon #fIcon
Ts0 f1 targetWindow NEW:card: #txt
Ts0 f1 targetDisplay TOP #txt
Ts0 f1 richDialogId ch.ivyteam.wf.history.TaskDetails #txt
Ts0 f1 startMethod start(Number,Boolean) #txt
Ts0 f1 type ch.ivyteam.wf.TaskDetails #txt
Ts0 f1 requestActionDecl '<Number taskId, Boolean isHistory> param;' #txt
Ts0 f1 requestMappingAction 'param.taskId=in.taskId;
param.isHistory=in.isHistory;
' #txt
Ts0 f1 responseActionDecl 'ch.ivyteam.wf.TaskDetails out;
' #txt
Ts0 f1 responseMappingAction 'out=in;
' #txt
Ts0 f1 windowConfiguration '* ' #txt
Ts0 f1 isAsynch false #txt
Ts0 f1 isInnerRd false #txt
Ts0 f1 userContext '* ' #txt
Ts0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>task details</name>
        <nameStyle>12
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f1 174 116 36 24 20 -2 #rect
Ts0 f1 @|RichDialogIcon #fIcon
Ts0 f2 expr out #txt
Ts0 f2 137 73 180 116 #arcP
Ts0 f3 outLink TaskHistoryDetails.ivp #txt
Ts0 f3 type ch.ivyteam.wf.TaskDetails #txt
Ts0 f3 inParamDecl '<java.lang.Number detailTaskId> param;' #txt
Ts0 f3 inParamTable 'out.isHistory=true;
out.taskId=param.detailTaskId;
' #txt
Ts0 f3 actionDecl 'ch.ivyteam.wf.TaskDetails out;
' #txt
Ts0 f3 guid 13FEB1BF0FE42915 #txt
Ts0 f3 requestEnabled true #txt
Ts0 f3 triggerEnabled false #txt
Ts0 f3 callSignature TaskHistoryDetails(Number) #txt
Ts0 f3 persist false #txt
Ts0 f3 startName TaskHistoryDetails #txt
Ts0 f3 taskData '#
#Wed Jul 17 08:12:52 CEST 2013
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Ts0 f3 caseData '#
#Wed Jul 17 08:12:52 CEST 2013
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
Ts0 f3 showInStartList 0 #txt
Ts0 f3 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Ts0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>TaskHistoryDetails.ivp</name>
        <nameStyle>22,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f3 @C|.responsibility Everybody #txt
Ts0 f3 243 51 26 26 14 0 #rect
Ts0 f3 @|StartRequestIcon #fIcon
Ts0 f4 expr out #txt
Ts0 f4 246 73 204 116 #arcP
>Proto Ts0 .type ch.ivyteam.wf.TaskDetails #txt
>Proto Ts0 .processKind NORMAL #txt
>Proto Ts0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto Ts0 0 0 32 24 18 0 #rect
>Proto Ts0 @|BIcon #fIcon
Ts0 f0 mainOut f2 tail #connect
Ts0 f2 head f1 mainIn #connect
Ts0 f3 mainOut f4 tail #connect
Ts0 f4 head f1 mainIn #connect
