[Ivy]
[>Created: Thu Mar 14 11:18:16 CET 2013]
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
Tt0 @CallSub f14 '' #zField
Tt0 @CallSub f11 '' #zField
Tt0 @CallSub f10 '' #zField
Tt0 @RichDialog f3 '' #zField
Tt0 @PushWFArc f6 '' #zField
Tt0 @PushWFArc f2 '' #zField
Tt0 @RichDialog f4 '' #zField
Tt0 @Alternative f9 '' #zField
Tt0 @PushWFArc f12 '' #zField
Tt0 @PushWFArc f20 '' #zField
Tt0 @PushWFArc f21 '' #zField
Tt0 @PushWFArc f23 '' #zField
Tt0 @PushWFArc f8 '' #zField
Tt0 @PushWFArc f13 '' #zField
Tt0 @PushWFArc f15 '' #zField
Tt0 @Page f18 '' #zField
Tt0 @PushWFArc f22 '' #zField
Tt0 @PushWFArc f7 '' #zField
Tt0 @GridStep f5 '' #zField
Tt0 @PushWFArc f16 '' #zField
Tt0 @GridStep f19 '' #zField
Tt0 @PushWFArc f24 '' #zField
Tt0 @PushWFArc f25 '' #zField
Tt0 @RichDialog f28 '' #zField
Tt0 @PushWFArc f29 '' #zField
Tt0 @PushWFArc f26 '' #zField
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
				taskDetail.id = task.getId();
				taskDetail.name = task.getName();
				taskDetail.prio = task.getPriority().intValue();
				taskDetail.prioName = task.getPriority().toString();
				taskDetail.isIvy4Task = true;
				taskDetail.start = task.getStartTimestamp();
				taskDetail.state = task.getState().intValue();
				taskDetail.stateName=task.getState().toString();
				taskDetail.url = "/ivy/pro/"+task.getFullRequestPath()+"?taskId="+task.getId();
		
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
Tt0 f0 78 204 36 24 23 -5 #rect
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
#Thu Mar 14 11:18:15 CET 2013
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
.DESC=
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
.NAM=Start TaskList
TaskTriggered.EXROL=Everybody
' #txt
Tt0 f1 caseData '#
#Thu Mar 14 11:18:15 CET 2013
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
Tt0 f1 showInStartList 0 #txt
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
Tt0 f14 78 132 36 24 20 -2 #rect
Tt0 f14 @|CallSubIcon #fIcon
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
Tt0 f11 238 436 36 24 23 -1 #rect
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
Tt0 f10 366 436 36 24 21 0 #rect
Tt0 f10 @|CallSubIcon #fIcon
Tt0 f3 targetWindow NEW:card: #txt
Tt0 f3 targetDisplay TOP #txt
Tt0 f3 richDialogId htmlwfui.TaskList #txt
Tt0 f3 startMethod start(htmlwfui.Data) #txt
Tt0 f3 type htmlwfui.Data #txt
Tt0 f3 requestActionDecl '<htmlwfui.Data data> param;' #txt
Tt0 f3 requestMappingAction 'param.data=in;
' #txt
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
Tt0 f6 96 228 96 260 #arcP
Tt0 f2 expr out #txt
Tt0 f2 96 156 96 204 #arcP
Tt0 f2 0 0.5471454849084891 0 0 #arcLabel
Tt0 f4 targetWindow NEW:card: #txt
Tt0 f4 targetDisplay TOP #txt
Tt0 f4 richDialogId htmlwfui.TaskListDetails #txt
Tt0 f4 startMethod start(htmlwfui.Data) #txt
Tt0 f4 type htmlwfui.Data #txt
Tt0 f4 requestActionDecl '<htmlwfui.Data data> param;' #txt
Tt0 f4 requestMappingAction 'param.data=in;
' #txt
Tt0 f4 responseActionDecl 'htmlwfui.Data out;
' #txt
Tt0 f4 responseMappingAction 'out=in;
' #txt
Tt0 f4 windowConfiguration '* ' #txt
Tt0 f4 isAsynch false #txt
Tt0 f4 isInnerRd false #txt
Tt0 f4 userContext '* ' #txt
Tt0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Task</name>
        <nameStyle>4
</nameStyle>
    </language>
</elementInfo>
' #txt
Tt0 f4 238 324 36 24 20 -2 #rect
Tt0 f4 @|RichDialogIcon #fIcon
Tt0 f9 type htmlwfui.Data #txt
Tt0 f9 242 370 28 28 14 0 #rect
Tt0 f9 @|AlternativeIcon #fIcon
Tt0 f12 expr out #txt
Tt0 f12 256 348 256 370 #arcP
Tt0 f12 0 0.4596632361471849 0 0 #arcLabel
Tt0 f20 expr out #txt
Tt0 f20 256 460 274 336 #arcP
Tt0 f20 1 256 512 #addKink
Tt0 f20 2 488 512 #addKink
Tt0 f20 3 488 336 #addKink
Tt0 f20 1 0.8226378370040888 0 0 #arcLabel
Tt0 f21 expr out #txt
Tt0 f21 384 460 274 336 #arcP
Tt0 f21 1 384 512 #addKink
Tt0 f21 2 480 512 #addKink
Tt0 f21 3 480 336 #addKink
Tt0 f21 1 1.0 0 0 #arcLabel
Tt0 f23 expr out #txt
Tt0 f23 96 77 96 132 #arcP
Tt0 f8 expr in #txt
Tt0 f8 outCond 'in.option == "back"' #txt
Tt0 f8 242 384 96 284 #arcP
Tt0 f8 1 96 384 #addKink
Tt0 f8 0 0.9101668189412875 0 0 #arcLabel
Tt0 f13 expr in #txt
Tt0 f13 outCond 'in.option == "addNote"' #txt
Tt0 f13 256 398 256 436 #arcP
Tt0 f15 expr in #txt
Tt0 f15 outCond 'in.option == "delegateTask"' #txt
Tt0 f15 265 389 366 439 #arcP
Tt0 f18 outTypes "htmlwfui.Data" #txt
Tt0 f18 outLinks "LinkA.ivp" #txt
Tt0 f18 template "start_redirect.jsp" #txt
Tt0 f18 type htmlwfui.Data #txt
Tt0 f18 skipLink skip.ivp #txt
Tt0 f18 sortLink sort.ivp #txt
Tt0 f18 templateWizard '#
#Mon Feb 11 14:57:15 CET 2013
' #txt
Tt0 f18 pageArchivingActivated false #txt
Tt0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startRedirect</name>
        <nameStyle>13
</nameStyle>
    </language>
</elementInfo>
' #txt
Tt0 f18 @C|.responsibility Everybody #txt
Tt0 f18 14 260 36 24 -27 15 #rect
Tt0 f18 @|PageIcon #fIcon
Tt0 f22 expr in #txt
Tt0 f22 outCond 'in.option == "resumeTask"' #txt
Tt0 f22 242 384 32 284 #arcP
Tt0 f22 1 32 384 #addKink
Tt0 f22 0 0.7430993568426237 0 0 #arcLabel
Tt0 f7 expr data #txt
Tt0 f7 outCond ivp=="LinkA.ivp" #txt
Tt0 f7 46 260 82 228 #arcP
Tt0 f5 actionDecl 'htmlwfui.Data out;
' #txt
Tt0 f5 actionTable 'out=in.clone();
' #txt
Tt0 f5 actionCode 'htmlwfui.TaskDetail selectedTask = in.taskList.get(in.temp.n);

if(selectedTask.isIvy4Task)
{ // an xivy4 task selected 
	for(int i = 0; i < in.tasks.size(); i++)
	{
		if(selectedTask.id == in.tasks.get(i).getId())
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
Tt0 f5 type htmlwfui.Data #txt
Tt0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>OLD Get Task
Details</name>
        <nameStyle>20
</nameStyle>
    </language>
</elementInfo>
' #txt
Tt0 f5 550 260 36 24 19 -15 #rect
Tt0 f5 @|StepIcon #fIcon
Tt0 f16 expr out #txt
Tt0 f16 550 276 274 332 #arcP
Tt0 f19 actionDecl 'htmlwfui.Data out;
' #txt
Tt0 f19 actionTable 'out=in;
' #txt
Tt0 f19 actionCode 'import ch.ivyteam.ivy.workflow.ITask;

List<ITask> tasks = in.tasks;

for (int t=0; t<tasks.size(); t++)
{
	ITask task = tasks.get(t);
	if(task.getId() == in.temp.n)
	{
		out.tmpTask = tasks.get(t);
		out.tempCase = tasks.get(t).getCase();
		out.tmpTaskDetail = null;
		break;
	}
}' #txt
Tt0 f19 type htmlwfui.Data #txt
Tt0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Get Task
Details</name>
        <nameStyle>16
</nameStyle>
    </language>
</elementInfo>
' #txt
Tt0 f19 238 260 36 24 20 -2 #rect
Tt0 f19 @|StepIcon #fIcon
Tt0 f24 expr out #txt
Tt0 f24 256 284 256 324 #arcP
Tt0 f25 expr out #txt
Tt0 f25 114 272 238 272 #arcP
Tt0 f25 0 0.7102185927216464 0 0 #arcLabel
Tt0 f28 targetWindow NEW:card: #txt
Tt0 f28 targetDisplay TOP #txt
Tt0 f28 richDialogId htmlwfui.DeleteNote #txt
Tt0 f28 startMethod start(htmlwfui.Data) #txt
Tt0 f28 type htmlwfui.Data #txt
Tt0 f28 requestActionDecl '<htmlwfui.Data data> param;' #txt
Tt0 f28 requestMappingAction 'param.data=in;
' #txt
Tt0 f28 responseActionDecl 'htmlwfui.Data out;
' #txt
Tt0 f28 responseMappingAction 'out=in;
' #txt
Tt0 f28 windowConfiguration '* ' #txt
Tt0 f28 isAsynch false #txt
Tt0 f28 isInnerRd false #txt
Tt0 f28 userContext '* ' #txt
Tt0 f28 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>deleteNote</name>
        <nameStyle>10
</nameStyle>
    </language>
</elementInfo>
' #txt
Tt0 f28 110 436 36 24 20 -2 #rect
Tt0 f28 @|RichDialogIcon #fIcon
Tt0 f29 expr in #txt
Tt0 f29 outCond 'in.option == "deleteNote"' #txt
Tt0 f29 247 389 146 439 #arcP
Tt0 f26 expr out #txt
Tt0 f26 128 460 274 336 #arcP
Tt0 f26 1 128 512 #addKink
Tt0 f26 2 496 512 #addKink
Tt0 f26 3 496 336 #addKink
Tt0 f26 1 0.5525911020341794 0 0 #arcLabel
>Proto Tt0 .type htmlwfui.Data #txt
>Proto Tt0 .processKind NORMAL #txt
>Proto Tt0 0 0 32 24 18 0 #rect
>Proto Tt0 @|BIcon #fIcon
Tt0 f0 mainOut f6 tail #connect
Tt0 f6 head f3 mainIn #connect
Tt0 f14 mainOut f2 tail #connect
Tt0 f2 head f0 mainIn #connect
Tt0 f4 mainOut f12 tail #connect
Tt0 f12 head f9 in #connect
Tt0 f11 mainOut f20 tail #connect
Tt0 f20 head f4 mainIn #connect
Tt0 f10 mainOut f21 tail #connect
Tt0 f21 head f4 mainIn #connect
Tt0 f1 mainOut f23 tail #connect
Tt0 f23 head f14 mainIn #connect
Tt0 f9 out f8 tail #connect
Tt0 f8 head f3 mainIn #connect
Tt0 f9 out f13 tail #connect
Tt0 f13 head f11 mainIn #connect
Tt0 f9 out f15 tail #connect
Tt0 f15 head f10 mainIn #connect
Tt0 f9 out f22 tail #connect
Tt0 f22 head f18 mainIn #connect
Tt0 f18 out f7 tail #connect
Tt0 f7 head f0 mainIn #connect
Tt0 f5 mainOut f16 tail #connect
Tt0 f16 head f4 mainIn #connect
Tt0 f19 mainOut f24 tail #connect
Tt0 f24 head f4 mainIn #connect
Tt0 f3 mainOut f25 tail #connect
Tt0 f25 head f19 mainIn #connect
Tt0 f9 out f29 tail #connect
Tt0 f29 head f28 mainIn #connect
Tt0 f28 mainOut f26 tail #connect
Tt0 f26 head f4 mainIn #connect
