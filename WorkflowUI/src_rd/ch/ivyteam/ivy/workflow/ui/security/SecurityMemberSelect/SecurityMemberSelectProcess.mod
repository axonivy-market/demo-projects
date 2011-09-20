[Ivy]
[>Created: Tue Sep 20 14:38:23 CEST 2011]
12A23ADDBC2EA28E 3.17 #module
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
Ds0 @RichDialogProcessStart f41 '' #zField
Ds0 @RichDialogProcessStart f42 '' #zField
Ds0 @RichDialogProcessStep f45 '' #zField
Ds0 @RichDialogInitStart f7 '' #zField
Ds0 @RichDialogEnd f23 '' #zField
Ds0 @PushWFArc f24 '' #zField
Ds0 @PushWFArc f31 '' #zField
Ds0 @RichDialogProcessEnd f35 '' #zField
Ds0 @Alternative f30 '' #zField
Ds0 @PushWFArc f36 '' #zField
Ds0 @PushWFArc f37 '' #zField
Ds0 @RichDialogProcessStart f3 '' #zField
Ds0 @RichDialogProcessEnd f5 '' #zField
Ds0 @RichDialogProcessStep f8 '' #zField
Ds0 @PushWFArc f9 '' #zField
Ds0 @PushWFArc f6 '' #zField
Ds0 @PushWFArc f47 '' #zField
Ds0 @RichDialogProcessStep f29 '' #zField
Ds0 @RichDialogProcessEnd f21 '' #zField
Ds0 @PushWFArc f25 '' #zField
Ds0 @Alternative f26 '' #zField
Ds0 @PushWFArc f22 '' #zField
Ds0 @PushWFArc f28 '' #zField
Ds0 @PushWFArc f32 '' #zField
>Proto Ds0 Ds0 DelegateTaskSelectProcess #zField
Ds0 f0 guid 116E88EC54DC4591 #txt
Ds0 f0 type ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData #txt
Ds0 f0 method start() #txt
Ds0 f0 disableUIEvents false #txt
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
Ds0 f41 734 86 20 20 13 0 #rect
Ds0 f41 @|RichDialogProcessStartIcon #fIcon
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
Ds0 f42 662 86 20 20 13 0 #rect
Ds0 f42 @|RichDialogProcessStartIcon #fIcon
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
        <name>save the selection
as ISecurityMember object</name>
        <nameStyle>44,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f45 726 276 36 24 20 -2 #rect
Ds0 f45 @|RichDialogProcessStepIcon #fIcon
Ds0 f7 guid 116ED8242B3D312F #txt
Ds0 f7 type ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData #txt
Ds0 f7 method startAndChooseSecurityMember() #txt
Ds0 f7 disableUIEvents false #txt
Ds0 f7 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ds0 f7 outParameterDecl '<ch.ivyteam.ivy.security.ISecurityMember aSecurityMember,java.lang.Boolean aSecurityMemberSelected> result;
' #txt
Ds0 f7 outParameterMapAction 'result.aSecurityMember=in.securityMember;
result.aSecurityMemberSelected=in.securityMemberSelected;
' #txt
Ds0 f7 embeddedRdInitializations '{/headerRDC {/fieldName "headerRDC"/startMethod "start(String,String,String)"/parameterMapping ""/initScript "param.iconUri = \"/ch/ivyteam/ivy/workflow/ui/task/images/delegate32\";\n// \"Choose the Role or User\"\nparam.title = ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/delegateTaskShortDesc\");\n// \"The selected tasks will be delegate to the specified Role or User\"\nparam.text = ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/plainStrings/delegateTaskLongDesc\");"/userContext * }}' #txt
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
Ds0 f23 type ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData #txt
Ds0 f23 guid 116ED83123289E82 #txt
Ds0 f23 659 371 26 26 14 0 #rect
Ds0 f23 @|RichDialogEndIcon #fIcon
Ds0 f24 expr out #txt
Ds0 f24 744 300 685 384 #arcP
Ds0 f24 1 744 384 #addKink
Ds0 f24 1 0.1605922569235848 0 0 #arcLabel
Ds0 f31 expr out #txt
Ds0 f31 672 106 672 371 #arcP
Ds0 f31 0 0.2447833651801228 0 0 #arcLabel
Ds0 f35 type ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData #txt
Ds0 f35 899 371 26 26 14 0 #rect
Ds0 f35 @|RichDialogProcessEndIcon #fIcon
Ds0 f30 type ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData #txt
Ds0 f30 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>selection is ok?</name>
        <nameStyle>16,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f30 730 146 28 28 14 0 #rect
Ds0 f30 @|AlternativeIcon #fIcon
Ds0 f36 expr out #txt
Ds0 f36 744 106 744 146 #arcP
Ds0 f37 expr in #txt
Ds0 f37 outCond 'panel.securityMembersList.getSelectedListEntry() != null' #txt
Ds0 f37 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f37 744 174 744 276 #arcP
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
Ds0 f3 470 86 20 20 13 0 #rect
Ds0 f3 @|RichDialogProcessStartIcon #fIcon
Ds0 f5 type ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData #txt
Ds0 f5 467 379 26 26 14 0 #rect
Ds0 f5 @|RichDialogProcessEndIcon #fIcon
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


' #txt
Ds0 f8 type ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData #txt
Ds0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ds0 f8 462 220 36 24 20 -2 #rect
Ds0 f8 @|RichDialogProcessStepIcon #fIcon
Ds0 f9 expr out #txt
Ds0 f9 480 106 480 220 #arcP
Ds0 f6 expr out #txt
Ds0 f6 480 244 480 379 #arcP
Ds0 f47 expr in #txt
Ds0 f47 758 160 912 371 #arcP
Ds0 f47 1 912 160 #addKink
Ds0 f47 1 0.31055740737212595 0 0 #arcLabel
Ds0 f29 actionDecl 'ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData out;
' #txt
Ds0 f29 actionTable 'out=in;
' #txt
Ds0 f29 actionCode 'import ch.ivyteam.ivy.security.ISecurityMember;
import ch.ivyteam.ivy.workflow.ui.utils.WorkflowUIAccessPermissionHandler;

List<ISecurityMember> securityMembers = WorkflowUIAccessPermissionHandler.getAllSecurityMembersAsSystemUser();

out.securityMembersList.clear();
out.securityMembersList.addAll(securityMembers);

out.securityMembersFilteredList.clear();
out.securityMembersFilteredList.addAll(securityMembers);

out.footerMessage = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/found") + " " +
										out.securityMembersFilteredList.size() + " " + 
										ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/securityMembers").toLowerCase();

panel.securityMemberNameTextField.setSelectionStart(0);
panel.securityMemberNameTextField.setSelectionEnd(panel.securityMemberNameTextField.text.length());
panel.securityMemberNameTextField.requestFocus();


' #txt
Ds0 f29 type ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData #txt
Ds0 f29 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load roles
and 
request focus</name>
        <nameStyle>29,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f29 118 276 36 24 20 -2 #rect
Ds0 f29 @|RichDialogProcessStepIcon #fIcon
Ds0 f21 type ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData #txt
Ds0 f21 126 390 20 20 13 0 #rect
Ds0 f21 @|RichDialogProcessEndIcon #fIcon
Ds0 f25 expr out #txt
Ds0 f25 136 300 136 390 #arcP
Ds0 f26 type ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData #txt
Ds0 f26 122 210 28 28 14 0 #rect
Ds0 f26 @|AlternativeIcon #fIcon
Ds0 f22 expr in #txt
Ds0 f22 136 238 136 276 #arcP
Ds0 f28 expr out #txt
Ds0 f28 136 106 136 210 #arcP
Ds0 f32 expr out #txt
Ds0 f32 192 106 150 224 #arcP
Ds0 f32 1 192 224 #addKink
Ds0 f32 0 0.7832885100002513 0 0 #arcLabel
>Proto Ds0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Start methods</swimlaneLabel>
        <swimlaneLabel>Events</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>381</swimlaneSize>
    <swimlaneSize>611</swimlaneSize>
    <swimlaneColor>-16737895</swimlaneColor>
    <swimlaneColor>-3342337</swimlaneColor>
</elementInfo>
' #txt
>Proto Ds0 .ui2RdDataAction 'out.securityMemberName=panel.securityMemberNameTextField.text;
' #txt
>Proto Ds0 .rdData2UIAction 'panel.footerLabel.text=in.footerMessage;
panel.securityMembersList.listData=in.securityMembersFilteredList;
' #txt
>Proto Ds0 .type ch.ivyteam.ivy.workflow.ui.security.SecurityMemberSelect.SecurityMemberSelectData #txt
>Proto Ds0 .processKind RICH_DIALOG #txt
>Proto Ds0 -8 -8 16 16 16 26 #rect
>Proto Ds0 '' #fIcon
Ds0 f45 mainOut f24 tail #connect
Ds0 f24 head f23 mainIn #connect
Ds0 f42 mainOut f31 tail #connect
Ds0 f31 head f23 mainIn #connect
Ds0 f41 mainOut f36 tail #connect
Ds0 f36 head f30 in #connect
Ds0 f30 out f37 tail #connect
Ds0 f37 head f45 mainIn #connect
Ds0 f3 mainOut f9 tail #connect
Ds0 f9 head f8 mainIn #connect
Ds0 f8 mainOut f6 tail #connect
Ds0 f6 head f5 mainIn #connect
Ds0 f30 out f47 tail #connect
Ds0 f47 head f35 mainIn #connect
Ds0 f29 mainOut f25 tail #connect
Ds0 f25 head f21 mainIn #connect
Ds0 f26 out f22 tail #connect
Ds0 f22 head f29 mainIn #connect
Ds0 f0 mainOut f28 tail #connect
Ds0 f28 head f26 in #connect
Ds0 f7 mainOut f32 tail #connect
Ds0 f32 head f26 in #connect
