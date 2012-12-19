[Ivy]
[>Created: Mon Feb 13 14:15:20 CET 2012]
130542875B1E372D 3.17 #module
>Proto >Proto Collection #zClass
Ms0 MainBusinessProcess Big #zClass
Ms0 B #cInfo
Ms0 #process
Ms0 @TextInP .resExport .resExport #zField
Ms0 @TextInP .type .type #zField
Ms0 @TextInP .processKind .processKind #zField
Ms0 @AnnotationInP-0n ai ai #zField
Ms0 @TextInP .xml .xml #zField
Ms0 @TextInP .responsibility .responsibility #zField
Ms0 @StartRequest f0 '' #zField
Ms0 @EndTask f1 '' #zField
Ms0 @InfoButton f3 '' #zField
Ms0 @GridStep f4 '' #zField
Ms0 @PushWFArc f5 '' #zField
Ms0 @IntermediateEvent f6 '' #zField
Ms0 @Trigger f13 '' #zField
Ms0 @GridStep f7 '' #zField
Ms0 @PushWFArc f15 '' #zField
Ms0 @PushWFArc f14 '' #zField
Ms0 @Trigger f16 '' #zField
Ms0 @PushWFArc f17 '' #zField
Ms0 @PushWFArc f18 '' #zField
Ms0 @TaskSwitch f19 '' #zField
Ms0 @TkArc f20 '' #zField
Ms0 @RichDialog f23 '' #zField
Ms0 @PushWFArc f24 '' #zField
Ms0 @PushWFArc f2 '' #zField
>Proto Ms0 Ms0 MainBusinessProcess #zField
Ms0 f0 outLink MainBusinessProcessStart.ivp #txt
Ms0 f0 type ch.ivyteam.ivy.demo.waitforasyncprocess.Data #txt
Ms0 f0 inParamDecl '<> param;' #txt
Ms0 f0 actionDecl 'ch.ivyteam.ivy.demo.waitforasyncprocess.Data out;
' #txt
Ms0 f0 guid 12FC49C769E8EA04 #txt
Ms0 f0 requestEnabled true #txt
Ms0 f0 triggerEnabled false #txt
Ms0 f0 callSignature MainBusinessProcessStart() #txt
Ms0 f0 persist false #txt
Ms0 f0 startName 'Wait for asynchrounous process demo' #txt
Ms0 f0 taskData '#
#Fri May 06 11:44:58 CEST 2011
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Ms0 f0 caseData '#
#Fri May 06 11:44:58 CEST 2011
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
Ms0 f0 showInStartList 1 #txt
Ms0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Ms0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>MainBusinessProcessStart.ivp</name>
    </language>
</elementInfo>
' #txt
Ms0 f0 @C|.responsibility Everybody #txt
Ms0 f0 83 35 26 26 14 0 #rect
Ms0 f0 @|StartRequestIcon #fIcon
Ms0 f1 type ch.ivyteam.ivy.demo.waitforasyncprocess.Data #txt
Ms0 f1 83 499 26 26 14 0 #rect
Ms0 f1 @|EndIcon #fIcon
Ms0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>This is the main business process where we want
to wait for other sub business processes to end.

You can wait for 1-n sub business processes.

When you trigger a new process, you have to register this process.
See the Output tab on a trigger for how this is done.

In this Demo we have a fictional employee entry process with 3 Tasks to do:
 - create Email
 - put the employee into a branch of the company
 - order business cards

The first 2 Tasks can be done in paralell but the last one requires the other
2 to be completet because we need the email and the branch of the new
employee to be able to order the business cards.</name>
        <nameStyle>95,7
533,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f3 408 30 496 293 -245 -143 #rect
Ms0 f3 @|IBIcon #fIcon
Ms0 f3 -5972572|-5972572|-16777216 #nodeStyle
Ms0 f4 actionDecl 'ch.ivyteam.ivy.demo.waitforasyncprocess.Data out;
' #txt
Ms0 f4 actionTable 'out=in;
out.eventId=ivy.case.getId().toString();
' #txt
Ms0 f4 type ch.ivyteam.ivy.demo.waitforasyncprocess.Data #txt
Ms0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Generate eventId</name>
        <nameStyle>16,7
</nameStyle>
        <desc>This eventId must be generated for the IntermediateEvent bean.</desc>
    </language>
</elementInfo>
' #txt
Ms0 f4 78 84 36 24 20 -2 #rect
Ms0 f4 @|StepIcon #fIcon
Ms0 f5 expr out #txt
Ms0 f5 96 61 96 84 #arcP
Ms0 f6 actionDecl 'ch.ivyteam.ivy.demo.waitforasyncprocess.Data out;
' #txt
Ms0 f6 actionTable 'out=in;
out.branch=result.getProcessParameterFor("RegisterInBranchProcess").getString("branch");
out.email=result.getProcessParameterFor("CreateEmailProcess").getString("email");
' #txt
Ms0 f6 actionCode 'List<String> alist = result.getProcessParameterFor("CreateEmailProcess").getList("list") as List<String>;
ivy.log.debug(alist.get(0));
' #txt
Ms0 f6 eventIdConfig "in.eventId" #txt
Ms0 f6 timeoutConfig '#
#Mon Feb 13 14:15:19 CET 2012
ACTION_AFTER_TIMEOUT=NOTHING
EXCEPTION_PROCESS_START=
TIMEOUT_SCRIPT=
' #txt
Ms0 f6 taskData '#
#Mon Feb 13 14:15:19 CET 2012
' #txt
Ms0 f6 taskAction 'import ch.ivyteam.ivy.workflow.TaskDefinition;
TaskDefinition taskDef;taskDef = new TaskDefinition();
taskDef.setStartRequestPath("TaskA.ivp");
taskDef.setUserFriendlyStartRequestPath("TaskA.ivp");
taskDef.setActivator(TaskDefinition.SYSTEM_USER_NAME);
' #txt
Ms0 f6 intermediateEventAction 'import ch.ivyteam.ivy.workflow.IntermediateEventDefinition;
import ch.ivyteam.ivy.workflow.IntermediateEventTimeoutAction;
IntermediateEventDefinition eventDef;
eventDef = new IntermediateEventDefinition();
eventDef.setEventIdentifier(in.eventId);
eventDef.setTimeoutAction(IntermediateEventTimeoutAction.NOTHING);
' #txt
Ms0 f6 outLink TaskA.ivp #txt
Ms0 f6 type ch.ivyteam.ivy.demo.waitforasyncprocess.Data #txt
Ms0 f6 eventBeanClass "ch.ivyteam.ivy.addons.process.async.WaitForAsyncProcess" #txt
Ms0 f6 eventBeanConfig '"#
#Mon Feb 13 14:15:19 CET 2012
pollingTime=60000
"' #txt
Ms0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Wait for the other business processes to end</name>
        <nameStyle>44,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f6 82 298 28 28 14 0 #rect
Ms0 f6 @|IntermediateEventIcon #fIcon
Ms0 f13 type ch.ivyteam.ivy.demo.waitforasyncprocess.Data #txt
Ms0 f13 processCall WaitForAsyncProcessDemo/CreateEmail:createEmailForEmployee(String) #txt
Ms0 f13 doCall true #txt
Ms0 f13 requestActionDecl '<java.lang.String name> param;
' #txt
Ms0 f13 requestMappingAction 'param.name=in.name;
' #txt
Ms0 f13 responseActionDecl 'ch.ivyteam.ivy.demo.waitforasyncprocess.Data out;
' #txt
Ms0 f13 responseMappingAction 'out=in;
out.eventId=ch.ivyteam.ivy.addons.process.async.WaitForAsyncProcess.registerProcess(triggeredTask.getCase(), in.eventId);
' #txt
Ms0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>createEmailForEmployee(String)</name>
        <nameStyle>30,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f13 78 196 36 24 20 -2 #rect
Ms0 f13 @|TriggerIcon #fIcon
Ms0 f7 actionDecl 'ch.ivyteam.ivy.demo.waitforasyncprocess.Data out;
' #txt
Ms0 f7 actionTable 'out=in;
out.name="Mustermax";
' #txt
Ms0 f7 type ch.ivyteam.ivy.demo.waitforasyncprocess.Data #txt
Ms0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set employee name</name>
        <nameStyle>17,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f7 78 140 36 24 20 -2 #rect
Ms0 f7 @|StepIcon #fIcon
Ms0 f15 expr out #txt
Ms0 f15 96 108 96 140 #arcP
Ms0 f14 expr out #txt
Ms0 f14 96 164 96 196 #arcP
Ms0 f16 type ch.ivyteam.ivy.demo.waitforasyncprocess.Data #txt
Ms0 f16 processCall WaitForAsyncProcessDemo/RegisterEmployeeInBranch:registerEmplyoeeInBranch(String) #txt
Ms0 f16 doCall true #txt
Ms0 f16 requestActionDecl '<java.lang.String name> param;
' #txt
Ms0 f16 requestMappingAction 'param.name=in.name;
' #txt
Ms0 f16 responseActionDecl 'ch.ivyteam.ivy.demo.waitforasyncprocess.Data out;
' #txt
Ms0 f16 responseMappingAction 'out=in;
out.eventId=ch.ivyteam.ivy.addons.process.async.WaitForAsyncProcess.registerProcess(triggeredTask.getCase(), in.eventId);
' #txt
Ms0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>registerEmplyoeeInBranch(String)</name>
        <nameStyle>32,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f16 78 244 36 24 20 -2 #rect
Ms0 f16 @|TriggerIcon #fIcon
Ms0 f17 expr out #txt
Ms0 f17 96 220 96 244 #arcP
Ms0 f18 expr out #txt
Ms0 f18 96 268 96 298 #arcP
Ms0 f19 actionDecl 'ch.ivyteam.ivy.demo.waitforasyncprocess.Data out;
' #txt
Ms0 f19 actionTable 'out=in1;
' #txt
Ms0 f19 outTypes "ch.ivyteam.ivy.demo.waitforasyncprocess.Data" #txt
Ms0 f19 outLinks "TaskA.ivp" #txt
Ms0 f19 caseData '#
#Fri May 06 12:07:39 CEST 2011
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
Ms0 f19 taskData '#
#Fri May 06 12:07:39 CEST 2011
TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.NAM=Order business cards for <%\=in1.name%>
TaskA.PRI=2
TaskA.ROL=Everybody
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=0
' #txt
Ms0 f19 taskAction 'import ch.ivyteam.ivy.workflow.TaskDefinition;
List<TaskDefinition> taskDefinitions;
TaskDefinition taskDef;taskDef = new TaskDefinition();
taskDef.setStartRequestPath("TaskA.ivp");
taskDef.setName(engine.expandMacros("Order business cards for <%=in1.name%>"));
taskDef.setAutoStartTask(false);
taskDef.setActivator("Everybody");
taskDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskDef.setExpiryActivator("Everybody");
taskDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskDefinitions.add(taskDef);
' #txt
Ms0 f19 type ch.ivyteam.ivy.demo.waitforasyncprocess.Data #txt
Ms0 f19 template "" #txt
Ms0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Order business cards</name>
        <nameStyle>20,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f19 82 362 28 28 14 0 #rect
Ms0 f19 @|TaskSwitchIcon #fIcon
Ms0 f20 expr out #txt
Ms0 f20 type ch.ivyteam.ivy.demo.waitforasyncprocess.Data #txt
Ms0 f20 var in1 #txt
Ms0 f20 96 326 96 362 #arcP
Ms0 f23 targetWindow NEW:card: #txt
Ms0 f23 targetDisplay TOP #txt
Ms0 f23 richDialogId ch.ivyteam.ivy.demo.waitforasyncprocess.OrderBusinessCards #txt
Ms0 f23 startMethod order(String,String,String) #txt
Ms0 f23 type ch.ivyteam.ivy.demo.waitforasyncprocess.Data #txt
Ms0 f23 requestActionDecl '<String name, String email, String branch> param;' #txt
Ms0 f23 requestMappingAction 'param.name=in.name;
param.email=in.email;
param.branch=in.branch;
' #txt
Ms0 f23 responseActionDecl 'ch.ivyteam.ivy.demo.waitforasyncprocess.Data out;
' #txt
Ms0 f23 responseMappingAction 'out=in;
' #txt
Ms0 f23 windowConfiguration '* ' #txt
Ms0 f23 isAsynch false #txt
Ms0 f23 isInnerRd false #txt
Ms0 f23 userContext '* ' #txt
Ms0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Order business cards</name>
        <nameStyle>20,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f23 78 428 36 24 20 -2 #rect
Ms0 f23 @|RichDialogIcon #fIcon
Ms0 f24 expr data #txt
Ms0 f24 outCond ivp=="TaskA.ivp" #txt
Ms0 f24 96 390 96 428 #arcP
Ms0 f2 expr out #txt
Ms0 f2 96 452 96 499 #arcP
>Proto Ms0 .type ch.ivyteam.ivy.demo.waitforasyncprocess.Data #txt
>Proto Ms0 .processKind NORMAL #txt
>Proto Ms0 0 0 32 24 18 0 #rect
>Proto Ms0 @|BIcon #fIcon
Ms0 f0 mainOut f5 tail #connect
Ms0 f5 head f4 mainIn #connect
Ms0 f4 mainOut f15 tail #connect
Ms0 f15 head f7 mainIn #connect
Ms0 f7 mainOut f14 tail #connect
Ms0 f14 head f13 mainIn #connect
Ms0 f13 mainOut f17 tail #connect
Ms0 f17 head f16 mainIn #connect
Ms0 f16 mainOut f18 tail #connect
Ms0 f18 head f6 mainIn #connect
Ms0 f6 mainOut f20 tail #connect
Ms0 f20 head f19 in #connect
Ms0 f19 out f24 tail #connect
Ms0 f24 head f23 mainIn #connect
Ms0 f23 mainOut f2 tail #connect
Ms0 f2 head f1 mainIn #connect
