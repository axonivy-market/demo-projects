[Ivy]
[>Created: Wed Apr 01 14:37:15 CEST 2009]
11990A5B833D3D80 3.11 #module
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
Ss0 @PushWFArc f11 '' #zField
Ss0 @RichDialogProcessStart f12 '' #zField
Ss0 @PushWFArc f13 '' #zField
Ss0 @RichDialogProcessStart f15 '' #zField
Ss0 @RichDialogProcessEnd f16 '' #zField
Ss0 @PushWFArc f17 '' #zField
Ss0 @RichDialogEnd f14 '' #zField
Ss0 @RichDialogProcessStart f18 '' #zField
Ss0 @PushWFArc f19 '' #zField
>Proto Ss0 Ss0 SubstituteManagementProcess #zField
Ss0 f0 guid 11990B668C81AC8B #txt
Ss0 f0 type ch.ivyteam.ivy.workflow.ui.common.SubstituteManagement.SubstituteManagementData #txt
Ss0 f0 method start() #txt
Ss0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ss0 f0 outParameterDecl '<> result;
' #txt
Ss0 f0 embeddedRdInitializations '{/header {/fieldName "header"/startMethod "start(String,String,String)"/parameterMapping "param.iconUri=\"/ch/ivyteam/ivy/workflow/ui/common/images/substitute48\";\n"/initScript "param.title = ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/substitutesShortDesc\");\nparam.text = ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/substitutesLongDesc\");"}}' #txt
Ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f0 62 54 20 20 13 0 #rect
Ss0 f0 @|RichDialogInitStartIcon #fIcon
Ss0 f1 type ch.ivyteam.ivy.workflow.ui.common.SubstituteManagement.SubstituteManagementData #txt
Ss0 f1 59 267 26 26 14 0 #rect
Ss0 f1 @|RichDialogProcessEndIcon #fIcon
Ss0 f2 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.SubstituteManagement.SubstituteManagementData out;
' #txt
Ss0 f2 actionTable 'out=in;
' #txt
Ss0 f2 actionCode 'import ch.ivyteam.ivy.security.*;
//clear all lists
out.userList.clear();
out.roleList.clear();
out.substituteList.clear();
out.errorMessage = "";

//load all lists
if(!ivy.session.isSessionUserUnknown()){
	for(IUser user : ivy.session.getSecurityContext().getUsers()){
		if(ivy.session.getSessionUser().getName().equals(user.getName())){
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


' #txt
Ss0 f2 type ch.ivyteam.ivy.workflow.ui.common.SubstituteManagement.SubstituteManagementData #txt
Ss0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ss0 f2 54 188 36 24 20 -2 #rect
Ss0 f2 @|RichDialogProcessStepIcon #fIcon
Ss0 f3 expr out #txt
Ss0 f3 72 74 72 188 #arcP
Ss0 f4 expr out #txt
Ss0 f4 72 212 72 267 #arcP
Ss0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>toggleAdd</name>
        <nameStyle>9,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f5 guid 11990C09536F6D63 #txt
Ss0 f5 type ch.ivyteam.ivy.workflow.ui.common.SubstituteManagement.SubstituteManagementData #txt
Ss0 f5 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.SubstituteManagement.SubstituteManagementData out;
' #txt
Ss0 f5 actionTable 'out=in;
' #txt
Ss0 f5 actionCode 'panel.addCollapsiblePane.collapsed = !panel.addCollapsiblePane.collapsed;
' #txt
Ss0 f5 62 342 20 20 13 0 #rect
Ss0 f5 @|RichDialogProcessStartIcon #fIcon
Ss0 f6 type ch.ivyteam.ivy.workflow.ui.common.SubstituteManagement.SubstituteManagementData #txt
Ss0 f6 59 411 26 26 14 0 #rect
Ss0 f6 @|RichDialogProcessEndIcon #fIcon
Ss0 f7 expr out #txt
Ss0 f7 72 362 72 411 #arcP
Ss0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>enableDelete</name>
        <nameStyle>12,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f8 guid 11990C155E6866FB #txt
Ss0 f8 type ch.ivyteam.ivy.workflow.ui.common.SubstituteManagement.SubstituteManagementData #txt
Ss0 f8 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.SubstituteManagement.SubstituteManagementData out;
' #txt
Ss0 f8 actionTable 'out=in;
' #txt
Ss0 f8 actionCode 'import ch.ivyteam.ivy.security.*;

if(panel.substituteTable.getSelectedListEntry() instanceof IUserSubstitute){
	panel.deleteButton.enabled = true;
	}
' #txt
Ss0 f8 158 342 20 20 13 0 #rect
Ss0 f8 @|RichDialogProcessStartIcon #fIcon
Ss0 f9 expr out #txt
Ss0 f9 160 358 82 416 #arcP
Ss0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>saveSubstitute</name>
        <nameStyle>14,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f10 guid 11990C34EB9A20CD #txt
Ss0 f10 type ch.ivyteam.ivy.workflow.ui.common.SubstituteManagement.SubstituteManagementData #txt
Ss0 f10 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.SubstituteManagement.SubstituteManagementData out;
' #txt
Ss0 f10 actionTable 'out=in;
' #txt
Ss0 f10 actionCode 'import ch.ivyteam.ivy.security.*;

//reset error message
out.errorMessage = "";

if (!ivy.session.isSessionUserUnknown()){

	if(panel.roleRadioButton.isSelected()){
	
		if (panel.substituteComboBox.getSelectedListEntry() instanceof IUser && panel.roleComboBox.getSelectedListEntry() instanceof IRole)
			{
					ivy.session.getSessionUser().createSubstitute(panel.substituteComboBox.selectedListEntry as IUser,panel.roleComboBox.selectedListEntry as IRole,out.remark);
			} else {
				out.errorMessage = "an error occured";
				}
	} else if (panel.personalRadioButton.isSelected()){
			if (panel.substituteComboBox.getSelectedListEntry() instanceof IUser){
					ivy.session.getSessionUser().createSubstitute(panel.substituteComboBox.selectedListEntry as IUser,null,out.remark);	
			}
	} else if (panel.personalAllRolesRadioButton.isSelected()){
		//Delete all existing substitutions first
		//Then add person and all roles
		for(IUserSubstitute substitute : in.substituteList){
			ivy.session.getSessionUser().deleteSubstitute(substitute);
		}
		//add all roles
		for(IRole role : in.roleList){
			ivy.session.getSessionUser().createSubstitute(panel.substituteComboBox.selectedListEntry as IUser,role,out.remark);
		}
		//add personal
		ivy.session.getSessionUser().createSubstitute(panel.substituteComboBox.selectedListEntry as IUser,null,out.remark);
	}
}' #txt
Ss0 f10 158 54 20 20 13 0 #rect
Ss0 f10 @|RichDialogProcessStartIcon #fIcon
Ss0 f11 expr out #txt
Ss0 f11 162 72 80 188 #arcP
Ss0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>deleteSubstitution</name>
        <nameStyle>18,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f12 guid 119910778BC6E4A6 #txt
Ss0 f12 type ch.ivyteam.ivy.workflow.ui.common.SubstituteManagement.SubstituteManagementData #txt
Ss0 f12 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.SubstituteManagement.SubstituteManagementData out;
' #txt
Ss0 f12 actionTable 'out=in;
' #txt
Ss0 f12 actionCode 'import ch.ivyteam.ivy.security.*;

if(panel.substituteTable.getSelectedListEntry() instanceof IUserSubstitute){
	ivy.session.getSessionUser().deleteSubstitute(panel.substituteTable.getSelectedListEntry() as IUserSubstitute);
	}' #txt
Ss0 f12 270 54 20 20 13 0 #rect
Ss0 f12 @|RichDialogProcessStartIcon #fIcon
Ss0 f13 expr out #txt
Ss0 f13 271 69 90 188 #arcP
Ss0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>onLoad</name>
        <nameStyle>6,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f15 guid 11DD58105917B66B #txt
Ss0 f15 type ch.ivyteam.ivy.workflow.ui.common.SubstituteManagement.SubstituteManagementData #txt
Ss0 f15 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.SubstituteManagement.SubstituteManagementData out;
' #txt
Ss0 f15 actionTable 'out=in;
' #txt
Ss0 f15 actionCode 'import com.ulcjava.base.application.border.ULCTitledBorder;


if (panel.addGridBagLayoutPane.getBorder() instanceof ULCTitledBorder)
{
	(panel.addGridBagLayoutPane.getBorder() as ULCTitledBorder).setTitle(ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/addSubstitute"));
}


if (panel.ScrollPane.getBorder() instanceof ULCTitledBorder)
{
	(panel.ScrollPane.getBorder() as ULCTitledBorder).setTitle(ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/activeSubstitutions"));
}' #txt
Ss0 f15 334 126 20 20 13 0 #rect
Ss0 f15 @|RichDialogProcessStartIcon #fIcon
Ss0 f16 type ch.ivyteam.ivy.workflow.ui.common.SubstituteManagement.SubstituteManagementData #txt
Ss0 f16 331 251 26 26 14 0 #rect
Ss0 f16 @|RichDialogProcessEndIcon #fIcon
Ss0 f17 expr out #txt
Ss0 f17 344 146 344 251 #arcP
Ss0 f14 type ch.ivyteam.ivy.workflow.ui.common.SubstituteManagement.SubstituteManagementData #txt
Ss0 f14 guid 12061AE9F1CC040C #txt
Ss0 f14 483 251 26 26 14 0 #rect
Ss0 f14 @|RichDialogEndIcon #fIcon
Ss0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>exit</name>
        <nameStyle>4,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f18 guid 12061AEAA28312E4 #txt
Ss0 f18 type ch.ivyteam.ivy.workflow.ui.common.SubstituteManagement.SubstituteManagementData #txt
Ss0 f18 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.SubstituteManagement.SubstituteManagementData out;
' #txt
Ss0 f18 actionTable 'out=in;
' #txt
Ss0 f18 486 126 20 20 13 0 #rect
Ss0 f18 @|RichDialogProcessStartIcon #fIcon
Ss0 f19 expr out #txt
Ss0 f19 496 146 496 251 #arcP
>Proto Ss0 .ui2RdDataAction 'out.errorMessage=panel.errorLabel.text;
out.userNameLoggedOn=panel.personalRadioButton.text;
out.remark=panel.remarkTextArea.text;
' #txt
>Proto Ss0 .rdData2UIAction 'panel.errorLabel.text=in.errorMessage;
panel.errorLabel.visible=in.errorMessage.length() > 0;
panel.personalAllRolesRadioButton.text=in.userNameLoggedOn + " " + ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/andAllRoles");
panel.personalRadioButton.text=in.userNameLoggedOn;
panel.remarkTextArea.text=in.remark;
panel.roleComboBox.listData=in.roleList;
panel.saveButton.enabled=in.userNameLoggedOn.length() > 0;
panel.substituteComboBox.listData=in.userList;
panel.substituteTable.listData=in.substituteList;
' #txt
>Proto Ss0 .type ch.ivyteam.ivy.workflow.ui.common.SubstituteManagement.SubstituteManagementData #txt
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
Ss0 f10 mainOut f11 tail #connect
Ss0 f11 head f2 mainIn #connect
Ss0 f12 mainOut f13 tail #connect
Ss0 f13 head f2 mainIn #connect
Ss0 f15 mainOut f17 tail #connect
Ss0 f17 head f16 mainIn #connect
Ss0 f18 mainOut f19 tail #connect
Ss0 f19 head f14 mainIn #connect
