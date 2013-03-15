[Ivy]
[>Created: Thu Feb 21 14:48:32 CET 2013]
13A988AE1F9BA634 3.17 #module
>Proto >Proto Collection #zClass
Ts0 TaskListProcess Big #zClass
Ts0 RD #cInfo
Ts0 #process
Ts0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ts0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ts0 @TextInP .resExport .resExport #zField
Ts0 @TextInP .type .type #zField
Ts0 @TextInP .processKind .processKind #zField
Ts0 @AnnotationInP-0n ai ai #zField
Ts0 @TextInP .xml .xml #zField
Ts0 @TextInP .responsibility .responsibility #zField
Ts0 @RichDialogProcessEnd f1 '' #zField
Ts0 @GridStep f3 '' #zField
Ts0 @PushWFArc f2 '' #zField
Ts0 @RichDialogMethodStart f10 '' #zField
Ts0 @RichDialogEnd f13 '' #zField
Ts0 @PushWFArc f14 '' #zField
Ts0 @RichDialogInitStart f5 '' #zField
Ts0 @PushWFArc f6 '' #zField
>Proto Ts0 Ts0 TaskListProcess #zField
Ts0 f1 type htmlwfui.TaskList.TaskListData #txt
Ts0 f1 86 150 20 20 13 0 #rect
Ts0 f1 @|RichDialogProcessEndIcon #fIcon
Ts0 f3 actionDecl 'htmlwfui.TaskList.TaskListData out;
' #txt
Ts0 f3 actionTable 'out=in;
' #txt
Ts0 f3 actionCode 'import ch.ivyteam.ivy.security.ISecurityMember;
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
				taskDetail.hasNotes = task.hasNotes();
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
Ts0 f3 type htmlwfui.TaskList.TaskListData #txt
Ts0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get Tasks
</name>
        <nameStyle>10,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f3 78 100 36 24 27 -6 #rect
Ts0 f3 @|StepIcon #fIcon
Ts0 f2 expr out #txt
Ts0 f2 96 124 96 150 #arcP
Ts0 f10 guid 13BB9186ECE86E10 #txt
Ts0 f10 type htmlwfui.TaskList.TaskListData #txt
Ts0 f10 method gotoTaskDetail(Number) #txt
Ts0 f10 disableUIEvents false #txt
Ts0 f10 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Number taskid> param = methodEvent.getInputArguments();
' #txt
Ts0 f10 inParameterMapAction 'out.data.temp.n=param.taskid;
' #txt
Ts0 f10 outParameterDecl '<> result;
' #txt
Ts0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>gotoTaskDetail(Number)</name>
        <nameStyle>22,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f10 214 54 20 20 13 0 #rect
Ts0 f10 @|RichDialogMethodStartIcon #fIcon
Ts0 f13 type htmlwfui.TaskList.TaskListData #txt
Ts0 f13 guid 13BB918DD8611571 #txt
Ts0 f13 214 150 20 20 13 0 #rect
Ts0 f13 @|RichDialogEndIcon #fIcon
Ts0 f14 expr out #txt
Ts0 f14 224 74 224 150 #arcP
Ts0 f14 0 0.5054513728464819 0 0 #arcLabel
Ts0 f5 guid 13CC9BC7DA185F54 #txt
Ts0 f5 type htmlwfui.TaskList.TaskListData #txt
Ts0 f5 method start(htmlwfui.Data) #txt
Ts0 f5 disableUIEvents true #txt
Ts0 f5 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<htmlwfui.Data data> param = methodEvent.getInputArguments();
' #txt
Ts0 f5 inParameterMapAction 'out.data=param.data;
' #txt
Ts0 f5 outParameterDecl '<> result;
' #txt
Ts0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Init_Start1</name>
        <nameStyle>11,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f5 86 54 20 20 13 0 #rect
Ts0 f5 @|RichDialogInitStartIcon #fIcon
Ts0 f6 expr out #txt
Ts0 f6 96 74 96 100 #arcP
>Proto Ts0 .type htmlwfui.TaskList.TaskListData #txt
>Proto Ts0 .processKind HTML_DIALOG #txt
>Proto Ts0 -8 -8 16 16 16 26 #rect
>Proto Ts0 '' #fIcon
Ts0 f3 mainOut f2 tail #connect
Ts0 f2 head f1 mainIn #connect
Ts0 f10 mainOut f14 tail #connect
Ts0 f14 head f13 mainIn #connect
Ts0 f5 mainOut f6 tail #connect
Ts0 f6 head f3 mainIn #connect
