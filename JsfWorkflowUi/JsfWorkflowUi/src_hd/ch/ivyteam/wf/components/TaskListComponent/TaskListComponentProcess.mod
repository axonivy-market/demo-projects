[Ivy]
1518C56414655E4F 7.5.0 #module
>Proto >Proto Collection #zClass
Ts0 TaskListComponentProcess Big #zClass
Ts0 RD #cInfo
Ts0 #process
Ts0 @TextInP .type .type #zField
Ts0 @TextInP .processKind .processKind #zField
Ts0 @AnnotationInP-0n ai ai #zField
Ts0 @TextInP .xml .xml #zField
Ts0 @TextInP .responsibility .responsibility #zField
Ts0 @UdInit f0 '' #zField
Ts0 @UdProcessEnd f1 '' #zField
Ts0 @GridStep f4 '' #zField
Ts0 @PushWFArc f6 '' #zField
Ts0 @UdProcessEnd f10 '' #zField
Ts0 @UdMethod f3 '' #zField
Ts0 @PushWFArc f9 '' #zField
Ts0 @PushWFArc f15 '' #zField
Ts0 @GridStep f8 '' #zField
Ts0 @PushWFArc f2 '' #zField
>Proto Ts0 Ts0 TaskListComponentProcess #zField
Ts0 f0 guid 13EE9A482C1E853B #txt
Ts0 f0 method start(String) #txt
Ts0 f0 inParameterDecl '<String mode> param;' #txt
Ts0 f0 inParameterMapAction 'out.mode=param.mode;
' #txt
Ts0 f0 outParameterDecl '<> result;' #txt
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
Ts0 f0 @|UdInitIcon #fIcon
Ts0 f0 -1|-1|-9671572 #nodeStyle
Ts0 f1 339 51 26 26 0 12 #rect
Ts0 f1 @|UdProcessEndIcon #fIcon
Ts0 f1 -1|-1|-9671572 #nodeStyle
Ts0 f4 actionTable 'out=in;
' #txt
Ts0 f4 actionCode 'import ch.ivyteam.wf.common.AdminTaskLazyDataModel;
import ch.ivyteam.wf.common.UserTaskLazyDataModel;
import ch.ivyteam.ivy.workflow.WorkflowPriority;
import ch.ivyteam.ivy.workflow.TaskState;
import ch.ivyteam.ivy.workflow.WorkflowPriority;

if(in.mode.equals("admin"))
{
	in.tasks= new AdminTaskLazyDataModel();
}
else
{
	in.tasks = new UserTaskLazyDataModel();
}
in.tasks.setDataTableId("taskListComponent:taskListForm:taskTable");

out.states = TaskState.values();
out.prios = WorkflowPriority.values();

ch.ivyteam.ivy.request.impl.HttpProcessRequest r = ivy.request as ch.ivyteam.ivy.request.impl.HttpProcessRequest;
r.getHttpServletRequest().getSession().setAttribute("ch.ivy.wfui.returnUrl", "ivy.html.DefaultTaskListPage");' #txt
Ts0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>filter default
set returnUrl</name>
        <nameStyle>28,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f4 168 42 112 44 -34 -16 #rect
Ts0 f4 @|StepIcon #fIcon
Ts0 f4 -1|-1|-9671572 #nodeStyle
Ts0 f6 expr out #txt
Ts0 f6 109 64 168 64 #arcP
Ts0 f10 339 147 26 26 0 12 #rect
Ts0 f10 @|UdProcessEndIcon #fIcon
Ts0 f10 -1|-1|-9671572 #nodeStyle
Ts0 f3 guid 13F61412866CB9E5 #txt
Ts0 f3 method update() #txt
Ts0 f3 inParameterDecl '<> param;' #txt
Ts0 f3 outParameterDecl '<> result;' #txt
Ts0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update()</name>
    </language>
</elementInfo>
' #txt
Ts0 f3 83 147 26 26 -23 12 #rect
Ts0 f3 @|UdMethodIcon #fIcon
Ts0 f3 -1|-1|-9671572 #nodeStyle
Ts0 f9 expr out #txt
Ts0 f9 109 160 168 160 #arcP
Ts0 f15 expr out #txt
Ts0 f15 280 160 339 160 #arcP
Ts0 f8 actionTable 'out=in;
' #txt
Ts0 f8 actionCode 'import ch.ivyteam.ivy.security.IUser;
import ch.ivyteam.ivy.security.IRole;

List roles;
if(in.mode.equals("admin"))
{
	roles = ivy.session.getSecurityContext().getRoles();
}
else
{
	roles = ivy.session.getSessionUser().getAllRoles();
}

out.roleList.clear();
for(IRole role: roles)
{
	out.roleList.add(role);
}

if(in.mode.equals("admin"))
{
	List users = ivy.wf.getSecurityContext().getUsers();
	out.userList.clear();
	for(IUser user : users)
	{
		if(user.getName() != "SYSTEM" && user.getName() != ivy.session.getSessionUserName())
		{
			out.userList.add(user);
		}
	}	
}' #txt
Ts0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>user/role list</name>
        <nameStyle>14,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f8 168 138 112 44 -34 -8 #rect
Ts0 f8 @|StepIcon #fIcon
Ts0 f8 -1|-1|-9671572 #nodeStyle
Ts0 f2 expr out #txt
Ts0 f2 280 64 339 64 #arcP
>Proto Ts0 .type ch.ivyteam.wf.components.TaskListComponent.TaskListComponentData #txt
>Proto Ts0 .processKind HTML_DIALOG #txt
>Proto Ts0 -8 -8 16 16 16 26 #rect
>Proto Ts0 '' #fIcon
Ts0 f0 mainOut f6 tail #connect
Ts0 f6 head f4 mainIn #connect
Ts0 f8 mainOut f15 tail #connect
Ts0 f15 head f10 mainIn #connect
Ts0 f3 mainOut f9 tail #connect
Ts0 f9 head f8 mainIn #connect
Ts0 f4 mainOut f2 tail #connect
Ts0 f2 head f1 mainIn #connect
