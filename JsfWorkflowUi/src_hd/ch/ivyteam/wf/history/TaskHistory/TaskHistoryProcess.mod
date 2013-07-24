[Ivy]
[>Created: Wed Jul 24 16:31:44 CEST 2013]
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
Ts0 @PushWFArc f2 '' #zField
Ts0 @RichDialogMethodStart f5 '' #zField
Ts0 @GridStep f8 '' #zField
Ts0 @PushWFArc f10 '' #zField
Ts0 @PushWFArc f9 '' #zField
Ts0 @GridStep f4 '' #zField
Ts0 @PushWFArc f6 '' #zField
Ts0 @PushWFArc f7 '' #zField
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
        <nameStyle>7,5,7
</nameStyle>
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
import ch.ivyteam.ivy.workflow.WorkflowPriority;
import ch.ivyteam.logicalexpression.RelationalOperator;
import ch.ivyteam.ivy.workflow.IPropertyFilter;
import ch.ivyteam.ivy.workflow.TaskProperty;

IPropertyFilter taskFilter = null;
if(in.prioFilter == 1)
{
	taskFilter = ivy.wf.createTaskPropertyFilter(TaskProperty.PRIORITY, RelationalOperator.EQUAL, WorkflowPriority.EXCEPTION.intValue());	
}
if(in.prioFilter == 2)
{
	taskFilter = ivy.wf.createTaskPropertyFilter(TaskProperty.PRIORITY, RelationalOperator.EQUAL, WorkflowPriority.HIGH.intValue());	
}
if(in.prioFilter == 3)
{
	taskFilter = ivy.wf.createTaskPropertyFilter(TaskProperty.PRIORITY, RelationalOperator.EQUAL, WorkflowPriority.NORMAL.intValue());	
}
if(in.prioFilter == 4)
{
	taskFilter = ivy.wf.createTaskPropertyFilter(TaskProperty.PRIORITY, RelationalOperator.EQUAL, WorkflowPriority.LOW.intValue());	
}

if(in.responsibleFilter != "All")
{
	if(taskFilter != null)
	{
		taskFilter = taskFilter.and(TaskProperty.ACTIVATOR_NAME, RelationalOperator.EQUAL, in.responsibleFilter);	
	}
	else
	{
		taskFilter = ivy.wf.createTaskPropertyFilter(TaskProperty.ACTIVATOR_NAME, RelationalOperator.EQUAL, in.responsibleFilter);	
	}
}

in.tasks.setTaskFilter(taskFilter);' #txt
Ts0 f3 type ch.ivyteam.wf.history.TaskHistory.TaskHistoryData #txt
Ts0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set filter</name>
        <nameStyle>10
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f3 206 180 36 24 20 -2 #rect
Ts0 f3 @|StepIcon #fIcon
Ts0 f2 expr out #txt
Ts0 f2 206 192 106 192 #arcP
Ts0 f5 guid 13F75DB798E48053 #txt
Ts0 f5 type ch.ivyteam.wf.history.TaskHistory.TaskHistoryData #txt
Ts0 f5 method update() #txt
Ts0 f5 disableUIEvents false #txt
Ts0 f5 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ts0 f5 outParameterDecl '<> result;
' #txt
Ts0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update()</name>
    </language>
</elementInfo>
' #txt
Ts0 f5 214 54 20 20 13 0 #rect
Ts0 f5 @|RichDialogMethodStartIcon #fIcon
Ts0 f8 actionDecl 'ch.ivyteam.wf.history.TaskHistory.TaskHistoryData out;
' #txt
Ts0 f8 actionTable 'out=in;
out.responsibleFilter="All";
' #txt
Ts0 f8 actionCode in.tasks.setIsHistory(true); #txt
Ts0 f8 type ch.ivyteam.wf.history.TaskHistory.TaskHistoryData #txt
Ts0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>filter default</name>
        <nameStyle>14
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f8 78 116 36 24 20 -2 #rect
Ts0 f8 @|StepIcon #fIcon
Ts0 f10 expr out #txt
Ts0 f10 96 74 96 116 #arcP
Ts0 f9 expr out #txt
Ts0 f9 96 140 96 182 #arcP
Ts0 f4 actionDecl 'ch.ivyteam.wf.history.TaskHistory.TaskHistoryData out;
' #txt
Ts0 f4 actionTable 'out=in;
' #txt
Ts0 f4 actionCode 'import ch.ivyteam.ivy.security.IRole;

List roles = ivy.session.getSessionUser().getAllRoles();
for(IRole role: roles)
{
	out.roleList.add(role);
}' #txt
Ts0 f4 type ch.ivyteam.wf.history.TaskHistory.TaskHistoryData #txt
Ts0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>role list</name>
        <nameStyle>9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f4 206 116 36 24 20 -2 #rect
Ts0 f4 @|StepIcon #fIcon
Ts0 f6 expr out #txt
Ts0 f6 224 74 224 116 #arcP
Ts0 f7 expr out #txt
Ts0 f7 224 140 224 180 #arcP
>Proto Ts0 .type ch.ivyteam.wf.history.TaskHistory.TaskHistoryData #txt
>Proto Ts0 .processKind HTML_DIALOG #txt
>Proto Ts0 -8 -8 16 16 16 26 #rect
>Proto Ts0 '' #fIcon
Ts0 f3 mainOut f2 tail #connect
Ts0 f2 head f1 mainIn #connect
Ts0 f0 mainOut f10 tail #connect
Ts0 f10 head f8 mainIn #connect
Ts0 f8 mainOut f9 tail #connect
Ts0 f9 head f1 mainIn #connect
Ts0 f5 mainOut f6 tail #connect
Ts0 f6 head f4 mainIn #connect
Ts0 f4 mainOut f7 tail #connect
Ts0 f7 head f3 mainIn #connect
