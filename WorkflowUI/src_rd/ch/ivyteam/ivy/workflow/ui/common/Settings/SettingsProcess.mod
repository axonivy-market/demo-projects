[Ivy]
[>Created: Tue May 05 17:06:30 CEST 2009]
11989D8A7D57C7CA 3.11 #module
>Proto >Proto Collection #zClass
Ss0 SettingsProcess Big #zClass
Ss0 RD #cInfo
Ss0 #process
Ss0 @MessageFlowInP-0n messageIn messageIn #zField
Ss0 @MessageFlowOutP-0n messageOut messageOut #zField
Ss0 @AnnotationInP-0n ai ai #zField
Ss0 @TextInP .xml .xml #zField
Ss0 @TextInP .responsibility .responsibility #zField
Ss0 @TextInP .resExport .resExport #zField
Ss0 @TextInP .type .type #zField
Ss0 @TextInP .processKind .processKind #zField
Ss0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ss0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ss0 @RichDialogProcessEnd f1 '' #zField
Ss0 @RichDialogProcessStart f3 '' #zField
Ss0 @RichDialogProcessEnd f4 '' #zField
Ss0 @RichDialogProcessStep f6 '' #zField
Ss0 @RichDialogProcessStep f8 '' #zField
Ss0 @PushWFArc f9 '' #zField
Ss0 @Alternative f7 '' #zField
Ss0 @PushWFArc f10 '' #zField
Ss0 @PushWFArc f12 '' #zField
Ss0 @RichDialogProcessStep f13 '' #zField
Ss0 @RichDialogProcessStart f2 '' #zField
Ss0 @PushWFArc f16 '' #zField
Ss0 @RichDialogProcessStart f17 '' #zField
Ss0 @RichDialogProcessStep f19 '' #zField
Ss0 @PushWFArc f20 '' #zField
Ss0 @PushWFArc f18 '' #zField
Ss0 @RichDialogInitStart f0 '' #zField
Ss0 @PushWFArc f14 '' #zField
Ss0 @RichDialogProcessStep f21 '' #zField
Ss0 @PushWFArc f22 '' #zField
Ss0 @PushWFArc f15 '' #zField
Ss0 @RichDialogFireEvent f25 '' #zField
Ss0 @PushWFArc f5 '' #zField
Ss0 @PushWFArc f24 '' #zField
Ss0 @PushWFArc f11 '' #zField
>Proto Ss0 Ss0 SettingsProcess #zField
Ss0 f1 type ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData #txt
Ss0 f1 43 363 26 26 14 0 #rect
Ss0 f1 @|RichDialogProcessEndIcon #fIcon
Ss0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update</name>
        <nameStyle>6,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f3 guid 11989E29DB2D45AB #txt
Ss0 f3 type ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData #txt
Ss0 f3 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData out;
' #txt
Ss0 f3 actionTable 'out=in;
out.error="";
' #txt
Ss0 f3 358 38 20 20 13 0 #rect
Ss0 f3 @|RichDialogProcessStartIcon #fIcon
Ss0 f4 type ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData #txt
Ss0 f4 211 363 26 26 14 0 #rect
Ss0 f4 @|RichDialogProcessEndIcon #fIcon
Ss0 f6 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData out;
' #txt
Ss0 f6 actionTable 'out=in;
' #txt
Ss0 f6 actionCode 'import ch.ivyteam.ivy.security.*;
import java.util.EnumSet;

	//check new password
	if(in.newPassword.trim().equals(in.confirmPassword.trim()) && in.newPassword.trim().length() > 0){
		ivy.session.getSessionUser().setPassword(in.newPassword.trim());
	}else{
		out.error = ivy.cms.co("ch/ivyteam/ivy/workflow/ui/administration/plainStrings/wrongPassword");
	}
	//set eMail notification fields
	if(in.dailyTask && in.newTask){
		IUser myNotification = ivy.session.getSessionUser().setEMailNotificationKind(EnumSet.of(EMailNotificationKind.DAILY_WORKFLOW_TASKS_SUMMARY, EMailNotificationKind.ON_NEW_WORKFLOW_WORK_TASKS));
	} else if(in.dailyTask){
		IUser myNotification = ivy.session.getSessionUser().setEMailNotificationKind(EnumSet.of(EMailNotificationKind.DAILY_WORKFLOW_TASKS_SUMMARY));
	} else if(in.newTask){
		IUser myNotification = ivy.session.getSessionUser().setEMailNotificationKind(EnumSet.of(EMailNotificationKind.ON_NEW_WORKFLOW_WORK_TASKS));
	}
	//set eMail language
	if(panel.languageComboBox.selectedIndex >= 0){
		ivy.session.getSessionUser().setEMailLanguage(new java.util.Locale(in.selectedLanguage));
	}
	
	
	//set properties
	panel.caseTaskParametersEditRDC.save();
	
	
	ivy.log.debug(ivy.session.getSessionUser().getEMailNotificationKind());
' #txt
Ss0 f6 type ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData #txt
Ss0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update user items</name>
        <nameStyle>17,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f6 446 260 36 24 20 -2 #rect
Ss0 f6 @|RichDialogProcessStepIcon #fIcon
Ss0 f8 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData out;
' #txt
Ss0 f8 actionTable 'out=in;
' #txt
Ss0 f8 actionCode 'if(!panel.changePasswordCollapsiblePane.isCollapsed() && !ivy.session.checkPassword(in.oldPassword)){
	out.error = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/invalideOldPassword");
}' #txt
Ss0 f8 type ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData #txt
Ss0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>consider the change password 
only if 
coll.pane visible</name>
        <nameStyle>56,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f8 350 116 36 24 28 -12 #rect
Ss0 f8 @|RichDialogProcessStepIcon #fIcon
Ss0 f9 expr out #txt
Ss0 f9 368 58 368 116 #arcP
Ss0 f7 type ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData #txt
Ss0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ss0 f7 354 202 28 28 14 0 #rect
Ss0 f7 @|AlternativeIcon #fIcon
Ss0 f10 expr out #txt
Ss0 f10 368 140 368 202 #arcP
Ss0 f12 expr in #txt
Ss0 f12 382 216 464 260 #arcP
Ss0 f12 1 464 216 #addKink
Ss0 f12 0 0.9146341463414634 0 0 #arcLabel
Ss0 f13 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData out;
' #txt
Ss0 f13 actionTable 'out=in;
' #txt
Ss0 f13 actionCode 'import java.util.Iterator;

out.language = ivy.cms.getSupportedLanguages();
if(!ivy.session.isSessionUserUnknown()){
	out.loggedInAs = ivy.session.getSessionUser().getFullName() +" ["+ ivy.session.getSessionUser().getName() + "]";

	for ( Iterator i = ivy.session.getSessionUser().getEMailNotificationKind().iterator(); i.hasNext(); )
	{
		String notification = i.next().toString();
		ivy.log.info(notification);
		if (notification.equals("DAILY_WORKFLOW_TASKS_SUMMARY")){
			out.dailyTask = true;
		}
		if(notification.equals("ON_NEW_WORKFLOW_WORK_TASKS")){
			out.newTask = true;
		}
	}
	
}else{
	out.loggedInAs = "<html><b>You are not logged in</b>";
}
' #txt
Ss0 f13 type ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData #txt
Ss0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ss0 f13 38 204 36 24 20 -2 #rect
Ss0 f13 @|RichDialogProcessStepIcon #fIcon
Ss0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load</name>
        <nameStyle>4,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f2 guid 119B84D252B782C4 #txt
Ss0 f2 type ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData #txt
Ss0 f2 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData out;
' #txt
Ss0 f2 actionTable 'out=in;
' #txt
Ss0 f2 118 38 20 20 13 0 #rect
Ss0 f2 @|RichDialogProcessStartIcon #fIcon
Ss0 f16 expr out #txt
Ss0 f16 56 228 56 363 #arcP
Ss0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>toggleChangePassword</name>
        <nameStyle>20,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f17 guid 11B703F21D65DE7D #txt
Ss0 f17 type ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData #txt
Ss0 f17 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData out;
' #txt
Ss0 f17 actionTable 'out=in;
' #txt
Ss0 f17 actionCode 'panel.changePasswordCollapsiblePane.collapsed = !panel.changePasswordCollapsiblePane.collapsed;' #txt
Ss0 f17 214 38 20 20 13 0 #rect
Ss0 f17 @|RichDialogProcessStartIcon #fIcon
Ss0 f19 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData out;
' #txt
Ss0 f19 actionTable 'out=in;
' #txt
Ss0 f19 type ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData #txt
Ss0 f19 206 116 36 24 20 -2 #rect
Ss0 f19 @|RichDialogProcessStepIcon #fIcon
Ss0 f20 expr out #txt
Ss0 f20 224 58 224 116 #arcP
Ss0 f18 expr out #txt
Ss0 f18 224 140 224 363 #arcP
Ss0 f0 guid 11B70775058C5285 #txt
Ss0 f0 type ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData #txt
Ss0 f0 method start() #txt
Ss0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ss0 f0 outParameterDecl '<> result;
' #txt
Ss0 f0 embeddedRdInitializations '{/caseTaskParametersEditRDC {/fieldName "caseTaskParametersEditRDC"/startMethod "start()"/parameterMapping ""/initScript ""}/header {/fieldName "header"/startMethod "start()"/parameterMapping ""/initScript ""}}' #txt
Ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f0 46 38 20 20 13 0 #rect
Ss0 f0 @|RichDialogInitStartIcon #fIcon
Ss0 f14 expr out #txt
Ss0 f14 56 58 56 204 #arcP
Ss0 f21 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData out;
' #txt
Ss0 f21 actionTable 'out=in;
' #txt
Ss0 f21 actionCode 'import com.ulcjava.base.application.border.ULCTitledBorder;

(panel.getBorder() as ULCTitledBorder).setTitle(ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/settingsShortDesc"));

(panel.emailGridBagLayoutPane.getBorder() as ULCTitledBorder).setTitle(ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/eMailNotification"));

(panel.passwordGridBagLayoutPane.getBorder() as ULCTitledBorder).setTitle(ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/password"));' #txt
Ss0 f21 type ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData #txt
Ss0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set the text 
on titled border</name>
        <nameStyle>30,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f21 110 116 36 24 10 9 #rect
Ss0 f21 @|RichDialogProcessStepIcon #fIcon
Ss0 f22 expr out #txt
Ss0 f22 128 58 128 116 #arcP
Ss0 f22 0 0.8925372583706581 0 0 #arcLabel
Ss0 f15 expr out #txt
Ss0 f15 128 140 74 216 #arcP
Ss0 f15 1 128 216 #addKink
Ss0 f15 0 0.9119141258889715 0 0 #arcLabel
Ss0 f25 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>resetUserMenu</name>
        <nameStyle>13,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f25 actionCode panel.fireResetUserMenu(); #txt
Ss0 f25 type ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData #txt
Ss0 f25 fireEvent resetUserMenu() #txt
Ss0 f25 294 364 36 24 -19 20 #rect
Ss0 f25 @|RichDialogFireEventIcon #fIcon
Ss0 f5 expr in #txt
Ss0 f5 outCond 'in.error.length() > 0' #txt
Ss0 f5 368 230 330 376 #arcP
Ss0 f5 1 368 376 #addKink
Ss0 f5 0 0.8472548693131999 0 0 #arcLabel
Ss0 f24 expr out #txt
Ss0 f24 464 284 330 376 #arcP
Ss0 f24 1 464 376 #addKink
Ss0 f24 1 0.25061576354679804 0 0 #arcLabel
Ss0 f11 expr out #txt
Ss0 f11 294 379 236 376 #arcP
>Proto Ss0 .type ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData #txt
>Proto Ss0 .processKind RICH_DIALOG #txt
>Proto Ss0 .ui2RdDataAction 'out.dailyTask=panel.dailyTaskSummaryCheckBox.selected;
out.newTask=panel.onNewTaskCheckBox.selected;
out.confirmPassword=panel.confirmTextField.text;
out.selectedLanguage=panel.languageComboBox.selectedListEntry.toString();
out.newPassword=panel.newPasswordTextField.text;
out.oldPassword=panel.oldPasswordTextField.text;
' #txt
>Proto Ss0 .rdData2UIAction 'panel.dailyTaskSummaryCheckBox.selected=in.dailyTask;
panel.errorLabel.text=in.error;
panel.languageComboBox.listData=in.language.toArray().toList();
panel.loggedInAsLabel.text=ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/loggedInAs") + 
in.loggedInAs;
panel.onNewTaskCheckBox.selected=in.newTask;
panel.emailGridBagLayoutPane.visible=false;
' #txt
>Proto Ss0 -8 -8 16 16 16 26 #rect
>Proto Ss0 '' #fIcon
Ss0 f3 mainOut f9 tail #connect
Ss0 f9 head f8 mainIn #connect
Ss0 f8 mainOut f10 tail #connect
Ss0 f10 head f7 in #connect
Ss0 f12 head f6 mainIn #connect
Ss0 f13 mainOut f16 tail #connect
Ss0 f16 head f1 mainIn #connect
Ss0 f17 mainOut f20 tail #connect
Ss0 f20 head f19 mainIn #connect
Ss0 f19 mainOut f18 tail #connect
Ss0 f18 head f4 mainIn #connect
Ss0 f0 mainOut f14 tail #connect
Ss0 f14 head f13 mainIn #connect
Ss0 f2 mainOut f22 tail #connect
Ss0 f22 head f21 mainIn #connect
Ss0 f21 mainOut f15 tail #connect
Ss0 f15 head f13 mainIn #connect
Ss0 f7 out f5 tail #connect
Ss0 f5 head f25 mainIn #connect
Ss0 f7 out f12 tail #connect
Ss0 f6 mainOut f24 tail #connect
Ss0 f24 head f25 mainIn #connect
Ss0 f25 mainOut f11 tail #connect
Ss0 f11 head f4 mainIn #connect
