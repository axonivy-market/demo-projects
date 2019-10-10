[Ivy]
13F5720787C9F3A0 7.5.0 #module
>Proto >Proto Collection #zClass
Ss0 SubstitutionProcess Big #zClass
Ss0 RD #cInfo
Ss0 #process
Ss0 @TextInP .type .type #zField
Ss0 @TextInP .processKind .processKind #zField
Ss0 @AnnotationInP-0n ai ai #zField
Ss0 @TextInP .xml .xml #zField
Ss0 @TextInP .responsibility .responsibility #zField
Ss0 @UdInit f0 '' #zField
Ss0 @UdProcessEnd f1 '' #zField
Ss0 @GridStep f3 '' #zField
Ss0 @GridStep f5 '' #zField
Ss0 @GridStep f10 '' #zField
Ss0 @UdEvent f14 '' #zField
Ss0 @GridStep f17 '' #zField
Ss0 @PushWFArc f18 '' #zField
Ss0 @UdMethod f7 '' #zField
Ss0 @PushWFArc f15 '' #zField
Ss0 @UdMethod f4 '' #zField
Ss0 @GridStep f8 '' #zField
Ss0 @PushWFArc f13 '' #zField
Ss0 @PushWFArc f12 '' #zField
Ss0 @GridStep f11 '' #zField
Ss0 @PushWFArc f19 '' #zField
Ss0 @PushWFArc f20 '' #zField
Ss0 @PushWFArc f21 '' #zField
Ss0 @UdProcessEnd f16 '' #zField
Ss0 @PushWFArc f22 '' #zField
Ss0 @UdProcessEnd f2 '' #zField
Ss0 @PushWFArc f23 '' #zField
Ss0 @GridStep f9 '' #zField
Ss0 @PushWFArc f24 '' #zField
Ss0 @PushWFArc f6 '' #zField
>Proto Ss0 Ss0 SubstitutionProcess #zField
Ss0 f0 guid 13F5720789611B9E #txt
Ss0 f0 method start() #txt
Ss0 f0 inParameterDecl '<> param;' #txt
Ss0 f0 outParameterDecl '<> result;' #txt
Ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ss0 f0 83 51 26 26 -16 12 #rect
Ss0 f0 @|UdInitIcon #fIcon
Ss0 f0 -1|-1|-9671572 #nodeStyle
Ss0 f1 499 51 26 26 0 12 #rect
Ss0 f1 @|UdProcessEndIcon #fIcon
Ss0 f1 -1|-1|-9671572 #nodeStyle
Ss0 f3 actionTable 'out=in;
' #txt
Ss0 f3 actionCode 'import ch.ivyteam.ivy.security.IRole;
import ch.ivyteam.ivy.security.IUser;

List users = ivy.wf.getSecurityContext().getUsers();
in.userList.clear();
in.forUserList.clear();
in.roleList.clear();
for(IUser user : users)
{
	if(user.getName() != "SYSTEM" && user.getName() != in.user.getName())
	{
		out.userList.add(user);
	}
	if(user.getName() != "SYSTEM")
	{
		out.forUserList.add(user);
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
Ss0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>users and roles</name>
        <nameStyle>15,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f3 168 202 112 44 -43 -8 #rect
Ss0 f3 @|StepIcon #fIcon
Ss0 f3 -1|-1|-9671572 #nodeStyle
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
Ss0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get substitute &amp;
my substitutions</name>
        <nameStyle>33,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f5 328 202 112 44 -42 -16 #rect
Ss0 f5 @|StepIcon #fIcon
Ss0 f5 -1|-1|-9671572 #nodeStyle
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
Ss0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>remove substitute</name>
        <nameStyle>17,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f10 168 266 112 44 -49 -8 #rect
Ss0 f10 @|StepIcon #fIcon
Ss0 f10 -1|-1|-9671572 #nodeStyle
Ss0 f14 guid 13F5773B6B9B6604 #txt
Ss0 f14 actionTable 'out=in;
' #txt
Ss0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>addSubstitute</name>
    </language>
</elementInfo>
' #txt
Ss0 f14 83 147 26 26 -38 12 #rect
Ss0 f14 @|UdEventIcon #fIcon
Ss0 f14 -1|-1|-9671572 #nodeStyle
Ss0 f17 actionTable 'out=in;
' #txt
Ss0 f17 actionCode 'import ch.ivyteam.ivy.security.SubstitutionType;
import javax.faces.context.FacesContext;
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
	SubstitutionType type = SubstitutionType.ON_ABSENCE;
	if(in.isPermanent)
	{
		type = SubstitutionType.PERMANENT;
	}
	
	in.user.createSubstitute(in.substituteUser, description, type);
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
Ss0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>save substitute</name>
        <nameStyle>15,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f17 168 138 112 44 -41 -8 #rect
Ss0 f17 @|StepIcon #fIcon
Ss0 f17 -1|-1|-9671572 #nodeStyle
Ss0 f18 expr out #txt
Ss0 f18 109 160 168 160 #arcP
Ss0 f7 guid 13F7509B1EEE5E13 #txt
Ss0 f7 method removeSubstitute(Number) #txt
Ss0 f7 inParameterDecl '<Number substituteId> param;' #txt
Ss0 f7 inParameterMapAction 'out.deleteId=param.substituteId;
' #txt
Ss0 f7 outParameterDecl '<> result;' #txt
Ss0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>removeSubstitute(Number)</name>
        <nameStyle>24,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f7 83 275 26 26 -74 12 #rect
Ss0 f7 @|UdMethodIcon #fIcon
Ss0 f7 -1|-1|-9671572 #nodeStyle
Ss0 f15 expr out #txt
Ss0 f15 109 288 168 288 #arcP
Ss0 f4 guid 13F75DF4EC85730E #txt
Ss0 f4 method update() #txt
Ss0 f4 inParameterDecl '<> param;' #txt
Ss0 f4 outParameterDecl '<> result;' #txt
Ss0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update()</name>
    </language>
</elementInfo>
' #txt
Ss0 f4 83 211 26 26 -23 12 #rect
Ss0 f4 @|UdMethodIcon #fIcon
Ss0 f4 -1|-1|-9671572 #nodeStyle
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
Ss0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>string of selected
roles</name>
        <nameStyle>24,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f8 488 202 112 44 -43 -16 #rect
Ss0 f8 @|StepIcon #fIcon
Ss0 f8 -1|-1|-9671572 #nodeStyle
Ss0 f13 expr out #txt
Ss0 f13 440 224 488 224 #arcP
Ss0 f13 0 0.5905648529193468 0 0 #arcLabel
Ss0 f12 expr out #txt
Ss0 f12 280 224 328 224 #arcP
Ss0 f11 actionTable 'out=in;
out.description="";
out.isPermanent=false;
out.isPersonally=true;
out.selectedRoles=[];
out.substituteUser=null;
' #txt
Ss0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>default</name>
        <nameStyle>7,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f11 328 42 112 44 -18 -8 #rect
Ss0 f11 @|StepIcon #fIcon
Ss0 f11 -1|-1|-9671572 #nodeStyle
Ss0 f19 expr out #txt
Ss0 f19 109 224 168 224 #arcP
Ss0 f20 expr out #txt
Ss0 f20 440 64 499 64 #arcP
Ss0 f21 expr out #txt
Ss0 f21 280 160 384 86 #arcP
Ss0 f21 1 384 160 #addKink
Ss0 f21 0 0.7521726954430944 0 0 #arcLabel
Ss0 f16 339 275 26 26 0 12 #rect
Ss0 f16 @|UdProcessEndIcon #fIcon
Ss0 f16 -1|-1|-9671572 #nodeStyle
Ss0 f22 expr out #txt
Ss0 f22 280 288 339 288 #arcP
Ss0 f22 0 0.7008534867332892 0 0 #arcLabel
Ss0 f2 659 211 26 26 0 12 #rect
Ss0 f2 @|UdProcessEndIcon #fIcon
Ss0 f2 -1|-1|-9671572 #nodeStyle
Ss0 f23 expr out #txt
Ss0 f23 600 224 659 224 #arcP
Ss0 f23 0 0.581626613541889 0 0 #arcLabel
Ss0 f9 actionTable 'out=in;
out.user=ivy.session.getSessionUser();
' #txt
Ss0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>sessionUser</name>
        <nameStyle>11,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f9 168 42 112 44 -36 -8 #rect
Ss0 f9 @|StepIcon #fIcon
Ss0 f24 expr out #txt
Ss0 f24 109 64 168 64 #arcP
Ss0 f6 expr out #txt
Ss0 f6 280 64 328 64 #arcP
>Proto Ss0 .type ch.ivyteam.wf.settings.Substitution.SubstitutionData #txt
>Proto Ss0 .processKind HTML_DIALOG #txt
>Proto Ss0 -8 -8 16 16 16 26 #rect
>Proto Ss0 '' #fIcon
Ss0 f14 mainOut f18 tail #connect
Ss0 f18 head f17 mainIn #connect
Ss0 f7 mainOut f15 tail #connect
Ss0 f15 head f10 mainIn #connect
Ss0 f5 mainOut f13 tail #connect
Ss0 f13 head f8 mainIn #connect
Ss0 f3 mainOut f12 tail #connect
Ss0 f12 head f5 mainIn #connect
Ss0 f4 mainOut f19 tail #connect
Ss0 f19 head f3 mainIn #connect
Ss0 f11 mainOut f20 tail #connect
Ss0 f20 head f1 mainIn #connect
Ss0 f17 mainOut f21 tail #connect
Ss0 f21 head f11 mainIn #connect
Ss0 f10 mainOut f22 tail #connect
Ss0 f22 head f16 mainIn #connect
Ss0 f8 mainOut f23 tail #connect
Ss0 f23 head f2 mainIn #connect
Ss0 f0 mainOut f24 tail #connect
Ss0 f24 head f9 mainIn #connect
Ss0 f9 mainOut f6 tail #connect
Ss0 f6 head f11 mainIn #connect
