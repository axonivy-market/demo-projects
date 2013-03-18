[Ivy]
[>Created: Mon Mar 18 15:34:14 CET 2013]
13CAFFE993B8CDBB 3.17 #module
>Proto >Proto Collection #zClass
Ds0 DelegateTaskProcess Big #zClass
Ds0 RD #cInfo
Ds0 #process
Ds0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ds0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ds0 @TextInP .resExport .resExport #zField
Ds0 @TextInP .type .type #zField
Ds0 @TextInP .processKind .processKind #zField
Ds0 @AnnotationInP-0n ai ai #zField
Ds0 @TextInP .xml .xml #zField
Ds0 @TextInP .responsibility .responsibility #zField
Ds0 @RichDialogProcessEnd f1 '' #zField
Ds0 @RichDialogInitStart f0 '' #zField
Ds0 @RichDialogProcessStart f3 '' #zField
Ds0 @RichDialogEnd f6 '' #zField
Ds0 @PushWFArc f7 '' #zField
Ds0 @GridStep f8 '' #zField
Ds0 @PushWFArc f5 '' #zField
Ds0 @RichDialogProcessStart f9 '' #zField
Ds0 @PushWFArc f13 '' #zField
Ds0 @GridStep f4 '' #zField
Ds0 @PushWFArc f10 '' #zField
Ds0 @PushWFArc f2 '' #zField
>Proto Ds0 Ds0 DelegateTaskProcess #zField
Ds0 f1 type htmlwfui.DelegateTask.DelegateTaskData #txt
Ds0 f1 86 150 20 20 13 0 #rect
Ds0 f1 @|RichDialogProcessEndIcon #fIcon
Ds0 f0 guid 13CAFFF600F905A0 #txt
Ds0 f0 type htmlwfui.DelegateTask.DelegateTaskData #txt
Ds0 f0 method start(htmlwfui.Data) #txt
Ds0 f0 disableUIEvents true #txt
Ds0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<htmlwfui.Data data> param = methodEvent.getInputArguments();
' #txt
Ds0 f0 inParameterMapAction 'out.data=param.data;
' #txt
Ds0 f0 outParameterDecl '<> result;
' #txt
Ds0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Init_Start1</name>
        <nameStyle>11,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f0 86 54 20 20 13 0 #rect
Ds0 f0 @|RichDialogInitStartIcon #fIcon
Ds0 f3 guid 13CB00DDEAA64295 #txt
Ds0 f3 type htmlwfui.DelegateTask.DelegateTaskData #txt
Ds0 f3 actionDecl 'htmlwfui.DelegateTask.DelegateTaskData out;
' #txt
Ds0 f3 actionTable 'out=in;
' #txt
Ds0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>back</name>
    </language>
</elementInfo>
' #txt
Ds0 f3 214 54 20 20 13 0 #rect
Ds0 f3 @|RichDialogProcessStartIcon #fIcon
Ds0 f6 type htmlwfui.DelegateTask.DelegateTaskData #txt
Ds0 f6 guid 13CB00E08D5E3ED0 #txt
Ds0 f6 214 150 20 20 13 0 #rect
Ds0 f6 @|RichDialogEndIcon #fIcon
Ds0 f7 expr out #txt
Ds0 f7 224 74 224 150 #arcP
Ds0 f8 actionDecl 'htmlwfui.DelegateTask.DelegateTaskData out;
' #txt
Ds0 f8 actionTable 'out=in.clone();
' #txt
Ds0 f8 actionCode 'import ch.ivyteam.ivy.security.IUser;
import ch.ivyteam.ivy.security.IRole;
if(in.data.delegateType.equals("role")){
	IRole role = ivy.wf.getSecurityContext().findRole(in.data.delegateRole);
	out.data.tmpTask.setActivator(role);
}else{
	IUser user = ivy.wf.getSecurityContext().findUser(in.data.delegateUser);
	out.data.tmpTask.setActivator(user);
}' #txt
Ds0 f8 type htmlwfui.DelegateTask.DelegateTaskData #txt
Ds0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>delegate</name>
        <nameStyle>8
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f8 334 100 36 24 20 -2 #rect
Ds0 f8 @|StepIcon #fIcon
Ds0 f5 expr out #txt
Ds0 f5 352 124 234 160 #arcP
Ds0 f5 1 352 160 #addKink
Ds0 f5 1 0.3384094582726967 0 0 #arcLabel
Ds0 f9 guid 13CB015181A557FF #txt
Ds0 f9 type htmlwfui.DelegateTask.DelegateTaskData #txt
Ds0 f9 actionDecl 'htmlwfui.DelegateTask.DelegateTaskData out;
' #txt
Ds0 f9 actionTable 'out=in;
' #txt
Ds0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>delegateTask</name>
    </language>
</elementInfo>
' #txt
Ds0 f9 342 54 20 20 13 0 #rect
Ds0 f9 @|RichDialogProcessStartIcon #fIcon
Ds0 f13 expr out #txt
Ds0 f13 352 74 352 100 #arcP
Ds0 f4 actionDecl 'htmlwfui.DelegateTask.DelegateTaskData out;
' #txt
Ds0 f4 actionTable 'out=in;
out.data.delegateType="user";
' #txt
Ds0 f4 actionCode 'import ch.ivyteam.ivy.security.IRole;
import ch.ivyteam.ivy.security.IUser;

List users = ivy.wf.getSecurityContext().getUsers();
out.data.substitute.userList.clear();
for(IUser user : users)
{
	out.data.substitute.userList.add(user.getName());
}	

List roles = ivy.session.getSessionUser().getAllRoles();
out.data.substitute.roleList.clear();
for(IRole role: roles)
{
	out.data.substitute.roleList.add(role.getName());
}' #txt
Ds0 f4 type htmlwfui.DelegateTask.DelegateTaskData #txt
Ds0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>init</name>
        <nameStyle>4
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f4 78 100 36 24 20 -2 #rect
Ds0 f4 @|StepIcon #fIcon
Ds0 f10 expr out #txt
Ds0 f10 96 74 96 100 #arcP
Ds0 f2 expr out #txt
Ds0 f2 96 124 96 150 #arcP
>Proto Ds0 .type htmlwfui.DelegateTask.DelegateTaskData #txt
>Proto Ds0 .processKind HTML_DIALOG #txt
>Proto Ds0 -8 -8 16 16 16 26 #rect
>Proto Ds0 '' #fIcon
Ds0 f3 mainOut f7 tail #connect
Ds0 f7 head f6 mainIn #connect
Ds0 f8 mainOut f5 tail #connect
Ds0 f5 head f6 mainIn #connect
Ds0 f9 mainOut f13 tail #connect
Ds0 f13 head f8 mainIn #connect
Ds0 f0 mainOut f10 tail #connect
Ds0 f10 head f4 mainIn #connect
Ds0 f4 mainOut f2 tail #connect
Ds0 f2 head f1 mainIn #connect
