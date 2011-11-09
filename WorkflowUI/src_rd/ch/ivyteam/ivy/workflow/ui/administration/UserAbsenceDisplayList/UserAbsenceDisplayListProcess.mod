[Ivy]
[>Created: Wed Nov 09 15:21:29 CET 2011]
1308A975564BB7D8 3.17 #module
>Proto >Proto Collection #zClass
As0 AbsenceManagementProcess Big #zClass
As0 RD #cInfo
As0 #process
As0 @TextInP .xml .xml #zField
As0 @TextInP .responsibility .responsibility #zField
As0 @AnnotationInP-0n ai ai #zField
As0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
As0 @TextInP .rdData2UIAction .rdData2UIAction #zField
As0 @MessageFlowInP-0n messageIn messageIn #zField
As0 @MessageFlowOutP-0n messageOut messageOut #zField
As0 @TextInP .resExport .resExport #zField
As0 @TextInP .type .type #zField
As0 @TextInP .processKind .processKind #zField
As0 @RichDialogInitStart f0 '' #zField
As0 @RichDialogProcessEnd f1 '' #zField
As0 @RichDialogProcessStep f3 '' #zField
As0 @RichDialogProcessStart f5 '' #zField
As0 @RichDialogProcessStart f6 '' #zField
As0 @RichDialogProcessStart f9 '' #zField
As0 @RichDialogProcessEnd f10 '' #zField
As0 @RichDialogProcessStart f12 '' #zField
As0 @RichDialogProcessStart f21 '' #zField
As0 @RichDialogProcessStep f22 '' #zField
As0 @PushWFArc f24 '' #zField
As0 @PushWFArc f25 '' #zField
As0 @RichDialogProcessEnd f26 '' #zField
As0 @PushWFArc f27 '' #zField
As0 @PushWFArc f13 '' #zField
As0 @Alternative f11 '' #zField
As0 @PushWFArc f20 '' #zField
As0 @RichDialogProcessStart f28 '' #zField
As0 @RichDialogProcessEnd f29 '' #zField
As0 @PushWFArc f30 '' #zField
As0 @RichDialogProcessStep f31 '' #zField
As0 @PushWFArc f32 '' #zField
As0 @RichDialogInitStart f14 '' #zField
As0 @RichDialogMethodStart f15 '' #zField
As0 @RichDialogProcessEnd f16 '' #zField
As0 @PushWFArc f33 '' #zField
As0 @RichDialogProcessStep f4 '' #zField
As0 @PushWFArc f35 '' #zField
As0 @RichDialogMethodStart f37 '' #zField
As0 @PushWFArc f39 '' #zField
As0 @PushWFArc f36 '' #zField
As0 @RichDialogProcessEnd f23 '' #zField
As0 @PushWFArc f40 '' #zField
As0 @PushWFArc f2 '' #zField
As0 @RichDialogProcessStep f7 '' #zField
As0 @PushWFArc f41 '' #zField
As0 @PushWFArc f42 '' #zField
As0 @RichDialogMethodStart f8 '' #zField
As0 @RichDialogMethodStart f43 '' #zField
As0 @RichDialogProcessEnd f44 '' #zField
As0 @PushWFArc f46 '' #zField
As0 @RichDialogProcessStep f47 '' #zField
As0 @PushWFArc f48 '' #zField
As0 @PushWFArc f45 '' #zField
As0 @RichDialogProcessStep f49 '' #zField
As0 @PushWFArc f50 '' #zField
As0 @PushWFArc f34 '' #zField
As0 @PushWFArc f51 '' #zField
As0 @RichDialogMethodStart f38 '' #zField
As0 @RichDialogEnd f52 '' #zField
As0 @PushWFArc f53 '' #zField
>Proto As0 As0 AbsenceManagementProcess #zField
As0 f0 guid 1198ABD3DECFDD60 #txt
As0 f0 type ch.ivyteam.ivy.workflow.ui.administration.UserAbsenceDisplayList.UserAbsenceDisplayListData #txt
As0 f0 method start() #txt
As0 f0 disableUIEvents false #txt
As0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
As0 f0 inParameterMapAction 'out.end=new Date().add(new Duration(0,0,2,0,0,0));
out.start=new Date().add(new Duration(0,0,1,0,0,0));
' #txt
As0 f0 outParameterDecl '<> result;
' #txt
As0 f0 embeddedRdInitializations '{/header {/fieldName "header"/startMethod "start(String,String,String)"/parameterMapping "param.iconUri=\"/ch/ivyteam/ivy/workflow/ui/administration/images/absence48\";\n"/initScript "param.title = ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/absenceShortDesc\");\nparam.text = ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/absenceLongDesc\");\n"/userContext * }}' #txt
As0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f0 38 46 20 20 13 0 #rect
As0 f0 @|RichDialogInitStartIcon #fIcon
As0 f1 type ch.ivyteam.ivy.workflow.ui.administration.UserAbsenceDisplayList.UserAbsenceDisplayListData #txt
As0 f1 35 203 26 26 14 0 #rect
As0 f1 @|RichDialogProcessEndIcon #fIcon
As0 f3 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.UserAbsenceDisplayList.UserAbsenceDisplayListData out;
' #txt
As0 f3 actionTable 'out=in;
' #txt
As0 f3 actionCode 'import ch.ivyteam.ivy.workflow.ui.utils.UserAbsenceHelper;
import com.ulcjava.base.application.ULCContainer;
import com.ulcjava.base.application.ULCTabbedPane;


// update the bullet on tab
ULCContainer parent = panel.getParent();

if (parent instanceof ULCTabbedPane && (parent as ULCTabbedPane).getSelectedComponent().equals(panel))
{
	int index = (parent as ULCTabbedPane).getSelectedIndex();
	(parent as ULCTabbedPane).setTitleAt(index, 
																				ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/absenceShortDesc") + 
																				(in.absenceList.isEmpty()? "": " \u2022"));
	
}' #txt
As0 f3 type ch.ivyteam.ivy.workflow.ui.administration.UserAbsenceDisplayList.UserAbsenceDisplayListData #txt
As0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>try to update 
the tab''s bullet</name>
        <nameStyle>31,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f3 630 100 36 24 20 -2 #rect
As0 f3 @|RichDialogProcessStepIcon #fIcon
As0 f5 guid 1198AC930B34DDE8 #txt
As0 f5 type ch.ivyteam.ivy.workflow.ui.administration.UserAbsenceDisplayList.UserAbsenceDisplayListData #txt
As0 f5 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.UserAbsenceDisplayList.UserAbsenceDisplayListData out;
' #txt
As0 f5 actionTable 'out=in;
' #txt
As0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>add Absence</name>
        <nameStyle>11,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f5 1006 46 20 20 13 0 #rect
As0 f5 @|RichDialogProcessStartIcon #fIcon
As0 f6 guid 1198ADADD5CB5C0C #txt
As0 f6 type ch.ivyteam.ivy.workflow.ui.administration.UserAbsenceDisplayList.UserAbsenceDisplayListData #txt
As0 f6 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.UserAbsenceDisplayList.UserAbsenceDisplayListData out;
' #txt
As0 f6 actionTable 'out=in;
' #txt
As0 f6 actionCode 'import ch.ivyteam.ivy.workflow.ui.utils.UserAbsenceHelper;
import ch.ivyteam.ivy.security.IUserAbsence;

// delete the selected absences
List userAbsences = panel.absenceTable.getSelectedListEntries();


for (Object userAbsence: userAbsences)
{

	if(userAbsence instanceof IUserAbsence)
	{
			UserAbsenceHelper.deleteAbsence(in.user, userAbsence as IUserAbsence);
	}
	
}' #txt
As0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>delete Absence</name>
        <nameStyle>14,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f6 814 46 20 20 13 0 #rect
As0 f6 @|RichDialogProcessStartIcon #fIcon
As0 f9 guid 1198AE1D23E153E4 #txt
As0 f9 type ch.ivyteam.ivy.workflow.ui.administration.UserAbsenceDisplayList.UserAbsenceDisplayListData #txt
As0 f9 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.UserAbsenceDisplayList.UserAbsenceDisplayListData out;
' #txt
As0 f9 actionTable 'out=in;
' #txt
As0 f9 actionCode '
' #txt
As0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>toggleCollapse</name>
        <nameStyle>14,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f9 1190 46 20 20 13 0 #rect
As0 f9 @|RichDialogProcessStartIcon #fIcon
As0 f10 type ch.ivyteam.ivy.workflow.ui.administration.UserAbsenceDisplayList.UserAbsenceDisplayListData #txt
As0 f10 1187 211 26 26 14 0 #rect
As0 f10 @|RichDialogProcessEndIcon #fIcon
As0 f12 guid 1198AE6A9324CDF0 #txt
As0 f12 type ch.ivyteam.ivy.workflow.ui.administration.UserAbsenceDisplayList.UserAbsenceDisplayListData #txt
As0 f12 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.UserAbsenceDisplayList.UserAbsenceDisplayListData out;
' #txt
As0 f12 actionTable 'out=in;
' #txt
As0 f12 actionCode 'if(panel.absenceTable.getSelectedListEntry() instanceof ch.ivyteam.ivy.security.IUserAbsence){
	panel.deleteButton.enabled = true;
	}' #txt
As0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>enableDelete</name>
        <nameStyle>12,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f12 1526 46 20 20 13 0 #rect
As0 f12 @|RichDialogProcessStartIcon #fIcon
As0 f21 guid 12A333B1D13C3420 #txt
As0 f21 type ch.ivyteam.ivy.workflow.ui.administration.UserAbsenceDisplayList.UserAbsenceDisplayListData #txt
As0 f21 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.UserAbsenceDisplayList.UserAbsenceDisplayListData out;
' #txt
As0 f21 actionTable 'out=in;
' #txt
As0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>cancel</name>
        <nameStyle>6,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f21 1294 46 20 20 13 0 #rect
As0 f21 @|RichDialogProcessStartIcon #fIcon
As0 f22 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.UserAbsenceDisplayList.UserAbsenceDisplayListData out;
' #txt
As0 f22 actionTable 'out=in;
' #txt
As0 f22 actionCode 'panel.addCollapsiblePane.collapsed = !panel.addCollapsiblePane.collapsed;' #txt
As0 f22 type ch.ivyteam.ivy.workflow.ui.administration.UserAbsenceDisplayList.UserAbsenceDisplayListData #txt
As0 f22 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>toggleCollapse</name>
        <nameStyle>14,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f22 1182 140 36 24 20 -2 #rect
As0 f22 @|RichDialogProcessStepIcon #fIcon
As0 f24 expr out #txt
As0 f24 1200 164 1200 211 #arcP
As0 f25 expr out #txt
As0 f25 1304 66 1218 149 #arcP
As0 f25 1 1304 136 #addKink
As0 f25 1 0.09143200660011759 0 0 #arcLabel
As0 f26 type ch.ivyteam.ivy.workflow.ui.administration.UserAbsenceDisplayList.UserAbsenceDisplayListData #txt
As0 f26 1526 222 20 20 13 0 #rect
As0 f26 @|RichDialogProcessEndIcon #fIcon
As0 f27 expr out #txt
As0 f27 1536 66 1536 222 #arcP
As0 f13 expr out #txt
As0 f13 1200 66 1200 140 #arcP
As0 f11 type ch.ivyteam.ivy.workflow.ui.administration.UserAbsenceDisplayList.UserAbsenceDisplayListData #txt
As0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>description
is set?</name>
        <nameStyle>12,7,9
7,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f11 1002 82 28 28 14 0 #rect
As0 f11 @|AlternativeIcon #fIcon
As0 f20 expr out #txt
As0 f20 1016 66 1016 82 #arcP
As0 f28 guid 12A37D2E575B0F5A #txt
As0 f28 type ch.ivyteam.ivy.workflow.ui.administration.UserAbsenceDisplayList.UserAbsenceDisplayListData #txt
As0 f28 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.UserAbsenceDisplayList.UserAbsenceDisplayListData out;
' #txt
As0 f28 actionTable 'out=in;
' #txt
As0 f28 actionCode 'out.end = in.start;' #txt
As0 f28 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>incrementEndDate</name>
        <nameStyle>16,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f28 1374 46 20 20 13 0 #rect
As0 f28 @|RichDialogProcessStartIcon #fIcon
As0 f29 type ch.ivyteam.ivy.workflow.ui.administration.UserAbsenceDisplayList.UserAbsenceDisplayListData #txt
As0 f29 1374 222 20 20 13 0 #rect
As0 f29 @|RichDialogProcessEndIcon #fIcon
As0 f30 expr out #txt
As0 f30 1384 66 1384 222 #arcP
As0 f31 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.UserAbsenceDisplayList.UserAbsenceDisplayListData out;
' #txt
As0 f31 actionTable 'out=in;
' #txt
As0 f31 actionCode 'import ch.ivyteam.ivy.workflow.ui.utils.UserAbsenceHelper;

// create absence
UserAbsenceHelper.createAbsence(in.user, in.start, in.end, in.description);
in.description = "";

// load user absences
panel._loadUserAbsences();

panel.addCollapsiblePane.collapsed = true;

// update the bullet on tab
if (in.headerVisible)
{
	panel._updateBulletOnTab();	
}' #txt
As0 f31 type ch.ivyteam.ivy.workflow.ui.administration.UserAbsenceDisplayList.UserAbsenceDisplayListData #txt
As0 f31 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>create absence,
load user absences,
collapse the add area,
update the 
bullet on tab</name>
        <nameStyle>84,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f31 998 140 36 24 20 -2 #rect
As0 f31 @|RichDialogProcessStepIcon #fIcon
As0 f32 expr in #txt
As0 f32 outCond 'in.description.length() > 0' #txt
As0 f32 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f32 1016 110 1016 140 #arcP
As0 f32 0 0.45454545454545453 0 0 #arcLabel
As0 f14 guid 1308AB83136446E2 #txt
As0 f14 type ch.ivyteam.ivy.workflow.ui.administration.UserAbsenceDisplayList.UserAbsenceDisplayListData #txt
As0 f14 method start(ch.ivyteam.ivy.security.IUser,Boolean) #txt
As0 f14 disableUIEvents true #txt
As0 f14 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.security.IUser user,java.lang.Boolean headerVisible> param = methodEvent.getInputArguments();
' #txt
As0 f14 inActionCode 'out.user = param.user;
out.headerVisible = param.headerVisible;' #txt
As0 f14 outParameterDecl '<> result;
' #txt
As0 f14 embeddedRdInitializations '{/header {/fieldName "header"/startMethod "start(String,String,String)"/parameterMapping ""/initScript "param.iconUri = \"/ch/ivyteam/ivy/workflow/ui/administration/images/absence48\";\nparam.title = ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/myAbsenceShortDesc\");\nparam.text = ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/myAbsenceLongDesc\");"/userContext * }}' #txt
As0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(IUser,Boolean)</name>
        <nameStyle>20,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f14 126 46 20 20 13 0 #rect
As0 f14 @|RichDialogInitStartIcon #fIcon
As0 f15 guid 1308ABB300E46D56 #txt
As0 f15 type ch.ivyteam.ivy.workflow.ui.administration.UserAbsenceDisplayList.UserAbsenceDisplayListData #txt
As0 f15 method _loadUserAbsences() #txt
As0 f15 disableUIEvents false #txt
As0 f15 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
As0 f15 inActionCode 'import ch.ivyteam.ivy.workflow.ui.utils.UserAbsenceHelper;


out.errorMessage = "";//Reset Error
if(out.#user is initialized){
	
	out.absenceList.clear();
	out.absenceList.addAll(UserAbsenceHelper.getAbsences(out.user));
} else {
	out.errorMessage = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/enduser/messages/notLoggedIn")	;

}
panel.addCollapsiblePane.setCollapsed(true);
panel.deleteButton.enabled = false;
' #txt
As0 f15 outParameterDecl '<> result;
' #txt
As0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>_loadUserAbsences()</name>
        <nameStyle>19,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f15 502 46 20 20 13 0 #rect
As0 f15 @|RichDialogMethodStartIcon #fIcon
As0 f16 type ch.ivyteam.ivy.workflow.ui.administration.UserAbsenceDisplayList.UserAbsenceDisplayListData #txt
As0 f16 502 214 20 20 13 0 #rect
As0 f16 @|RichDialogProcessEndIcon #fIcon
As0 f33 expr out #txt
As0 f33 512 66 512 214 #arcP
As0 f4 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.UserAbsenceDisplayList.UserAbsenceDisplayListData out;
' #txt
As0 f4 actionTable 'out=in;
' #txt
As0 f4 actionCode 'panel._loadUserAbsences();

panel._updateBulletOnTab();' #txt
As0 f4 type ch.ivyteam.ivy.workflow.ui.administration.UserAbsenceDisplayList.UserAbsenceDisplayListData #txt
As0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>call _loadUserAbsences()
call _updateBulletOnTab()</name>
        <nameStyle>50,6
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f4 118 92 36 24 20 -2 #rect
As0 f4 @|RichDialogProcessStepIcon #fIcon
As0 f35 expr out #txt
As0 f35 136 66 136 92 #arcP
As0 f37 guid 1308AC994F8E51E5 #txt
As0 f37 type ch.ivyteam.ivy.workflow.ui.administration.UserAbsenceDisplayList.UserAbsenceDisplayListData #txt
As0 f37 method _updateBulletOnTab() #txt
As0 f37 disableUIEvents false #txt
As0 f37 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>_updateBulletOnTab()</name>
    </language>
</elementInfo>
' #txt
As0 f37 638 46 20 20 13 0 #rect
As0 f37 @|RichDialogMethodStartIcon #fIcon
As0 f39 expr out #txt
As0 f39 648 66 648 100 #arcP
As0 f36 expr out #txt
As0 f36 648 124 521 221 #arcP
As0 f36 1 648 192 #addKink
As0 f36 1 0.23627676812468074 0 0 #arcLabel
As0 f23 type ch.ivyteam.ivy.workflow.ui.administration.UserAbsenceDisplayList.UserAbsenceDisplayListData #txt
As0 f23 814 214 20 20 13 0 #rect
As0 f23 @|RichDialogProcessEndIcon #fIcon
As0 f40 expr in #txt
As0 f40 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>no</name>
        <nameStyle>2,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f40 1030 96 834 224 #arcP
As0 f40 1 1160 96 #addKink
As0 f40 2 1160 224 #addKink
As0 f40 1 0.7692554606649319 0 0 #arcLabel
As0 f2 expr out #txt
As0 f2 1016 164 833 223 #arcP
As0 f2 1 1016 208 #addKink
As0 f2 1 0.31556949736442247 0 0 #arcLabel
As0 f7 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.UserAbsenceDisplayList.UserAbsenceDisplayListData out;
' #txt
As0 f7 actionTable 'out=in;
' #txt
As0 f7 actionCode 'import ch.ivyteam.ivy.workflow.ui.utils.UserAbsenceHelper;

// load user absences
panel._loadUserAbsences();

// update the bullet on tab
if (in.headerVisible)
{
	panel._updateBulletOnTab();	
}' #txt
As0 f7 type ch.ivyteam.ivy.workflow.ui.administration.UserAbsenceDisplayList.UserAbsenceDisplayListData #txt
As0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load user absences
update the bullet on tab</name>
        <nameStyle>43,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f7 806 116 36 24 20 -2 #rect
As0 f7 @|RichDialogProcessStepIcon #fIcon
As0 f41 expr out #txt
As0 f41 824 66 824 116 #arcP
As0 f41 0 0.8836792657897309 0 0 #arcLabel
As0 f42 expr out #txt
As0 f42 824 140 824 214 #arcP
As0 f42 0 0.18117966465176807 0 0 #arcLabel
As0 f8 guid 1308AE47BD5D393F #txt
As0 f8 type ch.ivyteam.ivy.workflow.ui.administration.UserAbsenceDisplayList.UserAbsenceDisplayListData #txt
As0 f8 method setUser(ch.ivyteam.ivy.security.IUser) #txt
As0 f8 disableUIEvents false #txt
As0 f8 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.security.IUser user> param = methodEvent.getInputArguments();
' #txt
As0 f8 inActionCode 'out.user = param.user;' #txt
As0 f8 outParameterDecl '<> result;
' #txt
As0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setUser(IUser)</name>
        <nameStyle>14,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f8 318 46 20 20 13 0 #rect
As0 f8 @|RichDialogMethodStartIcon #fIcon
As0 f43 guid 1308AE4A68B7A672 #txt
As0 f43 type ch.ivyteam.ivy.workflow.ui.administration.UserAbsenceDisplayList.UserAbsenceDisplayListData #txt
As0 f43 method getUser() #txt
As0 f43 disableUIEvents false #txt
As0 f43 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
As0 f43 outParameterDecl '<ch.ivyteam.ivy.security.IUser user> result;
' #txt
As0 f43 outActionCode 'result.user = in.user;' #txt
As0 f43 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>getUser()</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f43 422 46 20 20 13 0 #rect
As0 f43 @|RichDialogMethodStartIcon #fIcon
As0 f44 type ch.ivyteam.ivy.workflow.ui.administration.UserAbsenceDisplayList.UserAbsenceDisplayListData #txt
As0 f44 318 214 20 20 13 0 #rect
As0 f44 @|RichDialogProcessEndIcon #fIcon
As0 f46 expr out #txt
As0 f46 432 66 337 221 #arcP
As0 f46 1 432 200 #addKink
As0 f46 0 0.8424701208937554 0 0 #arcLabel
As0 f47 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.UserAbsenceDisplayList.UserAbsenceDisplayListData out;
' #txt
As0 f47 actionTable 'out=in;
' #txt
As0 f47 actionCode 'panel._loadUserAbsences();

panel._updateBulletOnTab();' #txt
As0 f47 type ch.ivyteam.ivy.workflow.ui.administration.UserAbsenceDisplayList.UserAbsenceDisplayListData #txt
As0 f47 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>call _loadUserAbsences()
call _updateBulletOnTab()</name>
        <nameStyle>50,6
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f47 310 116 36 24 20 -2 #rect
As0 f47 @|RichDialogProcessStepIcon #fIcon
As0 f48 expr out #txt
As0 f48 328 66 328 116 #arcP
As0 f45 expr out #txt
As0 f45 328 140 328 214 #arcP
As0 f49 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.UserAbsenceDisplayList.UserAbsenceDisplayListData out;
' #txt
As0 f49 actionTable 'out=in;
' #txt
As0 f49 actionCode 'out.start = new Date();
out.end = out.start;
panel.addCollapsiblePane.collapsed = true;' #txt
As0 f49 type ch.ivyteam.ivy.workflow.ui.administration.UserAbsenceDisplayList.UserAbsenceDisplayListData #txt
As0 f49 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set start and end date by default
callapse the add absence</name>
        <nameStyle>58,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f49 30 156 36 24 20 -2 #rect
As0 f49 @|RichDialogProcessStepIcon #fIcon
As0 f50 expr out #txt
As0 f50 48 66 48 156 #arcP
As0 f34 expr out #txt
As0 f34 48 180 48 203 #arcP
As0 f51 expr out #txt
As0 f51 136 116 66 165 #arcP
As0 f51 1 136 152 #addKink
As0 f51 0 0.8436199544411794 0 0 #arcLabel
As0 f38 guid 13290F80F7A364A5 #txt
As0 f38 type ch.ivyteam.ivy.workflow.ui.administration.UserAbsenceDisplayList.UserAbsenceDisplayListData #txt
As0 f38 method close() #txt
As0 f38 disableUIEvents false #txt
As0 f38 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close()</name>
    </language>
</elementInfo>
' #txt
As0 f38 318 318 20 20 13 0 #rect
As0 f38 @|RichDialogMethodStartIcon #fIcon
As0 f52 type ch.ivyteam.ivy.workflow.ui.administration.UserAbsenceDisplayList.UserAbsenceDisplayListData #txt
As0 f52 guid 13290F819E16C213 #txt
As0 f52 318 430 20 20 13 0 #rect
As0 f52 @|RichDialogEndIcon #fIcon
As0 f53 expr out #txt
As0 f53 328 338 328 430 #arcP
>Proto As0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Start methods</swimlaneLabel>
        <swimlaneLabel>Methods</swimlaneLabel>
        <swimlaneLabel>Events</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>282</swimlaneSize>
    <swimlaneSize>509</swimlaneSize>
    <swimlaneSize>906</swimlaneSize>
    <swimlaneColor>-16711732</swimlaneColor>
    <swimlaneColor>-16724890</swimlaneColor>
    <swimlaneColor>-3355393</swimlaneColor>
</elementInfo>
' #txt
>Proto As0 .ui2RdDataAction 'out.description=panel.descTextField.text;
out.end=panel.endDatePicker.valueAsDate;
out.start=panel.startDatePicker.valueAsDate;
' #txt
>Proto As0 .rdData2UIAction 'panel.absenceTable.listData=in.absenceList;
panel.descTextField.text=in.description;
panel.endDatePicker.valueAsDate=in.end;
panel.errorMessageLabel.text=in.errorMessage;
panel.errorMessageLabel.visible=in.errorMessage.length() > 0;
panel.headerBoxPane.visible=in.headerVisible;
panel.startDatePicker.valueAsDate=in.start;
' #txt
>Proto As0 .type ch.ivyteam.ivy.workflow.ui.administration.UserAbsenceDisplayList.UserAbsenceDisplayListData #txt
>Proto As0 .processKind RICH_DIALOG #txt
>Proto As0 -8 -8 16 16 16 26 #rect
>Proto As0 '' #fIcon
As0 f22 mainOut f24 tail #connect
As0 f24 head f10 mainIn #connect
As0 f21 mainOut f25 tail #connect
As0 f25 head f22 mainIn #connect
As0 f12 mainOut f27 tail #connect
As0 f27 head f26 mainIn #connect
As0 f9 mainOut f13 tail #connect
As0 f13 head f22 mainIn #connect
As0 f5 mainOut f20 tail #connect
As0 f20 head f11 in #connect
As0 f28 mainOut f30 tail #connect
As0 f30 head f29 mainIn #connect
As0 f11 out f32 tail #connect
As0 f32 head f31 mainIn #connect
As0 f15 mainOut f33 tail #connect
As0 f33 head f16 mainIn #connect
As0 f14 mainOut f35 tail #connect
As0 f35 head f4 mainIn #connect
As0 f37 mainOut f39 tail #connect
As0 f39 head f3 mainIn #connect
As0 f3 mainOut f36 tail #connect
As0 f36 head f16 mainIn #connect
As0 f11 out f40 tail #connect
As0 f40 head f23 mainIn #connect
As0 f31 mainOut f2 tail #connect
As0 f2 head f23 mainIn #connect
As0 f6 mainOut f41 tail #connect
As0 f41 head f7 mainIn #connect
As0 f7 mainOut f42 tail #connect
As0 f42 head f23 mainIn #connect
As0 f43 mainOut f46 tail #connect
As0 f46 head f44 mainIn #connect
As0 f8 mainOut f48 tail #connect
As0 f48 head f47 mainIn #connect
As0 f47 mainOut f45 tail #connect
As0 f45 head f44 mainIn #connect
As0 f0 mainOut f50 tail #connect
As0 f50 head f49 mainIn #connect
As0 f49 mainOut f34 tail #connect
As0 f34 head f1 mainIn #connect
As0 f4 mainOut f51 tail #connect
As0 f51 head f49 mainIn #connect
As0 f38 mainOut f53 tail #connect
As0 f53 head f52 mainIn #connect
