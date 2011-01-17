[Ivy]
[>Created: Fri Aug 01 20:14:24 CEST 2008]
12A23ADDBC2EA28E 3.10 #module
>Proto >Proto Collection #zClass
Ds0 DelegateTaskSelectProcess Big #zClass
Ds0 RD #cInfo
Ds0 #process
Ds0 @MessageFlowInP-0n messageIn messageIn #zField
Ds0 @MessageFlowOutP-0n messageOut messageOut #zField
Ds0 @TextInP .xml .xml #zField
Ds0 @TextInP .responsibility .responsibility #zField
Ds0 @AnnotationInP-0n ai ai #zField
Ds0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ds0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ds0 @TextInP .resExport .resExport #zField
Ds0 @TextInP .type .type #zField
Ds0 @TextInP .processKind .processKind #zField
Ds0 @RichDialogInitStart f0 '' #zField
Ds0 f0 guid 116E88EC54DC4591 #txt
Ds0 f0 type ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData #txt
Ds0 f0 method start() #txt
Ds0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ds0 f0 outParameterDecl '<> result;
' #txt
Ds0 f0 embeddedRdInitializations '{/headerRDC {/fieldName "headerRDC"/startMethod "start(String,String,String)"/parameterMapping "param.iconUri=\"/ch/ivyteam/ivy/workflow/ui/task/images/delegateTask32\";\nparam.title=\"Choose the Role or User\";\nparam.text=\"The selected tasks will be delegate to the specified Role or User\";\n"/initScript ""}}' #txt
Ds0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f0 126 86 20 20 13 0 #rect
Ds0 f0 @|RichDialogInitStartIcon #fIcon
Ds0 @RichDialogProcessStart f41 '' #zField
Ds0 f41 guid 116E8D87E48524D6 #txt
Ds0 f41 type ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData #txt
Ds0 f41 actionDecl 'ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData out;
' #txt
Ds0 f41 actionTable 'out=in;
' #txt
Ds0 f41 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ok</name>
        <nameStyle>2,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f41 942 86 20 20 13 0 #rect
Ds0 f41 @|RichDialogProcessStartIcon #fIcon
Ds0 @RichDialogProcessStart f42 '' #zField
Ds0 f42 guid 116E8D8879F3D82C #txt
Ds0 f42 type ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData #txt
Ds0 f42 actionDecl 'ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData out;
' #txt
Ds0 f42 actionTable 'out=in;
' #txt
Ds0 f42 actionCode 'out.securityMemberSelected = false;' #txt
Ds0 f42 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>cancel</name>
        <nameStyle>6,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f42 1142 86 20 20 13 0 #rect
Ds0 f42 @|RichDialogProcessStartIcon #fIcon
Ds0 @RichDialogProcessStep f45 '' #zField
Ds0 f45 actionDecl 'ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData out;
' #txt
Ds0 f45 actionTable 'out=in;
' #txt
Ds0 f45 actionCode 'import ch.ivyteam.ivy.security.ISecurityMember;

out.securityMember = panel.securityMembersList.getSelectedListEntry() as ISecurityMember;
out.securityMemberSelected = true;
' #txt
Ds0 f45 type ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData #txt
Ds0 f45 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>save the current tree node value
as ISecurityMember object</name>
        <nameStyle>58,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f45 934 276 36 24 20 -2 #rect
Ds0 f45 @|RichDialogProcessStepIcon #fIcon
Ds0 @RichDialogInitStart f7 '' #zField
Ds0 f7 guid 116ED8242B3D312F #txt
Ds0 f7 type ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData #txt
Ds0 f7 method startAndChooseSecurityMember() #txt
Ds0 f7 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ds0 f7 outParameterDecl '<ch.ivyteam.ivy.security.ISecurityMember aSecurityMember,java.lang.Boolean aSecurityMemberSelected> result;
' #txt
Ds0 f7 outParameterMapAction 'result.aSecurityMember=in.securityMember;
result.aSecurityMemberSelected=in.securityMemberSelected;
' #txt
Ds0 f7 embeddedRdInitializations '{/headerRDC {/fieldName "headerRDC"/startMethod "start(String,String,String)"/parameterMapping "param.iconUri=\"/ch/ivyteam/ivy/workflow/ui/task/images/delegateTask32\";\n"/initScript "// \"Choose the Role or User\"\nparam.title = ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/delegateTaskShortDesc\");\n// \"The selected tasks will be delegate to the specified Role or User\"\nparam.text = ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/delegateTaskLongDesc\");\n"}}' #txt
Ds0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start():ISecurityMember, Boolean</name>
        <nameStyle>32,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f7 182 86 20 20 13 0 #rect
Ds0 f7 @|RichDialogInitStartIcon #fIcon
Ds0 @RichDialogEnd f23 '' #zField
Ds0 f23 type ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData #txt
Ds0 f23 guid 116ED83123289E82 #txt
Ds0 f23 939 371 26 26 14 0 #rect
Ds0 f23 @|RichDialogEndIcon #fIcon
Ds0 @PushWFArc f24 '' #zField
Ds0 f24 expr out #txt
Ds0 f24 952 300 952 371 #arcP
Ds0 @PushWFArc f31 '' #zField
Ds0 f31 expr out #txt
Ds0 f31 1152 106 965 384 #arcP
Ds0 f31 1 1152 384 #addKink
Ds0 f31 1 0.2447833651801228 0 0 #arcLabel
Ds0 @RichDialogProcessEnd f35 '' #zField
Ds0 f35 type ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData #txt
Ds0 f35 843 371 26 26 14 0 #rect
Ds0 f35 @|RichDialogProcessEndIcon #fIcon
Ds0 @Alternative f30 '' #zField
Ds0 f30 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ds0 f30 type ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData #txt
Ds0 f30 938 146 28 28 14 0 #rect
Ds0 f30 @|AlternativeIcon #fIcon
Ds0 @PushWFArc f36 '' #zField
Ds0 f36 expr out #txt
Ds0 f36 952 106 952 146 #arcP
Ds0 @PushWFArc f37 '' #zField
Ds0 f37 expr in #txt
Ds0 f37 outCond 'panel.securityMembersList.getSelectedListEntry() != null && panel.securityMembersList.getSelectedListEntry() instanceof ch.ivyteam.ivy.security.ISecurityMember && (panel.securityMembersList.getSelectedListEntry() as ch.ivyteam.ivy.security.ISecurityMember).getIdentifier() != ivy.session.getSessionUser().getIdentifier()' #txt
Ds0 f37 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>selection != null
and 
instanceof ISecurityMember</name>
        <nameStyle>49,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f37 952 174 952 276 #arcP
Ds0 @RichDialogProcessStep f39 '' #zField
Ds0 f39 actionDecl 'ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData out;
' #txt
Ds0 f39 actionTable 'out=in;
out.securityMembersList=[];
' #txt
Ds0 f39 type ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData #txt
Ds0 f39 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ds0 f39 118 164 36 24 20 -2 #rect
Ds0 f39 @|RichDialogProcessStepIcon #fIcon
Ds0 @PushWFArc f40 '' #zField
Ds0 f40 expr out #txt
Ds0 f40 136 106 136 164 #arcP
Ds0 @PushWFArc f43 '' #zField
Ds0 f43 expr out #txt
Ds0 f43 192 106 154 176 #arcP
Ds0 f43 1 192 176 #addKink
Ds0 f43 0 0.7832885100002513 0 0 #arcLabel
Ds0 @RichDialogProcessStart f3 '' #zField
Ds0 f3 guid 118A2F3B1C7F0B15 #txt
Ds0 f3 type ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData #txt
Ds0 f3 actionDecl 'ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData out;
' #txt
Ds0 f3 actionTable 'out=in;
' #txt
Ds0 f3 actionCode '
' #txt
Ds0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>findSecurityMemberByName</name>
        <nameStyle>24,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f3 670 86 20 20 13 0 #rect
Ds0 f3 @|RichDialogProcessStartIcon #fIcon
Ds0 @RichDialogProcessEnd f5 '' #zField
Ds0 f5 type ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData #txt
Ds0 f5 667 379 26 26 14 0 #rect
Ds0 f5 @|RichDialogProcessEndIcon #fIcon
Ds0 @RichDialogProcessStep f8 '' #zField
Ds0 f8 actionDecl 'ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData out;
' #txt
Ds0 f8 actionTable 'out=in;
' #txt
Ds0 f8 actionCode 'import ch.ivyteam.ivy.security.ISecurityMember;
import java.util.regex.Pattern;


out.securityMembersFilteredList.clear();


if (in.securityMemberName.length() > 0)
{
	Pattern p = Pattern.compile(".*" + in.securityMemberName + ".*", Pattern.CASE_INSENSITIVE);
	
	for(ISecurityMember secMember: in.securityMembersList)
	{
		if (p.matcher(secMember.getMemberName()).matches())
		{
			out.securityMembersFilteredList.add(secMember);	
		}
	}
}
else
{
	out.securityMembersFilteredList.addAll(in.securityMembersList);	
}



out.footerMessage = "Found " + out.securityMembersFilteredList.size() + " security member" + (out.securityMembersFilteredList.size() > 0? "s": "");


' #txt
Ds0 f8 type ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData #txt
Ds0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ds0 f8 662 220 36 24 20 -2 #rect
Ds0 f8 @|RichDialogProcessStepIcon #fIcon
Ds0 @PushWFArc f9 '' #zField
Ds0 f9 expr out #txt
Ds0 f9 680 106 680 220 #arcP
Ds0 @PushWFArc f6 '' #zField
Ds0 f6 expr out #txt
Ds0 f6 680 244 680 379 #arcP
Ds0 @RichDialogProcessStart f12 '' #zField
Ds0 f12 guid 118A3191E074E39D #txt
Ds0 f12 type ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData #txt
Ds0 f12 actionDecl 'ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData out;
' #txt
Ds0 f12 actionTable 'out=in;
' #txt
Ds0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>findAllRoles</name>
        <nameStyle>12,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f12 286 118 20 20 13 0 #rect
Ds0 f12 @|RichDialogProcessStartIcon #fIcon
Ds0 @RichDialogProcessEnd f13 '' #zField
Ds0 f13 type ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData #txt
Ds0 f13 283 379 26 26 14 0 #rect
Ds0 f13 @|RichDialogProcessEndIcon #fIcon
Ds0 @RichDialogProcessStart f15 '' #zField
Ds0 f15 guid 118A319393EE62E5 #txt
Ds0 f15 type ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData #txt
Ds0 f15 actionDecl 'ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData out;
' #txt
Ds0 f15 actionTable 'out=in;
' #txt
Ds0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>findAllUsers</name>
        <nameStyle>12,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f15 478 118 20 20 13 0 #rect
Ds0 f15 @|RichDialogProcessStartIcon #fIcon
Ds0 @RichDialogProcessStep f17 '' #zField
Ds0 f17 actionDecl 'ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData out;
' #txt
Ds0 f17 actionTable 'out=in;
' #txt
Ds0 f17 actionCode 'List roles = [];
roles.addAll(ivy.wf.getSecurityContext().getRoles());

out.securityMembersList.clear();
out.securityMembersList.addAll(roles);

out.securityMembersFilteredList.clear();
out.securityMembersFilteredList.addAll(roles);

out.footerMessage = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/found") + " " +
										out.securityMembersFilteredList.size() + " " + 
										ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/securityMembers").toLowerCase();

panel.securityMemberNameTextField.setSelectionStart(0);
panel.securityMemberNameTextField.setSelectionEnd(panel.securityMemberNameTextField.text.length());

panel.securityMemberNameTextField.requestFocus();


' #txt
Ds0 f17 type ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData #txt
Ds0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load roles
and 
request focus</name>
        <nameStyle>29,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f17 278 292 36 24 20 -2 #rect
Ds0 f17 @|RichDialogProcessStepIcon #fIcon
Ds0 @RichDialogProcessStep f14 '' #zField
Ds0 f14 actionDecl 'ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData out;
' #txt
Ds0 f14 actionTable 'out=in;
' #txt
Ds0 f14 actionCode 'List users = [];
users.addAll(ivy.wf.getSecurityContext().getUsers());

out.securityMembersList.clear();
out.securityMembersList.addAll(users);

out.securityMembersFilteredList.clear();
out.securityMembersFilteredList.addAll(users);


panel.securityMemberNameTextField.setSelectionStart(0);
panel.securityMemberNameTextField.setSelectionEnd(panel.securityMemberNameTextField.text.length());

out.footerMessage = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/found") + " " +
										out.securityMembersFilteredList.size() + " " + 
										ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/securityMembers").toLowerCase();

panel.securityMemberNameTextField.requestFocus();

' #txt
Ds0 f14 type ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData #txt
Ds0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load users
and 
request focus</name>
        <nameStyle>29,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f14 470 292 36 24 20 -2 #rect
Ds0 f14 @|RichDialogProcessStepIcon #fIcon
Ds0 @PushWFArc f16 '' #zField
Ds0 f16 expr out #txt
Ds0 f16 488 316 309 392 #arcP
Ds0 f16 1 488 392 #addKink
Ds0 f16 0 0.8853814658187991 0 0 #arcLabel
Ds0 @PushWFArc f20 '' #zField
Ds0 f20 expr out #txt
Ds0 f20 296 316 296 379 #arcP
Ds0 @Alternative f1 '' #zField
Ds0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ds0 f1 type ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData #txt
Ds0 f1 282 202 28 28 14 0 #rect
Ds0 f1 @|AlternativeIcon #fIcon
Ds0 @PushWFArc f2 '' #zField
Ds0 f2 expr out #txt
Ds0 f2 296 138 296 202 #arcP
Ds0 @PushWFArc f4 '' #zField
Ds0 f4 expr in #txt
Ds0 f4 outCond 'ivy.session.hasPermission(ivy.request.getApplication().getSecurityDescriptor(), ch.ivyteam.ivy.security.IPermission.ROLE_READ_ALL)' #txt
Ds0 f4 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>has 
permission</name>
        <nameStyle>15,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f4 296 230 296 292 #arcP
Ds0 @PushWFArc f10 '' #zField
Ds0 f10 expr out #txt
Ds0 f10 136 188 282 216 #arcP
Ds0 f10 1 136 216 #addKink
Ds0 f10 1 0.41568709207524873 0 0 #arcLabel
Ds0 @Alternative f11 '' #zField
Ds0 f11 type ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData #txt
Ds0 f11 474 202 28 28 14 0 #rect
Ds0 f11 @|AlternativeIcon #fIcon
Ds0 @PushWFArc f18 '' #zField
Ds0 f18 expr out #txt
Ds0 f18 488 138 488 202 #arcP
Ds0 @PushWFArc f19 '' #zField
Ds0 f19 expr in #txt
Ds0 f19 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>has
permission</name>
        <nameStyle>14,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f19 488 230 488 292 #arcP
Ds0 @RichDialog f21 '' #zField
Ds0 f21 targetWindow NEW #txt
Ds0 f21 targetDisplay TOP #txt
Ds0 f21 richDialogId ch.ivyteam.ivy.addons.commondialogs.MessageDialog #txt
Ds0 f21 startMethod showMessageWithTitle(String,String) #txt
Ds0 f21 type ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData #txt
Ds0 f21 panelName 'Permission denied' #txt
Ds0 f21 requestActionDecl '<String aMessageTitle, String aMessageText> param;' #txt
Ds0 f21 requestMappingAction 'param.aMessageTitle="Permission denied to read a list of availables roles";
param.aMessageText="You don''t have the permission called ''" + ch.ivyteam.ivy.security.IPermission.ROLE_READ_ALL + "'' that will gives you possibility to do that action. \nContact your Workflow Administrator for that.";
' #txt
Ds0 f21 responseActionDecl 'ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData out;
' #txt
Ds0 f21 responseMappingAction 'out=in;
' #txt
Ds0 f21 windowConfiguration '#Fri Jun 06 16:19:49 CEST 2008
height=250
maximized=false
centered=true
close_after_last_rd=true
resizable=true
width=600
title=Permission denied
' #txt
Ds0 f21 isAsynch true #txt
Ds0 f21 isInnerRd true #txt
Ds0 f21 isDialog false #txt
Ds0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>inform 
user</name>
        <nameStyle>12,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f21 374 236 36 24 20 -2 #rect
Ds0 f21 @|RichDialogIcon #fIcon
Ds0 @PushWFArc f22 '' #zField
Ds0 f22 expr in #txt
Ds0 f22 310 216 392 236 #arcP
Ds0 f22 1 392 216 #addKink
Ds0 f22 0 0.7286221257848043 0 0 #arcLabel
Ds0 @PushWFArc f25 '' #zField
Ds0 f25 expr out #txt
Ds0 f25 392 260 309 392 #arcP
Ds0 f25 1 392 392 #addKink
Ds0 f25 0 0.714891470163533 0 0 #arcLabel
Ds0 @RichDialog f26 '' #zField
Ds0 f26 targetWindow NEW #txt
Ds0 f26 targetDisplay TOP #txt
Ds0 f26 richDialogId ch.ivyteam.ivy.addons.commondialogs.MessageDialog #txt
Ds0 f26 startMethod showMessageWithTitle(String,String) #txt
Ds0 f26 type ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData #txt
Ds0 f26 panelName 'Permission denied' #txt
Ds0 f26 requestActionDecl '<String aMessageTitle, String aMessageText> param;' #txt
Ds0 f26 requestMappingAction 'param.aMessageTitle="Permission denied to read a list of availables users";
param.aMessageText="You don''t have the permission called ''" + ch.ivyteam.ivy.security.IPermission.USER_READ_ALL + "'' that will gives you possibility to do that action. \nContact your Workflow Administrator for that.";
' #txt
Ds0 f26 responseActionDecl 'ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData out;
' #txt
Ds0 f26 responseMappingAction 'out=in;
' #txt
Ds0 f26 windowConfiguration '#Fri Jun 06 16:21:53 CEST 2008
height=250
maximized=false
centered=true
close_after_last_rd=true
resizable=true
width=600
title=Permission denied
' #txt
Ds0 f26 isAsynch true #txt
Ds0 f26 isInnerRd true #txt
Ds0 f26 isDialog false #txt
Ds0 f26 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>inform 
user</name>
        <nameStyle>12,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f26 566 236 36 24 20 -2 #rect
Ds0 f26 @|RichDialogIcon #fIcon
Ds0 @PushWFArc f27 '' #zField
Ds0 f27 expr in #txt
Ds0 f27 502 216 584 236 #arcP
Ds0 f27 1 584 216 #addKink
Ds0 f27 0 0.7082073028835525 0 0 #arcLabel
Ds0 @PushWFArc f28 '' #zField
Ds0 f28 expr out #txt
Ds0 f28 584 260 309 392 #arcP
Ds0 f28 1 584 392 #addKink
Ds0 f28 1 0.19113368225700947 0 0 #arcLabel
Ds0 @RichDialogProcessStep f29 '' #zField
Ds0 f29 actionDecl 'ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData out;
' #txt
Ds0 f29 actionTable 'out=in;
' #txt
Ds0 f29 actionCode 'out.footerMessage = "Invalid selection. Please try again.";' #txt
Ds0 f29 type ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData #txt
Ds0 f29 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ds0 f29 838 284 36 24 20 -2 #rect
Ds0 f29 @|RichDialogProcessStepIcon #fIcon
Ds0 @PushWFArc f32 '' #zField
Ds0 f32 expr in #txt
Ds0 f32 938 160 856 284 #arcP
Ds0 f32 1 856 160 #addKink
Ds0 f32 1 0.31055740737212595 0 0 #arcLabel
Ds0 @PushWFArc f33 '' #zField
Ds0 f33 expr out #txt
Ds0 f33 856 308 856 371 #arcP
Ds0 @RichDialogProcessStart f34 '' #zField
Ds0 f34 guid 11B7F6CC1EEE734F #txt
Ds0 f34 type ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData #txt
Ds0 f34 actionDecl 'ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData out;
' #txt
Ds0 f34 actionTable 'out=in;
' #txt
Ds0 f34 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>onLoad</name>
        <nameStyle>6,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f34 190 254 20 20 13 0 #rect
Ds0 f34 @|RichDialogProcessStartIcon #fIcon
Ds0 @RichDialogProcessStep f44 '' #zField
Ds0 f44 actionDecl 'ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData out;
' #txt
Ds0 f44 actionTable 'out=in;
' #txt
Ds0 f44 actionCode 'import com.ulcjava.base.application.border.ULCTitledBorder;

(panel.securityMemberTypesBoxPane.getBorder() as ULCTitledBorder).setTitle(
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/securityMemberTypes")
);' #txt
Ds0 f44 type ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData #txt
Ds0 f44 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set title 
from cms entries</name>
        <nameStyle>27,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f44 182 340 36 24 20 -2 #rect
Ds0 f44 @|RichDialogProcessStepIcon #fIcon
Ds0 @PushWFArc f46 '' #zField
Ds0 f46 expr out #txt
Ds0 f46 200 274 200 340 #arcP
Ds0 @PushWFArc f38 '' #zField
Ds0 f38 expr out #txt
Ds0 f38 218 360 283 387 #arcP
Ds0 f45 mainOut f24 tail #connect
Ds0 f24 head f23 mainIn #connect
Ds0 f42 mainOut f31 tail #connect
Ds0 f31 head f23 mainIn #connect
Ds0 f41 mainOut f36 tail #connect
Ds0 f36 head f30 in #connect
Ds0 f30 out f37 tail #connect
Ds0 f37 head f45 mainIn #connect
Ds0 f0 mainOut f40 tail #connect
Ds0 f40 head f39 mainIn #connect
Ds0 f7 mainOut f43 tail #connect
Ds0 f43 head f39 mainIn #connect
Ds0 f3 mainOut f9 tail #connect
Ds0 f9 head f8 mainIn #connect
Ds0 f8 mainOut f6 tail #connect
Ds0 f6 head f5 mainIn #connect
Ds0 f14 mainOut f16 tail #connect
Ds0 f16 head f13 mainIn #connect
Ds0 f17 mainOut f20 tail #connect
Ds0 f20 head f13 mainIn #connect
Ds0 f12 mainOut f2 tail #connect
Ds0 f2 head f1 in #connect
Ds0 f1 out f4 tail #connect
Ds0 f4 head f17 mainIn #connect
Ds0 f39 mainOut f10 tail #connect
Ds0 f10 head f1 in #connect
Ds0 f15 mainOut f18 tail #connect
Ds0 f18 head f11 in #connect
Ds0 f11 out f19 tail #connect
Ds0 f19 head f14 mainIn #connect
Ds0 f1 out f22 tail #connect
Ds0 f22 head f21 mainIn #connect
Ds0 f21 mainOut f25 tail #connect
Ds0 f25 head f13 mainIn #connect
Ds0 f11 out f27 tail #connect
Ds0 f27 head f26 mainIn #connect
Ds0 f26 mainOut f28 tail #connect
Ds0 f28 head f13 mainIn #connect
Ds0 f30 out f32 tail #connect
Ds0 f32 head f29 mainIn #connect
Ds0 f29 mainOut f33 tail #connect
Ds0 f33 head f35 mainIn #connect
Ds0 f34 mainOut f46 tail #connect
Ds0 f46 head f44 mainIn #connect
Ds0 f44 mainOut f38 tail #connect
Ds0 f38 head f13 mainIn #connect
>Proto Ds0 Ds0 DelegateTaskSelectProcess #zField
>Proto Ds0 .ui2RdDataAction 'out.securityMemberName=panel.securityMemberNameTextField.text;
' #txt
>Proto Ds0 .rdData2UIAction 'panel.footerLabel.text=in.footerMessage;
panel.securityMembersList.listData=in.securityMembersFilteredList;
' #txt
>Proto Ds0 .type ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData #txt
>Proto Ds0 .processKind RICH_DIALOG #txt
>Proto Ds0 -8 -8 16 16 16 26 #rect
>Proto Ds0 '' #fIcon
