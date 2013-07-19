[Ivy]
[>Created: Fri Jul 19 10:15:27 CEST 2013]
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
Ts0 @RichDialogProcessStart f2 '' #zField
Ts0 @GridStep f10 '' #zField
Ts0 @PushWFArc f12 '' #zField
Ts0 @PushWFArc f9 '' #zField
Ts0 @GridStep f22 '' #zField
Ts0 @GridStep f23 '' #zField
Ts0 @PushWFArc f27 '' #zField
Ts0 @RichDialogProcessStart f13 '' #zField
Ts0 @GridStep f15 '' #zField
Ts0 @PushWFArc f16 '' #zField
Ts0 @PushWFArc f21 '' #zField
Ts0 @PushWFArc f11 '' #zField
Ts0 @PushWFArc f25 '' #zField
Ts0 @PushWFArc f28 '' #zField
Ts0 @RichDialogProcessStart f24 '' #zField
Ts0 @GridStep f29 '' #zField
Ts0 @PushWFArc f30 '' #zField
Ts0 @PushWFArc f31 '' #zField
Ts0 @GridStep f32 '' #zField
Ts0 @PushWFArc f33 '' #zField
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
Ts0 f1 86 438 20 20 13 0 #rect
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
Ts0 f3 78 180 36 24 20 -2 #rect
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
Ts0 f5 78 244 36 24 20 -2 #rect
Ts0 f5 @|StepIcon #fIcon
Ts0 f6 expr out #txt
Ts0 f6 96 204 96 244 #arcP
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
Ts0 f7 78 308 36 24 20 -2 #rect
Ts0 f7 @|StepIcon #fIcon
Ts0 f8 expr out #txt
Ts0 f8 96 268 96 308 #arcP
Ts0 f19 guid 13FE227DAB03DC7E #txt
Ts0 f19 type ch.ivyteam.wf.history.TaskDetails.TaskDetailsData #txt
Ts0 f19 method deleteNote(ch.ivyteam.ivy.workflow.INote,String) #txt
Ts0 f19 disableUIEvents false #txt
Ts0 f19 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.workflow.INote note,java.lang.String noteFor> param = methodEvent.getInputArguments();
' #txt
Ts0 f19 inParameterMapAction 'out.note=param.note;
out.noteFor=param.noteFor;
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
Ts0 f19 406 54 20 20 13 0 #rect
Ts0 f19 @|RichDialogMethodStartIcon #fIcon
Ts0 f20 type ch.ivyteam.wf.history.TaskDetails.TaskDetailsData #txt
Ts0 f20 406 182 20 20 13 0 #rect
Ts0 f20 @|RichDialogProcessEndIcon #fIcon
Ts0 f14 actionDecl 'ch.ivyteam.wf.history.TaskDetails.TaskDetailsData out;
' #txt
Ts0 f14 actionTable 'out=in;
' #txt
Ts0 f14 actionCode 'if(in.noteFor == "task")
{
	in.task.deleteNote(in.note);
}
else
{
	in.task.getCase().deleteNote(in.note);
}

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
Ts0 f14 398 116 36 24 20 -2 #rect
Ts0 f14 @|StepIcon #fIcon
Ts0 f17 expr out #txt
Ts0 f17 416 74 416 116 #arcP
Ts0 f18 expr out #txt
Ts0 f18 416 140 416 182 #arcP
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
Ts0 f26 246 54 20 20 13 0 #rect
Ts0 f26 @|RichDialogMethodStartIcon #fIcon
Ts0 f2 guid 13FF06C460193848 #txt
Ts0 f2 type ch.ivyteam.wf.history.TaskDetails.TaskDetailsData #txt
Ts0 f2 actionDecl 'ch.ivyteam.wf.history.TaskDetails.TaskDetailsData out;
' #txt
Ts0 f2 actionTable 'out=in;
' #txt
Ts0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>addNote</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f2 566 54 20 20 13 0 #rect
Ts0 f2 @|RichDialogProcessStartIcon #fIcon
Ts0 f10 actionDecl 'ch.ivyteam.wf.history.TaskDetails.TaskDetailsData out;
' #txt
Ts0 f10 actionTable 'out=in;
' #txt
Ts0 f10 actionCode 'if(in.noteDescription.trim().length()>0)
{
	if(in.noteFor.equals("task"))
	{
		in.task.createNote(ivy.session, in.noteDescription);
	}
	else
	{
		in.task.getCase().createNote(ivy.session, in.noteDescription);
	}
}' #txt
Ts0 f10 type ch.ivyteam.wf.history.TaskDetails.TaskDetailsData #txt
Ts0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>add note</name>
        <nameStyle>8
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f10 558 116 36 24 20 -2 #rect
Ts0 f10 @|StepIcon #fIcon
Ts0 f12 expr out #txt
Ts0 f12 576 74 576 116 #arcP
Ts0 f12 0 0.6361117241425837 0 0 #arcLabel
Ts0 f9 expr out #txt
Ts0 f9 576 140 426 192 #arcP
Ts0 f9 1 576 192 #addKink
Ts0 f9 1 0.33411365079186317 0 0 #arcLabel
Ts0 f22 actionDecl 'ch.ivyteam.wf.history.TaskDetails.TaskDetailsData out;
' #txt
Ts0 f22 actionTable 'out=in;
out.expiryDate=null;
out.expiryTime=null;
out.noteDescription="";
out.noteFor="case";
' #txt
Ts0 f22 type ch.ivyteam.wf.history.TaskDetails.TaskDetailsData #txt
Ts0 f22 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>init</name>
        <nameStyle>4
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f22 238 116 36 24 20 -2 #rect
Ts0 f22 @|StepIcon #fIcon
Ts0 f23 actionDecl 'ch.ivyteam.wf.history.TaskDetails.TaskDetailsData out;
' #txt
Ts0 f23 actionTable 'out=in;
out.isDelegateToRole=false;
out.showNoteSelection=true;
' #txt
Ts0 f23 type ch.ivyteam.wf.history.TaskDetails.TaskDetailsData #txt
Ts0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>enable note option</name>
        <nameStyle>18
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f23 78 116 36 24 20 -2 #rect
Ts0 f23 @|StepIcon #fIcon
Ts0 f27 expr out #txt
Ts0 f27 96 74 96 116 #arcP
Ts0 f13 guid 13FF1DD416B328FA #txt
Ts0 f13 type ch.ivyteam.wf.history.TaskDetails.TaskDetailsData #txt
Ts0 f13 actionDecl 'ch.ivyteam.wf.history.TaskDetails.TaskDetailsData out;
' #txt
Ts0 f13 actionTable 'out=in;
' #txt
Ts0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>changeExpiry</name>
        <nameStyle>12,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f13 694 54 20 20 13 0 #rect
Ts0 f13 @|RichDialogProcessStartIcon #fIcon
Ts0 f15 actionDecl 'ch.ivyteam.wf.history.TaskDetails.TaskDetailsData out;
' #txt
Ts0 f15 actionTable 'out=in;
' #txt
Ts0 f15 actionCode 'import ch.ivyteam.ivy.workflow.WorkflowPriority;

if(in.prio == 0)
{
	out.task.setOriginalPriority(WorkflowPriority.EXCEPTION);
}	
else if(in.prio == 1)
{
	out.task.setOriginalPriority(WorkflowPriority.HIGH);
}	
else if(in.prio == 2)
{
	out.task.setOriginalPriority(WorkflowPriority.NORMAL);
}	
else if(in.prio == 3)
{
	out.task.setOriginalPriority(WorkflowPriority.LOW);
}

if(in.expiryDate.toNumber() > 0)
{
	DateTime expiry = new DateTime(in.expiryDate.getYear(), in.expiryDate.getMonth(), in.expiryDate.getDay(), 
		in.expiryTime.getHours(), in.expiryTime.getMinutes(), 0);
	out.task.setExpiryTimestamp(expiry);
}' #txt
Ts0 f15 type ch.ivyteam.wf.history.TaskDetails.TaskDetailsData #txt
Ts0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>change expiry</name>
        <nameStyle>13
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f15 686 116 36 24 20 -2 #rect
Ts0 f15 @|StepIcon #fIcon
Ts0 f16 expr out #txt
Ts0 f16 704 74 704 116 #arcP
Ts0 f21 expr out #txt
Ts0 f21 704 140 426 192 #arcP
Ts0 f21 1 704 192 #addKink
Ts0 f21 1 0.3877451289726625 0 0 #arcLabel
Ts0 f11 expr out #txt
Ts0 f11 256 74 256 116 #arcP
Ts0 f25 expr out #txt
Ts0 f25 96 140 96 180 #arcP
Ts0 f28 expr out #txt
Ts0 f28 256 140 106 448 #arcP
Ts0 f28 1 256 448 #addKink
Ts0 f28 0 0.8180270850396713 0 0 #arcLabel
Ts0 f24 guid 13FF244AAE66F299 #txt
Ts0 f24 type ch.ivyteam.wf.history.TaskDetails.TaskDetailsData #txt
Ts0 f24 actionDecl 'ch.ivyteam.wf.history.TaskDetails.TaskDetailsData out;
' #txt
Ts0 f24 actionTable 'out=in;
' #txt
Ts0 f24 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>delegateTask</name>
        <nameStyle>12,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f24 822 54 20 20 13 0 #rect
Ts0 f24 @|RichDialogProcessStartIcon #fIcon
Ts0 f29 actionDecl 'ch.ivyteam.wf.history.TaskDetails.TaskDetailsData out;
' #txt
Ts0 f29 actionTable 'out=in;
' #txt
Ts0 f29 actionCode 'import ch.ivyteam.ivy.security.IUser;
import ch.ivyteam.ivy.security.IRole;

if(in.isDelegateToRole){
	out.task.setActivator(in.delegateToRole);
}else{
	out.task.setActivator(in.delegateToUser);
}' #txt
Ts0 f29 type ch.ivyteam.wf.history.TaskDetails.TaskDetailsData #txt
Ts0 f29 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>delegate task</name>
        <nameStyle>13
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f29 814 116 36 24 20 -2 #rect
Ts0 f29 @|StepIcon #fIcon
Ts0 f30 expr out #txt
Ts0 f30 832 74 832 116 #arcP
Ts0 f31 expr out #txt
Ts0 f31 832 140 426 192 #arcP
Ts0 f31 1 832 192 #addKink
Ts0 f31 1 0.4218678788869622 0 0 #arcLabel
Ts0 f32 actionDecl 'ch.ivyteam.wf.history.TaskDetails.TaskDetailsData out;
' #txt
Ts0 f32 actionTable 'out=in;
' #txt
Ts0 f32 actionCode 'import ch.ivyteam.ivy.security.IRole;
import ch.ivyteam.ivy.security.IUser;

List users = ivy.wf.getSecurityContext().getUsers();
out.userList.clear();
for(IUser user : users)
{
	if(user.getName() != "SYSTEM" && user.getName() != ivy.session.getSessionUser().getName())
	{
		out.userList.add(user);
	}
}	

List roles = ivy.session.getSessionUser().getAllRoles();
out.roleList.clear();
for(IRole role: roles)
{
	out.roleList.add(role);
}' #txt
Ts0 f32 type ch.ivyteam.wf.history.TaskDetails.TaskDetailsData #txt
Ts0 f32 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>user/role list</name>
        <nameStyle>14
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f32 78 372 36 24 20 -2 #rect
Ts0 f32 @|StepIcon #fIcon
Ts0 f33 expr out #txt
Ts0 f33 96 332 96 372 #arcP
Ts0 f33 0 0.3970811519327517 0 0 #arcLabel
Ts0 f4 expr out #txt
Ts0 f4 96 396 96 438 #arcP
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
Ts0 f2 mainOut f12 tail #connect
Ts0 f12 head f10 mainIn #connect
Ts0 f10 mainOut f9 tail #connect
Ts0 f9 head f20 mainIn #connect
Ts0 f0 mainOut f27 tail #connect
Ts0 f27 head f23 mainIn #connect
Ts0 f13 mainOut f16 tail #connect
Ts0 f16 head f15 mainIn #connect
Ts0 f15 mainOut f21 tail #connect
Ts0 f21 head f20 mainIn #connect
Ts0 f26 mainOut f11 tail #connect
Ts0 f11 head f22 mainIn #connect
Ts0 f23 mainOut f25 tail #connect
Ts0 f25 head f3 mainIn #connect
Ts0 f22 mainOut f28 tail #connect
Ts0 f28 head f1 mainIn #connect
Ts0 f24 mainOut f30 tail #connect
Ts0 f30 head f29 mainIn #connect
Ts0 f29 mainOut f31 tail #connect
Ts0 f31 head f20 mainIn #connect
Ts0 f7 mainOut f33 tail #connect
Ts0 f33 head f32 mainIn #connect
Ts0 f32 mainOut f4 tail #connect
Ts0 f4 head f1 mainIn #connect
