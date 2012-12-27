[Ivy]
[>Created: Thu Dec 27 10:20:13 CET 2012]
125016DE17A534EB 3.17 #module
>Proto >Proto Collection #zClass
Tt0 Tasklist Big #zClass
Tt0 B #cInfo
Tt0 #process
Tt0 @AnnotationInP-0n ai ai #zField
Tt0 @TextInP .resExport .resExport #zField
Tt0 @TextInP .type .type #zField
Tt0 @TextInP .processKind .processKind #zField
Tt0 @TextInP .xml .xml #zField
Tt0 @TextInP .responsibility .responsibility #zField
Tt0 @MessageFlowInP-0n messageIn messageIn #zField
Tt0 @MessageFlowOutP-0n messageOut messageOut #zField
Tt0 @GridStep f0 '' #zField
Tt0 @StartRequest f1 '' #zField
Tt0 @GridStep f25 '' #zField
Tt0 @CallSub f14 '' #zField
Tt0 @PushWFArc f15 '' #zField
Tt0 @CallSub f11 '' #zField
Tt0 @CallSub f10 '' #zField
Tt0 @GridStep f7 '' #zField
Tt0 @RichDialog f3 '' #zField
Tt0 @PushWFArc f6 '' #zField
Tt0 @PushWFArc f2 '' #zField
Tt0 @PushWFArc f17 '' #zField
Tt0 @RichDialog f4 '' #zField
Tt0 @PushWFArc f5 '' #zField
Tt0 @Alternative f9 '' #zField
Tt0 @PushWFArc f12 '' #zField
Tt0 @PushWFArc f8 '' #zField
Tt0 @PushWFArc f13 '' #zField
Tt0 @PushWFArc f16 '' #zField
Tt0 @PushWFArc f18 '' #zField
Tt0 @PushWFArc f19 '' #zField
Tt0 @PushWFArc f20 '' #zField
Tt0 @PushWFArc f21 '' #zField
>Proto Tt0 Tt0 Tasklist #zField
Tt0 f0 actionDecl 'htmlwfui.Data out;
' #txt
Tt0 f0 actionTable 'out.request=ivy.request;
out.username=in.username;
out.wfSession=ivy.session;
' #txt
Tt0 f0 actionCode 'import ch.ivyteam.ivy.security.ISecurityMember;
import htmlwfui.TaskDetail;
import java.util.EnumSet;
import ch.ivyteam.ivy.workflow.PropertyOrder;
import ch.ivyteam.ivy.workflow.TaskState;
import ch.ivyteam.ivy.workflow.TaskProperty;
import ch.ivyteam.ivy.persistence.OrderDirection;
import ch.ivyteam.ivy.persistence.IQueryResult;
import ch.ivyteam.ivy.workflow.ITask;
import javax.servlet.http.HttpServletRequest;

IQueryResult queryResult  = ivy.session.findWorkTasks(null, PropertyOrder.create(TaskProperty.ID, OrderDirection.DESCENDING), 
          0, 25, true, EnumSet.of(TaskState.SUSPENDED, TaskState.RESUMED, TaskState.PARKED));

List<ITask> tasks = queryResult.getResultList();

out.tasks = tasks;

ch.ivyteam.ivy.request.impl.HttpProcessRequest r = ivy.request as ch.ivyteam.ivy.request.impl.HttpProcessRequest;
r.getHttpServletRequest().getSession().setAttribute("ch.ivy.wfui.returnUrl",ivy.html.startref("125016DE17A534EB/DefaultTaskListPage.ivp"));

for (int t=0; t<tasks.size(); t++)
{
				ITask task = tasks.get(t);
				TaskDetail taskDetail = new TaskDetail();

				ISecurityMember taskActivator = task.getActivator();
				taskDetail.activator=taskActivator.getMemberName();
				taskDetail.activatorIsUser=(task.getActivator() != null && task.getActivator().isUser());
				taskDetail.delay = task.getDelayTimestamp();
				taskDetail.desc = task.getDescription() != null ? task.getDescription() : "";
				taskDetail.exp = task.getExpiryTimestamp();
				taskDetail.id = task.getIdentifier();
				taskDetail.name = task.getName();
				taskDetail.prio = task.getPriority().intValue();
				taskDetail.prioName = task.getPriority().toString();
				taskDetail.isIvy4Task = true;
				taskDetail.start = task.getStartTimestamp();
				taskDetail.state = task.getState().intValue();
				taskDetail.stateName=task.getState().toString();
				taskDetail.url = "/ivy/pro/"+task.getFullRequestPath()+"?taskId="+task.getIdentifier();
		
				out.taskList.add(taskDetail);
}' #txt
Tt0 f0 type htmlwfui.Data #txt
Tt0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get Tasks
setReturnUrl</name>
        <nameStyle>22,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Tt0 f0 78 180 36 24 23 -5 #rect
Tt0 f0 @|StepIcon #fIcon
Tt0 f1 outLink DefaultTaskListPage.ivp #txt
Tt0 f1 type htmlwfui.Data #txt
Tt0 f1 inParamDecl '<> param;' #txt
Tt0 f1 actionDecl 'htmlwfui.Data out;
' #txt
Tt0 f1 requestEnabled true #txt
Tt0 f1 triggerEnabled false #txt
Tt0 f1 callSignature DefaultTaskListPage() #txt
Tt0 f1 persist false #txt
Tt0 f1 startName DefaultTaskListPage #txt
Tt0 f1 startDescription 'This start is used to overwrite the default task list.' #txt
Tt0 f1 taskData '#
#Thu Oct 25 17:36:03 CEST 2012
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
.DESC=
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
.NAM=Start TaskList
' #txt
Tt0 f1 caseData '#
#Thu Oct 25 17:36:03 CEST 2012
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
Tt0 f1 showInStartList 1 #txt
Tt0 f1 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Tt0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>DefaultTaskListPage</name>
        <nameStyle>19,5,7,9
</nameStyle>
        <desc>This start is used to overwrite the default task list.
Use /ivy/wf/taskList to call it.
ivy.html.taskListRef() will return a link to this process.</desc>
    </language>
</elementInfo>
' #txt
Tt0 f1 @C|.responsibility Everybody #txt
Tt0 f1 83 51 26 26 14 0 #rect
Tt0 f1 @|StartRequestIcon #fIcon
Tt0 f25 actionDecl 'htmlwfui.Data out;
' #txt
Tt0 f25 actionTable 'out=in.clone();
' #txt
Tt0 f25 actionCode 'htmlwfui.TaskDetail selectedTask = in.taskList.get(in.temp.n);

if(selectedTask.isIvy4Task)
{ // an xivy4 task selected 
	for(int i = 0; i < in.tasks.size(); i++)
	{
		if(selectedTask.id == in.tasks.get(i).getIdentifier())
		{
			out.tmpTask = in.tasks.get(i);
			out.tempCase = in.tasks.get(i).getCase();
			out.tmpTaskDetail = null;
			break;
		}	
	}
}
else 
{ // an xivy3 task selected 
	out.tmpTask3Id = selectedTask.id.toString();
	out.tmpTaskDetail = selectedTask;
	out.tmpTask = null;
}
out.tmpTaskDetail = selectedTask;' #txt
Tt0 f25 type htmlwfui.Data #txt
Tt0 f25 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Get Task
Details</name>
        <nameStyle>16,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Tt0 f25 254 260 36 24 26 -15 #rect
Tt0 f25 @|StepIcon #fIcon
Tt0 f14 type htmlwfui.Data #txt
Tt0 f14 processCall 'Functional Processes/LoginSequence:check_Login(htmlwfui.Data)' #txt
Tt0 f14 doCall true #txt
Tt0 f14 requestActionDecl '<htmlwfui.Data in> param;
' #txt
Tt0 f14 requestMappingAction 'param.in=in;
' #txt
Tt0 f14 responseActionDecl 'htmlwfui.Data out;
' #txt
Tt0 f14 responseMappingAction 'out=result.out;
' #txt
Tt0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Check Login</name>
        <nameStyle>11,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Tt0 f14 78 116 36 24 20 -2 #rect
Tt0 f14 @|CallSubIcon #fIcon
Tt0 f15 expr out #txt
Tt0 f15 96 77 96 116 #arcP
Tt0 f11 type htmlwfui.Data #txt
Tt0 f11 processCall 'Functional Processes/AddNote:call(htmlwfui.Data)' #txt
Tt0 f11 doCall true #txt
Tt0 f11 requestActionDecl '<htmlwfui.Data in> param;
' #txt
Tt0 f11 requestMappingAction 'param.in=in;
param.in.noteFor="task";
' #txt
Tt0 f11 responseActionDecl 'htmlwfui.Data out;
' #txt
Tt0 f11 responseMappingAction 'out=result.out;
' #txt
Tt0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>AddNote</name>
        <nameStyle>7
</nameStyle>
    </language>
</elementInfo>
' #txt
Tt0 f11 358 452 36 24 23 -1 #rect
Tt0 f11 @|CallSubIcon #fIcon
Tt0 f10 type htmlwfui.Data #txt
Tt0 f10 processCall 'Functional Processes/DelegateTask:call(htmlwfui.Data)' #txt
Tt0 f10 doCall true #txt
Tt0 f10 requestActionDecl '<htmlwfui.Data in> param;
' #txt
Tt0 f10 requestMappingAction 'param.in=in;
' #txt
Tt0 f10 responseActionDecl 'htmlwfui.Data out;
' #txt
Tt0 f10 responseMappingAction 'out=result.out;
' #txt
Tt0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Delegate</name>
        <nameStyle>8
</nameStyle>
    </language>
</elementInfo>
' #txt
Tt0 f10 254 452 36 24 21 0 #rect
Tt0 f10 @|CallSubIcon #fIcon
Tt0 f7 actionDecl 'htmlwfui.Data out;
' #txt
Tt0 f7 actionTable 'out=in;
' #txt
Tt0 f7 actionCode ivy.session.parkTask(in.tmpTask); #txt
Tt0 f7 type htmlwfui.Data #txt
Tt0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Park</name>
        <nameStyle>4
</nameStyle>
    </language>
</elementInfo>
' #txt
Tt0 f7 470 452 36 24 20 -2 #rect
Tt0 f7 @|StepIcon #fIcon
Tt0 f3 targetWindow NEW:card: #txt
Tt0 f3 targetDisplay TOP #txt
Tt0 f3 richDialogId htmlwfui.TaskList #txt
Tt0 f3 startMethod start() #txt
Tt0 f3 type htmlwfui.Data #txt
Tt0 f3 requestActionDecl '<> param;' #txt
Tt0 f3 responseActionDecl 'htmlwfui.Data out;
' #txt
Tt0 f3 responseMappingAction 'out=in;
' #txt
Tt0 f3 windowConfiguration '* ' #txt
Tt0 f3 isAsynch false #txt
Tt0 f3 isInnerRd false #txt
Tt0 f3 userContext '* ' #txt
Tt0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>TaskList</name>
        <nameStyle>8
</nameStyle>
    </language>
</elementInfo>
' #txt
Tt0 f3 78 260 36 24 20 -2 #rect
Tt0 f3 @|RichDialogIcon #fIcon
Tt0 f6 expr out #txt
Tt0 f6 96 204 96 260 #arcP
Tt0 f2 expr out #txt
Tt0 f2 96 140 96 180 #arcP
Tt0 f2 0 0.5471454849084891 0 0 #arcLabel
Tt0 f17 expr out #txt
Tt0 f17 114 272 254 272 #arcP
Tt0 f4 targetWindow NEW #txt
Tt0 f4 targetDisplay TOP #txt
Tt0 f4 richDialogId ch.ivyteam.ivy.richdialog.rdpanels.basic.AutoRichDialog #txt
Tt0 f4 startMethod start() #txt
Tt0 f4 type htmlwfui.Data #txt
Tt0 f4 requestActionDecl '<> param;' #txt
Tt0 f4 responseActionDecl 'htmlwfui.Data out;
' #txt
Tt0 f4 responseMappingAction 'out=in;
' #txt
Tt0 f4 isAsynch false #txt
Tt0 f4 isInnerRd false #txt
Tt0 f4 254 324 36 24 20 -2 #rect
Tt0 f4 @|RichDialogIcon #fIcon
Tt0 f5 expr out #txt
Tt0 f5 272 284 272 324 #arcP
Tt0 f5 0 0.729879361412707 0 0 #arcLabel
Tt0 f9 type htmlwfui.Data #txt
Tt0 f9 258 394 28 28 14 0 #rect
Tt0 f9 @|AlternativeIcon #fIcon
Tt0 f12 expr out #txt
Tt0 f12 272 348 272 394 #arcP
Tt0 f12 0 0.4596632361471849 0 0 #arcLabel
Tt0 f8 expr in #txt
Tt0 f8 272 422 272 452 #arcP
Tt0 f13 expr in #txt
Tt0 f13 281 413 358 454 #arcP
Tt0 f16 expr in #txt
Tt0 f16 283 411 470 459 #arcP
Tt0 f18 expr in #txt
Tt0 f18 258 408 96 284 #arcP
Tt0 f18 1 96 408 #addKink
Tt0 f18 0 0.8718700470835278 0 0 #arcLabel
Tt0 f19 expr out #txt
Tt0 f19 488 476 290 336 #arcP
Tt0 f19 1 488 528 #addKink
Tt0 f19 2 608 528 #addKink
Tt0 f19 3 608 336 #addKink
Tt0 f19 3 0.201529646678561 0 0 #arcLabel
Tt0 f20 expr out #txt
Tt0 f20 376 476 290 336 #arcP
Tt0 f20 1 376 528 #addKink
Tt0 f20 2 600 528 #addKink
Tt0 f20 3 600 336 #addKink
Tt0 f20 1 0.8226378370040888 0 0 #arcLabel
Tt0 f21 expr out #txt
Tt0 f21 272 476 290 336 #arcP
Tt0 f21 1 272 528 #addKink
Tt0 f21 2 592 528 #addKink
Tt0 f21 3 592 336 #addKink
Tt0 f21 1 1.0 0 0 #arcLabel
>Proto Tt0 .type htmlwfui.Data #txt
>Proto Tt0 .processKind NORMAL #txt
>Proto Tt0 0 0 32 24 18 0 #rect
>Proto Tt0 @|BIcon #fIcon
Tt0 f1 mainOut f15 tail #connect
Tt0 f15 head f14 mainIn #connect
Tt0 f0 mainOut f6 tail #connect
Tt0 f6 head f3 mainIn #connect
Tt0 f14 mainOut f2 tail #connect
Tt0 f2 head f0 mainIn #connect
Tt0 f3 mainOut f17 tail #connect
Tt0 f17 head f25 mainIn #connect
Tt0 f25 mainOut f5 tail #connect
Tt0 f5 head f4 mainIn #connect
Tt0 f4 mainOut f12 tail #connect
Tt0 f12 head f9 in #connect
Tt0 f9 out f8 tail #connect
Tt0 f8 head f10 mainIn #connect
Tt0 f9 out f13 tail #connect
Tt0 f13 head f11 mainIn #connect
Tt0 f9 out f16 tail #connect
Tt0 f16 head f7 mainIn #connect
Tt0 f9 out f18 tail #connect
Tt0 f18 head f3 mainIn #connect
Tt0 f7 mainOut f19 tail #connect
Tt0 f19 head f4 mainIn #connect
Tt0 f11 mainOut f20 tail #connect
Tt0 f20 head f4 mainIn #connect
Tt0 f10 mainOut f21 tail #connect
Tt0 f21 head f4 mainIn #connect
