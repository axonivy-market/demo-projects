[Ivy]
[>Created: Thu Feb 17 12:06:40 CET 2011]
125016DE17A534EB 3.15 #module
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
>Proto Tt0 Tt0 Tasklist #zField
Tt0 f5 type htmlwfui.Data #txt
Tt0 f5 115 355 26 26 14 0 #rect
Tt0 f5 @|EndIcon #fIcon
Tt0 f0 actionDecl 'htmlwfui.Data out;
' #txt
Tt0 f0 actionTable 'out=in.clone();
out.request=ivy.request;
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
r.getHttpServletRequest().getSession().setAttribute("ch.ivy.wfui.returnUrl",ivy.html.startref("125016DE17A534EB/start1.ivp"));

for (int t=0; t<tasks.size(); t++)
{
		// ivy4 tasks
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
				String prefixRIARedirect = ("RIA".equals(task.getCustomVarCharField1())||"RIA".equals(task.getCase().getCustomVarCharField1())) ? "/ivy/wf/start_redirect.jsp?startUrl=" : "" ;
				taskDetail.url = prefixRIARedirect+"/ivy/pro/"+task.getFullRequestPath()+"?taskId="+task.getIdentifier();
		
				out.taskList.add(taskDetail);
}' #txt
Tt0 f0 type htmlwfui.Data #txt
Tt0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get Tasks
setReturnUrl</name>
        <nameStyle>22,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Tt0 f0 110 156 36 24 22 -5 #rect
Tt0 f0 @|StepIcon #fIcon
Tt0 f3 outTypes "htmlwfui.Data","htmlwfui.Data" #txt
Tt0 f3 outLinks "LinkB.ivp","LinkA.ivp" #txt
Tt0 f3 template "taskList.ivc" #txt
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
Tt0 f3 110 220 36 25 20 0 #rect
Tt0 f3 @|PageIcon #fIcon
Tt0 f1 outLink start1.ivp #txt
Tt0 f1 type htmlwfui.Data #txt
Tt0 f1 actionDecl 'htmlwfui.Data out;' #txt
Tt0 f1 requestEnabled true #txt
Tt0 f1 triggerEnabled false #txt
Tt0 f1 callSignature start1() #txt
Tt0 f1 startName 'Start TaskList' #txt
Tt0 f1 taskData '#
#Mon Nov 29 14:17:16 CET 2010
.DESC=
.NAM=Start TaskList
' #txt
Tt0 f1 caseData '#
#Fri Nov 26 11:07:05 CET 2010
subType.code=
businessMilestone.timestamp=
mainContact.id=
mainContact.name=
processCategory.name=
processCategory.code=
businessPriority=
mainContact.docDb.code=
mainContact.type=
businessObject.folder.id=
businessObject.docDb.code=
process.name=
businessCreator.user=
businessStart.timestamp=
process.code=
type.name=
type.code=
businessObject.name=
correspondent.id=
businessObject.code=
case.name=
mainContact.folder.id=
case.description=
subType.name=
' #txt
Tt0 f1 showInStartList 0 #txt
Tt0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startTaskList</name>
        <nameStyle>13,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Tt0 f1 @C|.responsibility Everybody #txt
Tt0 f1 115 27 26 26 14 0 #rect
Tt0 f1 @|StartRequestIcon #fIcon
Tt0 f23 outTypes "htmlwfui.Data","htmlwfui.Data","htmlwfui.Data","htmlwfui.Data" #txt
Tt0 f23 outLinks "LinkA.ivp","LinkB.ivp","LinkC.ivp","LinkD.ivp" #txt
Tt0 f23 template "taskDetail.ivc" #txt
Tt0 f23 type htmlwfui.Data #txt
Tt0 f23 skipLink skip.ivp #txt
Tt0 f23 sortLink sort.ivp #txt
Tt0 f23 templateWizard '#
#Mon Dec 06 10:49:18 CET 2010
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
Tt0 f25 270 220 36 24 28 -15 #rect
Tt0 f25 @|StepIcon #fIcon
Tt0 f26 expr data #txt
Tt0 f26 outCond ivp=="LinkB.ivp" #txt
Tt0 f26 146 231 270 232 #arcP
Tt0 f26 0 0.8226392979110723 0 0 #arcLabel
Tt0 f24 expr out #txt
Tt0 f24 288 244 288 292 #arcP
Tt0 f24 0 0.729879361412707 0 0 #arcLabel
Tt0 f27 expr data #txt
Tt0 f27 outCond ivp=="LinkA.ivp" #txt
Tt0 f27 270 304 137 244 #arcP
Tt0 f27 1 176 304 #addKink
Tt0 f27 0 0.6361311570249065 0 0 #arcLabel
Tt0 f30 expr out #txt
Tt0 f30 128 180 128 219 #arcP
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
Tt0 f14 110 92 36 24 20 -2 #rect
Tt0 f14 @|CallSubIcon #fIcon
Tt0 f15 expr out #txt
Tt0 f15 128 53 128 92 #arcP
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
Tt0 f13 392 356 306 304 #arcP
Tt0 f13 1 392 304 #addKink
Tt0 f13 0 0.31709394207360503 0 0 #arcLabel
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
Tt0 f10 270 356 36 24 21 3 #rect
Tt0 f10 @|CallSubIcon #fIcon
Tt0 f22 expr data #txt
Tt0 f22 outCond ivp=="LinkB.ivp" #txt
Tt0 f22 288 316 288 356 #arcP
Tt0 f22 0 0.6481254980617335 0 0 #arcLabel
Tt0 f4 expr out #txt
Tt0 f4 270 368 270 308 #arcP
Tt0 f4 1 208 368 #addKink
Tt0 f4 2 208 320 #addKink
Tt0 f4 1 0.7611959175330122 0 0 #arcLabel
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
Tt0 f9 504 356 306 304 #arcP
Tt0 f9 1 504 304 #addKink
Tt0 f9 1 0.15241315129014188 0 0 #arcLabel
Tt0 f2 expr out #txt
Tt0 f2 128 116 128 156 #arcP
Tt0 f6 expr data #txt
Tt0 f6 outCond ivp=="LinkA.ivp" #txt
Tt0 f6 128 244 128 355 #arcP
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
