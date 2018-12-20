[Ivy]
13EACA2A989BCC3D 3.23 #module
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
He0 @PushWFArc f17 '' #zField
He0 @Alternative f12 '' #zField
He0 @PushWFArc f18 '' #zField
He0 @PushWFArc f20 '' #zField
He0 @PushWFArc f3 '' #zField
He0 @EndTask f2 '' #zField
He0 @RichDialog f10 '' #zField
He0 @StartRequest f16 '' #zField
He0 @PushWFArc f19 '' #zField
He0 @RichDialog f23 '' #zField
He0 @StartRequest f24 '' #zField
He0 @PushWFArc f26 '' #zField
He0 @PushWFArc f28 '' #zField
He0 @PushWFArc f9 '' #zField
He0 @PushWFArc f21 '' #zField
He0 @PushWFArc f29 '' #zField
He0 @PushWFArc f5 '' #zField
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
He0 f1 caseData businessCase.attach=true #txt
He0 f1 showInStartList 1 #txt
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
He0 f4 504 106 112 44 -16 -8 #rect
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
He0 f6 280 42 112 44 -17 -8 #rect
He0 f6 @|StepIcon #fIcon
He0 f6 -1|-1|-9671572 #nodeStyle
He0 f7 expr out #txt
He0 f7 111 64 280 64 #arcP
He0 f8 expr out #txt
He0 f8 392 64 560 106 #arcP
He0 f8 1 560 64 #addKink
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
He0 f13 288 176 32 32 7 8 #rect
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
        <nameStyle>27,7
</nameStyle>
    </language>
</elementInfo>
' #txt
He0 f14 376 170 128 44 -41 -16 #rect
He0 f14 @|StepIcon #fIcon
He0 f14 -1|-1|-9671572 #nodeStyle
He0 f17 expr out #txt
He0 f17 111 192 288 192 #arcP
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
He0 f12 544 176 32 32 8 7 #rect
He0 f12 @|AlternativeIcon #fIcon
He0 f12 -1|-1|-9671572 #nodeStyle
He0 f18 expr in #txt
He0 f18 outCond !ivy.session.isSessionUserUnknown() #txt
He0 f18 320 192 376 192 #arcP
He0 f20 expr out #txt
He0 f20 504 192 544 192 #arcP
He0 f3 expr out #txt
He0 f3 616 128 673 128 #arcP
He0 f2 type ch.ivyteam.wf.Data #txt
He0 f2 673 113 30 30 0 15 #rect
He0 f2 @|EndIcon #fIcon
He0 f2 -1|-1|-9671572 #nodeStyle
He0 f10 targetWindow NEW:card: #txt
He0 f10 targetDisplay TOP #txt
He0 f10 richDialogId ch.ivyteam.wf.workflow.ProcessList #txt
He0 f10 startMethod start() #txt
He0 f10 type ch.ivyteam.wf.Data #txt
He0 f10 requestActionDecl '<> param;' #txt
He0 f10 responseActionDecl 'ch.ivyteam.wf.Data out;
' #txt
He0 f10 responseMappingAction 'out=in;
' #txt
He0 f10 windowConfiguration '* ' #txt
He0 f10 isAsynch false #txt
He0 f10 isInnerRd false #txt
He0 f10 userContext '* ' #txt
He0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>process list</name>
        <nameStyle>12,7
</nameStyle>
    </language>
</elementInfo>
' #txt
He0 f10 632 298 112 44 -32 -8 #rect
He0 f10 @|RichDialogIcon #fIcon
He0 f10 -1|-1|-9671572 #nodeStyle
He0 f16 outLink DefaultProcessStartListPage.ivp #txt
He0 f16 type ch.ivyteam.wf.Data #txt
He0 f16 inParamDecl '<> param;' #txt
He0 f16 actionDecl 'ch.ivyteam.wf.Data out;
' #txt
He0 f16 guid 14A1975C7D59C4EE #txt
He0 f16 requestEnabled true #txt
He0 f16 triggerEnabled false #txt
He0 f16 callSignature DefaultProcessStartListPage() #txt
He0 f16 persist false #txt
He0 f16 startName DefaultProcessStartListPage #txt
He0 f16 startDescription 'This is used to overwrite the default process start list.' #txt
He0 f16 taskData '#
#Fri Dec 05 09:01:48 CET 2014
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
He0 f16 caseData '#
#Fri Dec 05 09:01:48 CET 2014
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
He0 f16 showInStartList 0 #txt
He0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>DefaultProcessStartListPage.ivp</name>
        <nameStyle>31,5,7
</nameStyle>
        <desc>This start is used to overwrite the default process start list.
Use /ivy/wf/processStartList to call it.
ivy.html.processStartListRef() will return a link to this process.</desc>
    </language>
</elementInfo>
' #txt
He0 f16 @C|.responsibility Everybody #txt
He0 f16 81 305 30 30 -85 22 #rect
He0 f16 @|StartRequestIcon #fIcon
He0 f16 -1|-1|-9671572 #nodeStyle
He0 f19 expr out #txt
He0 f19 111 320 632 320 #arcP
He0 f23 targetWindow NEW:card: #txt
He0 f23 targetDisplay TOP #txt
He0 f23 richDialogId ch.ivyteam.wf.workflow.TaskListUser #txt
He0 f23 startMethod start() #txt
He0 f23 type ch.ivyteam.wf.Data #txt
He0 f23 requestActionDecl '<> param;' #txt
He0 f23 responseActionDecl 'ch.ivyteam.wf.Data out;
' #txt
He0 f23 responseMappingAction 'out=in;
' #txt
He0 f23 windowConfiguration '* ' #txt
He0 f23 isAsynch false #txt
He0 f23 isInnerRd false #txt
He0 f23 userContext '* ' #txt
He0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>task list user</name>
        <nameStyle>14,7
</nameStyle>
    </language>
</elementInfo>
' #txt
He0 f23 728 394 112 44 -35 -8 #rect
He0 f23 @|RichDialogIcon #fIcon
He0 f23 -1|-1|-9671572 #nodeStyle
He0 f24 outLink DefaultTaskListPage.ivp #txt
He0 f24 type ch.ivyteam.wf.Data #txt
He0 f24 inParamDecl '<> param;' #txt
He0 f24 actionDecl 'ch.ivyteam.wf.Data out;
' #txt
He0 f24 guid 14A1975FBDE94784 #txt
He0 f24 requestEnabled true #txt
He0 f24 triggerEnabled false #txt
He0 f24 callSignature DefaultTaskListPage() #txt
He0 f24 persist false #txt
He0 f24 startName DefaultTaskListPage #txt
He0 f24 startDescription 'This start is used to overwrite the default task list.' #txt
He0 f24 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
He0 f24 showInStartList 0 #txt
He0 f24 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>DefaultTaskListPage.ivp</name>
        <nameStyle>23,5,7
</nameStyle>
        <desc>This start is used to overwrite the default task list.
Use /ivy/wf/taskList to call it.
ivy.html.taskListRef() will return a link to this process.</desc>
    </language>
</elementInfo>
' #txt
He0 f24 @C|.responsibility Everybody #txt
He0 f24 81 401 30 30 -66 17 #rect
He0 f24 @|StartRequestIcon #fIcon
He0 f24 -1|-1|-9671572 #nodeStyle
He0 f26 expr out #txt
He0 f26 111 416 728 416 #arcP
He0 f26 0 0.3958072023316056 0 0 #arcLabel
He0 f28 expr in #txt
He0 f28 304 176 504 128 #arcP
He0 f28 1 304 128 #addKink
He0 f28 1 0.23341846466911037 0 0 #arcLabel
He0 f9 expr in #txt
He0 f9 outCond in.url.equals("ivy.html.DefaultProcessStartListPage") #txt
He0 f9 560 208 688 298 #arcP
He0 f9 1 560 256 #addKink
He0 f9 2 688 256 #addKink
He0 f9 0 0.012919371425973719 0 0 #arcLabel
He0 f21 expr in #txt
He0 f21 outCond in.url.equals("ivy.html.DefaultTaskListPage") #txt
He0 f21 576 192 784 394 #arcP
He0 f21 1 784 192 #addKink
He0 f21 1 0.6311126072960193 0 0 #arcLabel
He0 f29 expr in #txt
He0 f29 560 176 560 150 #arcP
He0 f5 expr out #txt
He0 f5 111 128 504 128 #arcP
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
He0 f16 mainOut f19 tail #connect
He0 f19 head f10 mainIn #connect
He0 f24 mainOut f26 tail #connect
He0 f26 head f23 mainIn #connect
He0 f13 out f28 tail #connect
He0 f28 head f4 mainIn #connect
He0 f12 out f9 tail #connect
He0 f9 head f10 mainIn #connect
He0 f12 out f21 tail #connect
He0 f21 head f23 mainIn #connect
He0 f12 out f29 tail #connect
He0 f29 head f4 mainIn #connect
He0 f1 mainOut f5 tail #connect
He0 f5 head f4 mainIn #connect
