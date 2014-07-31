[Ivy]
[>Created: Thu Jul 31 10:11:09 CEST 2014]
13EE9A482A299A65 3.17 #module
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
Ts0 @RichDialogInitStart f0 '' #zField
Ts0 @RichDialogProcessEnd f1 '' #zField
Ts0 @GridStep f11 '' #zField
Ts0 @RichDialogMethodStart f3 '' #zField
Ts0 @GridStep f4 '' #zField
Ts0 @PushWFArc f6 '' #zField
Ts0 @GridStep f8 '' #zField
Ts0 @RichDialogProcessEnd f10 '' #zField
Ts0 @GridStep f2 '' #zField
Ts0 @RichDialogProcessStart f13 '' #zField
Ts0 @PushWFArc f16 '' #zField
Ts0 @PushWFArc f14 '' #zField
Ts0 @PushWFArc f5 '' #zField
Ts0 @PushWFArc f15 '' #zField
Ts0 @PushWFArc f9 '' #zField
Ts0 @PushWFArc f7 '' #zField
>Proto Ts0 Ts0 TaskListProcess #zField
Ts0 f0 guid 13EE9A482C1E853B #txt
Ts0 f0 type ch.ivyteam.wf.workflow.TaskList.TaskListData #txt
Ts0 f0 method start(String) #txt
Ts0 f0 disableUIEvents true #txt
Ts0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String mode> param = methodEvent.getInputArguments();
' #txt
Ts0 f0 inParameterMapAction 'out.mode=param.mode;
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
Ts0 f0 83 51 26 26 -16 12 #rect
Ts0 f0 @|RichDialogInitStartIcon #fIcon
Ts0 f0 -1|-1|-9671572 #nodeStyle
Ts0 f1 type ch.ivyteam.wf.workflow.TaskList.TaskListData #txt
Ts0 f1 499 51 26 26 0 12 #rect
Ts0 f1 @|RichDialogProcessEndIcon #fIcon
Ts0 f1 -1|-1|-9671572 #nodeStyle
Ts0 f11 actionDecl 'ch.ivyteam.wf.workflow.TaskList.TaskListData out;
' #txt
Ts0 f11 actionTable 'out=in;
' #txt
Ts0 f11 actionCode 'import java.util.EnumSet;
import ch.ivyteam.ivy.workflow.PropertyOrder;
import ch.ivyteam.ivy.workflow.TaskState;
import ch.ivyteam.ivy.workflow.TaskProperty;
import ch.ivyteam.ivy.workflow.WorkflowPriority;
import ch.ivyteam.ivy.persistence.OrderDirection;
import ch.ivyteam.ivy.persistence.IQueryResult;
import ch.ivyteam.ivy.workflow.ITask;
import ch.ivyteam.logicalexpression.RelationalOperator;
import ch.ivyteam.ivy.workflow.IPropertyFilter;

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
Ts0 f11 type ch.ivyteam.wf.workflow.TaskList.TaskListData #txt
Ts0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set filter</name>
        <nameStyle>10
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f11 328 42 112 44 -21 -8 #rect
Ts0 f11 @|StepIcon #fIcon
Ts0 f11 -1|-1|-9671572 #nodeStyle
Ts0 f3 guid 13F61412866CB9E5 #txt
Ts0 f3 type ch.ivyteam.wf.workflow.TaskList.TaskListData #txt
Ts0 f3 method update() #txt
Ts0 f3 disableUIEvents false #txt
Ts0 f3 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ts0 f3 outParameterDecl '<> result;
' #txt
Ts0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update()</name>
    </language>
</elementInfo>
' #txt
Ts0 f3 83 211 26 26 -23 12 #rect
Ts0 f3 @|RichDialogMethodStartIcon #fIcon
Ts0 f3 -1|-1|-9671572 #nodeStyle
Ts0 f4 actionDecl 'ch.ivyteam.wf.workflow.TaskList.TaskListData out;
' #txt
Ts0 f4 actionTable 'out=in;
out.responsibleFilter="All";
' #txt
Ts0 f4 actionCode 'in.tasks.setIsHistory(false);
in.tasks.setMode(in.mode);

out.header = in.mode == "my_tasks" ? ivy.cms.co("/navLabels/taskList") : ivy.cms.co("/navLabels/taskAdmin");' #txt
Ts0 f4 type ch.ivyteam.wf.workflow.TaskList.TaskListData #txt
Ts0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>filter default</name>
        <nameStyle>14,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f4 168 42 112 44 -31 -8 #rect
Ts0 f4 @|StepIcon #fIcon
Ts0 f4 -1|-1|-9671572 #nodeStyle
Ts0 f6 expr out #txt
Ts0 f6 109 64 168 64 #arcP
Ts0 f8 actionDecl 'ch.ivyteam.wf.workflow.TaskList.TaskListData out;
' #txt
Ts0 f8 actionTable 'out=in;
' #txt
Ts0 f8 actionCode 'import ch.ivyteam.ivy.security.IUser;
import ch.ivyteam.ivy.security.IRole;

out.roleList.clear();
List roles;
if(in.mode.equals("my_tasks"))
{
	roles = ivy.session.getSessionUser().getAllRoles();
}
else
{
	roles = ivy.session.getSecurityContext().getRoles();
}

for(IRole role: roles)
{
	out.roleList.add(role);
}

List users = ivy.wf.getSecurityContext().getUsers();
out.userList.clear();
for(IUser user : users)
{
	if(user.getName() != "SYSTEM" && user.getName() != ivy.session.getSessionUserName())
	{
		out.userList.add(user);
	}
}	' #txt
Ts0 f8 type ch.ivyteam.wf.workflow.TaskList.TaskListData #txt
Ts0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>user/role list</name>
        <nameStyle>14,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f8 168 202 112 44 -34 -8 #rect
Ts0 f8 @|StepIcon #fIcon
Ts0 f8 -1|-1|-9671572 #nodeStyle
Ts0 f10 type ch.ivyteam.wf.workflow.TaskList.TaskListData #txt
Ts0 f10 339 211 26 26 0 12 #rect
Ts0 f10 @|RichDialogProcessEndIcon #fIcon
Ts0 f10 -1|-1|-9671572 #nodeStyle
Ts0 f2 actionDecl 'ch.ivyteam.wf.workflow.TaskList.TaskListData out;
' #txt
Ts0 f2 actionTable 'out=in;
' #txt
Ts0 f2 actionCode in.tasks.setHasFilter(true); #txt
Ts0 f2 type ch.ivyteam.wf.workflow.TaskList.TaskListData #txt
Ts0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>is filter set</name>
        <nameStyle>13,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f2 168 138 112 44 -28 -8 #rect
Ts0 f2 @|StepIcon #fIcon
Ts0 f2 -1|-1|-9671572 #nodeStyle
Ts0 f13 guid 14638B6D0E7377B9 #txt
Ts0 f13 type ch.ivyteam.wf.workflow.TaskList.TaskListData #txt
Ts0 f13 actionDecl 'ch.ivyteam.wf.workflow.TaskList.TaskListData out;
' #txt
Ts0 f13 actionTable 'out=in;
' #txt
Ts0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setFilter</name>
    </language>
</elementInfo>
' #txt
Ts0 f13 83 147 26 26 -22 12 #rect
Ts0 f13 @|RichDialogProcessStartIcon #fIcon
Ts0 f13 -1|-1|-9671572 #nodeStyle
Ts0 f16 expr out #txt
Ts0 f16 109 160 168 160 #arcP
Ts0 f14 expr out #txt
Ts0 f14 280 160 384 86 #arcP
Ts0 f14 1 384 160 #addKink
Ts0 f14 0 0.7961137295123933 0 0 #arcLabel
Ts0 f5 expr out #txt
Ts0 f5 280 64 328 64 #arcP
Ts0 f15 expr out #txt
Ts0 f15 280 224 339 224 #arcP
Ts0 f9 expr out #txt
Ts0 f9 109 224 168 224 #arcP
Ts0 f7 expr out #txt
Ts0 f7 440 64 499 64 #arcP
>Proto Ts0 .type ch.ivyteam.wf.workflow.TaskList.TaskListData #txt
>Proto Ts0 .processKind HTML_DIALOG #txt
>Proto Ts0 -8 -8 16 16 16 26 #rect
>Proto Ts0 '' #fIcon
Ts0 f0 mainOut f6 tail #connect
Ts0 f6 head f4 mainIn #connect
Ts0 f13 mainOut f16 tail #connect
Ts0 f16 head f2 mainIn #connect
Ts0 f2 mainOut f14 tail #connect
Ts0 f14 head f11 mainIn #connect
Ts0 f4 mainOut f5 tail #connect
Ts0 f5 head f11 mainIn #connect
Ts0 f8 mainOut f15 tail #connect
Ts0 f15 head f10 mainIn #connect
Ts0 f3 mainOut f9 tail #connect
Ts0 f9 head f8 mainIn #connect
Ts0 f11 mainOut f7 tail #connect
Ts0 f7 head f1 mainIn #connect
