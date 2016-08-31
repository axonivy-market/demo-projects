[Ivy]
[>Created: Wed Aug 31 14:21:01 CEST 2016]
156DB84CCE78254F 3.18 #module
>Proto >Proto Collection #zClass
Cn0 Concurrent Big #zClass
Cn0 B #cInfo
Cn0 #process
Cn0 @TextInP .resExport .resExport #zField
Cn0 @TextInP .type .type #zField
Cn0 @TextInP .processKind .processKind #zField
Cn0 @AnnotationInP-0n ai ai #zField
Cn0 @MessageFlowInP-0n messageIn messageIn #zField
Cn0 @MessageFlowOutP-0n messageOut messageOut #zField
Cn0 @TextInP .xml .xml #zField
Cn0 @TextInP .responsibility .responsibility #zField
Cn0 @StartRequest f0 '' #zField
Cn0 @TaskSwitch f2 '' #zField
Cn0 @TaskSwitch f1 '' #zField
Cn0 @RichDialog f6 '' #zField
Cn0 @RichDialog f7 '' #zField
Cn0 @EndTask f8 '' #zField
Cn0 @RichDialog f9 '' #zField
Cn0 @PushWFArc f10 '' #zField
Cn0 @PushWFArc f11 '' #zField
Cn0 @TkArc f12 '' #zField
Cn0 @TkArc f13 '' #zField
Cn0 @PushWFArc f14 '' #zField
Cn0 @PushWFArc f15 '' #zField
Cn0 @InfoButton f16 '' #zField
Cn0 @AnnotationArc f17 '' #zField
Cn0 @RichDialog f18 '' #zField
Cn0 @PushWFArc f4 '' #zField
Cn0 @TkArc f5 '' #zField
Cn0 @InfoButton f3 '' #zField
Cn0 @InfoButton f19 '' #zField
Cn0 @AnnotationArc f20 '' #zField
Cn0 @InfoButton f21 '' #zField
Cn0 @AnnotationArc f22 '' #zField
>Proto Cn0 Cn0 Concurrent #zField
Cn0 f0 outLink start.ivp #txt
Cn0 f0 type workflow.businessdata.concurrent.Data #txt
Cn0 f0 inParamDecl '<> param;' #txt
Cn0 f0 actionDecl 'workflow.businessdata.concurrent.Data out;
' #txt
Cn0 f0 guid 156DB84CD001A9C8 #txt
Cn0 f0 requestEnabled true #txt
Cn0 f0 triggerEnabled false #txt
Cn0 f0 callSignature start() #txt
Cn0 f0 persist false #txt
Cn0 f0 startName '5.2: Concurrent Modification (Business Data)' #txt
Cn0 f0 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
Cn0 f0 showInStartList 1 #txt
Cn0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Cn0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cn0 f0 @C|.responsibility Everybody #txt
Cn0 f0 81 337 30 30 -23 17 #rect
Cn0 f0 @|StartRequestIcon #fIcon
Cn0 f2 actionDecl 'workflow.businessdata.concurrent.Data out;
' #txt
Cn0 f2 actionTable 'out=in1;
' #txt
Cn0 f2 outTypes "workflow.businessdata.concurrent.Data","workflow.businessdata.concurrent.Data" #txt
Cn0 f2 outLinks "TaskA.ivp","TaskB.ivp" #txt
Cn0 f2 taskData 'TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.NAM=Modify request description only
TaskA.PRI=2
TaskA.ROL=Everybody
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=0
TaskB.EXPRI=2
TaskB.EXROL=Everybody
TaskB.EXTYPE=0
TaskB.NAM=Modify whole request
TaskB.PRI=2
TaskB.ROL=Everybody
TaskB.SKIP_TASK_LIST=false
TaskB.TYPE=0' #txt
Cn0 f2 taskAction 'import ch.ivyteam.ivy.workflow.TaskDefinition;
List<TaskDefinition> taskDefinitions;
TaskDefinition taskDef;import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskDef = new TaskDefinition();
taskDef.setStartRequestPath("TaskA.ivp");
taskDef.setName(engine.expandMacros("Modify request description only"));
taskDef.setAutoStartTask(false);
taskDef.setActivator("Everybody");
taskDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskDef.setExpiryActivator("Everybody");
taskDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskDefinitions.add(taskDef);
taskDef = new TaskDefinition();
taskDef.setStartRequestPath("TaskB.ivp");
taskDef.setName(engine.expandMacros("Modify whole request"));
taskDef.setAutoStartTask(false);
taskDef.setActivator("Everybody");
taskDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskDef.setExpiryActivator("Everybody");
taskDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskDefinitions.add(taskDef);
' #txt
Cn0 f2 type workflow.businessdata.concurrent.Data #txt
Cn0 f2 template "" #txt
Cn0 f2 336 336 32 32 0 16 #rect
Cn0 f2 @|TaskSwitchIcon #fIcon
Cn0 f1 actionDecl 'workflow.businessdata.concurrent.Data out;
' #txt
Cn0 f1 actionTable 'out=in1;
' #txt
Cn0 f1 outTypes "workflow.businessdata.concurrent.Data" #txt
Cn0 f1 outLinks "TaskA.ivp" #txt
Cn0 f1 taskData 'TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.NAM=View merged request
TaskA.PRI=2
TaskA.ROL=Everybody
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=0' #txt
Cn0 f1 taskAction 'import ch.ivyteam.ivy.workflow.TaskDefinition;
List<TaskDefinition> taskDefinitions;
TaskDefinition taskDef;import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskDef = new TaskDefinition();
taskDef.setStartRequestPath("TaskA.ivp");
taskDef.setName(engine.expandMacros("View merged request"));
taskDef.setAutoStartTask(false);
taskDef.setActivator("Everybody");
taskDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskDef.setExpiryActivator("Everybody");
taskDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskDefinitions.add(taskDef);
' #txt
Cn0 f1 type workflow.businessdata.concurrent.Data #txt
Cn0 f1 template "" #txt
Cn0 f1 560 336 32 32 0 16 #rect
Cn0 f1 @|TaskSwitchIcon #fIcon
Cn0 f6 targetWindow NEW:card: #txt
Cn0 f6 targetDisplay TOP #txt
Cn0 f6 richDialogId workflow.businessdata.concurrent.ModifyDescription #txt
Cn0 f6 startMethod start(String) #txt
Cn0 f6 type workflow.businessdata.concurrent.Data #txt
Cn0 f6 requestActionDecl '<String requestId> param;' #txt
Cn0 f6 requestMappingAction 'param.requestId=in.id;
' #txt
Cn0 f6 responseActionDecl 'workflow.businessdata.concurrent.Data out;
' #txt
Cn0 f6 responseMappingAction 'out=in;
' #txt
Cn0 f6 windowConfiguration '* ' #txt
Cn0 f6 isAsynch false #txt
Cn0 f6 isInnerRd false #txt
Cn0 f6 userContext '* ' #txt
Cn0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Check, modify
Description</name>
        <nameStyle>25
</nameStyle>
    </language>
</elementInfo>
' #txt
Cn0 f6 400 266 128 44 -40 -15 #rect
Cn0 f6 @|RichDialogIcon #fIcon
Cn0 f7 targetWindow NEW:card: #txt
Cn0 f7 targetDisplay TOP #txt
Cn0 f7 richDialogId workflow.businessdata.concurrent.ModifyRequest #txt
Cn0 f7 startMethod start(String) #txt
Cn0 f7 type workflow.businessdata.concurrent.Data #txt
Cn0 f7 requestActionDecl '<String requestId> param;' #txt
Cn0 f7 requestMappingAction 'param.requestId=in.id;
' #txt
Cn0 f7 responseActionDecl 'workflow.businessdata.concurrent.Data out;
' #txt
Cn0 f7 responseMappingAction 'out=in;
' #txt
Cn0 f7 windowConfiguration '* ' #txt
Cn0 f7 isAsynch false #txt
Cn0 f7 isInnerRd false #txt
Cn0 f7 userContext '* ' #txt
Cn0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Modify whole
Procurement Request</name>
        <nameStyle>32
</nameStyle>
    </language>
</elementInfo>
' #txt
Cn0 f7 392 394 144 44 -54 -15 #rect
Cn0 f7 @|RichDialogIcon #fIcon
Cn0 f8 type workflow.businessdata.concurrent.Data #txt
Cn0 f8 785 337 30 30 0 15 #rect
Cn0 f8 @|EndIcon #fIcon
Cn0 f9 targetWindow NEW:card: #txt
Cn0 f9 targetDisplay TOP #txt
Cn0 f9 richDialogId workflow.businessdata.concurrent.ViewMergedRequest #txt
Cn0 f9 startMethod start(String) #txt
Cn0 f9 type workflow.businessdata.concurrent.Data #txt
Cn0 f9 requestActionDecl '<String requestId> param;' #txt
Cn0 f9 requestMappingAction 'param.requestId=in.id;
' #txt
Cn0 f9 responseActionDecl 'workflow.businessdata.concurrent.Data out;
' #txt
Cn0 f9 responseMappingAction 'out=in;
' #txt
Cn0 f9 windowConfiguration '* ' #txt
Cn0 f9 isAsynch false #txt
Cn0 f9 isInnerRd false #txt
Cn0 f9 userContext '* ' #txt
Cn0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>View merged
Request</name>
        <nameStyle>19
</nameStyle>
    </language>
</elementInfo>
' #txt
Cn0 f9 632 330 112 44 -38 -15 #rect
Cn0 f9 @|RichDialogIcon #fIcon
Cn0 f10 expr data #txt
Cn0 f10 outCond ivp=="TaskA.ivp" #txt
Cn0 f10 352 336 400 288 #arcP
Cn0 f10 1 352 288 #addKink
Cn0 f10 1 0.3322185605036241 0 0 #arcLabel
Cn0 f11 expr data #txt
Cn0 f11 outCond ivp=="TaskB.ivp" #txt
Cn0 f11 352 368 392 416 #arcP
Cn0 f11 1 352 416 #addKink
Cn0 f11 1 0.11881498793522999 0 0 #arcLabel
Cn0 f12 expr out #txt
Cn0 f12 type workflow.businessdata.concurrent.Data #txt
Cn0 f12 var in1 #txt
Cn0 f12 536 416 576 368 #arcP
Cn0 f12 1 576 416 #addKink
Cn0 f12 0 0.8859746521921745 0 0 #arcLabel
Cn0 f13 expr out #txt
Cn0 f13 type workflow.businessdata.concurrent.Data #txt
Cn0 f13 var in2 #txt
Cn0 f13 528 288 576 336 #arcP
Cn0 f13 1 576 288 #addKink
Cn0 f13 0 0.6714111344357544 0 0 #arcLabel
Cn0 f14 expr data #txt
Cn0 f14 outCond ivp=="TaskA.ivp" #txt
Cn0 f14 592 352 632 352 #arcP
Cn0 f15 expr out #txt
Cn0 f15 744 352 785 352 #arcP
Cn0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Instruction
Work on both Tasks in parallel. (Use two browser windows)
Finish the modify description task first and check what happens when finishing the other one.</name>
        <nameStyle>11,0
152
</nameStyle>
    </language>
</elementInfo>
' #txt
Cn0 f16 40 554 544 60 -268 -22 #rect
Cn0 f16 @|IBIcon #fIcon
Cn0 f17 312 554 343 359 #arcP
Cn0 f18 targetWindow NEW:card: #txt
Cn0 f18 targetDisplay TOP #txt
Cn0 f18 richDialogId workflow.businessdata.concurrent.CreateRequest #txt
Cn0 f18 startMethod start() #txt
Cn0 f18 type workflow.businessdata.concurrent.Data #txt
Cn0 f18 requestActionDecl '<> param;' #txt
Cn0 f18 responseActionDecl 'workflow.businessdata.concurrent.Data out;
' #txt
Cn0 f18 responseMappingAction 'out=in;
out.id=result.id;
' #txt
Cn0 f18 windowConfiguration '* ' #txt
Cn0 f18 isAsynch false #txt
Cn0 f18 isInnerRd false #txt
Cn0 f18 userContext '* ' #txt
Cn0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Create Request</name>
        <nameStyle>14
</nameStyle>
    </language>
</elementInfo>
' #txt
Cn0 f18 168 330 112 44 -44 -7 #rect
Cn0 f18 @|RichDialogIcon #fIcon
Cn0 f4 expr out #txt
Cn0 f4 111 352 168 352 #arcP
Cn0 f5 expr out #txt
Cn0 f5 type workflow.businessdata.concurrent.Data #txt
Cn0 f5 var in1 #txt
Cn0 f5 280 352 336 352 #arcP
Cn0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Concurrent modification of Business Data values
This use case handles the problematic of concurrent modification
of the same business data, e.g. in parallel processes.
When multiple participants (users) work on the same business data,
the process designer has to think about handling concurrent modification,
otherwise one process will override changes of the other process. 
Therefore the ivy.repo.save(val) method uses optimistic locking and will throw an
exception if the data was modified since loading it. This is implemented by 
versioning the data on the repository.
If the local data is not up-to-date it is recommended to reload the data with reload(val)
and re-apply the modifications. Other use cases are documented in the Public API.</name>
        <nameStyle>47,0
526
79
11,1
82
</nameStyle>
    </language>
</elementInfo>
' #txt
Cn0 f3 40 26 512 172 -253 -82 #rect
Cn0 f3 @|IBIcon #fIcon
Cn0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>makes use of the partial overwrite method.</name>
        <nameStyle>25
9,1
8
</nameStyle>
    </language>
</elementInfo>
' #txt
Cn0 f19 464 217 256 30 -124 -7 #rect
Cn0 f19 @|IBIcon #fIcon
Cn0 f20 592 247 464 266 #arcP
Cn0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>makes use of reload(val) when necessary and displays a warning</name>
        <nameStyle>13
11,1
38
</nameStyle>
    </language>
</elementInfo>
' #txt
Cn0 f21 464 473 384 30 -187 -7 #rect
Cn0 f21 @|IBIcon #fIcon
Cn0 f22 656 473 464 438 #arcP
>Proto Cn0 .type workflow.businessdata.concurrent.Data #txt
>Proto Cn0 .processKind NORMAL #txt
>Proto Cn0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto Cn0 0 0 32 24 18 0 #rect
>Proto Cn0 @|BIcon #fIcon
Cn0 f2 out f10 tail #connect
Cn0 f10 head f6 mainIn #connect
Cn0 f2 out f11 tail #connect
Cn0 f11 head f7 mainIn #connect
Cn0 f7 mainOut f12 tail #connect
Cn0 f12 head f1 in #connect
Cn0 f6 mainOut f13 tail #connect
Cn0 f13 head f1 in #connect
Cn0 f1 out f14 tail #connect
Cn0 f14 head f9 mainIn #connect
Cn0 f9 mainOut f15 tail #connect
Cn0 f15 head f8 mainIn #connect
Cn0 f16 ao f17 tail #connect
Cn0 f17 head f2 @CG|ai #connect
Cn0 f0 mainOut f4 tail #connect
Cn0 f4 head f18 mainIn #connect
Cn0 f18 mainOut f5 tail #connect
Cn0 f5 head f2 in #connect
Cn0 f19 ao f20 tail #connect
Cn0 f20 head f6 @CG|ai #connect
Cn0 f21 ao f22 tail #connect
Cn0 f22 head f7 @CG|ai #connect
