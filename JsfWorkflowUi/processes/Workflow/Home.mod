[Ivy]
[>Created: Tue May 28 11:35:59 CEST 2013]
13EACA2A989BCC3D 3.17 #module
>Proto >Proto Collection #zClass
He0 Home Big #zClass
He0 B #cInfo
He0 #process
He0 @TextInP .resExport .resExport #zField
He0 @TextInP .type .type #zField
He0 @TextInP .processKind .processKind #zField
He0 @AnnotationInP-0n ai ai #zField
He0 @TextInP .xml .xml #zField
He0 @TextInP .responsibility .responsibility #zField
He0 @StartRequest f1 '' #zField
He0 @RichDialog f4 '' #zField
He0 @PushWFArc f5 '' #zField
He0 @EndTask f2 '' #zField
He0 @PushWFArc f3 '' #zField
He0 @StartRequest f0 '' #zField
He0 @GridStep f6 '' #zField
He0 @PushWFArc f7 '' #zField
He0 @PushWFArc f8 '' #zField
>Proto He0 He0 Home #zField
He0 f1 outLink DefaultApplicationHomePage.ivp #txt
He0 f1 type ch.ivyteam.wf.Data #txt
He0 f1 inParamDecl '<> param;' #txt
He0 f1 actionDecl 'ch.ivyteam.wf.Data out;
' #txt
He0 f1 guid 13EACA303A170FD7 #txt
He0 f1 requestEnabled true #txt
He0 f1 triggerEnabled false #txt
He0 f1 callSignature DefaultApplicationHomePage() #txt
He0 f1 persist false #txt
He0 f1 startName 'Workflow Home' #txt
He0 f1 startDescription 'Workflow UI Startpage' #txt
He0 f1 taskData '#
#Tue May 28 11:26:13 CEST 2013
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
He0 f1 caseData '#
#Tue May 28 11:26:13 CEST 2013
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
He0 f1 showInStartList 1 #txt
He0 f1 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
He0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>DefaultApplicationHomePage</name>
        <nameStyle>26,5,7
</nameStyle>
        <desc>This start is used to overwrite the default application home.
Use /ivy/wf/applicationHome to call it.
ivy.html.applicationHomeRef() will return a link to this process.</desc>
    </language>
</elementInfo>
' #txt
He0 f1 @C|.responsibility Everybody #txt
He0 f1 115 51 26 26 14 0 #rect
He0 f1 @|StartRequestIcon #fIcon
He0 f4 targetWindow NEW:card: #txt
He0 f4 targetDisplay TOP #txt
He0 f4 richDialogId ch.ivyteam.wf.workflow.Home #txt
He0 f4 startMethod start() #txt
He0 f4 type ch.ivyteam.wf.Data #txt
He0 f4 requestActionDecl '<> param;' #txt
He0 f4 responseActionDecl 'ch.ivyteam.wf.Data out;
' #txt
He0 f4 responseMappingAction 'out=in;
' #txt
He0 f4 windowConfiguration '* ' #txt
He0 f4 isAsynch false #txt
He0 f4 isInnerRd false #txt
He0 f4 userContext '* ' #txt
He0 f4 110 116 36 24 20 -2 #rect
He0 f4 @|RichDialogIcon #fIcon
He0 f5 expr out #txt
He0 f5 128 77 128 116 #arcP
He0 f5 0 0.49999999999999994 0 0 #arcLabel
He0 f2 type ch.ivyteam.wf.Data #txt
He0 f2 115 179 26 26 14 0 #rect
He0 f2 @|EndIcon #fIcon
He0 f3 expr out #txt
He0 f3 128 140 128 179 #arcP
He0 f0 outLink Logout.ivp #txt
He0 f0 type ch.ivyteam.wf.Data #txt
He0 f0 inParamDecl '<> param;' #txt
He0 f0 actionDecl 'ch.ivyteam.wf.Data out;
' #txt
He0 f0 guid 13EB179C30287FC0 #txt
He0 f0 requestEnabled true #txt
He0 f0 triggerEnabled false #txt
He0 f0 callSignature Logout() #txt
He0 f0 persist false #txt
He0 f0 startName Logout #txt
He0 f0 taskData '#
#Tue May 21 07:35:40 CEST 2013
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
He0 f0 caseData '#
#Tue May 21 07:35:40 CEST 2013
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
He0 f0 showInStartList 0 #txt
He0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
He0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Logout.ivp</name>
        <nameStyle>10,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
He0 f0 @C|.responsibility Everybody #txt
He0 f0 339 51 26 26 14 0 #rect
He0 f0 @|StartRequestIcon #fIcon
He0 f6 actionDecl 'ch.ivyteam.wf.Data out;
' #txt
He0 f6 actionTable 'out=in;
' #txt
He0 f6 actionCode ivy.session.logoutSessionUser(ivy.task.getId()); #txt
He0 f6 type ch.ivyteam.wf.Data #txt
He0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>logout</name>
        <nameStyle>6
</nameStyle>
    </language>
</elementInfo>
' #txt
He0 f6 334 116 36 24 20 -2 #rect
He0 f6 @|StepIcon #fIcon
He0 f7 expr out #txt
He0 f7 352 77 352 116 #arcP
He0 f8 expr out #txt
He0 f8 334 128 146 128 #arcP
>Proto He0 .type ch.ivyteam.wf.Data #txt
>Proto He0 .processKind NORMAL #txt
>Proto He0 0 0 32 24 18 0 #rect
>Proto He0 @|BIcon #fIcon
He0 f1 mainOut f5 tail #connect
He0 f5 head f4 mainIn #connect
He0 f4 mainOut f3 tail #connect
He0 f3 head f2 mainIn #connect
He0 f0 mainOut f7 tail #connect
He0 f7 head f6 mainIn #connect
He0 f6 mainOut f8 tail #connect
He0 f8 head f4 mainIn #connect
