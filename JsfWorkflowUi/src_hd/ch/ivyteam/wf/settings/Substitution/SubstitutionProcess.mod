[Ivy]
[>Created: Mon Jul 08 10:28:38 CEST 2013]
13F5720787C9F3A0 3.17 #module
>Proto >Proto Collection #zClass
Ss0 SubstitutionProcess Big #zClass
Ss0 RD #cInfo
Ss0 #process
Ss0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ss0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ss0 @TextInP .resExport .resExport #zField
Ss0 @TextInP .type .type #zField
Ss0 @TextInP .processKind .processKind #zField
Ss0 @AnnotationInP-0n ai ai #zField
Ss0 @TextInP .xml .xml #zField
Ss0 @TextInP .responsibility .responsibility #zField
Ss0 @RichDialogInitStart f0 '' #zField
Ss0 @RichDialogProcessEnd f1 '' #zField
Ss0 @GridStep f3 '' #zField
Ss0 @GridStep f5 '' #zField
Ss0 @GridStep f10 '' #zField
Ss0 @RichDialogProcessStart f14 '' #zField
Ss0 @GridStep f17 '' #zField
Ss0 @PushWFArc f18 '' #zField
Ss0 @RichDialogMethodStart f7 '' #zField
Ss0 @PushWFArc f15 '' #zField
Ss0 @RichDialogMethodStart f4 '' #zField
Ss0 @PushWFArc f9 '' #zField
Ss0 @PushWFArc f16 '' #zField
Ss0 @GridStep f8 '' #zField
Ss0 @PushWFArc f13 '' #zField
Ss0 @PushWFArc f2 '' #zField
Ss0 @PushWFArc f6 '' #zField
Ss0 @PushWFArc f12 '' #zField
Ss0 @PushWFArc f19 '' #zField
>Proto Ss0 Ss0 SubstitutionProcess #zField
Ss0 f0 guid 13F5720789611B9E #txt
Ss0 f0 type ch.ivyteam.wf.settings.Substitution.SubstitutionData #txt
Ss0 f0 method start() #txt
Ss0 f0 disableUIEvents true #txt
Ss0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ss0 f0 outParameterDecl '<> result;
' #txt
Ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ss0 f0 86 54 20 20 13 0 #rect
Ss0 f0 @|RichDialogInitStartIcon #fIcon
Ss0 f1 type ch.ivyteam.wf.settings.Substitution.SubstitutionData #txt
Ss0 f1 86 310 20 20 13 0 #rect
Ss0 f1 @|RichDialogProcessEndIcon #fIcon
Ss0 f3 actionDecl 'ch.ivyteam.wf.settings.Substitution.SubstitutionData out;
' #txt
Ss0 f3 actionTable 'out=in;
out.isPersonally=true;
out.selectedRoles=[];
out.user=ivy.session.getSessionUser();
' #txt
Ss0 f3 actionCode 'import ch.ivyteam.ivy.security.IRole;
import ch.ivyteam.ivy.security.IUser;

List users = ivy.wf.getSecurityContext().getUsers();
for(IUser user : users)
{
	if(user.getName() != "SYSTEM" && user.getName() != in.user.getName())
	{
		out.userList.add(user);
	}
}

List roles = in.user.getAllRoles();
for(IRole role: roles)
{
	if(role.getName() != "Everybody")
	{
		out.roleList.add(role);
	}
}' #txt
Ss0 f3 type ch.ivyteam.wf.settings.Substitution.SubstitutionData #txt
Ss0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>users and roles</name>
        <nameStyle>15
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f3 206 116 36 24 1 13 #rect
Ss0 f3 @|StepIcon #fIcon
Ss0 f5 actionDecl 'ch.ivyteam.wf.settings.Substitution.SubstitutionData out;
' #txt
Ss0 f5 actionTable 'out=in;
' #txt
Ss0 f5 actionCode 'import ch.ivyteam.ivy.security.IUserSubstitute;

List<IUserSubstitute> substitutes = in.user.getSubstitutes();
out.substitutes.clear();
for (IUserSubstitute substitute : substitutes)
{
	out.substitutes.add(substitute);
}

List<IUserSubstitute> substitutions = in.user.getSubstitutions();
out.substiutions.clear();
for (IUserSubstitute substitution : substitutions)
{
	out.substiutions.add(substitution);
}' #txt
Ss0 f5 type ch.ivyteam.wf.settings.Substitution.SubstitutionData #txt
Ss0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>substitute &amp;
my substitutions</name>
        <nameStyle>29
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f5 206 180 36 24 1 13 #rect
Ss0 f5 @|StepIcon #fIcon
Ss0 f10 actionDecl 'ch.ivyteam.wf.settings.Substitution.SubstitutionData out;
' #txt
Ss0 f10 actionTable 'out=in;
' #txt
Ss0 f10 actionCode 'import ch.ivyteam.ivy.security.IUserSubstitute;

List substitutes = in.user.getSubstitutes();
for(IUserSubstitute substitute:substitutes)
{
	if(substitute.getId() == in.deleteId)
	{
			in.user.deleteSubstitute(substitute);
			break;
	}	
}' #txt
Ss0 f10 type ch.ivyteam.wf.settings.Substitution.SubstitutionData #txt
Ss0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>remove</name>
        <nameStyle>6
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f10 334 180 36 24 1 13 #rect
Ss0 f10 @|StepIcon #fIcon
Ss0 f14 guid 13F5773B6B9B6604 #txt
Ss0 f14 type ch.ivyteam.wf.settings.Substitution.SubstitutionData #txt
Ss0 f14 actionDecl 'ch.ivyteam.wf.settings.Substitution.SubstitutionData out;
' #txt
Ss0 f14 actionTable 'out=in;
' #txt
Ss0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>addSubstitute</name>
    </language>
</elementInfo>
' #txt
Ss0 f14 534 54 20 20 13 0 #rect
Ss0 f14 @|RichDialogProcessStartIcon #fIcon
Ss0 f17 actionDecl 'ch.ivyteam.wf.settings.Substitution.SubstitutionData out;
' #txt
Ss0 f17 actionTable 'out=in;
' #txt
Ss0 f17 actionCode 'import javax.faces.context.FacesContext;
import javax.faces.application.FacesMessage;
import ch.ivyteam.ivy.security.IRole;
import ch.ivyteam.ivy.security.IUser;
import ch.ivyteam.ivy.security.IUserSubstitute;

String description = in.description.trim().length() > 0 ? in.description : "";

//if the same substitution exist, delete it first
if(in.isPersonally)
{
	for(IUserSubstitute substitute : in.substitutes)
	{
		if(substitute.getSubstituteUser() == in.substituteUser && substitute.getSubstitutionRole() == null)
		{
			in.user.deleteSubstitute(substitute);
			break;
		}
	}
	in.user.createSubstitute(in.substituteUser, null, description);
}
else
{
	for(IUserSubstitute substitute : in.substitutes)
	{
		for (IRole role : in.selectedRoles)
		{
			if(substitute.getSubstituteUser() == in.substituteUser && substitute.getSubstitutionRole() == role)
			{
				in.user.deleteSubstitute(substitute);
				break;
			}
		}
	}

	for (IRole role : in.selectedRoles)
	{
		in.user.createSubstitute(in.substituteUser, role, description);
	}
}' #txt
Ss0 f17 type ch.ivyteam.wf.settings.Substitution.SubstitutionData #txt
Ss0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>save</name>
        <nameStyle>4
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f17 526 180 36 24 20 -2 #rect
Ss0 f17 @|StepIcon #fIcon
Ss0 f18 expr out #txt
Ss0 f18 544 74 544 180 #arcP
Ss0 f7 guid 13F7509B1EEE5E13 #txt
Ss0 f7 type ch.ivyteam.wf.settings.Substitution.SubstitutionData #txt
Ss0 f7 method removeSubstitute(Number) #txt
Ss0 f7 disableUIEvents false #txt
Ss0 f7 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Number substituteId> param = methodEvent.getInputArguments();
' #txt
Ss0 f7 inParameterMapAction 'out.deleteId=param.substituteId;
' #txt
Ss0 f7 outParameterDecl '<> result;
' #txt
Ss0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>removeSubstitute(Number)</name>
        <nameStyle>24,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f7 342 54 20 20 13 0 #rect
Ss0 f7 @|RichDialogMethodStartIcon #fIcon
Ss0 f15 expr out #txt
Ss0 f15 352 74 352 180 #arcP
Ss0 f4 guid 13F75DF4EC85730E #txt
Ss0 f4 type ch.ivyteam.wf.settings.Substitution.SubstitutionData #txt
Ss0 f4 method update() #txt
Ss0 f4 disableUIEvents false #txt
Ss0 f4 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ss0 f4 outParameterDecl '<> result;
' #txt
Ss0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update()</name>
    </language>
</elementInfo>
' #txt
Ss0 f4 214 54 20 20 13 0 #rect
Ss0 f4 @|RichDialogMethodStartIcon #fIcon
Ss0 f9 expr out #txt
Ss0 f9 352 204 106 320 #arcP
Ss0 f9 1 352 320 #addKink
Ss0 f9 1 0.2897814072783535 0 0 #arcLabel
Ss0 f16 expr out #txt
Ss0 f16 544 204 106 320 #arcP
Ss0 f16 1 544 320 #addKink
Ss0 f16 1 0.33267384971861186 0 0 #arcLabel
Ss0 f8 actionDecl 'ch.ivyteam.wf.settings.Substitution.SubstitutionData out;
' #txt
Ss0 f8 actionTable 'out=in;
' #txt
Ss0 f8 actionCode 'import ch.ivyteam.ivy.security.IRole;

if(in.selectedRoles.size() > 0)
{
	out.roleSelectionLabel = "";
	for(IRole selectedRole : in.selectedRoles)
	{
		if(in.roleSelectionLabel == "")
		{
			out.roleSelectionLabel = selectedRole.getDisplayName();
		}
		else
		{
			out.roleSelectionLabel = in.roleSelectionLabel + ", " + selectedRole.getDisplayName();
		}
	}
}
else
{
	out.roleSelectionLabel = ivy.cms.co("/labels/settings/substitute/roles");
}' #txt
Ss0 f8 type ch.ivyteam.wf.settings.Substitution.SubstitutionData #txt
Ss0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>String of selected roles</name>
        <nameStyle>24
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f8 206 244 36 24 1 15 #rect
Ss0 f8 @|StepIcon #fIcon
Ss0 f13 expr out #txt
Ss0 f13 224 204 224 244 #arcP
Ss0 f13 0 0.5905648529193468 0 0 #arcLabel
Ss0 f2 expr out #txt
Ss0 f2 224 268 106 320 #arcP
Ss0 f2 1 224 320 #addKink
Ss0 f2 1 0.25908176811608286 0 0 #arcLabel
Ss0 f6 expr out #txt
Ss0 f6 224 74 224 116 #arcP
Ss0 f12 expr out #txt
Ss0 f12 224 140 224 180 #arcP
Ss0 f19 expr out #txt
Ss0 f19 96 74 96 310 #arcP
>Proto Ss0 .type ch.ivyteam.wf.settings.Substitution.SubstitutionData #txt
>Proto Ss0 .processKind HTML_DIALOG #txt
>Proto Ss0 -8 -8 16 16 16 26 #rect
>Proto Ss0 '' #fIcon
Ss0 f14 mainOut f18 tail #connect
Ss0 f18 head f17 mainIn #connect
Ss0 f7 mainOut f15 tail #connect
Ss0 f15 head f10 mainIn #connect
Ss0 f10 mainOut f9 tail #connect
Ss0 f9 head f1 mainIn #connect
Ss0 f17 mainOut f16 tail #connect
Ss0 f16 head f1 mainIn #connect
Ss0 f5 mainOut f13 tail #connect
Ss0 f13 head f8 mainIn #connect
Ss0 f8 mainOut f2 tail #connect
Ss0 f2 head f1 mainIn #connect
Ss0 f4 mainOut f6 tail #connect
Ss0 f6 head f3 mainIn #connect
Ss0 f3 mainOut f12 tail #connect
Ss0 f12 head f5 mainIn #connect
Ss0 f0 mainOut f19 tail #connect
Ss0 f19 head f1 mainIn #connect
