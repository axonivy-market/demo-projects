[Ivy]
[>Created: Mon Aug 22 13:53:17 CEST 2011]
131DD00091F5DBBB 3.17 #module
>Proto >Proto Collection #zClass
Rs0 ManagedTeamsSelectProcess Big #zClass
Rs0 RD #cInfo
Rs0 #process
Rs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Rs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Rs0 @TextInP .resExport .resExport #zField
Rs0 @TextInP .type .type #zField
Rs0 @TextInP .processKind .processKind #zField
Rs0 @AnnotationInP-0n ai ai #zField
Rs0 @TextInP .xml .xml #zField
Rs0 @TextInP .responsibility .responsibility #zField
Rs0 @RichDialogInitStart f0 '' #zField
Rs0 @RichDialogProcessEnd f1 '' #zField
Rs0 @RichDialogProcessStep f3 '' #zField
Rs0 @PushWFArc f7 '' #zField
Rs0 @RichDialogInitStart f4 '' #zField
Rs0 @RichDialogProcessStart f6 '' #zField
Rs0 @RichDialogProcessEnd f8 '' #zField
Rs0 @PushWFArc f10 '' #zField
Rs0 @PushWFArc f5 '' #zField
Rs0 @PushWFArc f9 '' #zField
Rs0 @RichDialogProcessStart f2 '' #zField
Rs0 @RichDialogProcessEnd f11 '' #zField
Rs0 @PushWFArc f12 '' #zField
Rs0 @RichDialogProcessStart f13 '' #zField
Rs0 @PushWFArc f14 '' #zField
Rs0 @RichDialogProcessStart f15 '' #zField
Rs0 @RichDialogEnd f16 '' #zField
Rs0 @PushWFArc f17 '' #zField
Rs0 @RichDialogProcessStart f18 '' #zField
Rs0 @PushWFArc f19 '' #zField
>Proto Rs0 Rs0 ManagedTeamsSelectProcess #zField
Rs0 f0 guid 131DCAEF03270660 #txt
Rs0 f0 type ch.ivyteam.ivy.workflow.ui.administration.ManagedTeamsSelect.ManagedTeamsSelectData #txt
Rs0 f0 method start() #txt
Rs0 f0 disableUIEvents true #txt
Rs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Rs0 f0 outParameterDecl '<> result;
' #txt
Rs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Rs0 f0 46 38 20 20 13 0 #rect
Rs0 f0 @|RichDialogInitStartIcon #fIcon
Rs0 f1 type ch.ivyteam.ivy.workflow.ui.administration.ManagedTeamsSelect.ManagedTeamsSelectData #txt
Rs0 f1 46 214 20 20 13 0 #rect
Rs0 f1 @|RichDialogProcessEndIcon #fIcon
Rs0 f3 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.ManagedTeamsSelect.ManagedTeamsSelectData out;
' #txt
Rs0 f3 actionTable 'out=in;
' #txt
Rs0 f3 actionCode 'import ch.ivyteam.ivy.workflow.ui.utils.UserSubstituteHelper;
import ch.ivyteam.ivy.workflow.ui.utils.UserAbsenceHelper;
import ch.ivyteam.ivy.workflow.ui.utils.SortHelper;
import ch.ivyteam.ivy.security.IRole;
import ch.ivyteam.ivy.security.IUser;

IRole role;
List<IRole> roles;
String own;
List nodeValue;

role = (in.loadTreeNode.value as List).get(0) as IRole;
roles.addAll(role.getChildRoles());
SortHelper.sortRoles(roles);

for (IRole childRole : role.getChildRoles())
{
	// did the user is already team manager for that role?
	ivy.log.debug("User {0} managed teams list {1} contains role {2}? {3}.", 
								in.userManagedTeams.user.getName(), 
								in.userManagedTeamsAsList, 
								childRole.getName(),
								in.userManagedTeamsAsList.contains(childRole.getName()));
	
	// do not consider the roles used by WFUI: 
	if (UserAbsenceHelper.ABSENCES_MANAGER_ROLE.equals(childRole.getName()) || 
			UserSubstituteHelper.SUBSTITUTES_MANAGER_ROLE.equalsIgnoreCase(childRole.getName()))
	{
		continue;
	}
	
	own = in.userManagedTeamsAsList.contains(childRole.getName())? "Yes": "No";
	
  nodeValue = [childRole, own];
  in.loadTreeNode.createChild(nodeValue);
}' #txt
Rs0 f3 type ch.ivyteam.ivy.workflow.ui.administration.ManagedTeamsSelect.ManagedTeamsSelectData #txt
Rs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get child nodes
and add them to 
the treeload node</name>
        <nameStyle>16,7
34,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f3 310 124 36 24 20 -2 #rect
Rs0 f3 @|RichDialogProcessStepIcon #fIcon
Rs0 f7 expr out #txt
Rs0 f7 56 58 56 214 #arcP
Rs0 f4 guid 131DD01F94761B74 #txt
Rs0 f4 type ch.ivyteam.ivy.workflow.ui.administration.ManagedTeamsSelect.ManagedTeamsSelectData #txt
Rs0 f4 method start(ch.ivyteam.ivy.security.IRole,ch.ivyteam.ivy.workflow.ui.data.administration.UserManagedTeams) #txt
Rs0 f4 disableUIEvents true #txt
Rs0 f4 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.security.IRole topLevelRole,ch.ivyteam.ivy.workflow.ui.data.administration.UserManagedTeams userManagedTeams> param = methodEvent.getInputArguments();
' #txt
Rs0 f4 inActionCode 'import java.util.Arrays;
import java.util.ArrayList;
import ch.ivyteam.ivy.addons.restricted.workflow.CaseManagedTeamHelper;
out.topLevelRole = param.topLevelRole;
out.userManagedTeams = param.userManagedTeams;

// convert the user managed teams as list (this is used for contains checks)
List<String> items = out.userManagedTeams.userManagedTeams.split(",");
out.userManagedTeamsAsList.addAll(items);

List values;
values = [out.topLevelRole, "No"];

out.managedTeams.info = "topLevelRole";
out.managedTeams.value = values;' #txt
Rs0 f4 outParameterDecl '<ch.ivyteam.ivy.workflow.ui.data.administration.UserManagedTeams userManagedTeams> result;
' #txt
Rs0 f4 outActionCode 'result.userManagedTeams = in.userManagedTeams;' #txt
Rs0 f4 embeddedRdInitializations '* ' #txt
Rs0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(IRole,UserManagedTeams)</name>
        <nameStyle>29,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f4 118 38 20 20 13 0 #rect
Rs0 f4 @|RichDialogInitStartIcon #fIcon
Rs0 f6 guid 131DD092D15C6786 #txt
Rs0 f6 type ch.ivyteam.ivy.workflow.ui.administration.ManagedTeamsSelect.ManagedTeamsSelectData #txt
Rs0 f6 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.ManagedTeamsSelect.ManagedTeamsSelectData out;
' #txt
Rs0 f6 actionTable 'out=in;
' #txt
Rs0 f6 actionCode 'import ch.ivyteam.ivy.richdialog.component.event.TreeLoadEvent;

out.loadTreeNode = (event as TreeLoadEvent).getTreeNode();' #txt
Rs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load</name>
        <nameStyle>4,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f6 318 46 20 20 13 0 #rect
Rs0 f6 @|RichDialogProcessStartIcon #fIcon
Rs0 f8 type ch.ivyteam.ivy.workflow.ui.administration.ManagedTeamsSelect.ManagedTeamsSelectData #txt
Rs0 f8 318 214 20 20 13 0 #rect
Rs0 f8 @|RichDialogProcessEndIcon #fIcon
Rs0 f10 expr out #txt
Rs0 f10 128 58 66 224 #arcP
Rs0 f10 1 128 224 #addKink
Rs0 f10 0 0.720540782793369 0 0 #arcLabel
Rs0 f5 expr out #txt
Rs0 f5 328 66 328 124 #arcP
Rs0 f9 expr out #txt
Rs0 f9 328 148 328 214 #arcP
Rs0 f2 guid 131DD4CB745D8E1F #txt
Rs0 f2 type ch.ivyteam.ivy.workflow.ui.administration.ManagedTeamsSelect.ManagedTeamsSelectData #txt
Rs0 f2 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.ManagedTeamsSelect.ManagedTeamsSelectData out;
' #txt
Rs0 f2 actionTable 'out=in;
' #txt
Rs0 f2 actionCode 'import ch.ivyteam.ivy.security.IRole;
List<Tree> selectedTreeNodes = panel.managedTeamsTableTree.getSelectedTreeNodes();


// loop on all selected nodes and switch them to "Yes"
// do not consider "Everybody" role
for (Tree selectedTreeNode: selectedTreeNodes)
{
	IRole currentRole = (selectedTreeNode.value as List).get(0) as IRole;
	
	if (!in.topLevelRole.getName().equals(currentRole.getName()))
	{
		(selectedTreeNode.value as List).set(1, "Yes");
		selectedTreeNode.treeValueChanged();
	}
}' #txt
Rs0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>addRoles</name>
        <nameStyle>8,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f2 502 46 20 20 13 0 #rect
Rs0 f2 @|RichDialogProcessStartIcon #fIcon
Rs0 f11 type ch.ivyteam.ivy.workflow.ui.administration.ManagedTeamsSelect.ManagedTeamsSelectData #txt
Rs0 f11 502 214 20 20 13 0 #rect
Rs0 f11 @|RichDialogProcessEndIcon #fIcon
Rs0 f12 expr out #txt
Rs0 f12 512 66 512 214 #arcP
Rs0 f13 guid 131DD4CF3BF10E54 #txt
Rs0 f13 type ch.ivyteam.ivy.workflow.ui.administration.ManagedTeamsSelect.ManagedTeamsSelectData #txt
Rs0 f13 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.ManagedTeamsSelect.ManagedTeamsSelectData out;
' #txt
Rs0 f13 actionTable 'out=in;
' #txt
Rs0 f13 actionCode 'import ch.ivyteam.ivy.security.IRole;
List<Tree> selectedTreeNodes = panel.managedTeamsTableTree.getSelectedTreeNodes();


// loop on all selected nodes and switch them to "No"
// do not consider "Everybody" role
for (Tree selectedTreeNode: selectedTreeNodes)
{
	IRole currentRole = (selectedTreeNode.value as List).get(0) as IRole;
	
	if (!in.topLevelRole.getName().equals(currentRole.getName()))
	{
		(selectedTreeNode.value as List).set(1, "No");
		selectedTreeNode.treeValueChanged();
	}
}' #txt
Rs0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>removeRoles</name>
        <nameStyle>11,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f13 590 46 20 20 13 0 #rect
Rs0 f13 @|RichDialogProcessStartIcon #fIcon
Rs0 f14 expr out #txt
Rs0 f14 600 66 521 223 #arcP
Rs0 f14 1 600 216 #addKink
Rs0 f14 0 0.7925013745126794 0 0 #arcLabel
Rs0 f15 guid 131DD4DD41641D9E #txt
Rs0 f15 type ch.ivyteam.ivy.workflow.ui.administration.ManagedTeamsSelect.ManagedTeamsSelectData #txt
Rs0 f15 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.ManagedTeamsSelect.ManagedTeamsSelectData out;
' #txt
Rs0 f15 actionTable 'out=in;
' #txt
Rs0 f15 actionCode 'import ch.ivyteam.ivy.security.IRole;

out.userManagedTeams.userManagedTeams = "";

List<Tree> allTreeNodes;
allTreeNodes.addAll(in.managedTeams.getAllDeepChildren());

IRole role;
String own = "";

for (Tree treeNode: allTreeNodes)
{
	role = ((treeNode.value as List).get(0) as IRole);
	own = (treeNode.value as List).get(1) as String;
	ivy.log.debug("Analyzing the role {0} and own {1} for selected user {2} managed teams.", role.getName(), own, out.userManagedTeams.user.getName());
	
	if ("Yes".equals(own))
	{
		// add it to the user managed teams
		out.userManagedTeams.userManagedTeams += role.getName() + ",";
	}
}

// remove the last "," if needed
if (out.userManagedTeams.userManagedTeams.length() > 0 && out.userManagedTeams.userManagedTeams.endsWith(","))
{
	out.userManagedTeams.userManagedTeams = out.userManagedTeams.userManagedTeams.substring(0, out.userManagedTeams.userManagedTeams.length()-1);
}' #txt
Rs0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ok</name>
        <nameStyle>2,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f15 758 46 20 20 13 0 #rect
Rs0 f15 @|RichDialogProcessStartIcon #fIcon
Rs0 f16 type ch.ivyteam.ivy.workflow.ui.administration.ManagedTeamsSelect.ManagedTeamsSelectData #txt
Rs0 f16 guid 131DD4DE5525C759 #txt
Rs0 f16 758 214 20 20 13 0 #rect
Rs0 f16 @|RichDialogEndIcon #fIcon
Rs0 f17 expr out #txt
Rs0 f17 768 66 768 214 #arcP
Rs0 f18 guid 131DD4E2468C109E #txt
Rs0 f18 type ch.ivyteam.ivy.workflow.ui.administration.ManagedTeamsSelect.ManagedTeamsSelectData #txt
Rs0 f18 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.ManagedTeamsSelect.ManagedTeamsSelectData out;
' #txt
Rs0 f18 actionTable 'out=in;
' #txt
Rs0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>cancel</name>
        <nameStyle>6,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f18 838 46 20 20 13 0 #rect
Rs0 f18 @|RichDialogProcessStartIcon #fIcon
Rs0 f19 expr out #txt
Rs0 f19 848 66 777 223 #arcP
Rs0 f19 1 848 216 #addKink
Rs0 f19 0 0.7516048550141239 0 0 #arcLabel
>Proto Rs0 .ui2RdDataAction 'out.selectedTreeNode=panel.managedTeamsTableTree.selectedTreeNode;
' #txt
>Proto Rs0 .rdData2UIAction 'panel.managedTeamsTableTree.tableTreeData=in.managedTeams;
' #txt
>Proto Rs0 .type ch.ivyteam.ivy.workflow.ui.administration.ManagedTeamsSelect.ManagedTeamsSelectData #txt
>Proto Rs0 .processKind RICH_DIALOG #txt
>Proto Rs0 -8 -8 16 16 16 26 #rect
>Proto Rs0 '' #fIcon
Rs0 f0 mainOut f7 tail #connect
Rs0 f7 head f1 mainIn #connect
Rs0 f4 mainOut f10 tail #connect
Rs0 f10 head f1 mainIn #connect
Rs0 f6 mainOut f5 tail #connect
Rs0 f5 head f3 mainIn #connect
Rs0 f3 mainOut f9 tail #connect
Rs0 f9 head f8 mainIn #connect
Rs0 f2 mainOut f12 tail #connect
Rs0 f12 head f11 mainIn #connect
Rs0 f13 mainOut f14 tail #connect
Rs0 f14 head f11 mainIn #connect
Rs0 f15 mainOut f17 tail #connect
Rs0 f17 head f16 mainIn #connect
Rs0 f18 mainOut f19 tail #connect
Rs0 f19 head f16 mainIn #connect
