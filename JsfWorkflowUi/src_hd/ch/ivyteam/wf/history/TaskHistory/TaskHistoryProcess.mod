[Ivy]
[>Created: Thu Jun 13 14:08:10 CEST 2013]
13F2E0370AA5B84E 3.17 #module
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
Ts0 @RichDialogInitStart f0 '' #zField
Ts0 @RichDialogProcessEnd f1 '' #zField
Ts0 @GridStep f3 '' #zField
Ts0 @PushWFArc f4 '' #zField
Ts0 @PushWFArc f2 '' #zField
>Proto Ts0 Ts0 TaskHistoryProcess #zField
Ts0 f0 guid 13F2E0370C9B06E8 #txt
Ts0 f0 type ch.ivyteam.wf.history.TaskHistory.TaskHistoryData #txt
Ts0 f0 method start() #txt
Ts0 f0 disableUIEvents true #txt
Ts0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ts0 f0 outParameterDecl '<> result;
' #txt
Ts0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ts0 f0 86 54 20 20 13 0 #rect
Ts0 f0 @|RichDialogInitStartIcon #fIcon
Ts0 f1 type ch.ivyteam.wf.history.TaskHistory.TaskHistoryData #txt
Ts0 f1 86 182 20 20 13 0 #rect
Ts0 f1 @|RichDialogProcessEndIcon #fIcon
Ts0 f3 actionDecl 'ch.ivyteam.wf.history.TaskHistory.TaskHistoryData out;
' #txt
Ts0 f3 actionTable 'out=in;
' #txt
Ts0 f3 actionCode 'import ch.ivyteam.ivy.workflow.PropertyOrder;
import ch.ivyteam.ivy.workflow.TaskProperty;
import ch.ivyteam.ivy.persistence.OrderDirection;
import ch.ivyteam.ivy.persistence.IQueryResult;
import ch.ivyteam.ivy.workflow.ITask;

IQueryResult queryResult = ivy.session.findWorkedOnTasks(null,
	PropertyOrder.create(TaskProperty.ID, OrderDirection.DESCENDING),0, -1 ,true);

List<ITask> tasks = queryResult.getResultList();
out.paginator = tasks.size() >= 50;

for (ITask task : tasks)
{
	out.tasks.add(task);
}' #txt
Ts0 f3 type ch.ivyteam.wf.history.TaskHistory.TaskHistoryData #txt
Ts0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>tasks</name>
        <nameStyle>5
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f3 78 116 36 24 20 -2 #rect
Ts0 f3 @|StepIcon #fIcon
Ts0 f4 expr out #txt
Ts0 f4 96 74 96 116 #arcP
Ts0 f2 expr out #txt
Ts0 f2 96 140 96 182 #arcP
>Proto Ts0 .type ch.ivyteam.wf.history.TaskHistory.TaskHistoryData #txt
>Proto Ts0 .processKind HTML_DIALOG #txt
>Proto Ts0 -8 -8 16 16 16 26 #rect
>Proto Ts0 '' #fIcon
Ts0 f0 mainOut f4 tail #connect
Ts0 f4 head f3 mainIn #connect
Ts0 f3 mainOut f2 tail #connect
Ts0 f2 head f1 mainIn #connect
