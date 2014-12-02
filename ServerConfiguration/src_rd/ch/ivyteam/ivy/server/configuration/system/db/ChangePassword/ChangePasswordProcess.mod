[Ivy]
[>Created: Thu Jan 27 09:25:21 CET 2011]
117C4E052318955A 3.15 #module
>Proto >Proto Collection #zClass
Cs0 ChangePasswordProcess Big #zClass
Cs0 RD #cInfo
Cs0 #process
Cs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Cs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Cs0 @TextInP .xml .xml #zField
Cs0 @TextInP .responsibility .responsibility #zField
Cs0 @TextInP .resExport .resExport #zField
Cs0 @TextInP .type .type #zField
Cs0 @TextInP .processKind .processKind #zField
Cs0 @MessageFlowInP-0n messageIn messageIn #zField
Cs0 @MessageFlowOutP-0n messageOut messageOut #zField
Cs0 @AnnotationInP-0n ai ai #zField
Cs0 @RichDialogInitStart f0 '' #zField
Cs0 @RichDialogProcessEnd f1 '' #zField
Cs0 @PushWFArc f2 '' #zField
Cs0 @RichDialogProcessStart f3 '' #zField
Cs0 @RichDialogProcessStart f6 '' #zField
Cs0 @RichDialogEnd f7 '' #zField
Cs0 @PushWFArc f8 '' #zField
Cs0 @Alternative f9 '' #zField
Cs0 @RichDialogProcessStep f13 '' #zField
Cs0 @PushWFArc f14 '' #zField
Cs0 @RichDialogProcessEnd f4 '' #zField
Cs0 @RichDialogEnd f11 '' #zField
Cs0 @PushWFArc f15 '' #zField
Cs0 @RichDialogInitStart f5 '' #zField
Cs0 @RichDialogProcessEnd f12 '' #zField
Cs0 @PushWFArc f17 '' #zField
Cs0 @RichDialogProcessStep f16 '' #zField
Cs0 @PushWFArc f18 '' #zField
Cs0 @PushWFArc f10 '' #zField
Cs0 @RichDialog f19 '' #zField
Cs0 @PushWFArc f20 '' #zField
Cs0 @PushWFArc f21 '' #zField
>Proto Cs0 Cs0 ChangePasswordProcess #zField
Cs0 f0 guid 117C4E350DA90E96 #txt
Cs0 f0 type ch.ivyteam.ivy.server.configuration.system.db.ChangePassword.ChangePasswordData #txt
Cs0 f0 method start(ch.ivyteam.ivy.security.Administrator) #txt
Cs0 f0 disableUIEvents false #txt
Cs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.security.Administrator admin> param = methodEvent.getInputArguments();
' #txt
Cs0 f0 inParameterMapAction 'out.admin=param.admin;
' #txt
Cs0 f0 outParameterDecl '<> result;
' #txt
Cs0 f0 embeddedRdInitializations '* ' #txt
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Administrator)</name>
        <nameStyle>20,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f0 38 38 20 20 13 0 #rect
Cs0 f0 @|RichDialogInitStartIcon #fIcon
Cs0 f1 type ch.ivyteam.ivy.server.configuration.system.db.ChangePassword.ChangePasswordData #txt
Cs0 f1 35 107 26 26 14 0 #rect
Cs0 f1 @|RichDialogProcessEndIcon #fIcon
Cs0 f2 expr out #txt
Cs0 f2 48 58 48 107 #arcP
Cs0 f3 guid 117C4E36E2512B9B #txt
Cs0 f3 type ch.ivyteam.ivy.server.configuration.system.db.ChangePassword.ChangePasswordData #txt
Cs0 f3 actionDecl 'ch.ivyteam.ivy.server.configuration.system.db.ChangePassword.ChangePasswordData out;
' #txt
Cs0 f3 actionTable 'out=in;
' #txt
Cs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ok</name>
        <nameStyle>2,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f3 214 38 20 20 13 0 #rect
Cs0 f3 @|RichDialogProcessStartIcon #fIcon
Cs0 f6 guid 117C4E38650F476E #txt
Cs0 f6 type ch.ivyteam.ivy.server.configuration.system.db.ChangePassword.ChangePasswordData #txt
Cs0 f6 actionDecl 'ch.ivyteam.ivy.server.configuration.system.db.ChangePassword.ChangePasswordData out;
' #txt
Cs0 f6 actionTable 'out=in;
' #txt
Cs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>cancel</name>
        <nameStyle>6,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f6 430 38 20 20 13 0 #rect
Cs0 f6 @|RichDialogProcessStartIcon #fIcon
Cs0 f7 type ch.ivyteam.ivy.server.configuration.system.db.ChangePassword.ChangePasswordData #txt
Cs0 f7 guid 117C4E38E7E29669 #txt
Cs0 f7 427 139 26 26 14 0 #rect
Cs0 f7 @|RichDialogEndIcon #fIcon
Cs0 f8 expr out #txt
Cs0 f8 440 58 440 139 #arcP
Cs0 f9 type ch.ivyteam.ivy.server.configuration.system.db.ChangePassword.ChangePasswordData #txt
Cs0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>do passwords match?</name>
        <nameStyle>19,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f9 210 138 28 28 14 0 #rect
Cs0 f9 @|AlternativeIcon #fIcon
Cs0 f13 actionDecl 'ch.ivyteam.ivy.server.configuration.system.db.ChangePassword.ChangePasswordData out;
' #txt
Cs0 f13 actionTable 'out=in;
' #txt
Cs0 f13 actionCode in.admin.changePassword(in.password); #txt
Cs0 f13 type ch.ivyteam.ivy.server.configuration.system.db.ChangePassword.ChangePasswordData #txt
Cs0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>change password</name>
        <nameStyle>15,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f13 206 196 36 24 20 -2 #rect
Cs0 f13 @|RichDialogProcessStepIcon #fIcon
Cs0 f14 expr in #txt
Cs0 f14 outCond 'in.password == in.confirmPassword' #txt
Cs0 f14 224 166 224 196 #arcP
Cs0 f4 type ch.ivyteam.ivy.server.configuration.system.db.ChangePassword.ChangePasswordData #txt
Cs0 f4 363 267 26 26 14 0 #rect
Cs0 f4 @|RichDialogProcessEndIcon #fIcon
Cs0 f11 type ch.ivyteam.ivy.server.configuration.system.db.ChangePassword.ChangePasswordData #txt
Cs0 f11 guid 117C601B2EC51FCE #txt
Cs0 f11 211 275 26 26 14 0 #rect
Cs0 f11 @|RichDialogEndIcon #fIcon
Cs0 f15 expr out #txt
Cs0 f15 224 220 224 275 #arcP
Cs0 f5 guid 11B458E05F8E33D0 #txt
Cs0 f5 type ch.ivyteam.ivy.server.configuration.system.db.ChangePassword.ChangePasswordData #txt
Cs0 f5 method start() #txt
Cs0 f5 disableUIEvents false #txt
Cs0 f5 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Cs0 f5 outParameterDecl '<> result;
' #txt
Cs0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Cs0 f5 38 198 20 20 13 0 #rect
Cs0 f5 @|RichDialogInitStartIcon #fIcon
Cs0 f12 type ch.ivyteam.ivy.server.configuration.system.db.ChangePassword.ChangePasswordData #txt
Cs0 f12 35 259 26 26 14 0 #rect
Cs0 f12 @|RichDialogProcessEndIcon #fIcon
Cs0 f17 expr out #txt
Cs0 f17 48 218 48 259 #arcP
Cs0 f16 actionDecl 'ch.ivyteam.ivy.server.configuration.system.db.ChangePassword.ChangePasswordData out;
' #txt
Cs0 f16 actionTable 'out=in;
' #txt
Cs0 f16 actionCode 'import ch.ivyteam.ivy.ulc.server.validation.ValidationConstants;
import com.ulcjava.base.application.util.Color;

Color errorColor = ValidationConstants.ERROR_BACKGROUND;
													
// Password
if (in.password != in.confirmPassword)
{
	panel.passwordPasswordField.setBackground(errorColor);
	panel.confirmPasswordPasswordField.setBackground(errorColor);
}
else if (in.password.trim().length() == 0)
{
	panel.passwordPasswordField.setBackground(errorColor);
	panel.confirmPasswordPasswordField.setBackground(errorColor);
}
else
{
	panel.passwordPasswordField.setBackground(Color.white);
	panel.confirmPasswordPasswordField.setBackground(Color.white);
}

' #txt
Cs0 f16 type ch.ivyteam.ivy.server.configuration.system.db.ChangePassword.ChangePasswordData #txt
Cs0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>validation</name>
        <nameStyle>10,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f16 206 84 36 24 20 -2 #rect
Cs0 f16 @|RichDialogProcessStepIcon #fIcon
Cs0 f18 expr out #txt
Cs0 f18 224 58 224 84 #arcP
Cs0 f10 expr out #txt
Cs0 f10 224 108 224 138 #arcP
Cs0 f19 targetWindow NEW #txt
Cs0 f19 targetDisplay TOP #txt
Cs0 f19 richDialogId ch.ivyteam.ivy.commondialogs.MessageDialog #txt
Cs0 f19 startMethod showMessage(String) #txt
Cs0 f19 type ch.ivyteam.ivy.server.configuration.system.db.ChangePassword.ChangePasswordData #txt
Cs0 f19 requestActionDecl '<String message> param;' #txt
Cs0 f19 requestMappingAction 'param.message=ivy.cms.co("/labels/confirmPwdError");
' #txt
Cs0 f19 responseActionDecl 'ch.ivyteam.ivy.server.configuration.system.db.ChangePassword.ChangePasswordData out;
' #txt
Cs0 f19 responseMappingAction 'out=in;
' #txt
Cs0 f19 windowConfiguration '#Tue Feb 03 13:42:48 CET 2009
height=0
maximized=false
centered=true
close_after_last_rd=true
resizable=false
width=0
title=Passwords do not match
' #txt
Cs0 f19 isAsynch false #txt
Cs0 f19 isInnerRd true #txt
Cs0 f19 isDialog true #txt
Cs0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>show error</name>
        <nameStyle>10,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f19 358 196 36 24 20 -2 #rect
Cs0 f19 @|RichDialogIcon #fIcon
Cs0 f20 expr in #txt
Cs0 f20 238 152 376 196 #arcP
Cs0 f20 1 376 152 #addKink
Cs0 f20 0 0.6594202898550725 0 0 #arcLabel
Cs0 f21 expr out #txt
Cs0 f21 376 220 376 267 #arcP
>Proto Cs0 .ui2RdDataAction 'out.confirmPassword=panel.confirmPasswordPasswordField.text;
out.password=panel.passwordPasswordField.text;
' #txt
>Proto Cs0 .rdData2UIAction 'panel.confirmPasswordPasswordField.text=in.confirmPassword;
panel.passwordPasswordField.text=in.password;
' #txt
>Proto Cs0 .type ch.ivyteam.ivy.server.configuration.system.db.ChangePassword.ChangePasswordData #txt
>Proto Cs0 .processKind RICH_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f0 mainOut f2 tail #connect
Cs0 f2 head f1 mainIn #connect
Cs0 f6 mainOut f8 tail #connect
Cs0 f8 head f7 mainIn #connect
Cs0 f9 out f14 tail #connect
Cs0 f14 head f13 mainIn #connect
Cs0 f13 mainOut f15 tail #connect
Cs0 f15 head f11 mainIn #connect
Cs0 f5 mainOut f17 tail #connect
Cs0 f17 head f12 mainIn #connect
Cs0 f3 mainOut f18 tail #connect
Cs0 f18 head f16 mainIn #connect
Cs0 f16 mainOut f10 tail #connect
Cs0 f10 head f9 in #connect
Cs0 f9 out f20 tail #connect
Cs0 f20 head f19 mainIn #connect
Cs0 f19 mainOut f21 tail #connect
Cs0 f21 head f4 mainIn #connect
