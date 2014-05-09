[Ivy]
[>Created: Fri May 09 11:21:40 CEST 2014]
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
He0 @PushWFArc f3 '' #zField
He0 @EndTask f2 '' #zField
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
#Thu May 08 11:29:43 CEST 2014
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
He0 f1 caseData '#
#Thu May 08 11:29:43 CEST 2014
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
        <name>DefaultApplicationHomePage.ivp</name>
        <nameStyle>30,5,7
</nameStyle>
        <desc>This start is used to overwrite the default application home.
Use /ivy/wf/applicationHome to call it.
ivy.html.applicationHomeRef() will return a link to this process.</desc>
    </language>
</elementInfo>
' #txt
He0 f1 @C|.responsibility Everybody #txt
He0 f1 81 113 30 30 -90 17 #rect
He0 f1 @|StartRequestIcon #fIcon
He0 f1 -1|-1|-9671572 #nodeStyle
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
He0 f4 392 106 112 44 -16 -8 #rect
He0 f4 @|RichDialogIcon #fIcon
He0 f4 -1|-1|-9671572 #nodeStyle
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
He0 f0 81 49 30 30 -28 15 #rect
He0 f0 @|StartRequestIcon #fIcon
He0 f0 -1|-1|-9671572 #nodeStyle
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
He0 f6 168 42 112 44 -17 -8 #rect
He0 f6 @|StepIcon #fIcon
He0 f6 -1|-1|-9671572 #nodeStyle
He0 f7 expr out #txt
He0 f7 111 64 168 64 #arcP
He0 f8 expr out #txt
He0 f8 280 64 448 106 #arcP
He0 f8 1 448 64 #addKink
He0 f8 0 0.8502556853112283 0 0 #arcLabel
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
#Thu May 08 11:29:52 CEST 2014
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
He0 f11 caseData '#
#Thu May 08 11:29:52 CEST 2014
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
        <name>DefaultEndPage.ivp</name>
        <nameStyle>18,5,7
</nameStyle>
        <desc>This start is used to overwrite the default end page.
It will be called whenever process/task ends without a defined page.</desc>
    </language>
</elementInfo>
' #txt
He0 f11 @C|.responsibility Everybody #txt
He0 f11 81 177 30 30 -54 17 #rect
He0 f11 @|StartRequestIcon #fIcon
He0 f11 -1|-1|-9671572 #nodeStyle
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
He0 f13 176 176 32 32 7 8 #rect
He0 f13 @|AlternativeIcon #fIcon
He0 f13 -1|-1|-9671572 #nodeStyle
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
He0 f14 264 170 112 44 -41 -16 #rect
He0 f14 @|StepIcon #fIcon
He0 f14 -1|-1|-9671572 #nodeStyle
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
He0 f15 433 241 30 30 -20 15 #rect
He0 f15 @|EndRequestIcon #fIcon
He0 f15 -1|-1|-9671572 #nodeStyle
He0 f17 expr out #txt
He0 f17 111 192 176 192 #arcP
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
He0 f12 432 176 32 32 6 5 #rect
He0 f12 @|AlternativeIcon #fIcon
He0 f12 -1|-1|-9671572 #nodeStyle
He0 f18 expr in #txt
He0 f18 outCond !ivy.session.isSessionUserUnknown() #txt
He0 f18 208 192 264 192 #arcP
He0 f20 expr out #txt
He0 f20 376 192 432 192 #arcP
He0 f5 expr out #txt
He0 f5 111 128 392 128 #arcP
He0 f5 0 0.5694760965118373 0 0 #arcLabel
He0 f21 expr in #txt
He0 f21 448 176 448 150 #arcP
He0 f21 0 0.006382768993461811 0 0 #arcLabel
He0 f22 expr in #txt
He0 f22 outCond in.url.length()>0 #txt
He0 f22 448 208 448 241 #arcP
He0 f22 0 0.4219317695771503 0 0 #arcLabel
He0 f9 expr in #txt
He0 f9 192 208 433 256 #arcP
He0 f9 1 192 256 #addKink
He0 f9 1 0.23341846466911037 0 0 #arcLabel
He0 f3 expr out #txt
He0 f3 504 128 561 128 #arcP
He0 f2 type ch.ivyteam.wf.Data #txt
He0 f2 561 113 30 30 0 15 #rect
He0 f2 @|EndIcon #fIcon
He0 f2 -1|-1|-9671572 #nodeStyle
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
