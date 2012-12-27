[Ivy]
[>Created: Fri Dec 21 12:01:55 CET 2012]
13BA873BC1BC6EFD 3.17 #module
>Proto >Proto Collection #zClass
TF0 TestWF Big #zClass
TF0 B #cInfo
TF0 #process
TF0 @TextInP .resExport .resExport #zField
TF0 @TextInP .type .type #zField
TF0 @TextInP .processKind .processKind #zField
TF0 @AnnotationInP-0n ai ai #zField
TF0 @TextInP .xml .xml #zField
TF0 @TextInP .responsibility .responsibility #zField
TF0 @StartRequest f0 '' #zField
TF0 @Page f1 '' #zField
TF0 @Page f2 '' #zField
TF0 @EndTask f3 '' #zField
TF0 @TaskSwitchSimple f4 '' #zField
TF0 @PushWFArc f5 '' #zField
TF0 @TkArc f6 '' #zField
TF0 @PushWFArc f7 '' #zField
TF0 @PushWFArc f8 '' #zField
TF0 @StartRequest f9 '' #zField
TF0 @EndTask f11 '' #zField
TF0 @TaskSwitchSimple f13 '' #zField
TF0 @RichDialog f10 '' #zField
TF0 @RichDialog f12 '' #zField
TF0 @PushWFArc f14 '' #zField
TF0 @TkArc f15 '' #zField
TF0 @PushWFArc f16 '' #zField
TF0 @PushWFArc f17 '' #zField
TF0 @RichDialog f18 '' #zField
TF0 @TaskSwitchSimple f19 '' #zField
TF0 @EndTask f20 '' #zField
TF0 @RichDialog f21 '' #zField
TF0 @StartRequest f22 '' #zField
TF0 @PushWFArc f23 '' #zField
TF0 @TkArc f24 '' #zField
TF0 @PushWFArc f25 '' #zField
TF0 @PushWFArc f26 '' #zField
TF0 @StartRequest f27 '' #zField
TF0 @RichDialog f28 '' #zField
TF0 @PushWFArc f29 '' #zField
TF0 @EndTask f30 '' #zField
TF0 @PushWFArc f31 '' #zField
>Proto TF0 TF0 TestWF #zField
TF0 f0 outLink start.ivp #txt
TF0 f0 type htmlwfui.Data #txt
TF0 f0 inParamDecl '<> param;' #txt
TF0 f0 actionDecl 'htmlwfui.Data out;
' #txt
TF0 f0 guid 13BA873C9F6FCB5B #txt
TF0 f0 requestEnabled true #txt
TF0 f0 triggerEnabled false #txt
TF0 f0 callSignature start() #txt
TF0 f0 persist false #txt
TF0 f0 startName 'TestWF Html' #txt
TF0 f0 startDescription 'dasdfdadasff
adfasdfadssfadfafdsf' #txt
TF0 f0 taskData '#
#Thu Dec 20 13:47:46 CET 2012
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.NAM=Start Task
TaskTriggered.EXROL=Everybody
' #txt
TF0 f0 caseData '#
#Thu Dec 20 13:47:46 CET 2012
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
case.name=A Html Case
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
TF0 f0 wfuser 1 #txt
TF0 f0 showInStartList 1 #txt
TF0 f0 taskAndCaseSetupAction 'ivy.case.setName(engine.expandMacros("A Html Case"));
import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setName(engine.expandMacros("Start Task"));
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
TF0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
TF0 f0 @C|.responsibility Everybody #txt
TF0 f0 99 35 26 26 21 -6 #rect
TF0 f0 @|StartRequestIcon #fIcon
TF0 f1 outTypes "htmlwfui.Data" #txt
TF0 f1 outLinks "LinkA.ivp" #txt
TF0 f1 template "/ProcessPages/TestWF/Page1.ivc" #txt
TF0 f1 type htmlwfui.Data #txt
TF0 f1 skipLink skip.ivp #txt
TF0 f1 sortLink sort.ivp #txt
TF0 f1 94 100 36 24 20 -2 #rect
TF0 f1 @|PageIcon #fIcon
TF0 f2 outTypes "htmlwfui.Data" #txt
TF0 f2 outLinks "LinkA.ivp" #txt
TF0 f2 template "/ProcessPages/TestWF/Page2.ivc" #txt
TF0 f2 type htmlwfui.Data #txt
TF0 f2 skipLink skip.ivp #txt
TF0 f2 sortLink sort.ivp #txt
TF0 f2 94 260 36 24 20 -2 #rect
TF0 f2 @|PageIcon #fIcon
TF0 f3 type htmlwfui.Data #txt
TF0 f3 99 355 26 26 14 0 #rect
TF0 f3 @|EndIcon #fIcon
TF0 f4 actionDecl 'htmlwfui.Data out;
' #txt
TF0 f4 actionTable 'out=in1;
' #txt
TF0 f4 outTypes "htmlwfui.Data" #txt
TF0 f4 outLinks "TaskA.ivp" #txt
TF0 f4 caseData '#
#Mon Dec 17 11:46:35 CET 2012
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
TF0 f4 taskData '#
#Mon Dec 17 11:46:35 CET 2012
TaskA.DESC=mache Task1
TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.NAM=Task1 Html
TaskA.PRI=2
TaskA.ROL=Everybody
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=0
' #txt
TF0 f4 taskAction 'import ch.ivyteam.ivy.workflow.TaskDefinition;
List<TaskDefinition> taskDefinitions;
TaskDefinition taskDef;import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskDef = new TaskDefinition();
taskDef.setStartRequestPath("TaskA.ivp");
taskDef.setName(engine.expandMacros("Task1 Html"));
taskDef.setDescription(engine.expandMacros("mache Task1"));
taskDef.setAutoStartTask(false);
taskDef.setActivator("Everybody");
taskDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskDef.setExpiryActivator("Everybody");
taskDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskDefinitions.add(taskDef);
' #txt
TF0 f4 type htmlwfui.Data #txt
TF0 f4 template "" #txt
TF0 f4 98 170 28 28 14 0 #rect
TF0 f4 @|TaskSwitchSimpleIcon #fIcon
TF0 f5 expr out #txt
TF0 f5 112 61 112 100 #arcP
TF0 f6 expr data #txt
TF0 f6 outCond ivp=="LinkA.ivp" #txt
TF0 f6 type htmlwfui.Data #txt
TF0 f6 var in1 #txt
TF0 f6 112 124 112 170 #arcP
TF0 f7 expr data #txt
TF0 f7 outCond ivp=="TaskA.ivp" #txt
TF0 f7 112 198 112 260 #arcP
TF0 f8 expr data #txt
TF0 f8 outCond ivp=="LinkA.ivp" #txt
TF0 f8 112 284 112 355 #arcP
TF0 f9 outLink start2.ivp #txt
TF0 f9 type htmlwfui.Data #txt
TF0 f9 inParamDecl '<> param;' #txt
TF0 f9 actionDecl 'htmlwfui.Data out;
' #txt
TF0 f9 guid 13BA876CBD010B59 #txt
TF0 f9 requestEnabled true #txt
TF0 f9 triggerEnabled false #txt
TF0 f9 callSignature start2() #txt
TF0 f9 persist false #txt
TF0 f9 startName 'TestWF Jsf' #txt
TF0 f9 startDescription 'dasdfdadasff
adfasdfadssfadfafdsf' #txt
TF0 f9 taskData '#
#Thu Dec 20 12:45:58 CET 2012
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
TF0 f9 caseData '#
#Thu Dec 20 12:45:58 CET 2012
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
TF0 f9 wfuser 1 #txt
TF0 f9 showInStartList 1 #txt
TF0 f9 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
TF0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start2.ivp (JSF)</name>
        <nameStyle>16,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
TF0 f9 @C|.responsibility Everybody #txt
TF0 f9 259 35 26 26 21 -6 #rect
TF0 f9 @|StartRequestIcon #fIcon
TF0 f11 type htmlwfui.Data #txt
TF0 f11 259 355 26 26 14 0 #rect
TF0 f11 @|EndIcon #fIcon
TF0 f13 actionDecl 'htmlwfui.Data out;
' #txt
TF0 f13 actionTable 'out=in1;
' #txt
TF0 f13 outTypes "htmlwfui.Data" #txt
TF0 f13 outLinks "TaskA.ivp" #txt
TF0 f13 caseData '#
#Mon Dec 17 11:46:15 CET 2012
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
TF0 f13 taskData '#
#Mon Dec 17 11:46:15 CET 2012
TaskA.DESC=mache Task1
TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.NAM=Task1 Jsf
TaskA.PRI=2
TaskA.ROL=Everybody
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=0
' #txt
TF0 f13 taskAction 'import ch.ivyteam.ivy.workflow.TaskDefinition;
List<TaskDefinition> taskDefinitions;
TaskDefinition taskDef;import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskDef = new TaskDefinition();
taskDef.setStartRequestPath("TaskA.ivp");
taskDef.setName(engine.expandMacros("Task1 Jsf"));
taskDef.setDescription(engine.expandMacros("mache Task1"));
taskDef.setAutoStartTask(false);
taskDef.setActivator("Everybody");
taskDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskDef.setExpiryActivator("Everybody");
taskDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskDefinitions.add(taskDef);
' #txt
TF0 f13 type htmlwfui.Data #txt
TF0 f13 template "" #txt
TF0 f13 258 170 28 28 14 0 #rect
TF0 f13 @|TaskSwitchSimpleIcon #fIcon
TF0 f10 targetWindow NEW:card: #txt
TF0 f10 targetDisplay TOP #txt
TF0 f10 richDialogId testwf.Dialog1 #txt
TF0 f10 startMethod start(String) #txt
TF0 f10 type htmlwfui.Data #txt
TF0 f10 requestActionDecl '<String txt> param;' #txt
TF0 f10 requestMappingAction 'param.txt=in.temp.caption;
' #txt
TF0 f10 responseActionDecl 'htmlwfui.Data out;
' #txt
TF0 f10 responseMappingAction 'out=in;
out.temp.caption=result.txt;
' #txt
TF0 f10 windowConfiguration '* ' #txt
TF0 f10 isAsynch false #txt
TF0 f10 isInnerRd false #txt
TF0 f10 userContext '* ' #txt
TF0 f10 254 100 36 24 20 -2 #rect
TF0 f10 @|RichDialogIcon #fIcon
TF0 f12 targetWindow NEW:card: #txt
TF0 f12 targetDisplay TOP #txt
TF0 f12 richDialogId testwf.Dialog2 #txt
TF0 f12 startMethod start(String) #txt
TF0 f12 type htmlwfui.Data #txt
TF0 f12 requestActionDecl '<String txt> param;' #txt
TF0 f12 requestMappingAction 'param.txt=in.temp.caption;
' #txt
TF0 f12 responseActionDecl 'htmlwfui.Data out;
' #txt
TF0 f12 responseMappingAction 'out=in;
out.temp.caption=result.txt;
' #txt
TF0 f12 windowConfiguration '* ' #txt
TF0 f12 isAsynch false #txt
TF0 f12 isInnerRd false #txt
TF0 f12 userContext '* ' #txt
TF0 f12 254 268 36 24 20 -2 #rect
TF0 f12 @|RichDialogIcon #fIcon
TF0 f14 expr out #txt
TF0 f14 272 61 272 100 #arcP
TF0 f15 expr out #txt
TF0 f15 type htmlwfui.Data #txt
TF0 f15 var in1 #txt
TF0 f15 272 124 272 170 #arcP
TF0 f16 expr data #txt
TF0 f16 outCond ivp=="TaskA.ivp" #txt
TF0 f16 272 198 272 268 #arcP
TF0 f17 expr out #txt
TF0 f17 272 292 272 355 #arcP
TF0 f18 targetWindow NEW #txt
TF0 f18 targetDisplay TOP #txt
TF0 f18 richDialogId ch.ivyteam.ivy.richdialog.rdpanels.basic.AutoRichDialog #txt
TF0 f18 startMethod start() #txt
TF0 f18 type htmlwfui.Data #txt
TF0 f18 requestActionDecl '<> param;' #txt
TF0 f18 responseActionDecl 'htmlwfui.Data out;
' #txt
TF0 f18 responseMappingAction 'out=in;
' #txt
TF0 f18 isAsynch false #txt
TF0 f18 isInnerRd false #txt
TF0 f18 414 268 36 24 20 -2 #rect
TF0 f18 @|RichDialogIcon #fIcon
TF0 f19 actionDecl 'htmlwfui.Data out;
' #txt
TF0 f19 actionTable 'out=in1;
' #txt
TF0 f19 outTypes "htmlwfui.Data" #txt
TF0 f19 outLinks "TaskA.ivp" #txt
TF0 f19 caseData '#
#Mon Dec 17 11:46:25 CET 2012
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
TF0 f19 taskData '#
#Mon Dec 17 11:46:25 CET 2012
TaskA.DESC=mache Task1
TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.NAM=Task1 ULC
TaskA.PRI=2
TaskA.ROL=Everybody
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=0
' #txt
TF0 f19 taskAction 'import ch.ivyteam.ivy.workflow.TaskDefinition;
List<TaskDefinition> taskDefinitions;
TaskDefinition taskDef;import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskDef = new TaskDefinition();
taskDef.setStartRequestPath("TaskA.ivp");
taskDef.setName(engine.expandMacros("Task1 ULC"));
taskDef.setDescription(engine.expandMacros("mache Task1"));
taskDef.setAutoStartTask(false);
taskDef.setActivator("Everybody");
taskDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskDef.setExpiryActivator("Everybody");
taskDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskDefinitions.add(taskDef);
' #txt
TF0 f19 type htmlwfui.Data #txt
TF0 f19 template "" #txt
TF0 f19 418 170 28 28 14 0 #rect
TF0 f19 @|TaskSwitchSimpleIcon #fIcon
TF0 f20 type htmlwfui.Data #txt
TF0 f20 419 355 26 26 14 0 #rect
TF0 f20 @|EndIcon #fIcon
TF0 f21 targetWindow NEW #txt
TF0 f21 targetDisplay TOP #txt
TF0 f21 richDialogId ch.ivyteam.ivy.richdialog.rdpanels.basic.AutoRichDialog #txt
TF0 f21 startMethod start() #txt
TF0 f21 type htmlwfui.Data #txt
TF0 f21 requestActionDecl '<> param;' #txt
TF0 f21 responseActionDecl 'htmlwfui.Data out;
' #txt
TF0 f21 responseMappingAction 'out=in;
' #txt
TF0 f21 isAsynch false #txt
TF0 f21 isInnerRd false #txt
TF0 f21 414 100 36 24 20 -2 #rect
TF0 f21 @|RichDialogIcon #fIcon
TF0 f22 outLink start22.ivp #txt
TF0 f22 type htmlwfui.Data #txt
TF0 f22 inParamDecl '<> param;' #txt
TF0 f22 actionDecl 'htmlwfui.Data out;
' #txt
TF0 f22 guid 13BA8779839D4255 #txt
TF0 f22 requestEnabled true #txt
TF0 f22 triggerEnabled false #txt
TF0 f22 callSignature start22() #txt
TF0 f22 persist false #txt
TF0 f22 startName 'TestWF RIA' #txt
TF0 f22 startDescription 'dasdfdadasff
adfasdfadssfadfafdsf' #txt
TF0 f22 taskData '#
#Mon Dec 17 11:45:29 CET 2012
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
TF0 f22 caseData '#
#Mon Dec 17 11:45:29 CET 2012
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
TF0 f22 wfuser 1 #txt
TF0 f22 showInStartList 1 #txt
TF0 f22 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
TF0 f22 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start3.ivp (RIA)</name>
        <nameStyle>16,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
TF0 f22 @C|.responsibility Everybody #txt
TF0 f22 419 35 26 26 21 -6 #rect
TF0 f22 @|StartRequestIcon #fIcon
TF0 f23 expr out #txt
TF0 f23 432 61 432 100 #arcP
TF0 f24 expr out #txt
TF0 f24 type htmlwfui.Data #txt
TF0 f24 var in1 #txt
TF0 f24 432 124 432 170 #arcP
TF0 f25 expr data #txt
TF0 f25 outCond ivp=="TaskA.ivp" #txt
TF0 f25 432 198 432 268 #arcP
TF0 f26 expr out #txt
TF0 f26 432 292 432 355 #arcP
TF0 f27 outLink start3.ivp #txt
TF0 f27 type htmlwfui.Data #txt
TF0 f27 inParamDecl '<> param;' #txt
TF0 f27 actionDecl 'htmlwfui.Data out;
' #txt
TF0 f27 guid 13BBD1CD623C460A #txt
TF0 f27 requestEnabled true #txt
TF0 f27 triggerEnabled false #txt
TF0 f27 callSignature start3() #txt
TF0 f27 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start3.ivp</name>
    </language>
</elementInfo>
' #txt
TF0 f27 @C|.responsibility Everybody #txt
TF0 f27 667 35 26 26 14 0 #rect
TF0 f27 @|StartRequestIcon #fIcon
TF0 f28 targetWindow NEW:card: #txt
TF0 f28 targetDisplay TOP #txt
TF0 f28 richDialogId testwf.Dialog1 #txt
TF0 f28 startMethod start(String) #txt
TF0 f28 type htmlwfui.Data #txt
TF0 f28 requestActionDecl '<String txt> param;' #txt
TF0 f28 requestMappingAction 'param.txt="hello World";
' #txt
TF0 f28 responseActionDecl 'htmlwfui.Data out;
' #txt
TF0 f28 responseMappingAction 'out=in;
' #txt
TF0 f28 windowConfiguration '* ' #txt
TF0 f28 isAsynch false #txt
TF0 f28 isInnerRd false #txt
TF0 f28 userContext '* ' #txt
TF0 f28 654 108 36 24 20 -2 #rect
TF0 f28 @|RichDialogIcon #fIcon
TF0 f29 expr out #txt
TF0 f29 678 60 673 108 #arcP
TF0 f30 type htmlwfui.Data #txt
TF0 f30 675 195 26 26 14 0 #rect
TF0 f30 @|EndIcon #fIcon
TF0 f31 expr out #txt
TF0 f31 674 132 685 195 #arcP
>Proto TF0 .type htmlwfui.Data #txt
>Proto TF0 .processKind NORMAL #txt
>Proto TF0 0 0 32 24 18 0 #rect
>Proto TF0 @|BIcon #fIcon
TF0 f0 mainOut f5 tail #connect
TF0 f5 head f1 mainIn #connect
TF0 f1 out f6 tail #connect
TF0 f6 head f4 in #connect
TF0 f4 out f7 tail #connect
TF0 f7 head f2 mainIn #connect
TF0 f2 out f8 tail #connect
TF0 f8 head f3 mainIn #connect
TF0 f9 mainOut f14 tail #connect
TF0 f14 head f10 mainIn #connect
TF0 f10 mainOut f15 tail #connect
TF0 f15 head f13 in #connect
TF0 f13 out f16 tail #connect
TF0 f16 head f12 mainIn #connect
TF0 f12 mainOut f17 tail #connect
TF0 f17 head f11 mainIn #connect
TF0 f22 mainOut f23 tail #connect
TF0 f23 head f21 mainIn #connect
TF0 f21 mainOut f24 tail #connect
TF0 f24 head f19 in #connect
TF0 f19 out f25 tail #connect
TF0 f25 head f18 mainIn #connect
TF0 f18 mainOut f26 tail #connect
TF0 f26 head f20 mainIn #connect
TF0 f27 mainOut f29 tail #connect
TF0 f29 head f28 mainIn #connect
TF0 f28 mainOut f31 tail #connect
TF0 f31 head f30 mainIn #connect
