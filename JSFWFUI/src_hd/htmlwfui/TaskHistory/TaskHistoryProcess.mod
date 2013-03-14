[Ivy]
[>Created: Thu Feb 21 14:59:32 CET 2013]
13C396BFDDBEC687 3.17 #module
>Proto >Proto Collection #zClass
Ts0 TaskHistoryProcess Big #zClass
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
Ts0 @RichDialogInitStart f3 '' #zField
Ts0 @RichDialogMethodStart f0 '' #zField
Ts0 @RichDialogEnd f6 '' #zField
Ts0 @GridStep f2 '' #zField
Ts0 @PushWFArc f7 '' #zField
Ts0 @PushWFArc f4 '' #zField
Ts0 @GridStep f5 '' #zField
Ts0 @PushWFArc f9 '' #zField
Ts0 @PushWFArc f8 '' #zField
>Proto Ts0 Ts0 TaskHistoryProcess #zField
Ts0 f1 type htmlwfui.TaskHistory.TaskHistoryData #txt
Ts0 f1 86 150 20 20 13 0 #rect
Ts0 f1 @|RichDialogProcessEndIcon #fIcon
Ts0 f3 guid 13C39848937EF5EF #txt
Ts0 f3 type htmlwfui.TaskHistory.TaskHistoryData #txt
Ts0 f3 method start(htmlwfui.Data) #txt
Ts0 f3 disableUIEvents true #txt
Ts0 f3 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<htmlwfui.Data data> param = methodEvent.getInputArguments();
' #txt
Ts0 f3 inParameterMapAction 'out.data=param.data;
' #txt
Ts0 f3 outParameterDecl '<> result;
' #txt
Ts0 f3 embeddedRdInitializations '* ' #txt
Ts0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Data)</name>
        <nameStyle>11,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f3 86 54 20 20 13 0 #rect
Ts0 f3 @|RichDialogInitStartIcon #fIcon
Ts0 f0 guid 13C39A85B32BB07D #txt
Ts0 f0 type htmlwfui.TaskHistory.TaskHistoryData #txt
Ts0 f0 method taskDetail(Number) #txt
Ts0 f0 disableUIEvents false #txt
Ts0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Number indx> param = methodEvent.getInputArguments();
' #txt
Ts0 f0 inParameterMapAction 'out.data.temp.n=param.indx;
' #txt
Ts0 f0 outParameterDecl '<> result;
' #txt
Ts0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>taskDetail(Number)</name>
        <nameStyle>18,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f0 214 54 20 20 13 0 #rect
Ts0 f0 @|RichDialogMethodStartIcon #fIcon
Ts0 f6 type htmlwfui.TaskHistory.TaskHistoryData #txt
Ts0 f6 guid 13C3D3293CEA9000 #txt
Ts0 f6 214 150 20 20 13 0 #rect
Ts0 f6 @|RichDialogEndIcon #fIcon
Ts0 f2 actionDecl 'htmlwfui.TaskHistory.TaskHistoryData out;
' #txt
Ts0 f2 actionTable 'out=in;
out.option="detail";
' #txt
Ts0 f2 type htmlwfui.TaskHistory.TaskHistoryData #txt
Ts0 f2 206 100 36 24 20 -2 #rect
Ts0 f2 @|StepIcon #fIcon
Ts0 f7 expr out #txt
Ts0 f7 224 74 224 100 #arcP
Ts0 f4 expr out #txt
Ts0 f4 224 124 224 150 #arcP
Ts0 f5 actionDecl 'htmlwfui.TaskHistory.TaskHistoryData out;
' #txt
Ts0 f5 actionTable 'out=in;
' #txt
Ts0 f5 actionCode 'import ch.ivyteam.ivy.security.ISecurityMember;
import htmlwfui.TaskDetail;
import java.util.EnumSet;
import ch.ivyteam.ivy.workflow.PropertyOrder;
import ch.ivyteam.ivy.workflow.TaskState;
import ch.ivyteam.ivy.workflow.TaskProperty;
import ch.ivyteam.ivy.persistence.OrderDirection;
import ch.ivyteam.ivy.persistence.IQueryResult;
import ch.ivyteam.ivy.workflow.ITask;
import javax.servlet.http.HttpServletRequest;

List<ITask> tasks = in.data.tasks;
out.data.taskList.clear();

for (int t=0; t<tasks.size(); t++)
{
				ITask task = tasks.get(t);
				TaskDetail taskDetail = new TaskDetail();
				
				//ISecurityMember taskActivator = task.getActivator();
				//taskDetail.activator=taskActivator.getMemberName();
				taskDetail.delay = task.getDelayTimestamp();
				taskDetail.desc = task.getDescription() != null ? task.getDescription() : "";
				taskDetail.exp = task.getExpiryTimestamp();
				taskDetail.id = task.getId();
				taskDetail.hasNotes = task.hasNotes();
				taskDetail.name = task.getName();
				taskDetail.prio = task.getPriority().intValue();
				taskDetail.prioName = task.getPriority().toString();
				taskDetail.start = task.getStartTimestamp();
				taskDetail.stateName=task.getState().toString();
				taskDetail.end = task.getEndTimestamp();
				taskDetail.user = task.getWorkerUserName();
				taskDetail.activator = task.getActivatorName();
		
				out.data.taskList.add(taskDetail);
}' #txt
Ts0 f5 type htmlwfui.TaskHistory.TaskHistoryData #txt
Ts0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Task list</name>
        <nameStyle>9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f5 78 100 36 24 20 -2 #rect
Ts0 f5 @|StepIcon #fIcon
Ts0 f9 expr out #txt
Ts0 f9 96 124 96 150 #arcP
Ts0 f8 expr out #txt
Ts0 f8 96 74 96 100 #arcP
>Proto Ts0 .type htmlwfui.TaskHistory.TaskHistoryData #txt
>Proto Ts0 .processKind HTML_DIALOG #txt
>Proto Ts0 -8 -8 16 16 16 26 #rect
>Proto Ts0 '' #fIcon
Ts0 f0 mainOut f7 tail #connect
Ts0 f7 head f2 mainIn #connect
Ts0 f2 mainOut f4 tail #connect
Ts0 f4 head f6 mainIn #connect
Ts0 f5 mainOut f9 tail #connect
Ts0 f9 head f1 mainIn #connect
Ts0 f3 mainOut f8 tail #connect
Ts0 f8 head f5 mainIn #connect
