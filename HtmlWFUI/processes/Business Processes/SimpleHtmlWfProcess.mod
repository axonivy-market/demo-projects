[Ivy]
[>Created: Mon Mar 08 11:08:26 CET 2010]
125550AEC10AE7A1 3.14 #module
>Proto >Proto Collection #zClass
Ss0 SimpleHtmlWfProcess Big #zClass
Ss0 B #cInfo
Ss0 #process
Ss0 @TextInP .xml .xml #zField
Ss0 @TextInP .responsibility .responsibility #zField
Ss0 @MessageFlowInP-0n messageIn messageIn #zField
Ss0 @MessageFlowOutP-0n messageOut messageOut #zField
Ss0 @TextInP .resExport .resExport #zField
Ss0 @TextInP .type .type #zField
Ss0 @TextInP .processKind .processKind #zField
Ss0 @AnnotationInP-0n ai ai #zField
Ss0 @StartRequest f0 '' #zField
Ss0 @Page f1 '' #zField
Ss0 @TaskSwitch f2 '' #zField
Ss0 @PushWFArc f3 '' #zField
Ss0 @TkArc f4 '' #zField
Ss0 @Page f5 '' #zField
Ss0 @Page f6 '' #zField
Ss0 @EndTask f7 '' #zField
Ss0 @EndTask f8 '' #zField
Ss0 @PushWFArc f9 '' #zField
Ss0 @PushWFArc f10 '' #zField
Ss0 @PushWFArc f11 '' #zField
Ss0 @PushWFArc f12 '' #zField
>Proto Ss0 Ss0 SimpleHtmlWfProcess #zField
Ss0 f0 outLink start1.ivp #txt
Ss0 f0 type htmlwfui.Data #txt
Ss0 f0 actionDecl 'htmlwfui.Data out;' #txt
Ss0 f0 requestEnabled true #txt
Ss0 f0 triggerEnabled false #txt
Ss0 f0 callSignature start1() #txt
Ss0 f0 startName 'Simple HTML WF Process' #txt
Ss0 f0 taskData '#
#Mon Mar 08 10:38:27 CET 2010
.DESC=
.NAM=Simple HTML WF Process
' #txt
Ss0 f0 caseData '#
#Thu Dec 03 16:03:34 CET 2009
businessMilestone.timestamp=
subType.code=
mainContact.id=
mainContact.name=
processCategory.name=
businessPriority=
processCategory.code=
mainContact.docDb.code=
mainContact.type=
businessObject.folder.id=
businessObject.docDb.code=
process.name=
businessCreator.user=
businessStart.timestamp=
process.code=
type.name=
businessObject.name=
type.code=
businessObject.code=
correspondent.id=
case.name=
mainContact.folder.id=
subType.name=
case.description=
' #txt
Ss0 f0 showInStartList 1 #txt
Ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start1</name>
        <nameStyle>6,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f0 @C|.responsibility Everybody #txt
Ss0 f0 59 59 26 26 14 0 #rect
Ss0 f0 @|StartRequestIcon #fIcon
Ss0 f1 outTypes "htmlwfui.Data" #txt
Ss0 f1 outLinks "LinkA.ivp" #txt
Ss0 f1 template "Page1.ivd" #txt
Ss0 f1 type htmlwfui.Data #txt
Ss0 f1 skipLink skip.ivp #txt
Ss0 f1 sortLink sort.ivp #txt
Ss0 f1 templateWizard '#
#Thu Dec 03 15:59:11 CET 2009
' #txt
Ss0 f1 pageArchivingActivated false #txt
Ss0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Page1</name>
        <nameStyle>5,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f1 @C|.responsibility Everybody #txt
Ss0 f1 54 124 36 24 20 -2 #rect
Ss0 f1 @|PageIcon #fIcon
Ss0 f2 actionDecl 'htmlwfui.Data out;
' #txt
Ss0 f2 actionTable 'out=in1;
' #txt
Ss0 f2 outTypes "htmlwfui.Data","htmlwfui.Data" #txt
Ss0 f2 outLinks "TaskA.ivp","TaskB.ivp" #txt
Ss0 f2 caseData '#
#Thu Dec 03 16:00:20 CET 2009
businessMilestone.timestamp=
subType.code=
mainContact.id=
mainContact.name=
processCategory.name=
businessPriority=
processCategory.code=
mainContact.docDb.code=
mainContact.type=
businessObject.folder.id=
businessObject.docDb.code=
process.name=
businessCreator.user=
businessStart.timestamp=
process.code=
type.name=
businessObject.name=
type.code=
businessObject.code=
correspondent.id=
case.name=
mainContact.folder.id=
subType.name=
case.description=
' #txt
Ss0 f2 taskData '#
#Thu Dec 03 16:00:20 CET 2009
TaskB.PRI=2
TaskB.EXROL=Everybody
TaskA.PRI=2
TaskA.EXPRI=2
TaskA.TYPE=0
TaskB.NAM=Aufgabe 2b an Messaging
TaskB.ROL=GR_BEVE_Messaging
TaskA.NAM=Aufgabe 2a f\u00FCr SichAdmin
TaskB.EXTYPE=0
TaskA.ROL=GR_BEVE_SichAdmin
TaskB.TYPE=0
TaskA.EXROL=Everybody
TaskB.EXPRI=2
TaskA.EXTYPE=0
' #txt
Ss0 f2 taskAction 'import ch.ivyteam.ivy.workflow.TaskDefinition;
List<TaskDefinition> taskDefinitions;
TaskDefinition taskDef;taskDef = new TaskDefinition();
taskDef.setStartRequestPath("125550AEC10AE7A1/125550AEC10AE7A1-f2/TaskA.ivp");
taskDef.setUserFriendlyStartRequestPath("TaskA.ivp");
taskDef.setName(engine.expandMacros("Aufgabe 2a für SichAdmin"));
taskDef.setAutoStartTask(false);
taskDef.setActivator("GR_BEVE_SichAdmin");
taskDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskDef.setExpiryActivator("Everybody");
taskDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskDefinitions.add(taskDef);
taskDef = new TaskDefinition();
taskDef.setStartRequestPath("125550AEC10AE7A1/125550AEC10AE7A1-f2/TaskB.ivp");
taskDef.setUserFriendlyStartRequestPath("TaskB.ivp");
taskDef.setName(engine.expandMacros("Aufgabe 2b an Messaging"));
taskDef.setAutoStartTask(false);
taskDef.setActivator("GR_BEVE_Messaging");
taskDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskDef.setExpiryActivator("Everybody");
taskDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskDefinitions.add(taskDef);
' #txt
Ss0 f2 type htmlwfui.Data #txt
Ss0 f2 template "" #txt
Ss0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ss0 f2 58 186 28 28 14 0 #rect
Ss0 f2 @|TaskSwitchIcon #fIcon
Ss0 f3 expr out #txt
Ss0 f3 72 85 72 124 #arcP
Ss0 f4 expr data #txt
Ss0 f4 outCond ivp=="LinkA.ivp" #txt
Ss0 f4 type htmlwfui.Data #txt
Ss0 f4 var in1 #txt
Ss0 f4 72 148 72 186 #arcP
Ss0 f5 outTypes "htmlwfui.Data" #txt
Ss0 f5 outLinks "LinkA.ivp" #txt
Ss0 f5 template "Page2a.ivd" #txt
Ss0 f5 type htmlwfui.Data #txt
Ss0 f5 skipLink skip.ivp #txt
Ss0 f5 sortLink sort.ivp #txt
Ss0 f5 templateWizard '#
#Thu Dec 03 16:03:00 CET 2009
' #txt
Ss0 f5 pageArchivingActivated false #txt
Ss0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Page2a</name>
        <nameStyle>6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f5 @C|.responsibility Everybody #txt
Ss0 f5 54 260 36 24 20 -2 #rect
Ss0 f5 @|PageIcon #fIcon
Ss0 f6 outTypes "htmlwfui.Data" #txt
Ss0 f6 outLinks "LinkA.ivp" #txt
Ss0 f6 template "Page2a.ivd" #txt
Ss0 f6 type htmlwfui.Data #txt
Ss0 f6 skipLink skip.ivp #txt
Ss0 f6 sortLink sort.ivp #txt
Ss0 f6 templateWizard '#
#Thu Dec 03 16:03:06 CET 2009
' #txt
Ss0 f6 pageArchivingActivated false #txt
Ss0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Page2b</name>
        <nameStyle>6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f6 @C|.responsibility Everybody #txt
Ss0 f6 158 260 36 24 20 -2 #rect
Ss0 f6 @|PageIcon #fIcon
Ss0 f7 type htmlwfui.Data #txt
Ss0 f7 59 355 26 26 14 0 #rect
Ss0 f7 @|EndIcon #fIcon
Ss0 f8 type htmlwfui.Data #txt
Ss0 f8 163 355 26 26 14 0 #rect
Ss0 f8 @|EndIcon #fIcon
Ss0 f9 expr data #txt
Ss0 f9 outCond ivp=="TaskA.ivp" #txt
Ss0 f9 72 214 72 260 #arcP
Ss0 f10 expr data #txt
Ss0 f10 outCond ivp=="LinkA.ivp" #txt
Ss0 f10 72 284 72 355 #arcP
Ss0 f11 expr data #txt
Ss0 f11 outCond ivp=="TaskB.ivp" #txt
Ss0 f11 86 200 176 260 #arcP
Ss0 f11 1 176 200 #addKink
Ss0 f11 0 0.824168763059249 0 0 #arcLabel
Ss0 f12 expr data #txt
Ss0 f12 outCond ivp=="LinkA.ivp" #txt
Ss0 f12 176 284 176 355 #arcP
>Proto Ss0 .type htmlwfui.Data #txt
>Proto Ss0 .processKind NORMAL #txt
>Proto Ss0 0 0 32 24 18 0 #rect
>Proto Ss0 @|BIcon #fIcon
Ss0 f0 mainOut f3 tail #connect
Ss0 f3 head f1 mainIn #connect
Ss0 f1 out f4 tail #connect
Ss0 f4 head f2 in #connect
Ss0 f2 out f9 tail #connect
Ss0 f9 head f5 mainIn #connect
Ss0 f5 out f10 tail #connect
Ss0 f10 head f7 mainIn #connect
Ss0 f2 out f11 tail #connect
Ss0 f11 head f6 mainIn #connect
Ss0 f6 out f12 tail #connect
Ss0 f12 head f8 mainIn #connect
