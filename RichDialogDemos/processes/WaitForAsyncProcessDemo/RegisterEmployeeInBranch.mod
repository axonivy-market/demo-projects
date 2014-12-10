[Ivy]
[>Created: Fri May 06 12:24:17 CEST 2011]
1305428595F87756 3.17 #module
>Proto >Proto Collection #zClass
Rh0 RegisterEmployeeInBranch Big #zClass
Rh0 B #cInfo
Rh0 #process
Rh0 @TextInP .resExport .resExport #zField
Rh0 @TextInP .type .type #zField
Rh0 @TextInP .processKind .processKind #zField
Rh0 @AnnotationInP-0n ai ai #zField
Rh0 @TextInP .xml .xml #zField
Rh0 @TextInP .responsibility .responsibility #zField
Rh0 @StartRequest f0 '' #zField
Rh0 @EndTask f1 '' #zField
Rh0 @TaskSwitch f3 '' #zField
Rh0 @TkArc f4 '' #zField
Rh0 @RichDialog f5 '' #zField
Rh0 @PushWFArc f6 '' #zField
Rh0 @InfoButton f7 '' #zField
Rh0 @GridStep f8 '' #zField
Rh0 @PushWFArc f9 '' #zField
Rh0 @CallSub f10 '' #zField
Rh0 @PushWFArc f11 '' #zField
Rh0 @PushWFArc f2 '' #zField
Rh0 @InfoButton f12 '' #zField
Rh0 @AnnotationArc f13 '' #zField
Rh0 @AnnotationArc f14 '' #zField
>Proto Rh0 Rh0 RegisterEmployeeInBranch #zField
Rh0 f0 outLink registerEmplyoeeInBranch.ivp #txt
Rh0 f0 type ch.ivyteam.ivy.demo.waitforasyncprocess.Data #txt
Rh0 f0 inParamDecl '<java.lang.String name> param;' #txt
Rh0 f0 inParamTable 'out.name=param.name;
' #txt
Rh0 f0 actionDecl 'ch.ivyteam.ivy.demo.waitforasyncprocess.Data out;
' #txt
Rh0 f0 guid 12FC4B7AD898C486 #txt
Rh0 f0 requestEnabled false #txt
Rh0 f0 triggerEnabled true #txt
Rh0 f0 callSignature registerEmplyoeeInBranch(String) #txt
Rh0 f0 persist false #txt
Rh0 f0 taskData '#
#Fri May 06 12:01:22 CEST 2011
TaskTriggered.ROL=SYSTEM
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Rh0 f0 caseData '#
#Fri May 06 12:01:22 CEST 2011
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
Rh0 f0 showInStartList 1 #txt
Rh0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Rh0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>registerEmplyoeeInBranch(String)</name>
    </language>
</elementInfo>
' #txt
Rh0 f0 @C|.responsibility Everybody #txt
Rh0 f0 139 51 26 26 14 0 #rect
Rh0 f0 @|StartRequestIcon #fIcon
Rh0 f1 type ch.ivyteam.ivy.demo.waitforasyncprocess.Data #txt
Rh0 f1 139 403 26 26 14 0 #rect
Rh0 f1 @|EndIcon #fIcon
Rh0 f3 actionDecl 'ch.ivyteam.ivy.demo.waitforasyncprocess.Data out;
' #txt
Rh0 f3 actionTable 'out=in1;
' #txt
Rh0 f3 outTypes "ch.ivyteam.ivy.demo.waitforasyncprocess.Data" #txt
Rh0 f3 outLinks "TaskA.ivp" #txt
Rh0 f3 caseData '#
#Fri May 06 12:02:41 CEST 2011
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
Rh0 f3 taskData '#
#Fri May 06 12:02:41 CEST 2011
TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.NAM=Register <%\=in1.name%> in a branch
TaskA.PRI=2
TaskA.ROL=Everybody
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=0
' #txt
Rh0 f3 taskAction 'import ch.ivyteam.ivy.workflow.TaskDefinition;
List<TaskDefinition> taskDefinitions;
TaskDefinition taskDef;taskDef = new TaskDefinition();
taskDef.setStartRequestPath("TaskA.ivp");
taskDef.setName(engine.expandMacros("Register <%=in1.name%> in a branch"));
taskDef.setAutoStartTask(false);
taskDef.setActivator("Everybody");
taskDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskDef.setExpiryActivator("Everybody");
taskDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskDefinitions.add(taskDef);
' #txt
Rh0 f3 type ch.ivyteam.ivy.demo.waitforasyncprocess.Data #txt
Rh0 f3 template "" #txt
Rh0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>create Task</name>
        <nameStyle>11,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rh0 f3 138 130 28 28 14 0 #rect
Rh0 f3 @|TaskSwitchIcon #fIcon
Rh0 f4 expr out #txt
Rh0 f4 type ch.ivyteam.ivy.demo.waitforasyncprocess.Data #txt
Rh0 f4 var in1 #txt
Rh0 f4 152 77 152 130 #arcP
Rh0 f5 targetWindow NEW:card: #txt
Rh0 f5 targetDisplay TOP #txt
Rh0 f5 richDialogId ch.ivyteam.ivy.demo.waitforasyncprocess.RegisterEmployeeInBranch #txt
Rh0 f5 startMethod register(String) #txt
Rh0 f5 type ch.ivyteam.ivy.demo.waitforasyncprocess.Data #txt
Rh0 f5 requestActionDecl '<String name> param;' #txt
Rh0 f5 requestMappingAction 'param.name=in.name;
' #txt
Rh0 f5 responseActionDecl 'ch.ivyteam.ivy.demo.waitforasyncprocess.Data out;
' #txt
Rh0 f5 responseMappingAction 'out=in;
out.branch=result.branch;
' #txt
Rh0 f5 windowConfiguration '* ' #txt
Rh0 f5 isAsynch false #txt
Rh0 f5 isInnerRd false #txt
Rh0 f5 userContext '* ' #txt
Rh0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>open RD</name>
        <nameStyle>7,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rh0 f5 134 196 36 24 20 -2 #rect
Rh0 f5 @|RichDialogIcon #fIcon
Rh0 f6 expr data #txt
Rh0 f6 outCond ivp=="TaskA.ivp" #txt
Rh0 f6 152 158 152 196 #arcP
Rh0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>You have to make this start element a triggerable
and set the Responsible Role to SYSTEM</name>
        <nameStyle>88,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rh0 f7 376 34 288 60 -138 -19 #rect
Rh0 f7 @|IBIcon #fIcon
Rh0 f7 -5972572|-5972572|-16777216 #nodeStyle
Rh0 f8 actionDecl 'ch.ivyteam.ivy.demo.waitforasyncprocess.Data out;
' #txt
Rh0 f8 actionTable 'out=in;
' #txt
Rh0 f8 actionCode 'in.processParameter.putString("branch", in.branch);' #txt
Rh0 f8 type ch.ivyteam.ivy.demo.waitforasyncprocess.Data #txt
Rh0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>put the branch into the parameters</name>
        <nameStyle>34,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rh0 f8 134 268 36 24 20 -2 #rect
Rh0 f8 @|StepIcon #fIcon
Rh0 f9 expr out #txt
Rh0 f9 152 220 152 268 #arcP
Rh0 f10 type ch.ivyteam.ivy.demo.waitforasyncprocess.Data #txt
Rh0 f10 processCall 'Functional Processes/WaitForAsyncProcess/SignalEndOfAsyncProcess:signalEnd(String,ch.ivyteam.ivy.addons.process.parameter.ProcessParameter)' #txt
Rh0 f10 doCall true #txt
Rh0 f10 requestActionDecl '<java.lang.String parameterName,ch.ivyteam.ivy.addons.process.parameter.ProcessParameter parameter> param;
' #txt
Rh0 f10 requestMappingAction 'param.parameterName="RegisterInBranchProcess";
param.parameter=in.processParameter;
' #txt
Rh0 f10 responseActionDecl 'ch.ivyteam.ivy.demo.waitforasyncprocess.Data out;
' #txt
Rh0 f10 responseMappingAction 'out=in;
' #txt
Rh0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>signalEnd(String,ProcessParameter)</name>
        <nameStyle>34,5,7
</nameStyle>
        <desc>Tells our IntermediateEvent Bean that this process has ended now
and send the process parameters to it.</desc>
    </language>
</elementInfo>
' #txt
Rh0 f10 134 340 36 24 20 -2 #rect
Rh0 f10 @|CallSubIcon #fIcon
Rh0 f11 expr out #txt
Rh0 f11 152 292 152 340 #arcP
Rh0 f2 expr out #txt
Rh0 f2 152 364 152 403 #arcP
Rh0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>If you don''t want to send any data back to the waiting main process,
you don''t have to call signalEnd. Just let your process run into the end.</name>
        <nameStyle>69,7
73,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rh0 f12 290 394 396 60 -191 -15 #rect
Rh0 f12 @|IBIcon #fIcon
Rh0 f12 -5972572|-5972572|-16777216 #nodeStyle
Rh0 f13 290 424 170 361 #arcP
Rh0 f14 376 64 165 64 #arcP
>Proto Rh0 .type ch.ivyteam.ivy.demo.waitforasyncprocess.Data #txt
>Proto Rh0 .processKind NORMAL #txt
>Proto Rh0 0 0 32 24 18 0 #rect
>Proto Rh0 @|BIcon #fIcon
Rh0 f0 mainOut f4 tail #connect
Rh0 f4 head f3 in #connect
Rh0 f3 out f6 tail #connect
Rh0 f6 head f5 mainIn #connect
Rh0 f5 mainOut f9 tail #connect
Rh0 f9 head f8 mainIn #connect
Rh0 f8 mainOut f11 tail #connect
Rh0 f11 head f10 mainIn #connect
Rh0 f10 mainOut f2 tail #connect
Rh0 f2 head f1 mainIn #connect
Rh0 f12 ao f13 tail #connect
Rh0 f13 head f10 @CG|ai #connect
Rh0 f7 ao f14 tail #connect
Rh0 f14 head f0 @CG|ai #connect
