[Ivy]
[>Created: Tue Jul 06 16:05:13 CEST 2010]
11989D8A7D57C7CA 3.14 #module
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
Ss0 @PushWFArc f24 '' #zField
Ss0 @PushWFArc f11 '' #zField
Ss0 @RichDialogProcessStep f23 '' #zField
Ss0 @RichDialogProcessStart f26 '' #zField
Ss0 @Alternative f27 '' #zField
Ss0 @RichDialogProcessStep f28 '' #zField
Ss0 @PushWFArc f29 '' #zField
Ss0 @PushWFArc f30 '' #zField
Ss0 @RichDialogProcessEnd f32 '' #zField
Ss0 @PushWFArc f33 '' #zField
Ss0 @PushWFArc f31 '' #zField
Ss0 @PushWFArc f34 '' #zField
Ss0 @PushWFArc f5 '' #zField
Ss0 @RichDialogProcessStart f7 '' #zField
Ss0 @RichDialogEnd f10 '' #zField
Ss0 @PushWFArc f12 '' #zField
>Proto Ss0 Ss0 SettingsProcess #zField
Ss0 f1 type ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData #txt
Ss0 f1 43 363 26 26 14 0 #rect
Ss0 f1 @|RichDialogProcessEndIcon #fIcon
Ss0 f3 guid 11989E29DB2D45AB #txt
Ss0 f3 type ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData #txt
Ss0 f3 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData out;
' #txt
Ss0 f3 actionTable 'out=in;
out.error="";
' #txt
Ss0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update</name>
        <nameStyle>6,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f3 358 38 20 20 13 0 #rect
Ss0 f3 @|RichDialogProcessStartIcon #fIcon
Ss0 f4 type ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData #txt
Ss0 f4 211 371 26 26 14 0 #rect
Ss0 f4 @|RichDialogProcessEndIcon #fIcon
Ss0 f6 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData out;
' #txt
Ss0 f6 actionTable 'out=in;
' #txt
Ss0 f6 actionCode 'import ch.ivyteam.ivy.security.IUserEMailNotificationSettings;
import ch.ivyteam.ivy.security.IUser;

panel.caseTaskParametersEditRDC.save();

// set user properties
ivy.session.getSessionUser().setEMailNotificationSettings(panel.emailNotificationSettingsPanel.getSettings() as IUserEMailNotificationSettings);

// set language
ivy.session.getSessionUser().setEMailLanguage(panel.emailNotificationSettingsPanel.getLanguage());' #txt
Ss0 f6 type ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData #txt
Ss0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update user data</name>
        <nameStyle>16,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f6 350 116 36 24 20 -2 #rect
Ss0 f6 @|RichDialogProcessStepIcon #fIcon
Ss0 f13 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData out;
' #txt
Ss0 f13 actionTable 'out=in;
' #txt
Ss0 f13 actionCode 'import java.util.Iterator;

if(!ivy.session.isSessionUserUnknown()){
	out.loggedInAs = ivy.session.getSessionUser().getFullName() +" ["+ ivy.session.getSessionUser().getName() + "]";
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
Ss0 f2 guid 119B84D252B782C4 #txt
Ss0 f2 type ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData #txt
Ss0 f2 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData out;
' #txt
Ss0 f2 actionTable 'out=in;
' #txt
Ss0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load</name>
        <nameStyle>4,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f2 118 38 20 20 13 0 #rect
Ss0 f2 @|RichDialogProcessStartIcon #fIcon
Ss0 f16 expr out #txt
Ss0 f16 56 228 56 363 #arcP
Ss0 f17 guid 11B703F21D65DE7D #txt
Ss0 f17 type ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData #txt
Ss0 f17 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData out;
' #txt
Ss0 f17 actionTable 'out=in;
' #txt
Ss0 f17 actionCode 'panel.changePasswordCollapsiblePane.collapsed = !panel.changePasswordCollapsiblePane.collapsed;' #txt
Ss0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>toggleChangePassword</name>
        <nameStyle>20,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
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
Ss0 f18 224 140 224 371 #arcP
Ss0 f0 guid 11B70775058C5285 #txt
Ss0 f0 type ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData #txt
Ss0 f0 method start() #txt
Ss0 f0 disableUIEvents false #txt
Ss0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ss0 f0 outParameterDecl '<> result;
' #txt
Ss0 f0 embeddedRdInitializations '{/emailNotificationSettingsPanel {/fieldName "emailNotificationSettingsPanel"/startMethod "start(ch.ivyteam.ivy.security.IUserEMailNotificationSettings,java.util.Locale,ch.ivyteam.ivy.security.IEMailNotificationSettings,java.util.Locale)"/parameterMapping "param.userSettings=ivy.session.getSessionUser().eMailNotificationSettings;\nparam.userLanguage=ivy.session.getSessionUser().getEMailLanguage();\nparam.applicationDefaultSettings=ivy.request.getApplication().defaultEMailNotifcationSettings;\nparam.applicationDefaultLanguage=ivy.request.getApplication().defaultEMailLanguage;\n"/initScript ""}/caseTaskParametersEditRDC {/fieldName "caseTaskParametersEditRDC"/startMethod "start()"/parameterMapping ""/initScript ""}/header {/fieldName "header"/startMethod "start(String,String,String)"/parameterMapping "param.iconUri=\"/ch/ivyteam/ivy/workflow/ui/common/images/user_settings48\";\n"/initScript "param.title = ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/settingsShortDesc\");\nparam.text = \"<html>\" + ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/settingsLongDesc\");"}}' #txt
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

(panel.passwordGridBagLayoutPane.getBorder() as ULCTitledBorder).setTitle(ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/password"));' #txt
Ss0 f21 type ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData #txt
Ss0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set the text 
on titled border</name>
        <nameStyle>30,7,9
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
Ss0 f25 actionCode panel.fireResetUserMenu(); #txt
Ss0 f25 type ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData #txt
Ss0 f25 fireEvent resetUserMenu() #txt
Ss0 f25 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>resetUserMenu</name>
        <nameStyle>13,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f25 350 228 36 24 25 -11 #rect
Ss0 f25 @|RichDialogFireEventIcon #fIcon
Ss0 f24 expr out #txt
Ss0 f24 368 140 368 228 #arcP
Ss0 f24 0 0.8960707993240085 0 0 #arcLabel
Ss0 f11 expr out #txt
Ss0 f11 368 252 236 381 #arcP
Ss0 f11 1 368 352 #addKink
Ss0 f11 1 0.13182920346467605 0 0 #arcLabel
Ss0 f23 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData out;
' #txt
Ss0 f23 actionTable 'out=in;
' #txt
Ss0 f23 actionCode 'if(!ivy.session.checkPassword(in.oldPassword))
{
	out.error = "Error "+ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/invalidOldPassword");
}

' #txt
Ss0 f23 type ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData #txt
Ss0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>check old pw</name>
        <nameStyle>12,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f23 614 116 36 24 28 -12 #rect
Ss0 f23 @|RichDialogProcessStepIcon #fIcon
Ss0 f26 guid 126D213F18A86CCE #txt
Ss0 f26 type ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData #txt
Ss0 f26 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData out;
' #txt
Ss0 f26 actionTable 'out=in;
out.error="";
' #txt
Ss0 f26 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update PW </name>
        <nameStyle>10,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f26 622 38 20 20 13 0 #rect
Ss0 f26 @|RichDialogProcessStartIcon #fIcon
Ss0 f27 type ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData #txt
Ss0 f27 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>err?</name>
        <nameStyle>4,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f27 618 202 28 28 14 0 #rect
Ss0 f27 @|AlternativeIcon #fIcon
Ss0 f28 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData out;
' #txt
Ss0 f28 actionTable 'out=in;
' #txt
Ss0 f28 actionCode '	//change password
	if(in.newPassword.trim().equals(in.confirmPassword.trim()) && in.newPassword.trim().length() > 0)
	{
		ivy.session.getSessionUser().setPassword(in.newPassword.trim());
		if(!ivy.session.checkPassword(in.newPassword.trim()))
		{
			out.error = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/passwordNotChanged");
		}
	}
	else
	{
		out.error = "Error: " + ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/wrongPassword");
	}


		panel.confirmTextField.text="";
		panel.oldPasswordTextField.text="";
		panel.newPasswordTextField.text="";	
' #txt
Ss0 f28 type ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData #txt
Ss0 f28 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update pw</name>
        <nameStyle>9,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f28 710 260 36 24 20 -2 #rect
Ss0 f28 @|RichDialogProcessStepIcon #fIcon
Ss0 f29 expr out #txt
Ss0 f29 632 58 632 116 #arcP
Ss0 f30 expr out #txt
Ss0 f30 632 140 632 202 #arcP
Ss0 f32 type ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData #txt
Ss0 f32 622 366 20 20 13 0 #rect
Ss0 f32 @|RichDialogProcessEndIcon #fIcon
Ss0 f33 expr in #txt
Ss0 f33 outCond 'in.error.length() > 0' #txt
Ss0 f33 632 230 632 366 #arcP
Ss0 f31 expr in #txt
Ss0 f31 641 221 710 260 #arcP
Ss0 f34 expr out #txt
Ss0 f34 717 284 638 368 #arcP
Ss0 f5 expr out #txt
Ss0 f5 368 58 368 116 #arcP
Ss0 f7 guid 1298DF49A85A852E #txt
Ss0 f7 type ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData #txt
Ss0 f7 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData out;
' #txt
Ss0 f7 actionTable 'out=in;
' #txt
Ss0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>exit</name>
        <nameStyle>4,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f7 494 46 20 20 13 0 #rect
Ss0 f7 @|RichDialogProcessStartIcon #fIcon
Ss0 f10 type ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData #txt
Ss0 f10 guid 1298DF4D99C776BB #txt
Ss0 f10 494 166 20 20 13 0 #rect
Ss0 f10 @|RichDialogEndIcon #fIcon
Ss0 f12 expr out #txt
Ss0 f12 504 66 504 166 #arcP
>Proto Ss0 .type ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsData #txt
>Proto Ss0 .processKind RICH_DIALOG #txt
>Proto Ss0 .ui2RdDataAction 'out.confirmPassword=panel.confirmTextField.text;
out.newPassword=panel.newPasswordTextField.text;
out.oldPassword=panel.oldPasswordTextField.text;
' #txt
>Proto Ss0 .rdData2UIAction 'panel.errorLabel.text=in.error;
panel.loggedInAsLabel.text=ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/loggedInAs") + 
in.loggedInAs;
' #txt
>Proto Ss0 -8 -8 16 16 16 26 #rect
>Proto Ss0 '' #fIcon
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
Ss0 f6 mainOut f24 tail #connect
Ss0 f24 head f25 mainIn #connect
Ss0 f25 mainOut f11 tail #connect
Ss0 f11 head f4 mainIn #connect
Ss0 f26 mainOut f29 tail #connect
Ss0 f29 head f23 mainIn #connect
Ss0 f23 mainOut f30 tail #connect
Ss0 f30 head f27 in #connect
Ss0 f27 out f33 tail #connect
Ss0 f33 head f32 mainIn #connect
Ss0 f27 out f31 tail #connect
Ss0 f31 head f28 mainIn #connect
Ss0 f28 mainOut f34 tail #connect
Ss0 f34 head f32 mainIn #connect
Ss0 f3 mainOut f5 tail #connect
Ss0 f5 head f6 mainIn #connect
Ss0 f7 mainOut f12 tail #connect
Ss0 f12 head f10 mainIn #connect
