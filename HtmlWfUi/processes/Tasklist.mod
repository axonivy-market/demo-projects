[Ivy]
[>Created: Mon May 27 13:29:33 CEST 2013]
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
Tt0 @EndTask f5 '' #zField
Tt0 @GridStep f0 '' #zField
Tt0 @Page f3 '' #zField
Tt0 @StartRequest f1 '' #zField
Tt0 @Page f23 '' #zField
Tt0 @GridStep f25 '' #zField
Tt0 @PushWFArc f26 '' #zField
Tt0 @PushWFArc f24 '' #zField
Tt0 @PushWFArc f27 '' #zField
Tt0 @PushWFArc f30 '' #zField
Tt0 @CallSub f14 '' #zField
Tt0 @PushWFArc f15 '' #zField
Tt0 @CallSub f11 '' #zField
Tt0 @PushWFArc f12 '' #zField
Tt0 @PushWFArc f13 '' #zField
Tt0 @CallSub f10 '' #zField
Tt0 @PushWFArc f22 '' #zField
Tt0 @PushWFArc f4 '' #zField
Tt0 @GridStep f7 '' #zField
Tt0 @PushWFArc f8 '' #zField
Tt0 @PushWFArc f9 '' #zField
Tt0 @PushWFArc f2 '' #zField
Tt0 @PushWFArc f6 '' #zField
Tt0 @Page f16 '' #zField
Tt0 @PushWFArc f17 '' #zField
Tt0 @PushWFArc f18 '' #zField
Tt0 @PushWFArc f19 '' #zField
>Proto Tt0 Tt0 Tasklist #zField
Tt0 f5 type htmlwfui.Data #txt
Tt0 f5 139 355 26 26 14 0 #rect
Tt0 f5 @|EndIcon #fIcon
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
				taskDetail.url = task.getFullRequestPath()+"?taskId="+task.getId();
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
Tt0 f0 134 156 36 24 22 -5 #rect
Tt0 f0 @|StepIcon #fIcon
Tt0 f3 outTypes "htmlwfui.Data","htmlwfui.Data","htmlwfui.Data" #txt
Tt0 f3 outLinks "LinkB.ivp","LinkA.ivp","LinkC.ivp" #txt
Tt0 f3 template "/ProcessPages/Tasklist/taskList.ivc" #txt
Tt0 f3 type htmlwfui.Data #txt
Tt0 f3 skipLink skip.ivp #txt
Tt0 f3 sortLink sort.ivp #txt
Tt0 f3 templateWizard '#
#Tue Feb 15 14:56:52 CET 2011
' #txt
Tt0 f3 pageArchivingActivated false #txt
Tt0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Tasklist</name>
        <nameStyle>8,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Tt0 f3 @C|.responsibility Everybody #txt
Tt0 f3 134 220 36 25 20 0 #rect
Tt0 f3 @|PageIcon #fIcon
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
#Wed Nov 16 10:00:45 CET 2011
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
#Wed Nov 16 10:00:45 CET 2011
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
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
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
Tt0 f1 139 27 26 26 14 0 #rect
Tt0 f1 @|StartRequestIcon #fIcon
Tt0 f23 outTypes "htmlwfui.Data","htmlwfui.Data","htmlwfui.Data","htmlwfui.Data","htmlwfui.Data" #txt
Tt0 f23 outLinks "LinkA.ivp","LinkB.ivp","LinkC.ivp","LinkD.ivp","LinkE.ivp" #txt
Tt0 f23 template "/ProcessPages/Tasklist/taskDetail.ivc" #txt
Tt0 f23 type htmlwfui.Data #txt
Tt0 f23 skipLink skip.ivp #txt
Tt0 f23 sortLink sort.ivp #txt
Tt0 f23 templateWizard '#
#Mon May 27 13:29:32 CEST 2013
' #txt
Tt0 f23 pageArchivingActivated false #txt
Tt0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Task</name>
        <nameStyle>4,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Tt0 f23 @C|.responsibility Everybody #txt
Tt0 f23 270 292 36 24 17 -20 #rect
Tt0 f23 @|PageIcon #fIcon
Tt0 f25 actionDecl 'htmlwfui.Data out;
' #txt
Tt0 f25 actionTable 'out=in.clone();
' #txt
Tt0 f25 actionCode 'htmlwfui.TaskDetail selectedTask = in.taskList.get(in.temp.n);

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
Tt0 f25 type htmlwfui.Data #txt
Tt0 f25 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Get Task
Details</name>
        <nameStyle>16,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Tt0 f25 270 220 36 24 28 -15 #rect
Tt0 f25 @|StepIcon #fIcon
Tt0 f26 expr data #txt
Tt0 f26 outCond ivp=="LinkB.ivp" #txt
Tt0 f26 170 231 270 232 #arcP
Tt0 f26 0 0.8226392979110723 0 0 #arcLabel
Tt0 f24 expr out #txt
Tt0 f24 288 244 288 292 #arcP
Tt0 f24 0 0.729879361412707 0 0 #arcLabel
Tt0 f27 expr data #txt
Tt0 f27 outCond ivp=="LinkA.ivp" #txt
Tt0 f27 270 294 170 241 #arcP
Tt0 f27 0 0.28662004769589106 0 0 #arcLabel
Tt0 f30 expr out #txt
Tt0 f30 152 180 152 219 #arcP
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
Tt0 f14 134 92 36 24 20 -2 #rect
Tt0 f14 @|CallSubIcon #fIcon
Tt0 f15 expr out #txt
Tt0 f15 152 53 152 92 #arcP
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
Tt0 f11 374 356 36 24 25 -2 #rect
Tt0 f11 @|CallSubIcon #fIcon
Tt0 f12 expr data #txt
Tt0 f12 outCond ivp=="LinkC.ivp" #txt
Tt0 f12 306 315 374 357 #arcP
Tt0 f13 expr out #txt
Tt0 f13 374 363 300 316 #arcP
Tt0 f13 1 336 352 #addKink
Tt0 f13 0 0.19441866146645204 0 0 #arcLabel
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
Tt0 f10 270 356 36 24 29 0 #rect
Tt0 f10 @|CallSubIcon #fIcon
Tt0 f22 expr data #txt
Tt0 f22 outCond ivp=="LinkB.ivp" #txt
Tt0 f22 288 316 288 356 #arcP
Tt0 f22 0 0.6481254980617335 0 0 #arcLabel
Tt0 f4 expr out #txt
Tt0 f4 284 356 286 316 #arcP
Tt0 f4 1 280 344 #addKink
Tt0 f4 1 0.23302776239987094 0 0 #arcLabel
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
Tt0 f7 486 356 36 24 20 -2 #rect
Tt0 f7 @|StepIcon #fIcon
Tt0 f8 expr data #txt
Tt0 f8 outCond ivp=="LinkD.ivp" #txt
Tt0 f8 306 309 486 363 #arcP
Tt0 f9 expr out #txt
Tt0 f9 486 361 306 306 #arcP
Tt0 f9 1 360 312 #addKink
Tt0 f9 0 0.286468713894557 0 0 #arcLabel
Tt0 f2 expr out #txt
Tt0 f2 152 116 152 156 #arcP
Tt0 f6 expr data #txt
Tt0 f6 outCond ivp=="LinkA.ivp" #txt
Tt0 f6 152 244 152 355 #arcP
Tt0 f16 outTypes "htmlwfui.Data" #txt
Tt0 f16 outLinks "LinkA.ivp" #txt
Tt0 f16 template "start_redirect.jsp" #txt
Tt0 f16 type htmlwfui.Data #txt
Tt0 f16 skipLink skip.ivp #txt
Tt0 f16 sortLink sort.ivp #txt
Tt0 f16 templateWizard '#
#Thu Feb 17 16:40:26 CET 2011
' #txt
Tt0 f16 pageArchivingActivated false #txt
Tt0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startRedirect</name>
        <nameStyle>13
</nameStyle>
    </language>
</elementInfo>
' #txt
Tt0 f16 @C|.responsibility Everybody #txt
Tt0 f16 30 220 36 24 -27 15 #rect
Tt0 f16 @|PageIcon #fIcon
Tt0 f17 expr data #txt
Tt0 f17 outCond ivp=="LinkC.ivp" #txt
Tt0 f17 134 231 66 232 #arcP
Tt0 f18 expr data #txt
Tt0 f18 outCond ivp=="LinkA.ivp" #txt
Tt0 f18 66 221 134 179 #arcP
Tt0 f18 0 0.43327785107273215 0 0 #arcLabel
Tt0 f19 expr data #txt
Tt0 f19 outCond ivp=="LinkE.ivp" #txt
Tt0 f19 270 299 66 237 #arcP
>Proto Tt0 .type htmlwfui.Data #txt
>Proto Tt0 .processKind NORMAL #txt
>Proto Tt0 0 0 32 24 18 0 #rect
>Proto Tt0 @|BIcon #fIcon
Tt0 f26 head f25 mainIn #connect
Tt0 f25 mainOut f24 tail #connect
Tt0 f24 head f23 mainIn #connect
Tt0 f23 out f27 tail #connect
Tt0 f27 head f3 mainIn #connect
Tt0 f0 mainOut f30 tail #connect
Tt0 f30 head f3 mainIn #connect
Tt0 f1 mainOut f15 tail #connect
Tt0 f15 head f14 mainIn #connect
Tt0 f12 head f11 mainIn #connect
Tt0 f11 mainOut f13 tail #connect
Tt0 f13 head f23 mainIn #connect
Tt0 f23 out f22 tail #connect
Tt0 f22 head f10 mainIn #connect
Tt0 f23 out f12 tail #connect
Tt0 f10 mainOut f4 tail #connect
Tt0 f4 head f23 mainIn #connect
Tt0 f23 out f8 tail #connect
Tt0 f8 head f7 mainIn #connect
Tt0 f7 mainOut f9 tail #connect
Tt0 f9 head f23 mainIn #connect
Tt0 f14 mainOut f2 tail #connect
Tt0 f2 head f0 mainIn #connect
Tt0 f3 out f26 tail #connect
Tt0 f3 out f6 tail #connect
Tt0 f6 head f5 mainIn #connect
Tt0 f3 out f17 tail #connect
Tt0 f17 head f16 mainIn #connect
Tt0 f16 out f18 tail #connect
Tt0 f18 head f0 mainIn #connect
Tt0 f23 out f19 tail #connect
Tt0 f19 head f16 mainIn #connect
