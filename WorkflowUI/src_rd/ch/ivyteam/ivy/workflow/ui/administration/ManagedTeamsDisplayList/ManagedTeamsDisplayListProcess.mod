[Ivy]
[>Created: Wed Feb 09 14:54:08 CET 2011]
12A4698EBFC9D238 3.15 #module
>Proto >Proto Collection #zClass
Ms0 ManagingRolesDisplayListProcess Big #zClass
Ms0 RD #cInfo
Ms0 #process
Ms0 @TextInP .xml .xml #zField
Ms0 @TextInP .responsibility .responsibility #zField
Ms0 @AnnotationInP-0n ai ai #zField
Ms0 @TextInP .resExport .resExport #zField
Ms0 @TextInP .type .type #zField
Ms0 @TextInP .processKind .processKind #zField
Ms0 @MessageFlowInP-0n messageIn messageIn #zField
Ms0 @MessageFlowOutP-0n messageOut messageOut #zField
Ms0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ms0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ms0 @RichDialogInitStart f0 '' #zField
Ms0 @RichDialogProcessEnd f1 '' #zField
Ms0 @RichDialogProcessStep f3 '' #zField
Ms0 @PushWFArc f4 '' #zField
Ms0 @PushWFArc f2 '' #zField
Ms0 @RichDialogProcessStart f5 '' #zField
Ms0 @RichDialogProcessStart f8 '' #zField
Ms0 @RichDialogEnd f9 '' #zField
Ms0 @PushWFArc f7 '' #zField
Ms0 @RichDialogProcessStep f6 '' #zField
Ms0 @PushWFArc f11 '' #zField
Ms0 @PushWFArc f10 '' #zField
Ms0 @RichDialogProcessStart f12 '' #zField
Ms0 @RichDialogProcessEnd f13 '' #zField
Ms0 @PushWFArc f14 '' #zField
>Proto Ms0 Ms0 ManagingRolesDisplayListProcess #zField
Ms0 f0 guid 12A43EF5B1247D8C #txt
Ms0 f0 type ch.ivyteam.ivy.workflow.ui.administration.ManagedTeamsDisplayList.ManagedTeamsDisplayListData #txt
Ms0 f0 method start() #txt
Ms0 f0 disableUIEvents true #txt
Ms0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ms0 f0 outParameterDecl '<> result;
' #txt
Ms0 f0 embeddedRdInitializations '{/headerRDC {/fieldName "headerRDC"/startMethod "start(String,String,String)"/parameterMapping ""/initScript "param.iconUri = \"/ch/ivyteam/ivy/workflow/ui/administration/images/managedTeams48\";\nparam.title = ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/managedTeamsShortDesc\");\nparam.text = ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/managedTeamsLongDesc\");\n"}}' #txt
Ms0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f0 90 40 20 20 13 0 #rect
Ms0 f0 @|RichDialogInitStartIcon #fIcon
Ms0 f1 type ch.ivyteam.ivy.workflow.ui.administration.ManagedTeamsDisplayList.ManagedTeamsDisplayListData #txt
Ms0 f1 90 238 20 20 13 0 #rect
Ms0 f1 @|RichDialogProcessEndIcon #fIcon
Ms0 f3 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.ManagedTeamsDisplayList.ManagedTeamsDisplayListData out;
' #txt
Ms0 f3 actionTable 'out=in;
' #txt
Ms0 f3 actionCode 'import ch.ivyteam.ivy.workflow.ui.data.administration.UserManagedTeams;
import ch.ivyteam.ivy.security.IUser;
import ch.ivyteam.ivy.addons.restricted.workflow.CaseManagedTeamHelper;
import ch.ivyteam.ivy.workflow.ui.utils.WorkflowUIAccessPermissionHandler;

List<IUser> users = WorkflowUIAccessPermissionHandler.getWfHumanUsersAsSystemUser();

IUser user;
UserManagedTeams userManagedTeams;

for (int i=0; i<users.size(); i++)
{
	user = users.get(i);
	userManagedTeams = new UserManagedTeams();
	userManagedTeams.setUser(user);
	userManagedTeams.userManagedTeams = CaseManagedTeamHelper.getSessionUserManagedTeamsAsString(user);

	out.usersManagedTeamsList.add(userManagedTeams);
}

out.usersManagedTeamsFilteredList.clear();
out.usersManagedTeamsFilteredList.addAll(out.usersManagedTeamsList);' #txt
Ms0 f3 type ch.ivyteam.ivy.workflow.ui.administration.ManagedTeamsDisplayList.ManagedTeamsDisplayListData #txt
Ms0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>build the list of users with
their managing roles</name>
        <nameStyle>49,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f3 82 140 36 24 20 -2 #rect
Ms0 f3 @|RichDialogProcessStepIcon #fIcon
Ms0 f4 expr out #txt
Ms0 f4 100 60 100 140 #arcP
Ms0 f2 expr out #txt
Ms0 f2 100 164 100 238 #arcP
Ms0 f5 guid 12A442FDADB847E8 #txt
Ms0 f5 type ch.ivyteam.ivy.workflow.ui.administration.ManagedTeamsDisplayList.ManagedTeamsDisplayListData #txt
Ms0 f5 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.ManagedTeamsDisplayList.ManagedTeamsDisplayListData out;
' #txt
Ms0 f5 actionTable 'out=in;
' #txt
Ms0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ok</name>
        <nameStyle>2,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f5 446 38 20 20 13 0 #rect
Ms0 f5 @|RichDialogProcessStartIcon #fIcon
Ms0 f8 guid 12A443084535F54A #txt
Ms0 f8 type ch.ivyteam.ivy.workflow.ui.administration.ManagedTeamsDisplayList.ManagedTeamsDisplayListData #txt
Ms0 f8 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.ManagedTeamsDisplayList.ManagedTeamsDisplayListData out;
' #txt
Ms0 f8 actionTable 'out=in;
' #txt
Ms0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>cancel</name>
        <nameStyle>6,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f8 582 38 20 20 13 0 #rect
Ms0 f8 @|RichDialogProcessStartIcon #fIcon
Ms0 f9 type ch.ivyteam.ivy.workflow.ui.administration.ManagedTeamsDisplayList.ManagedTeamsDisplayListData #txt
Ms0 f9 guid 12A4430A941E3B6F #txt
Ms0 f9 446 238 20 20 13 0 #rect
Ms0 f9 @|RichDialogEndIcon #fIcon
Ms0 f7 expr out #txt
Ms0 f7 592 58 465 246 #arcP
Ms0 f7 1 592 232 #addKink
Ms0 f7 0 0.7846712287201104 0 0 #arcLabel
Ms0 f6 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.ManagedTeamsDisplayList.ManagedTeamsDisplayListData out;
' #txt
Ms0 f6 actionTable 'out=in;
' #txt
Ms0 f6 actionCode 'import ch.ivyteam.ivy.workflow.ui.data.administration.UserManagedTeams;
import ch.ivyteam.ivy.addons.restricted.workflow.CaseManagedTeamHelper;


for (UserManagedTeams userManagedTeams: out.usersManagedTeamsFilteredList)
{
	CaseManagedTeamHelper.setSessionUserManagedTeamsAsString(
																									userManagedTeams.getUser(), 
																									userManagedTeams.userManagedTeams);
}' #txt
Ms0 f6 type ch.ivyteam.ivy.workflow.ui.administration.ManagedTeamsDisplayList.ManagedTeamsDisplayListData #txt
Ms0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set for each user 
its managing roles</name>
        <nameStyle>37,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f6 438 140 36 24 20 -2 #rect
Ms0 f6 @|RichDialogProcessStepIcon #fIcon
Ms0 f11 expr out #txt
Ms0 f11 456 58 456 140 #arcP
Ms0 f10 expr out #txt
Ms0 f10 456 164 456 238 #arcP
Ms0 f12 guid 12E0AA92725DF2BB #txt
Ms0 f12 type ch.ivyteam.ivy.workflow.ui.administration.ManagedTeamsDisplayList.ManagedTeamsDisplayListData #txt
Ms0 f12 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.ManagedTeamsDisplayList.ManagedTeamsDisplayListData out;
' #txt
Ms0 f12 actionTable 'out=in;
' #txt
Ms0 f12 actionCode 'import ch.ivyteam.ivy.workflow.ui.data.administration.UserManagedTeams;
import java.util.regex.Pattern;

out.usersManagedTeamsFilteredList.clear();


if (out.usersManagedTeamsList.size() > 0)
{
	Pattern patternOnName = Pattern.compile(".*" + in.nameCriteria + ".*", Pattern.CASE_INSENSITIVE);
	
	for(UserManagedTeams userManagedTeams: in.usersManagedTeamsList)
	{
		if (patternOnName.matcher(userManagedTeams.user.getName()).matches() ||
				patternOnName.matcher(userManagedTeams.user.getFullName()).matches())
		{
			out.usersManagedTeamsFilteredList.add(userManagedTeams);
		}
	}
}
else
{
	out.usersManagedTeamsFilteredList.addAll(in.usersManagedTeamsList);	
}' #txt
Ms0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>findUsers</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f12 318 38 20 20 13 0 #rect
Ms0 f12 @|RichDialogProcessStartIcon #fIcon
Ms0 f13 type ch.ivyteam.ivy.workflow.ui.administration.ManagedTeamsDisplayList.ManagedTeamsDisplayListData #txt
Ms0 f13 318 238 20 20 13 0 #rect
Ms0 f13 @|RichDialogProcessEndIcon #fIcon
Ms0 f14 expr out #txt
Ms0 f14 328 58 328 238 #arcP
>Proto Ms0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Start methods</swimlaneLabel>
        <swimlaneLabel>Events</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>261</swimlaneSize>
    <swimlaneSize>422</swimlaneSize>
    <swimlaneColor>-16724839</swimlaneColor>
    <swimlaneColor>-16724890</swimlaneColor>
</elementInfo>
' #txt
>Proto Ms0 .type ch.ivyteam.ivy.workflow.ui.administration.ManagedTeamsDisplayList.ManagedTeamsDisplayListData #txt
>Proto Ms0 .processKind RICH_DIALOG #txt
>Proto Ms0 .ui2RdDataAction 'out.usersManagedTeamsFilteredList=panel.usersManagingRolesTable.listData as List<ch.ivyteam.ivy.workflow.ui.data.administration.UserManagedTeams>;
out.nameCriteria=panel.caseNameCriteriaTextField.text;
' #txt
>Proto Ms0 .rdData2UIAction 'panel.caseNameCriteriaTextField.text=ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/findUsersByNameShortDesc");
panel.usersManagingRolesTable.listData=in.usersManagedTeamsFilteredList;
panel.caseNameCriteriaTextField.text=in.nameCriteria;
' #txt
>Proto Ms0 -8 -8 16 16 16 26 #rect
>Proto Ms0 '' #fIcon
Ms0 f0 mainOut f4 tail #connect
Ms0 f4 head f3 mainIn #connect
Ms0 f3 mainOut f2 tail #connect
Ms0 f2 head f1 mainIn #connect
Ms0 f8 mainOut f7 tail #connect
Ms0 f7 head f9 mainIn #connect
Ms0 f5 mainOut f11 tail #connect
Ms0 f11 head f6 mainIn #connect
Ms0 f6 mainOut f10 tail #connect
Ms0 f10 head f9 mainIn #connect
Ms0 f12 mainOut f14 tail #connect
Ms0 f14 head f13 mainIn #connect
