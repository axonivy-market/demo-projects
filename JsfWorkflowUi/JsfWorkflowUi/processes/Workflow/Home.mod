[Ivy]
[>Created: Thu Jul 11 15:46:49 CEST 2013]
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
He0 @EndTask f2 '' #zField
He0 @PushWFArc f3 '' #zField
He0 @StartRequest f0 '' #zField
He0 @GridStep f6 '' #zField
He0 @PushWFArc f7 '' #zField
He0 @PushWFArc f8 '' #zField
He0 @StartRequest f11 '' #zField
He0 @Alternative f13 '' #zField
He0 @GridStep f14 '' #zField
He0 @EndRequest f15 '' #zField
He0 @PushWFArc f17 '' #zField
He0 @Alternative f12 '' #zField
He0 @PushWFArc f18 '' #zField
He0 @PushWFArc f20 '' #zField
He0 @PushWFArc f5 '' #zField
He0 @PushWFArc f21 '' #zField
He0 @PushWFArc f22 '' #zField
He0 @PushWFArc f9 '' #zField
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
He0 f1 307 51 26 26 14 0 #rect
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
He0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>home</name>
        <nameStyle>4
</nameStyle>
    </language>
</elementInfo>
' #txt
He0 f4 302 116 36 24 20 -2 #rect
He0 f4 @|RichDialogIcon #fIcon
He0 f2 type ch.ivyteam.wf.Data #txt
He0 f2 307 179 26 26 14 0 #rect
He0 f2 @|EndIcon #fIcon
He0 f3 expr out #txt
He0 f3 320 140 320 179 #arcP
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
He0 f0 499 51 26 26 14 0 #rect
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
He0 f6 494 116 36 24 20 -2 #rect
He0 f6 @|StepIcon #fIcon
He0 f7 expr out #txt
He0 f7 512 77 512 116 #arcP
He0 f8 expr out #txt
He0 f8 494 128 338 128 #arcP
He0 f11 outLink DefaultEndPage.ivp #txt
He0 f11 type ch.ivyteam.wf.Data #txt
He0 f11 inParamDecl '<java.lang.Number endedTaskId> param;' #txt
He0 f11 inParamTable 'out.taskId=param.endedTaskId;
' #txt
He0 f11 actionDecl 'ch.ivyteam.wf.Data out;
' #txt
He0 f11 guid 13FBE875A387C7F2 #txt
He0 f11 requestEnabled true #txt
He0 f11 triggerEnabled false #txt
He0 f11 callSignature DefaultEndPage(Number) #txt
He0 f11 persist false #txt
He0 f11 startName DefaultEndPage #txt
He0 f11 taskData '#
#Thu Jul 11 15:46:34 CEST 2013
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
He0 f11 caseData '#
#Thu Jul 11 15:46:34 CEST 2013
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
He0 f11 showInStartList 0 #txt
He0 f11 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
He0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>DefaultEndPage</name>
        <nameStyle>14,5,7
</nameStyle>
        <desc>This start is used to overwrite the default end page.
It will be called whenever process/task ends without a defined page.</desc>
    </language>
</elementInfo>
' #txt
He0 f11 @C|.responsibility Everybody #txt
He0 f11 115 51 26 26 14 0 #rect
He0 f11 @|StartRequestIcon #fIcon
He0 f13 type ch.ivyteam.wf.Data #txt
He0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>logged in?</name>
        <nameStyle>10
</nameStyle>
    </language>
</elementInfo>
' #txt
He0 f13 114 114 28 28 14 0 #rect
He0 f13 @|AlternativeIcon #fIcon
He0 f14 actionDecl 'ch.ivyteam.wf.Data out;
' #txt
He0 f14 actionTable 'out=in;
' #txt
He0 f14 actionCode 'import ch.ivyteam.ivy.workflow.CaseState;
import ch.ivyteam.ivy.workflow.TaskState;
import ch.ivyteam.ivy.workflow.ITask;
ch.ivyteam.ivy.request.impl.HttpProcessRequest r = ivy.request as ch.ivyteam.ivy.request.impl.HttpProcessRequest;
out.url=r.getHttpServletRequest().getSession().getAttribute("ch.ivy.wfui.returnUrl").toString();

r.getHttpServletRequest().getSession().removeAttribute("ch.ivy.wfui.returnUrl");

out.message=ivy.cms.co("/labels/common/finished");

if(ivy.session.getSecurityContext().hasPermission(ivy.request.getApplication().getSecurityDescriptor(), ch.ivyteam.ivy.security.IPermission.TASK_READ))
{	
	// 	permission required to findTask
	ITask finishedTask = ivy.wf.findTask(in.taskId);
	if(finishedTask!=null && finishedTask.getCase().getState()==CaseState.DONE)
	{
			out.message = ivy.cms.co("/labels/common/processFinished");
	}
	else if(finishedTask!=null && finishedTask.getState()==TaskState.DONE)
	{
			out.message = ivy.cms.co("/labels/common/taskFinished");
	}
}	

r.getHttpServletRequest().getSession().setAttribute("ch.ivy.wfui.redirectMsg", out.message);
' #txt
He0 f14 type ch.ivyteam.wf.Data #txt
He0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>checkReturnUrl
finished msg</name>
        <nameStyle>27
</nameStyle>
    </language>
</elementInfo>
' #txt
He0 f14 110 180 36 24 20 -2 #rect
He0 f14 @|StepIcon #fIcon
He0 f15 type ch.ivyteam.wf.Data #txt
He0 f15 template "redirect.jsp" #txt
He0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>redirect</name>
        <nameStyle>8
</nameStyle>
    </language>
</elementInfo>
' #txt
He0 f15 115 307 26 26 14 0 #rect
He0 f15 @|EndRequestIcon #fIcon
He0 f17 expr out #txt
He0 f17 128 77 128 114 #arcP
He0 f17 0 0.4726186798232986 0 0 #arcLabel
He0 f12 type ch.ivyteam.wf.Data #txt
He0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>returnUrl set?</name>
        <nameStyle>14
</nameStyle>
    </language>
</elementInfo>
' #txt
He0 f12 114 242 28 28 14 0 #rect
He0 f12 @|AlternativeIcon #fIcon
He0 f18 expr in #txt
He0 f18 outCond !ivy.session.isSessionUserUnknown() #txt
He0 f18 128 142 128 180 #arcP
He0 f20 expr out #txt
He0 f20 128 204 128 242 #arcP
He0 f5 expr out #txt
He0 f5 320 77 320 116 #arcP
He0 f5 0 0.5694760965118373 0 0 #arcLabel
He0 f21 expr in #txt
He0 f21 142 256 302 128 #arcP
He0 f21 1 256 256 #addKink
He0 f21 2 256 128 #addKink
He0 f21 1 0.02718204621543466 0 0 #arcLabel
He0 f22 expr in #txt
He0 f22 outCond in.url.length()>0 #txt
He0 f22 128 270 128 307 #arcP
He0 f22 0 0.4219317695771503 0 0 #arcLabel
He0 f9 expr in #txt
He0 f9 114 128 115 320 #arcP
He0 f9 1 64 128 #addKink
He0 f9 2 64 320 #addKink
He0 f9 1 0.4993677172350963 0 0 #arcLabel
>Proto He0 .type ch.ivyteam.wf.Data #txt
>Proto He0 .processKind NORMAL #txt
>Proto He0 0 0 32 24 18 0 #rect
>Proto He0 @|BIcon #fIcon
He0 f4 mainOut f3 tail #connect
He0 f3 head f2 mainIn #connect
He0 f0 mainOut f7 tail #connect
He0 f7 head f6 mainIn #connect
He0 f6 mainOut f8 tail #connect
He0 f8 head f4 mainIn #connect
He0 f11 mainOut f17 tail #connect
He0 f17 head f13 in #connect
He0 f13 out f18 tail #connect
He0 f18 head f14 mainIn #connect
He0 f14 mainOut f20 tail #connect
He0 f20 head f12 in #connect
He0 f1 mainOut f5 tail #connect
He0 f5 head f4 mainIn #connect
He0 f21 head f4 mainIn #connect
He0 f12 out f22 tail #connect
He0 f22 head f15 mainIn #connect
He0 f12 out f21 tail #connect
He0 f13 out f9 tail #connect
He0 f9 head f15 mainIn #connect
