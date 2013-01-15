[Ivy]
[>Created: Mon Jan 14 15:16:01 CET 2013]
127AE76143E89C91 3.17 #module
>Proto >Proto Collection #zClass
He0 Home Big #zClass
He0 B #cInfo
He0 #process
He0 @TextInP .xml .xml #zField
He0 @TextInP .responsibility .responsibility #zField
He0 @MessageFlowInP-0n messageIn messageIn #zField
He0 @MessageFlowOutP-0n messageOut messageOut #zField
He0 @TextInP .resExport .resExport #zField
He0 @TextInP .type .type #zField
He0 @TextInP .processKind .processKind #zField
He0 @AnnotationInP-0n ai ai #zField
He0 @EndTask f2 '' #zField
He0 @GridStep f11 '' #zField
He0 @StartRequest f7 '' #zField
He0 @Alternative f6 '' #zField
He0 @GridStep f20 '' #zField
He0 @PushWFArc f13 '' #zField
He0 @EndRequest f14 '' #zField
He0 @PushWFArc f15 '' #zField
He0 @StartRequest f16 '' #zField
He0 @CallSub f17 '' #zField
He0 @PushWFArc f19 '' #zField
He0 @EndRequest f25 '' #zField
He0 @Alternative f5 '' #zField
He0 @PushWFArc f12 '' #zField
He0 @PushWFArc f0 '' #zField
He0 @PushWFArc f21 '' #zField
He0 @PushWFArc f23 '' #zField
He0 @RichDialog f1 '' #zField
He0 @PushWFArc f3 '' #zField
He0 @PushWFArc f4 '' #zField
He0 @PushWFArc f24 '' #zField
>Proto He0 He0 Home #zField
He0 f2 type htmlwfui.Data #txt
He0 f2 291 467 26 26 14 0 #rect
He0 f2 @|EndIcon #fIcon
He0 f11 actionDecl 'htmlwfui.Data out;
' #txt
He0 f11 actionTable 'out=in;
' #txt
He0 f11 actionCode 'ch.ivyteam.ivy.request.impl.HttpProcessRequest r = ivy.request as ch.ivyteam.ivy.request.impl.HttpProcessRequest;
r.getHttpServletRequest().getSession().setAttribute("ch.ivy.wfui.returnUrl", ivy.html.startref("127AE76143E89C91/DefaultApplicationHomePage.ivp"));' #txt
He0 f11 type htmlwfui.Data #txt
He0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setReturnUrl &quot;home&quot;</name>
        <nameStyle>19,9
</nameStyle>
    </language>
</elementInfo>
' #txt
He0 f11 286 252 36 24 22 -7 #rect
He0 f11 @|StepIcon #fIcon
He0 f7 outLink DefaultEndPage.ivp #txt
He0 f7 type htmlwfui.Data #txt
He0 f7 inParamDecl '<java.lang.Number endedTaskId> param;' #txt
He0 f7 inParamTable 'out.tmpTaskId=param.endedTaskId;
' #txt
He0 f7 actionDecl 'htmlwfui.Data out;
' #txt
He0 f7 guid 12E2F5E4FE51B562 #txt
He0 f7 requestEnabled true #txt
He0 f7 triggerEnabled false #txt
He0 f7 callSignature DefaultEndPage(Number) #txt
He0 f7 persist false #txt
He0 f7 startName DefaultEndPage #txt
He0 f7 taskData '#
#Wed Nov 16 10:03:19 CET 2011
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
He0 f7 caseData '#
#Wed Nov 16 10:03:19 CET 2011
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
He0 f7 showInStartList 0 #txt
He0 f7 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
He0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
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
He0 f7 @C|.responsibility Everybody #txt
He0 f7 131 51 26 26 17 -4 #rect
He0 f7 @|StartRequestIcon #fIcon
He0 f6 type htmlwfui.Data #txt
He0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>returnUrl set?</name>
        <nameStyle>14
</nameStyle>
    </language>
</elementInfo>
' #txt
He0 f6 130 250 28 28 14 -18 #rect
He0 f6 @|AlternativeIcon #fIcon
He0 f20 actionDecl 'htmlwfui.Data out;
' #txt
He0 f20 actionTable 'out=in;
' #txt
He0 f20 actionCode 'import ch.ivyteam.ivy.workflow.CaseState;
import ch.ivyteam.ivy.workflow.TaskState;
import ch.ivyteam.ivy.workflow.ITask;
ch.ivyteam.ivy.request.impl.HttpProcessRequest r = ivy.request as ch.ivyteam.ivy.request.impl.HttpProcessRequest;
out.temp.url=r.getHttpServletRequest().getSession().getAttribute("ch.ivy.wfui.returnUrl").toString();

r.getHttpServletRequest().getSession().removeAttribute("ch.ivy.wfui.returnUrl");

out.temp.msg=ivy.cms.co("/labels/finished");

if(ivy.session.getSecurityContext().hasPermission(ivy.request.getApplication().getSecurityDescriptor(), ch.ivyteam.ivy.security.IPermission.TASK_READ))
{	
	// 	permission required to findTask
	ITask finishedTask = ivy.wf.findTask(in.tmpTaskId);
	if(finishedTask!=null && finishedTask.getCase().getState()==CaseState.DONE)
	{
			out.temp.msg = ivy.cms.co("/labels/processFinished");
	}
	else if(finishedTask!=null && finishedTask.getState()==TaskState.DONE)
	{
			out.temp.msg = ivy.cms.co("/labels/taskFinished");
	}
}	

r.getHttpServletRequest().getSession().setAttribute("ch.ivy.wfui.redirectMsg", out.temp.msg);
' #txt
He0 f20 type htmlwfui.Data #txt
He0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>checkReturnUrl
finished msg</name>
        <nameStyle>27
</nameStyle>
    </language>
</elementInfo>
' #txt
He0 f20 126 188 36 24 22 -16 #rect
He0 f20 @|StepIcon #fIcon
He0 f13 expr out #txt
He0 f13 144 212 144 250 #arcP
He0 f14 type htmlwfui.Data #txt
He0 f14 template "redirect.jsp" #txt
He0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>redirect</name>
        <nameStyle>8
</nameStyle>
    </language>
</elementInfo>
' #txt
He0 f14 131 315 26 26 14 0 #rect
He0 f14 @|EndRequestIcon #fIcon
He0 f15 expr in #txt
He0 f15 outCond in.temp.url.length()>0 #txt
He0 f15 144 278 144 315 #arcP
He0 f16 outLink DefaultApplicationHomePage.ivp #txt
He0 f16 type htmlwfui.Data #txt
He0 f16 inParamDecl '<> param;' #txt
He0 f16 actionDecl 'htmlwfui.Data out;
' #txt
He0 f16 guid 12E3344F408D0C73 #txt
He0 f16 requestEnabled true #txt
He0 f16 triggerEnabled false #txt
He0 f16 callSignature DefaultApplicationHomePage() #txt
He0 f16 persist false #txt
He0 f16 startName 'WF Home' #txt
He0 f16 startDescription 'Workflow Startpage' #txt
He0 f16 taskData '#
#Fri Apr 27 15:07:14 CEST 2012
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
He0 f16 caseData '#
#Fri Apr 27 15:07:14 CEST 2012
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
He0 f16 showInStartList 1 #txt
He0 f16 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
He0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
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
He0 f16 @C|.responsibility Everybody #txt
He0 f16 291 51 26 26 19 -4 #rect
He0 f16 @|StartRequestIcon #fIcon
He0 f17 type htmlwfui.Data #txt
He0 f17 processCall 'Functional Processes/LoginSequence:check_Login(htmlwfui.Data)' #txt
He0 f17 doCall true #txt
He0 f17 requestActionDecl '<htmlwfui.Data in> param;
' #txt
He0 f17 requestMappingAction 'param.in=in;
' #txt
He0 f17 responseActionDecl 'htmlwfui.Data out;
' #txt
He0 f17 responseMappingAction 'out=result.out;
' #txt
He0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Check Login</name>
        <nameStyle>11,9
</nameStyle>
    </language>
</elementInfo>
' #txt
He0 f17 286 180 36 24 20 -2 #rect
He0 f17 @|CallSubIcon #fIcon
He0 f19 expr out #txt
He0 f19 304 204 304 252 #arcP
He0 f25 type htmlwfui.Data #txt
He0 f25 template "/ProcessPages/Home/AnonymousEndpage.ivc" #txt
He0 f25 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Anonymous Endpage</name>
        <nameStyle>17
</nameStyle>
    </language>
</elementInfo>
' #txt
He0 f25 19 115 26 26 -26 15 #rect
He0 f25 @|EndRequestIcon #fIcon
He0 f5 type htmlwfui.Data #txt
He0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>logged in?</name>
        <nameStyle>10
</nameStyle>
    </language>
</elementInfo>
' #txt
He0 f5 130 114 28 28 14 0 #rect
He0 f5 @|AlternativeIcon #fIcon
He0 f12 expr out #txt
He0 f12 144 77 144 114 #arcP
He0 f0 expr in #txt
He0 f0 outCond !ivy.session.isSessionUserUnknown() #txt
He0 f0 144 142 144 188 #arcP
He0 f21 expr in #txt
He0 f21 130 128 45 128 #arcP
He0 f23 expr in #txt
He0 f23 158 264 286 264 #arcP
He0 f1 targetWindow NEW:card: #txt
He0 f1 targetDisplay TOP #txt
He0 f1 richDialogId htmlwfui.Home #txt
He0 f1 startMethod start() #txt
He0 f1 type htmlwfui.Data #txt
He0 f1 requestActionDecl '<> param;' #txt
He0 f1 responseActionDecl 'htmlwfui.Data out;
' #txt
He0 f1 responseMappingAction 'out=in;
' #txt
He0 f1 windowConfiguration '* ' #txt
He0 f1 isAsynch false #txt
He0 f1 isInnerRd false #txt
He0 f1 userContext '* ' #txt
He0 f1 286 356 36 24 20 -2 #rect
He0 f1 @|RichDialogIcon #fIcon
He0 f3 expr out #txt
He0 f3 304 276 304 356 #arcP
He0 f4 expr out #txt
He0 f4 304 380 304 467 #arcP
He0 f24 expr out #txt
He0 f24 304 77 304 180 #arcP
>Proto He0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto He0 .type htmlwfui.Data #txt
>Proto He0 .processKind NORMAL #txt
>Proto He0 0 0 32 24 18 0 #rect
>Proto He0 @|BIcon #fIcon
He0 f20 mainOut f13 tail #connect
He0 f13 head f6 in #connect
He0 f6 out f15 tail #connect
He0 f15 head f14 mainIn #connect
He0 f17 mainOut f19 tail #connect
He0 f19 head f11 mainIn #connect
He0 f7 mainOut f12 tail #connect
He0 f12 head f5 in #connect
He0 f5 out f0 tail #connect
He0 f0 head f20 mainIn #connect
He0 f5 out f21 tail #connect
He0 f21 head f25 mainIn #connect
He0 f6 out f23 tail #connect
He0 f23 head f11 mainIn #connect
He0 f11 mainOut f3 tail #connect
He0 f3 head f1 mainIn #connect
He0 f1 mainOut f4 tail #connect
He0 f4 head f2 mainIn #connect
He0 f16 mainOut f24 tail #connect
He0 f24 head f17 mainIn #connect
