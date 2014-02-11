[Ivy]
[>Created: Mon Sep 09 09:31:43 CEST 2013]
13FCD703133237C4 3.17 #module
>Proto >Proto Collection #zClass
Ss0 SetDefaultProcesses Big #zClass
Ss0 B #cInfo
Ss0 #process
Ss0 @TextInP .resExport .resExport #zField
Ss0 @TextInP .type .type #zField
Ss0 @TextInP .processKind .processKind #zField
Ss0 @AnnotationInP-0n ai ai #zField
Ss0 @TextInP .xml .xml #zField
Ss0 @TextInP .responsibility .responsibility #zField
Ss0 @GridStep f1 '' #zField
Ss0 @StartRequest f0 '' #zField
Ss0 @EndTask f3 '' #zField
Ss0 @PushWFArc f4 '' #zField
Ss0 @Alternative f2 '' #zField
Ss0 @PushWFArc f5 '' #zField
Ss0 @RichDialog f10 '' #zField
Ss0 @StartRequest f7 '' #zField
Ss0 @StartRequest f9 '' #zField
Ss0 @StartRequest f12 '' #zField
Ss0 @GridStep f13 '' #zField
Ss0 @GridStep f14 '' #zField
Ss0 @GridStep f15 '' #zField
Ss0 @EndRequest f16 '' #zField
Ss0 @PushWFArc f17 '' #zField
Ss0 @PushWFArc f18 '' #zField
Ss0 @PushWFArc f19 '' #zField
Ss0 @PushWFArc f21 '' #zField
Ss0 @PushWFArc f22 '' #zField
Ss0 @PushWFArc f20 '' #zField
Ss0 @GridStep f23 '' #zField
Ss0 @PushWFArc f25 '' #zField
Ss0 @PushWFArc f28 '' #zField
Ss0 @PushWFArc f11 '' #zField
Ss0 @PushWFArc f6 '' #zField
>Proto Ss0 Ss0 SetDefaultProcesses #zField
Ss0 f1 actionDecl 'ch.ivyteam.wf.test.Data out;
' #txt
Ss0 f1 actionTable 'out=in;
' #txt
Ss0 f1 actionCode 'import ch.ivyteam.ivy.workflow.StandardProcessType;

ivy.wf.setStandardProcessImplementationLibrary(StandardProcessType.DEFAULT_PAGES_PROCESS_TYPES, in.processName);' #txt
Ss0 f1 type ch.ivyteam.wf.test.Data #txt
Ss0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set default process</name>
        <nameStyle>19
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f1 110 244 36 24 20 -2 #rect
Ss0 f1 @|StepIcon #fIcon
Ss0 f0 outLink SetDefaultProcess.ivp #txt
Ss0 f0 type ch.ivyteam.wf.test.Data #txt
Ss0 f0 inParamDecl '<java.lang.String processName> param;' #txt
Ss0 f0 inParamTable 'out.processName=param.processName;
' #txt
Ss0 f0 actionDecl 'ch.ivyteam.wf.test.Data out;
' #txt
Ss0 f0 guid 13FCD709F413CD9B #txt
Ss0 f0 requestEnabled true #txt
Ss0 f0 triggerEnabled false #txt
Ss0 f0 callSignature SetDefaultProcess(String) #txt
Ss0 f0 persist false #txt
Ss0 f0 startName 'Set Default Process' #txt
Ss0 f0 startDescription 'Set Default Process' #txt
Ss0 f0 taskData '#
#Thu Jul 11 15:20:17 CEST 2013
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.NAM=Set Default Process
' #txt
Ss0 f0 caseData '#
#Thu Jul 11 15:20:17 CEST 2013
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
case.name=Set Default Process
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
Ss0 f0 showInStartList 1 #txt
Ss0 f0 taskAndCaseSetupAction 'ivy.case.setName(engine.expandMacros("Set Default Process"));
import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setName(engine.expandMacros("Set Default Process"));
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>SetDefaultProcess.ivp</name>
        <nameStyle>21,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f0 @C|.responsibility Everybody #txt
Ss0 f0 115 51 26 26 14 0 #rect
Ss0 f0 @|StartRequestIcon #fIcon
Ss0 f3 type ch.ivyteam.wf.test.Data #txt
Ss0 f3 115 307 26 26 14 0 #rect
Ss0 f3 @|EndIcon #fIcon
Ss0 f4 expr out #txt
Ss0 f4 128 268 128 307 #arcP
Ss0 f2 type ch.ivyteam.wf.test.Data #txt
Ss0 f2 114 114 28 28 14 0 #rect
Ss0 f2 @|AlternativeIcon #fIcon
Ss0 f5 expr out #txt
Ss0 f5 128 77 128 114 #arcP
Ss0 f10 targetWindow NEW:card: #txt
Ss0 f10 targetDisplay TOP #txt
Ss0 f10 richDialogId ch.ivyteam.wf.test.SetDefaultProcess #txt
Ss0 f10 startMethod start() #txt
Ss0 f10 type ch.ivyteam.wf.test.Data #txt
Ss0 f10 requestActionDecl '<> param;' #txt
Ss0 f10 responseActionDecl 'ch.ivyteam.wf.test.Data out;
' #txt
Ss0 f10 responseMappingAction 'out=in;
out.processName=result.processName;
' #txt
Ss0 f10 windowConfiguration '* ' #txt
Ss0 f10 isAsynch false #txt
Ss0 f10 isInnerRd false #txt
Ss0 f10 userContext '* ' #txt
Ss0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>select default</name>
        <nameStyle>14
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f10 270 180 36 24 20 -2 #rect
Ss0 f10 @|RichDialogIcon #fIcon
Ss0 f7 outLink testDefaultHome.ivp #txt
Ss0 f7 type ch.ivyteam.wf.test.Data #txt
Ss0 f7 inParamDecl '<> param;' #txt
Ss0 f7 actionDecl 'ch.ivyteam.wf.test.Data out;
' #txt
Ss0 f7 guid 13FD17EB079D263B #txt
Ss0 f7 requestEnabled true #txt
Ss0 f7 triggerEnabled false #txt
Ss0 f7 callSignature testDefaultHome() #txt
Ss0 f7 persist false #txt
Ss0 f7 taskData '#
#Fri Jul 12 13:40:06 CEST 2013
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Ss0 f7 caseData '#
#Fri Jul 12 13:40:06 CEST 2013
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
Ss0 f7 showInStartList 1 #txt
Ss0 f7 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Ss0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>testDefaultHome.ivp</name>
        <nameStyle>19,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f7 @C|.responsibility Everybody #txt
Ss0 f7 435 51 26 26 14 0 #rect
Ss0 f7 @|StartRequestIcon #fIcon
Ss0 f9 outLink testDefaultProcesslist.ivp #txt
Ss0 f9 type ch.ivyteam.wf.test.Data #txt
Ss0 f9 inParamDecl '<> param;' #txt
Ss0 f9 actionDecl 'ch.ivyteam.wf.test.Data out;
' #txt
Ss0 f9 guid 13FD17FBECBCF0D8 #txt
Ss0 f9 requestEnabled true #txt
Ss0 f9 triggerEnabled false #txt
Ss0 f9 callSignature testDefaultProcesslist() #txt
Ss0 f9 persist false #txt
Ss0 f9 taskData '#
#Fri Jul 12 08:10:39 CEST 2013
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Ss0 f9 caseData '#
#Fri Jul 12 08:10:39 CEST 2013
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
Ss0 f9 showInStartList 1 #txt
Ss0 f9 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Ss0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>testDefaultProcesslist.ivp</name>
        <nameStyle>26,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f9 @C|.responsibility Everybody #txt
Ss0 f9 595 51 26 26 14 0 #rect
Ss0 f9 @|StartRequestIcon #fIcon
Ss0 f12 outLink testDefaultTaskList.ivp #txt
Ss0 f12 type ch.ivyteam.wf.test.Data #txt
Ss0 f12 inParamDecl '<> param;' #txt
Ss0 f12 actionDecl 'ch.ivyteam.wf.test.Data out;
' #txt
Ss0 f12 guid 13FD17FD92D31ECB #txt
Ss0 f12 requestEnabled true #txt
Ss0 f12 triggerEnabled false #txt
Ss0 f12 callSignature testDefaultTaskList() #txt
Ss0 f12 persist false #txt
Ss0 f12 taskData '#
#Fri Jul 12 08:10:29 CEST 2013
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Ss0 f12 caseData '#
#Fri Jul 12 08:10:29 CEST 2013
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
Ss0 f12 showInStartList 1 #txt
Ss0 f12 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Ss0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>testDefaultTaskList.ivp</name>
        <nameStyle>23,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f12 @C|.responsibility Everybody #txt
Ss0 f12 787 51 26 26 14 0 #rect
Ss0 f12 @|StartRequestIcon #fIcon
Ss0 f13 actionDecl 'ch.ivyteam.wf.test.Data out;
' #txt
Ss0 f13 actionTable 'out=in;
out.url=ivy.html.applicationHomeRef();
' #txt
Ss0 f13 type ch.ivyteam.wf.test.Data #txt
Ss0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set default home</name>
        <nameStyle>16
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f13 430 116 36 24 20 -2 #rect
Ss0 f13 @|StepIcon #fIcon
Ss0 f14 actionDecl 'ch.ivyteam.wf.test.Data out;
' #txt
Ss0 f14 actionTable 'out=in;
out.url=ivy.html.processStartListRef();
' #txt
Ss0 f14 type ch.ivyteam.wf.test.Data #txt
Ss0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set default processlist</name>
        <nameStyle>23
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f14 590 116 36 24 20 -2 #rect
Ss0 f14 @|StepIcon #fIcon
Ss0 f15 actionDecl 'ch.ivyteam.wf.test.Data out;
' #txt
Ss0 f15 actionTable 'out=in;
out.url=ivy.html.taskListRef();
' #txt
Ss0 f15 type ch.ivyteam.wf.test.Data #txt
Ss0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set default tasklist</name>
        <nameStyle>20
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f15 782 116 36 24 20 -2 #rect
Ss0 f15 @|StepIcon #fIcon
Ss0 f16 type ch.ivyteam.wf.test.Data #txt
Ss0 f16 template "redirect.jsp" #txt
Ss0 f16 595 179 26 26 14 0 #rect
Ss0 f16 @|EndRequestIcon #fIcon
Ss0 f17 expr out #txt
Ss0 f17 448 77 448 116 #arcP
Ss0 f18 expr out #txt
Ss0 f18 608 77 608 116 #arcP
Ss0 f19 expr out #txt
Ss0 f19 800 77 800 116 #arcP
Ss0 f21 expr out #txt
Ss0 f21 608 140 608 179 #arcP
Ss0 f22 expr out #txt
Ss0 f22 800 140 621 192 #arcP
Ss0 f22 1 800 192 #addKink
Ss0 f22 1 0.33137363891417965 0 0 #arcLabel
Ss0 f20 expr out #txt
Ss0 f20 448 140 595 192 #arcP
Ss0 f20 1 448 192 #addKink
Ss0 f20 1 0.29680262194696333 0 0 #arcLabel
Ss0 f23 actionDecl 'ch.ivyteam.wf.test.Data out;
' #txt
Ss0 f23 actionTable 'out=in;
' #txt
Ss0 f23 actionCode 'import ch.ivyteam.ivy.workflow.StandardProcessType;

String processContain = in.processName.toLowerCase();

for (StandardProcessType processType : StandardProcessType.DEFAULT_PAGES_PROCESS_TYPES)
{
	for(String libraryName : ivy.wf.getAvailableStandardProcessImplementations(processType))
	{	
		if(libraryName.toLowerCase().contains(processContain))
		{
			out.processName = libraryName;
			break;
		}
	}
}' #txt
Ss0 f23 type ch.ivyteam.wf.test.Data #txt
Ss0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get library name</name>
        <nameStyle>16
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f23 110 180 36 24 20 -2 #rect
Ss0 f23 @|StepIcon #fIcon
Ss0 f25 expr out #txt
Ss0 f25 128 204 128 244 #arcP
Ss0 f28 expr in #txt
Ss0 f28 outCond 'in.processName != ""' #txt
Ss0 f28 128 142 128 180 #arcP
Ss0 f11 expr in #txt
Ss0 f11 142 128 288 180 #arcP
Ss0 f11 1 288 128 #addKink
Ss0 f11 0 0.24462721059109382 0 0 #arcLabel
Ss0 f6 expr out #txt
Ss0 f6 288 204 146 256 #arcP
Ss0 f6 1 288 256 #addKink
Ss0 f6 1 0.2981740066584393 0 0 #arcLabel
>Proto Ss0 .type ch.ivyteam.wf.test.Data #txt
>Proto Ss0 .processKind NORMAL #txt
>Proto Ss0 0 0 32 24 18 0 #rect
>Proto Ss0 @|BIcon #fIcon
Ss0 f1 mainOut f4 tail #connect
Ss0 f4 head f3 mainIn #connect
Ss0 f0 mainOut f5 tail #connect
Ss0 f5 head f2 in #connect
Ss0 f7 mainOut f17 tail #connect
Ss0 f17 head f13 mainIn #connect
Ss0 f9 mainOut f18 tail #connect
Ss0 f18 head f14 mainIn #connect
Ss0 f12 mainOut f19 tail #connect
Ss0 f19 head f15 mainIn #connect
Ss0 f13 mainOut f20 tail #connect
Ss0 f20 head f16 mainIn #connect
Ss0 f14 mainOut f21 tail #connect
Ss0 f21 head f16 mainIn #connect
Ss0 f15 mainOut f22 tail #connect
Ss0 f22 head f16 mainIn #connect
Ss0 f23 mainOut f25 tail #connect
Ss0 f25 head f1 mainIn #connect
Ss0 f2 out f28 tail #connect
Ss0 f28 head f23 mainIn #connect
Ss0 f2 out f11 tail #connect
Ss0 f11 head f10 mainIn #connect
Ss0 f10 mainOut f6 tail #connect
Ss0 f6 head f1 mainIn #connect
