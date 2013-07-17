[Ivy]
[>Created: Wed Jul 17 17:10:00 CEST 2013]
13FE10F004F193D4 3.17 #module
>Proto >Proto Collection #zClass
Ts0 TaskDetailsProcess Big #zClass
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
Ts0 @GridStep f5 '' #zField
Ts0 @PushWFArc f6 '' #zField
Ts0 @GridStep f7 '' #zField
Ts0 @PushWFArc f8 '' #zField
Ts0 @RichDialogMethodStart f19 '' #zField
Ts0 @RichDialogProcessEnd f20 '' #zField
Ts0 @GridStep f14 '' #zField
Ts0 @PushWFArc f17 '' #zField
Ts0 @PushWFArc f18 '' #zField
Ts0 @RichDialogMethodStart f26 '' #zField
Ts0 @PushWFArc f29 '' #zField
Ts0 @PushWFArc f28 '' #zField
Ts0 @PushWFArc f4 '' #zField
>Proto Ts0 Ts0 TaskDetailsProcess #zField
Ts0 f0 guid 13FE10F005F6798D #txt
Ts0 f0 type ch.ivyteam.wf.history.TaskDetails.TaskDetailsData #txt
Ts0 f0 method start(Number,Boolean) #txt
Ts0 f0 disableUIEvents true #txt
Ts0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Number taskId,java.lang.Boolean isHistory> param = methodEvent.getInputArguments();
' #txt
Ts0 f0 inParameterMapAction 'out.isHistory=param.isHistory;
out.taskId=param.taskId;
' #txt
Ts0 f0 outParameterDecl '<> result;
' #txt
Ts0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f0 86 54 20 20 13 0 #rect
Ts0 f0 @|RichDialogInitStartIcon #fIcon
Ts0 f1 type ch.ivyteam.wf.history.TaskDetails.TaskDetailsData #txt
Ts0 f1 86 310 20 20 13 0 #rect
Ts0 f1 @|RichDialogProcessEndIcon #fIcon
Ts0 f3 actionDecl 'ch.ivyteam.wf.history.TaskDetails.TaskDetailsData out;
' #txt
Ts0 f3 actionTable 'out=in;
' #txt
Ts0 f3 actionCode 'import ch.ivyteam.logicalexpression.RelationalOperator;
import java.util.EnumSet;
import ch.ivyteam.ivy.workflow.PropertyOrder;
import ch.ivyteam.ivy.workflow.TaskState;
import ch.ivyteam.ivy.workflow.TaskProperty;
import ch.ivyteam.ivy.persistence.OrderDirection;
import ch.ivyteam.ivy.persistence.IQueryResult;
import ch.ivyteam.ivy.workflow.ITask;
import ch.ivyteam.ivy.workflow.IPropertyFilter;

out.task = null;
IPropertyFilter taskFilter = ivy.wf.createTaskPropertyFilter(TaskProperty.ID, RelationalOperator.EQUAL, in.taskId);

if(in.isHistory)
{
	IQueryResult queryResult = ivy.session.findWorkedOnTasks(taskFilter,
		PropertyOrder.create(TaskProperty.ID, OrderDirection.DESCENDING),0, 1 ,true);
  if(queryResult.getAllCount() != 0)
	{
		out.task = queryResult.get(0) as ITask;
	}
}

if(out.task == null)
{
	IQueryResult queryResult  = ivy.session.findWorkTasks(taskFilter, PropertyOrder.create(TaskProperty.ID, OrderDirection.DESCENDING), 
  	0, 1, true, EnumSet.of(TaskState.SUSPENDED, TaskState.RESUMED, TaskState.PARKED));
	out.task = queryResult.get(0) as ITask;
}' #txt
Ts0 f3 type ch.ivyteam.wf.history.TaskDetails.TaskDetailsData #txt
Ts0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get task</name>
        <nameStyle>8
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f3 174 116 36 24 20 -2 #rect
Ts0 f3 @|StepIcon #fIcon
Ts0 f5 actionDecl 'ch.ivyteam.wf.history.TaskDetails.TaskDetailsData out;
' #txt
Ts0 f5 actionTable 'out=in;
' #txt
Ts0 f5 actionCode 'import ch.ivyteam.ivy.workflow.ITask;
import ch.ivyteam.ivy.workflow.TaskState;
import ch.ivyteam.ivy.workflow.IWorkflowSession;

ITask task = in.task;
TaskState state = null;

	IWorkflowSession ivySession = ivy.session;
	boolean hasPageArchivePermission = ivySession.hasPermission(ivy.request.getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.TASK_PAGE_ARCHIVE_READ_ALL);
	boolean hasResetPermission = ivySession.hasPermission(ivy.request.getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.TASK_RESET);
	boolean hasDelegatePermission = ivySession.hasPermission(ivy.request.getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.DELEGATE_TASKS);
	boolean hasTaskWriteExpiryPermission = ivySession.hasPermission(ivy.request.getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.TASK_WRITE_EXPIRY_ACTIVATOR);


state = task.getState();

if(state==TaskState.RESUMED && hasResetPermission) 
		{
			in.resetLink = false;
		} else {
			in.resetLink = true;
		} 
		if (state==TaskState.DONE || state==TaskState.DESTROYED || state==TaskState.RESUMED || state==TaskState.FAILED || !hasDelegatePermission)	
		{ 
			in.delegateLink = true;
		} else { 
			in.delegateLink = false;
		}
		if (state==TaskState.DONE || state==TaskState.DESTROYED || state==TaskState.RESUMED || state==TaskState.FAILED || !hasTaskWriteExpiryPermission)	
		{ 
			in.changeExpiryLink = true;
		} else { 
			in.changeExpiryLink = false;
		}
		if (state==TaskState.DONE || state==TaskState.DESTROYED || state==TaskState.RESUMED || state==TaskState.FAILED)	
		{ 
			in.addNoteLink = true;
		} else { 
			in.addNoteLink = false;
		}
		if (hasPageArchivePermission)	
		{ 
			in.archiveLink = false;
		} else { 
			in.archiveLink = true;
		}' #txt
Ts0 f5 type ch.ivyteam.wf.history.TaskDetails.TaskDetailsData #txt
Ts0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>enable/disable links</name>
        <nameStyle>20
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f5 174 180 36 24 20 -2 #rect
Ts0 f5 @|StepIcon #fIcon
Ts0 f6 expr out #txt
Ts0 f6 192 140 192 180 #arcP
Ts0 f7 actionDecl 'ch.ivyteam.wf.history.TaskDetails.TaskDetailsData out;
' #txt
Ts0 f7 actionTable 'out=in;
' #txt
Ts0 f7 actionCode 'if(in.task.hasNotes()){
	out.notes = in.task.getNotes();
}

if(in.task.getCase().hasNotes()){
	out.caseNotes = in.task.getCase().getNotes();
}' #txt
Ts0 f7 type ch.ivyteam.wf.history.TaskDetails.TaskDetailsData #txt
Ts0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get notes</name>
        <nameStyle>9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f7 174 244 36 24 20 -2 #rect
Ts0 f7 @|StepIcon #fIcon
Ts0 f8 expr out #txt
Ts0 f8 192 204 192 244 #arcP
Ts0 f19 guid 13FE227DAB03DC7E #txt
Ts0 f19 type ch.ivyteam.wf.history.TaskDetails.TaskDetailsData #txt
Ts0 f19 method deleteNote(ch.ivyteam.ivy.workflow.INote) #txt
Ts0 f19 disableUIEvents false #txt
Ts0 f19 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.workflow.INote note> param = methodEvent.getInputArguments();
' #txt
Ts0 f19 inParameterMapAction 'out.note=param.note;
' #txt
Ts0 f19 outParameterDecl '<> result;
' #txt
Ts0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>deleteNote(INote)</name>
        <nameStyle>17,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f19 374 54 20 20 13 0 #rect
Ts0 f19 @|RichDialogMethodStartIcon #fIcon
Ts0 f20 type ch.ivyteam.wf.history.TaskDetails.TaskDetailsData #txt
Ts0 f20 374 182 20 20 13 0 #rect
Ts0 f20 @|RichDialogProcessEndIcon #fIcon
Ts0 f14 actionDecl 'ch.ivyteam.wf.history.TaskDetails.TaskDetailsData out;
' #txt
Ts0 f14 actionTable 'out=in;
' #txt
Ts0 f14 actionCode 'in.task.deleteNote(in.note);
' #txt
Ts0 f14 type ch.ivyteam.wf.history.TaskDetails.TaskDetailsData #txt
Ts0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>delete note</name>
        <nameStyle>11
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f14 366 116 36 24 20 -2 #rect
Ts0 f14 @|StepIcon #fIcon
Ts0 f17 expr out #txt
Ts0 f17 384 74 384 116 #arcP
Ts0 f18 expr out #txt
Ts0 f18 384 140 384 182 #arcP
Ts0 f26 guid 13FEB4CFA465F013 #txt
Ts0 f26 type ch.ivyteam.wf.history.TaskDetails.TaskDetailsData #txt
Ts0 f26 method update() #txt
Ts0 f26 disableUIEvents false #txt
Ts0 f26 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ts0 f26 outParameterDecl '<> result;
' #txt
Ts0 f26 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update()</name>
    </language>
</elementInfo>
' #txt
Ts0 f26 182 54 20 20 13 0 #rect
Ts0 f26 @|RichDialogMethodStartIcon #fIcon
Ts0 f29 expr out #txt
Ts0 f29 192 74 192 116 #arcP
Ts0 f28 expr out #txt
Ts0 f28 96 74 96 310 #arcP
Ts0 f4 expr out #txt
Ts0 f4 192 268 106 320 #arcP
Ts0 f4 1 192 320 #addKink
Ts0 f4 1 0.18806928460277236 0 0 #arcLabel
>Proto Ts0 .type ch.ivyteam.wf.history.TaskDetails.TaskDetailsData #txt
>Proto Ts0 .processKind HTML_DIALOG #txt
>Proto Ts0 -8 -8 16 16 16 26 #rect
>Proto Ts0 '' #fIcon
Ts0 f3 mainOut f6 tail #connect
Ts0 f6 head f5 mainIn #connect
Ts0 f5 mainOut f8 tail #connect
Ts0 f8 head f7 mainIn #connect
Ts0 f19 mainOut f17 tail #connect
Ts0 f17 head f14 mainIn #connect
Ts0 f14 mainOut f18 tail #connect
Ts0 f18 head f20 mainIn #connect
Ts0 f26 mainOut f29 tail #connect
Ts0 f29 head f3 mainIn #connect
Ts0 f0 mainOut f28 tail #connect
Ts0 f28 head f1 mainIn #connect
Ts0 f7 mainOut f4 tail #connect
Ts0 f4 head f1 mainIn #connect
