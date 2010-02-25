[Ivy]
[>Created: Thu Feb 25 11:06:15 CET 2010]
125214E54EDD7E14 3.13 #module
>Proto >Proto Collection #zClass
ls0 loginProcess Big #zClass
ls0 RD #cInfo
ls0 #process
ls0 @AnnotationInP-0n ai ai #zField
ls0 @MessageFlowInP-0n messageIn messageIn #zField
ls0 @MessageFlowOutP-0n messageOut messageOut #zField
ls0 @TextInP .xml .xml #zField
ls0 @TextInP .responsibility .responsibility #zField
ls0 @TextInP .resExport .resExport #zField
ls0 @TextInP .type .type #zField
ls0 @TextInP .processKind .processKind #zField
ls0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
ls0 @TextInP .rdData2UIAction .rdData2UIAction #zField
ls0 @RichDialogInitStart f0 '' #zField
ls0 @RichDialogProcessEnd f1 '' #zField
ls0 @RichDialogProcessStart f3 '' #zField
ls0 @RichDialogProcessEnd f5 '' #zField
ls0 @Alternative f8 '' #zField
ls0 @PushWFArc f6 '' #zField
ls0 @RichDialogProcessStep f9 '' #zField
ls0 @PushWFArc f10 '' #zField
ls0 @RichDialogProcessStart f12 '' #zField
ls0 @RichDialogProcessEnd f13 '' #zField
ls0 @RichDialogProcessStep f15 '' #zField
ls0 @PushWFArc f16 '' #zField
ls0 @PushWFArc f2 '' #zField
ls0 @RichDialogProcessStep f17 '' #zField
ls0 @PushWFArc f18 '' #zField
ls0 @RichDialogProcessStart f19 '' #zField
ls0 @RichDialogEnd f20 '' #zField
ls0 @PushWFArc f21 '' #zField
ls0 @RichDialogFireEvent f22 '' #zField
ls0 @RichDialogFireEvent f24 '' #zField
ls0 @PushWFArc f25 '' #zField
ls0 @PushWFArc f14 '' #zField
ls0 @RichDialogFireEvent f26 '' #zField
ls0 @PushWFArc f27 '' #zField
ls0 @PushWFArc f11 '' #zField
ls0 @RichDialogProcessEnd f28 '' #zField
ls0 @PushWFArc f29 '' #zField
ls0 @RichDialogProcessStep f4 '' #zField
ls0 @PushWFArc f7 '' #zField
ls0 @PushWFArc f23 '' #zField
>Proto ls0 ls0 loginProcess #zField
ls0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
ls0 f0 guid 125214E550C82C5C #txt
ls0 f0 type ui.basic.login.loginData #txt
ls0 f0 method start() #txt
ls0 f0 disableUIEvents true #txt
ls0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
ls0 f0 outParameterDecl '<> result;
' #txt
ls0 f0 90 40 20 20 13 0 #rect
ls0 f0 @|RichDialogInitStartIcon #fIcon
ls0 f1 type ui.basic.login.loginData #txt
ls0 f1 90 140 20 20 13 0 #rect
ls0 f1 @|RichDialogProcessEndIcon #fIcon
ls0 f3 guid 125215FD82D15F34 #txt
ls0 f3 type ui.basic.login.loginData #txt
ls0 f3 actionDecl 'ui.basic.login.loginData out;
' #txt
ls0 f3 actionTable 'out=in;
' #txt
ls0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>RD_Event_Start1</name>
        <nameStyle>15,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
ls0 f3 94 246 20 20 17 -4 #rect
ls0 f3 @|RichDialogProcessStartIcon #fIcon
ls0 f5 type ui.basic.login.loginData #txt
ls0 f5 238 486 20 20 13 0 #rect
ls0 f5 @|RichDialogProcessEndIcon #fIcon
ls0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>logged in?</name>
        <nameStyle>10,9
</nameStyle>
    </language>
</elementInfo>
' #txt
ls0 f8 type ui.basic.login.loginData #txt
ls0 f8 90 306 28 28 23 -22 #rect
ls0 f8 @|AlternativeIcon #fIcon
ls0 f6 expr out #txt
ls0 f6 104 266 104 306 #arcP
ls0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>error msg</name>
        <nameStyle>9,9
</nameStyle>
    </language>
</elementInfo>
' #txt
ls0 f9 actionDecl 'ui.basic.login.loginData out;
' #txt
ls0 f9 actionTable 'out=in;
out.msg=ivy.cms.co("/ch/ivyteam/ivy/basicwfui/labels/main/loginError");
' #txt
ls0 f9 type ui.basic.login.loginData #txt
ls0 f9 230 308 36 24 25 -7 #rect
ls0 f9 @|RichDialogProcessStepIcon #fIcon
ls0 f10 expr in #txt
ls0 f10 118 320 230 320 #arcP
ls0 f12 guid 125218A10132894F #txt
ls0 f12 type ui.basic.login.loginData #txt
ls0 f12 actionDecl 'ui.basic.login.loginData out;
' #txt
ls0 f12 actionTable 'out=in;
' #txt
ls0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>RD_Event_Logout</name>
        <nameStyle>15,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
ls0 f12 446 294 20 20 13 0 #rect
ls0 f12 @|RichDialogProcessStartIcon #fIcon
ls0 f13 type ui.basic.login.loginData #txt
ls0 f13 446 486 20 20 13 0 #rect
ls0 f13 @|RichDialogProcessEndIcon #fIcon
ls0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>init </name>
        <nameStyle>5,9
</nameStyle>
    </language>
</elementInfo>
' #txt
ls0 f15 actionDecl 'ui.basic.login.loginData out;
' #txt
ls0 f15 actionTable 'out=in;
' #txt
ls0 f15 actionCode 'if(!ivy.session.isSessionUserUnknown())
{
	panel.loginInfoLabel.text = ivy.cms.co("/ch/ivyteam/ivy/basicwfui/labels/main/wfuser_info")+" "+ivy.session.getSessionUserName();	
}
else
{
	panel.nameTextField.requestFocus();
}' #txt
ls0 f15 panelTable 'panel.loginInfoLabel.text="";
panel.errorLabel.text="";
' #txt
ls0 f15 type ui.basic.login.loginData #txt
ls0 f15 82 84 36 24 20 -2 #rect
ls0 f15 @|RichDialogProcessStepIcon #fIcon
ls0 f16 expr out #txt
ls0 f16 100 60 100 84 #arcP
ls0 f2 expr out #txt
ls0 f2 100 108 100 140 #arcP
ls0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>logout</name>
        <nameStyle>6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
ls0 f17 actionDecl 'ui.basic.login.loginData out;
' #txt
ls0 f17 actionTable 'out=in;
' #txt
ls0 f17 actionCode 'ivy.session.logoutSessionUser(ivy.task.getIdentifier());

panel.nameTextField.requestFocus();' #txt
ls0 f17 type ui.basic.login.loginData #txt
ls0 f17 438 356 36 24 20 -2 #rect
ls0 f17 @|RichDialogProcessStepIcon #fIcon
ls0 f18 expr out #txt
ls0 f18 456 314 456 356 #arcP
ls0 f19 guid 12521981712C1DE8 #txt
ls0 f19 type ui.basic.login.loginData #txt
ls0 f19 actionDecl 'ui.basic.login.loginData out;
' #txt
ls0 f19 actionTable 'out=in;
' #txt
ls0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>RD_Event_Exit</name>
        <nameStyle>13,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
ls0 f19 222 38 20 20 13 0 #rect
ls0 f19 @|RichDialogProcessStartIcon #fIcon
ls0 f20 type ui.basic.login.loginData #txt
ls0 f20 guid 1252198255A80C6D #txt
ls0 f20 222 142 20 20 13 0 #rect
ls0 f20 @|RichDialogEndIcon #fIcon
ls0 f21 expr out #txt
ls0 f21 232 58 232 142 #arcP
ls0 f22 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>wfUserChanged</name>
        <nameStyle>13,9
</nameStyle>
    </language>
</elementInfo>
' #txt
ls0 f22 actionCode panel.fireWfUserChanged(); #txt
ls0 f22 type ui.basic.login.loginData #txt
ls0 f22 fireEvent wfUserChanged() #txt
ls0 f22 86 420 36 24 20 -2 #rect
ls0 f22 @|RichDialogFireEventIcon #fIcon
ls0 f24 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>wfUserChanged</name>
        <nameStyle>13,9
</nameStyle>
    </language>
</elementInfo>
' #txt
ls0 f24 actionCode panel.fireWfUserChanged(); #txt
ls0 f24 type ui.basic.login.loginData #txt
ls0 f24 fireEvent wfUserChanged() #txt
ls0 f24 438 420 36 24 20 -2 #rect
ls0 f24 @|RichDialogFireEventIcon #fIcon
ls0 f25 expr out #txt
ls0 f25 456 380 456 420 #arcP
ls0 f14 expr out #txt
ls0 f14 456 444 456 486 #arcP
ls0 f26 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>wfUserChanged</name>
        <nameStyle>13,9
</nameStyle>
    </language>
</elementInfo>
' #txt
ls0 f26 actionCode panel.fireWfUserChanged(); #txt
ls0 f26 type ui.basic.login.loginData #txt
ls0 f26 fireEvent wfUserChanged() #txt
ls0 f26 230 420 36 24 20 -2 #rect
ls0 f26 @|RichDialogFireEventIcon #fIcon
ls0 f27 expr out #txt
ls0 f27 248 332 248 420 #arcP
ls0 f11 expr out #txt
ls0 f11 248 444 248 486 #arcP
ls0 f28 type ui.basic.login.loginData #txt
ls0 f28 94 486 20 20 13 0 #rect
ls0 f28 @|RichDialogProcessEndIcon #fIcon
ls0 f29 expr out #txt
ls0 f29 104 444 104 486 #arcP
ls0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>logged in msg</name>
        <nameStyle>13,9
</nameStyle>
    </language>
</elementInfo>
' #txt
ls0 f4 actionDecl 'ui.basic.login.loginData out;
' #txt
ls0 f4 actionTable 'out=in;
out.msg="";
out.pw="";
' #txt
ls0 f4 actionCode 'panel.loginInfoLabel.text = ivy.cms.co("/ch/ivyteam/ivy/basicwfui/labels/main/wfuser_info")+" "+ivy.session.getSessionUserName();	
' #txt
ls0 f4 panelTable 'panel.loginInfoLabel.text="";
panel.errorLabel.text="";
' #txt
ls0 f4 type ui.basic.login.loginData #txt
ls0 f4 86 364 36 24 20 -2 #rect
ls0 f4 @|RichDialogProcessStepIcon #fIcon
ls0 f7 expr in #txt
ls0 f7 outCond ivy.session.loginSessionUser(in.name,in.pw,ivy.task.getIdentifier()) #txt
ls0 f7 104 334 104 364 #arcP
ls0 f23 expr out #txt
ls0 f23 104 388 104 420 #arcP
>Proto ls0 .type ui.basic.login.loginData #txt
>Proto ls0 .processKind RICH_DIALOG #txt
>Proto ls0 .ui2RdDataAction 'out.name=panel.nameTextField.text;
out.pw=panel.PasswordField.text;
' #txt
>Proto ls0 .rdData2UIAction 'panel.loginButton.visible=ivy.session.isSessionUserUnknown();
panel.loginInfoLabel.visible=!ivy.session.isSessionUserUnknown();
panel.logoutHyperlink.visible=!ivy.session.isSessionUserUnknown();
panel.nameLabel.visible=ivy.session.isSessionUserUnknown();
panel.nameTextField.text=in.name;
panel.nameTextField.visible=ivy.session.isSessionUserUnknown();
panel.PasswordField.text=in.pw;
panel.PasswordField.visible=ivy.session.isSessionUserUnknown();
panel.passwordLabel.visible=ivy.session.isSessionUserUnknown();
panel.errorLabel.text=in.msg;
' #txt
>Proto ls0 -8 -8 16 16 16 26 #rect
>Proto ls0 '' #fIcon
ls0 f3 mainOut f6 tail #connect
ls0 f6 head f8 in #connect
ls0 f10 head f9 mainIn #connect
ls0 f0 mainOut f16 tail #connect
ls0 f16 head f15 mainIn #connect
ls0 f15 mainOut f2 tail #connect
ls0 f2 head f1 mainIn #connect
ls0 f12 mainOut f18 tail #connect
ls0 f18 head f17 mainIn #connect
ls0 f19 mainOut f21 tail #connect
ls0 f21 head f20 mainIn #connect
ls0 f17 mainOut f25 tail #connect
ls0 f25 head f24 mainIn #connect
ls0 f24 mainOut f14 tail #connect
ls0 f14 head f13 mainIn #connect
ls0 f9 mainOut f27 tail #connect
ls0 f27 head f26 mainIn #connect
ls0 f26 mainOut f11 tail #connect
ls0 f11 head f5 mainIn #connect
ls0 f22 mainOut f29 tail #connect
ls0 f29 head f28 mainIn #connect
ls0 f8 out f7 tail #connect
ls0 f7 head f4 mainIn #connect
ls0 f8 out f10 tail #connect
ls0 f4 mainOut f23 tail #connect
ls0 f23 head f22 mainIn #connect
