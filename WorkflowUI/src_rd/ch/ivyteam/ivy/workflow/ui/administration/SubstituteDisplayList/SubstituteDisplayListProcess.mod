[Ivy]
[>Created: Mon Nov 15 17:14:06 CET 2010]
12A19679D334BA22 3.13.1 #module
>Proto >Proto Collection #zClass
Ss0 SubstituteManagementProcess Big #zClass
Ss0 RD #cInfo
Ss0 #process
Ss0 @TextInP .xml .xml #zField
Ss0 @TextInP .responsibility .responsibility #zField
Ss0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ss0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ss0 @MessageFlowInP-0n messageIn messageIn #zField
Ss0 @MessageFlowOutP-0n messageOut messageOut #zField
Ss0 @AnnotationInP-0n ai ai #zField
Ss0 @TextInP .resExport .resExport #zField
Ss0 @TextInP .type .type #zField
Ss0 @TextInP .processKind .processKind #zField
Ss0 @RichDialogInitStart f0 '' #zField
Ss0 @RichDialogProcessEnd f1 '' #zField
Ss0 @RichDialogProcessStep f2 '' #zField
Ss0 @PushWFArc f3 '' #zField
Ss0 @PushWFArc f4 '' #zField
Ss0 @RichDialogProcessStart f5 '' #zField
Ss0 @RichDialogProcessEnd f6 '' #zField
Ss0 @PushWFArc f7 '' #zField
Ss0 @RichDialogProcessStart f8 '' #zField
Ss0 @PushWFArc f9 '' #zField
Ss0 @RichDialogProcessStart f10 '' #zField
Ss0 @RichDialogProcessStart f12 '' #zField
Ss0 @PushWFArc f13 '' #zField
Ss0 @RichDialogEnd f14 '' #zField
Ss0 @RichDialogProcessStart f18 '' #zField
Ss0 @PushWFArc f19 '' #zField
Ss0 @RichDialogProcessStart f20 '' #zField
Ss0 @RichDialogProcessEnd f21 '' #zField
Ss0 @PushWFArc f22 '' #zField
Ss0 @Alternative f15 '' #zField
Ss0 @PushWFArc f16 '' #zField
Ss0 @PushWFArc f11 '' #zField
Ss0 @RichDialogProcessEnd f23 '' #zField
Ss0 @PushWFArc f24 '' #zField
Ss0 @RichDialogProcessStart f17 '' #zField
Ss0 @RichDialogProcessEnd f25 '' #zField
Ss0 @PushWFArc f26 '' #zField
>Proto Ss0 Ss0 SubstituteManagementProcess #zField
Ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f0 guid 11990B668C81AC8B #txt
Ss0 f0 type ch.ivyteam.ivy.workflow.ui.administration.SubstituteDisplayList.SubstituteDisplayListData #txt
Ss0 f0 method start() #txt
Ss0 f0 disableUIEvents false #txt
Ss0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ss0 f0 outParameterDecl '<> result;
' #txt
Ss0 f0 embeddedRdInitializations '{/header {/fieldName "header"/startMethod "start(String,String,String)"/parameterMapping "param.iconUri=\"/ch/ivyteam/ivy/workflow/ui/common/images/substitute48\";\n"/initScript "param.title = ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/substitutesShortDesc\");\nparam.text = ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/substitutesLongDesc\");"}}' #txt
Ss0 f0 62 54 20 20 13 0 #rect
Ss0 f0 @|RichDialogInitStartIcon #fIcon
Ss0 f1 type ch.ivyteam.ivy.workflow.ui.administration.SubstituteDisplayList.SubstituteDisplayListData #txt
Ss0 f1 59 267 26 26 14 0 #rect
Ss0 f1 @|RichDialogProcessEndIcon #fIcon
Ss0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load the available substitutes
try to update the tab''s bullet</name>
        <nameStyle>9,7,9
52,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f2 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.SubstituteDisplayList.SubstituteDisplayListData out;
' #txt
Ss0 f2 actionTable 'out=in;
' #txt
Ss0 f2 actionCode 'import ch.ivyteam.ivy.security.IRole;
import ch.ivyteam.ivy.security.IUser;
import com.ulcjava.base.application.ULCTabbedPane;
import com.ulcjava.base.application.ULCContainer;

//clear all lists
out.userList.clear();
out.roleList.clear();
out.substituteList.clear();
out.errorMessage = "";

//load all lists
if(!ivy.session.isSessionUserUnknown()){
	for(IUser user : ivy.session.getSecurityContext().getUsers()){
		
		if(ivy.session.getSessionUser().getName().equals(user.getName()) || "SYSTEM".equals(user.getName())){
			continue;
		}
		out.userList.add(user);
	}
	for(IRole role : ivy.session.getSessionUser().getRoles()){
		if(role.getName().equals("Everybody")){
			continue;
		}
		out.roleList.add(role);
	}
	out.substituteList.addAll(ivy.session.getSessionUser().getSubstitutes());
	out.userNameLoggedOn = ivy.session.getSessionUserName();
} else {
	out.errorMessage = "not logged on";
	}

panel.addCollapsiblePane.setCollapsed(true);
panel.deleteButton.enabled = false;


// reset the set values on UI
out.remark = "";
panel.substituteLookupTextField.setSelectedListEntry(null);
panel.roleLookupTextField.setSelectedListEntry(null);


// update the bullet on tab
ULCContainer parent = panel.getParent();

if (parent instanceof ULCTabbedPane && (parent as ULCTabbedPane).getSelectedComponent().equals(panel))
{
	int index = (parent as ULCTabbedPane).getSelectedIndex();
	(parent as ULCTabbedPane).setTitleAt(index, 
																				ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/substitutesShortDesc") + 
																				(ivy.session.getSessionUser().getSubstitutes().isEmpty()? "": " \u2022"));
	
}' #txt
Ss0 f2 type ch.ivyteam.ivy.workflow.ui.administration.SubstituteDisplayList.SubstituteDisplayListData #txt
Ss0 f2 54 188 36 24 20 -2 #rect
Ss0 f2 @|RichDialogProcessStepIcon #fIcon
Ss0 f3 expr out #txt
Ss0 f3 72 74 72 188 #arcP
Ss0 f4 expr out #txt
Ss0 f4 72 212 72 267 #arcP
Ss0 f5 guid 11990C09536F6D63 #txt
Ss0 f5 type ch.ivyteam.ivy.workflow.ui.administration.SubstituteDisplayList.SubstituteDisplayListData #txt
Ss0 f5 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.SubstituteDisplayList.SubstituteDisplayListData out;
' #txt
Ss0 f5 actionTable 'out=in;
' #txt
Ss0 f5 actionCode 'panel.addCollapsiblePane.collapsed = !panel.addCollapsiblePane.collapsed;
' #txt
Ss0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>toggleAdd</name>
        <nameStyle>9,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f5 718 54 20 20 13 0 #rect
Ss0 f5 @|RichDialogProcessStartIcon #fIcon
Ss0 f6 type ch.ivyteam.ivy.workflow.ui.administration.SubstituteDisplayList.SubstituteDisplayListData #txt
Ss0 f6 715 187 26 26 14 0 #rect
Ss0 f6 @|RichDialogProcessEndIcon #fIcon
Ss0 f7 expr out #txt
Ss0 f7 728 74 728 187 #arcP
Ss0 f8 guid 11990C155E6866FB #txt
Ss0 f8 type ch.ivyteam.ivy.workflow.ui.administration.SubstituteDisplayList.SubstituteDisplayListData #txt
Ss0 f8 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.SubstituteDisplayList.SubstituteDisplayListData out;
' #txt
Ss0 f8 actionTable 'out=in;
' #txt
Ss0 f8 actionCode 'import ch.ivyteam.ivy.security.*;

if(panel.substituteTable.getSelectedListEntry() instanceof IUserSubstitute){
	panel.deleteButton.enabled = true;
	}
' #txt
Ss0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>enableDelete</name>
        <nameStyle>12,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f8 814 54 20 20 13 0 #rect
Ss0 f8 @|RichDialogProcessStartIcon #fIcon
Ss0 f9 expr out #txt
Ss0 f9 824 74 740 197 #arcP
Ss0 f9 1 824 184 #addKink
Ss0 f9 0 0.8973781322219474 0 0 #arcLabel
Ss0 f10 guid 11990C34EB9A20CD #txt
Ss0 f10 type ch.ivyteam.ivy.workflow.ui.administration.SubstituteDisplayList.SubstituteDisplayListData #txt
Ss0 f10 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.SubstituteDisplayList.SubstituteDisplayListData out;
' #txt
Ss0 f10 actionTable 'out=in;
' #txt
Ss0 f10 actionCode 'import ch.ivyteam.ivy.security.IUserSubstitute;
import ch.ivyteam.ivy.security.IRole;
import ch.ivyteam.ivy.security.IUser;


//reset error message
out.errorMessage = "";

if (!ivy.session.isSessionUserUnknown()){

	// substitute for personal tasks
	if (panel.personalRadioButton.isSelected()){
			if (panel.substituteLookupTextField.getSelectedListEntry() instanceof IUser){
					ivy.session.getSessionUser().createSubstitute(panel.substituteLookupTextField.selectedListEntry as IUser, null, out.remark);
					out.remark = "";	
			}
			
	// substitute for the role
	} else if(panel.roleRadioButton.isSelected()){
		if (panel.substituteLookupTextField.getSelectedListEntry() instanceof IUser && panel.roleLookupTextField.getSelectedListEntry() instanceof IRole)
			{
					ivy.session.getSessionUser().createSubstitute(panel.substituteLookupTextField.selectedListEntry as IUser,panel.roleLookupTextField.selectedListEntry as IRole,out.remark);
					out.remark = "";					
			} else {
				out.errorMessage = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/invalidEntry");
	}
				
	// substitute for all my tasks
	} else if (panel.personalAllRolesRadioButton.isSelected()){
		//Delete all existing substitutions first
		//Then add all roles and personal
		for(IUserSubstitute substitute : in.substituteList){
			ivy.session.getSessionUser().deleteSubstitute(substitute);
		}
		//add all roles
		for(IRole role : in.roleList){
			ivy.session.getSessionUser().createSubstitute(panel.substituteLookupTextField.selectedListEntry as IUser, role, out.remark);
		}
		//add personal
		ivy.session.getSessionUser().createSubstitute(panel.substituteLookupTextField.selectedListEntry as IUser, null, out.remark);
	}
		
}' #txt
Ss0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>createSubstitute</name>
        <nameStyle>16,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f10 302 54 20 20 13 0 #rect
Ss0 f10 @|RichDialogProcessStartIcon #fIcon
Ss0 f12 guid 119910778BC6E4A6 #txt
Ss0 f12 type ch.ivyteam.ivy.workflow.ui.administration.SubstituteDisplayList.SubstituteDisplayListData #txt
Ss0 f12 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.SubstituteDisplayList.SubstituteDisplayListData out;
' #txt
Ss0 f12 actionTable 'out=in;
' #txt
Ss0 f12 actionCode 'import ch.ivyteam.ivy.security.IUserSubstitute;

if (panel.substituteTable.getSelectedListEntry() instanceof IUserSubstitute)
{
	List<IUserSubstitute> selectedSubstitutes;
	selectedSubstitutes.clear();
	selectedSubstitutes.addAll(panel.substituteTable.getSelectedListEntries());
	
	for (IUserSubstitute substitute: selectedSubstitutes)
	{
		ivy.session.getSessionUser().deleteSubstitute(substitute);
	}
}' #txt
Ss0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>deleteSubstitution</name>
        <nameStyle>18,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f12 190 54 20 20 13 0 #rect
Ss0 f12 @|RichDialogProcessStartIcon #fIcon
Ss0 f13 expr out #txt
Ss0 f13 200 74 90 198 #arcP
Ss0 f13 1 200 184 #addKink
Ss0 f13 1 0.2179886437879547 0 0 #arcLabel
Ss0 f14 type ch.ivyteam.ivy.workflow.ui.administration.SubstituteDisplayList.SubstituteDisplayListData #txt
Ss0 f14 guid 12061AE9F1CC040C #txt
Ss0 f14 475 179 26 26 14 0 #rect
Ss0 f14 @|RichDialogEndIcon #fIcon
Ss0 f18 guid 12061AEAA28312E4 #txt
Ss0 f18 type ch.ivyteam.ivy.workflow.ui.administration.SubstituteDisplayList.SubstituteDisplayListData #txt
Ss0 f18 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.SubstituteDisplayList.SubstituteDisplayListData out;
' #txt
Ss0 f18 actionTable 'out=in;
' #txt
Ss0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>exit</name>
        <nameStyle>4,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f18 478 54 20 20 13 0 #rect
Ss0 f18 @|RichDialogProcessStartIcon #fIcon
Ss0 f19 expr out #txt
Ss0 f19 488 74 488 179 #arcP
Ss0 f20 guid 12A3730BE472051E #txt
Ss0 f20 type ch.ivyteam.ivy.workflow.ui.administration.SubstituteDisplayList.SubstituteDisplayListData #txt
Ss0 f20 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.SubstituteDisplayList.SubstituteDisplayListData out;
' #txt
Ss0 f20 actionTable 'out=in;
' #txt
Ss0 f20 actionCode 'panel.addCollapsiblePane.collapsed = !panel.addCollapsiblePane.collapsed;' #txt
Ss0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>cancel</name>
        <nameStyle>6,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f20 582 54 20 20 13 0 #rect
Ss0 f20 @|RichDialogProcessStartIcon #fIcon
Ss0 f21 type ch.ivyteam.ivy.workflow.ui.administration.SubstituteDisplayList.SubstituteDisplayListData #txt
Ss0 f21 582 182 20 20 13 0 #rect
Ss0 f21 @|RichDialogProcessEndIcon #fIcon
Ss0 f22 expr out #txt
Ss0 f22 592 74 592 182 #arcP
Ss0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>entries are valid?</name>
        <nameStyle>18,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f15 type ch.ivyteam.ivy.workflow.ui.administration.SubstituteDisplayList.SubstituteDisplayListData #txt
Ss0 f15 298 122 28 28 14 0 #rect
Ss0 f15 @|AlternativeIcon #fIcon
Ss0 f16 expr out #txt
Ss0 f16 312 74 312 122 #arcP
Ss0 f16 0 0.8981698867940205 0 0 #arcLabel
Ss0 f11 expr in #txt
Ss0 f11 outCond 'panel.substituteLookupTextField.getSelectedListEntry() is initialized &&
(panel.personalRadioButton.isSelected() || 
	(panel.roleRadioButton.isSelected() && panel.roleLookupTextField.getSelectedListEntry() is initialized) ||
	panel.personalAllRolesRadioButton.isSelected()
)' #txt
Ss0 f11 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f11 312 150 90 200 #arcP
Ss0 f11 1 312 200 #addKink
Ss0 f11 1 0.3298071058169641 0 0 #arcLabel
Ss0 f23 type ch.ivyteam.ivy.workflow.ui.administration.SubstituteDisplayList.SubstituteDisplayListData #txt
Ss0 f23 358 270 20 20 13 0 #rect
Ss0 f23 @|RichDialogProcessEndIcon #fIcon
Ss0 f24 expr in #txt
Ss0 f24 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>no</name>
        <nameStyle>2,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f24 326 136 368 270 #arcP
Ss0 f24 1 368 136 #addKink
Ss0 f24 1 0.3582089552238806 0 0 #arcLabel
Ss0 f17 guid 12B2F65100ADFC9A #txt
Ss0 f17 type ch.ivyteam.ivy.workflow.ui.administration.SubstituteDisplayList.SubstituteDisplayListData #txt
Ss0 f17 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.SubstituteDisplayList.SubstituteDisplayListData out;
' #txt
Ss0 f17 actionTable 'out=in;
' #txt
Ss0 f17 actionCode panel.roleRadioButton.setSelected(true); #txt
Ss0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>selectSubstitueRoles</name>
        <nameStyle>20,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f17 910 54 20 20 13 0 #rect
Ss0 f17 @|RichDialogProcessStartIcon #fIcon
Ss0 f25 type ch.ivyteam.ivy.workflow.ui.administration.SubstituteDisplayList.SubstituteDisplayListData #txt
Ss0 f25 910 198 20 20 13 0 #rect
Ss0 f25 @|RichDialogProcessEndIcon #fIcon
Ss0 f26 expr out #txt
Ss0 f26 920 74 920 198 #arcP
>Proto Ss0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Start methods</swimlaneLabel>
        <swimlaneLabel>Events</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>150</swimlaneSize>
    <swimlaneSize>907</swimlaneSize>
    <swimlaneColor>-16711732</swimlaneColor>
    <swimlaneColor>-3355393</swimlaneColor>
</elementInfo>
' #txt
>Proto Ss0 .ui2RdDataAction 'out.errorMessage=panel.errorLabel.text;
out.remark=panel.remarkTextArea.text;
' #txt
>Proto Ss0 .rdData2UIAction 'panel.errorLabel.text=in.errorMessage;
panel.errorLabel.visible=in.errorMessage.length() > 0;
panel.remarkTextArea.text=in.remark;
panel.roleLookupTextField.listData=in.roleList;
panel.saveButton.enabled=in.userNameLoggedOn.length() > 0;
panel.substituteLookupTextField.listData=in.userList;
panel.substituteTable.listData=in.substituteList;
' #txt
>Proto Ss0 .type ch.ivyteam.ivy.workflow.ui.administration.SubstituteDisplayList.SubstituteDisplayListData #txt
>Proto Ss0 .processKind RICH_DIALOG #txt
>Proto Ss0 -8 -8 16 16 16 26 #rect
>Proto Ss0 '' #fIcon
Ss0 f0 mainOut f3 tail #connect
Ss0 f3 head f2 mainIn #connect
Ss0 f2 mainOut f4 tail #connect
Ss0 f4 head f1 mainIn #connect
Ss0 f5 mainOut f7 tail #connect
Ss0 f7 head f6 mainIn #connect
Ss0 f8 mainOut f9 tail #connect
Ss0 f9 head f6 mainIn #connect
Ss0 f12 mainOut f13 tail #connect
Ss0 f13 head f2 mainIn #connect
Ss0 f18 mainOut f19 tail #connect
Ss0 f19 head f14 mainIn #connect
Ss0 f20 mainOut f22 tail #connect
Ss0 f22 head f21 mainIn #connect
Ss0 f10 mainOut f16 tail #connect
Ss0 f16 head f15 in #connect
Ss0 f15 out f11 tail #connect
Ss0 f11 head f2 mainIn #connect
Ss0 f15 out f24 tail #connect
Ss0 f24 head f23 mainIn #connect
Ss0 f17 mainOut f26 tail #connect
Ss0 f26 head f25 mainIn #connect
