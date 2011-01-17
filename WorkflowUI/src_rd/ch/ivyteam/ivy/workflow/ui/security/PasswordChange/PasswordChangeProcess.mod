[Ivy]
[>Created: Tue Jul 27 23:32:37 CEST 2010]
12A14665C984A175 3.12 #module
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
Ss0 @RichDialogInitStart f0 '' #zField
Ss0 @PushWFArc f2 '' #zField
Ss0 @RichDialogProcessStart f13 '' #zField
Ss0 @RichDialogProcessStart f14 '' #zField
Ss0 @RichDialogProcessEnd f15 '' #zField
Ss0 @RichDialogEnd f23 '' #zField
Ss0 @PushWFArc f26 '' #zField
Ss0 @Alternative f21 '' #zField
Ss0 @PushWFArc f22 '' #zField
Ss0 @RichDialog f27 '' #zField
Ss0 @PushWFArc f28 '' #zField
Ss0 @PushWFArc f29 '' #zField
Ss0 @Alternative f30 '' #zField
Ss0 @PushWFArc f31 '' #zField
Ss0 @RichDialogProcessStep f32 '' #zField
Ss0 @PushWFArc f33 '' #zField
Ss0 @RichDialog f35 '' #zField
Ss0 @PushWFArc f36 '' #zField
Ss0 @PushWFArc f34 '' #zField
Ss0 @RichDialogEnd f37 '' #zField
Ss0 @RichDialog f3 '' #zField
Ss0 @PushWFArc f4 '' #zField
Ss0 @PushWFArc f5 '' #zField
>Proto Ss0 Ss0 SettingsProcess #zField
Ss0 f1 type ch.ivyteam.ivy.workflow.ui.security.PasswordChange.PasswordChangeData #txt
Ss0 f1 43 363 26 26 14 0 #rect
Ss0 f1 @|RichDialogProcessEndIcon #fIcon
Ss0 f0 guid 11B70775058C5285 #txt
Ss0 f0 type ch.ivyteam.ivy.workflow.ui.security.PasswordChange.PasswordChangeData #txt
Ss0 f0 method start() #txt
Ss0 f0 disableUIEvents false #txt
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
Ss0 f2 expr out #txt
Ss0 f2 56 58 56 363 #arcP
Ss0 f13 guid 12A146DE5A487AC8 #txt
Ss0 f13 type ch.ivyteam.ivy.workflow.ui.security.PasswordChange.PasswordChangeData #txt
Ss0 f13 actionDecl 'ch.ivyteam.ivy.workflow.ui.security.PasswordChange.PasswordChangeData out;
' #txt
Ss0 f13 actionTable 'out=in;
' #txt
Ss0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ok</name>
        <nameStyle>2,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f13 190 38 20 20 13 0 #rect
Ss0 f13 @|RichDialogProcessStartIcon #fIcon
Ss0 f14 guid 12A146DEE8DBABF8 #txt
Ss0 f14 type ch.ivyteam.ivy.workflow.ui.security.PasswordChange.PasswordChangeData #txt
Ss0 f14 actionDecl 'ch.ivyteam.ivy.workflow.ui.security.PasswordChange.PasswordChangeData out;
' #txt
Ss0 f14 actionTable 'out=in;
' #txt
Ss0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>cancel</name>
        <nameStyle>6,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f14 582 38 20 20 13 0 #rect
Ss0 f14 @|RichDialogProcessStartIcon #fIcon
Ss0 f15 type ch.ivyteam.ivy.workflow.ui.security.PasswordChange.PasswordChangeData #txt
Ss0 f15 350 366 20 20 13 0 #rect
Ss0 f15 @|RichDialogProcessEndIcon #fIcon
Ss0 f23 type ch.ivyteam.ivy.workflow.ui.security.PasswordChange.PasswordChangeData #txt
Ss0 f23 guid 12A146F953528CE6 #txt
Ss0 f23 582 366 20 20 13 0 #rect
Ss0 f23 @|RichDialogEndIcon #fIcon
Ss0 f26 expr out #txt
Ss0 f26 592 58 592 366 #arcP
Ss0 f21 type ch.ivyteam.ivy.workflow.ui.security.PasswordChange.PasswordChangeData #txt
Ss0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>current password 
is correct?</name>
        <nameStyle>29,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f21 186 98 28 28 14 0 #rect
Ss0 f21 @|AlternativeIcon #fIcon
Ss0 f22 expr out #txt
Ss0 f22 200 58 200 98 #arcP
Ss0 f27 targetDisplay TOP #txt
Ss0 f27 richDialogId ch.ivyteam.ivy.addons.commondialogs.MessageDialog #txt
Ss0 f27 startMethod showMessage(String) #txt
Ss0 f27 type ch.ivyteam.ivy.workflow.ui.security.PasswordChange.PasswordChangeData #txt
Ss0 f27 requestActionDecl '<String message> param;' #txt
Ss0 f27 requestActionCode 'param.message = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/invalideOldPassword");' #txt
Ss0 f27 responseActionDecl 'ch.ivyteam.ivy.workflow.ui.security.PasswordChange.PasswordChangeData out;
' #txt
Ss0 f27 responseMappingAction 'out=in;
' #txt
Ss0 f27 windowConfiguration '* ' #txt
Ss0 f27 isAsynch false #txt
Ss0 f27 isInnerRd true #txt
Ss0 f27 isDialog true #txt
Ss0 f27 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>the current 
password is not correct</name>
        <nameStyle>36,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f27 398 156 36 24 20 -2 #rect
Ss0 f27 @|RichDialogIcon #fIcon
Ss0 f28 expr in #txt
Ss0 f28 214 112 416 156 #arcP
Ss0 f28 1 416 112 #addKink
Ss0 f28 0 0.9208052000315107 0 0 #arcLabel
Ss0 f29 expr out #txt
Ss0 f29 416 180 370 376 #arcP
Ss0 f29 1 416 376 #addKink
Ss0 f29 1 0.016206997950474113 0 0 #arcLabel
Ss0 f30 type ch.ivyteam.ivy.workflow.ui.security.PasswordChange.PasswordChangeData #txt
Ss0 f30 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>new password 
equals to 
confirm password?</name>
        <nameStyle>42,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f30 186 162 28 28 13 2 #rect
Ss0 f30 @|AlternativeIcon #fIcon
Ss0 f31 expr in #txt
Ss0 f31 outCond ivy.session.checkPassword(in.oldPassword) #txt
Ss0 f31 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f31 200 126 200 162 #arcP
Ss0 f32 actionDecl 'ch.ivyteam.ivy.workflow.ui.security.PasswordChange.PasswordChangeData out;
' #txt
Ss0 f32 actionTable 'out=in;
' #txt
Ss0 f32 actionCode ivy.session.getSessionUser().setPassword(in.newPassword.trim()); #txt
Ss0 f32 type ch.ivyteam.ivy.workflow.ui.security.PasswordChange.PasswordChangeData #txt
Ss0 f32 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set the password</name>
        <nameStyle>16,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f32 182 228 36 24 20 -2 #rect
Ss0 f32 @|RichDialogProcessStepIcon #fIcon
Ss0 f33 expr in #txt
Ss0 f33 outCond 'in.newPassword.trim().equals(in.confirmPassword.trim()) 
&& in.newPassword.trim().length() > 0' #txt
Ss0 f33 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f33 200 190 200 228 #arcP
Ss0 f35 targetDisplay TOP #txt
Ss0 f35 richDialogId ch.ivyteam.ivy.addons.commondialogs.MessageDialog #txt
Ss0 f35 startMethod showMessage(String) #txt
Ss0 f35 type ch.ivyteam.ivy.workflow.ui.security.PasswordChange.PasswordChangeData #txt
Ss0 f35 requestActionDecl '<String message> param;' #txt
Ss0 f35 requestActionCode 'param.message = ivy.cms.co("ch/ivyteam/ivy/workflow/ui/administration/plainStrings/wrongPassword");' #txt
Ss0 f35 responseActionDecl 'ch.ivyteam.ivy.workflow.ui.security.PasswordChange.PasswordChangeData out;
' #txt
Ss0 f35 responseMappingAction 'out=in;
' #txt
Ss0 f35 windowConfiguration '* ' #txt
Ss0 f35 isAsynch false #txt
Ss0 f35 isInnerRd true #txt
Ss0 f35 isDialog true #txt
Ss0 f35 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>the new and confirm
password are not equal</name>
        <nameStyle>42,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f35 342 220 36 24 20 -2 #rect
Ss0 f35 @|RichDialogIcon #fIcon
Ss0 f36 expr in #txt
Ss0 f36 214 176 360 220 #arcP
Ss0 f36 1 360 176 #addKink
Ss0 f36 1 0.3933840776812564 0 0 #arcLabel
Ss0 f34 expr out #txt
Ss0 f34 360 244 360 366 #arcP
Ss0 f34 0 0.48988664616293365 0 0 #arcLabel
Ss0 f37 type ch.ivyteam.ivy.workflow.ui.security.PasswordChange.PasswordChangeData #txt
Ss0 f37 guid 12A147B66ECF1213 #txt
Ss0 f37 190 366 20 20 13 0 #rect
Ss0 f37 @|RichDialogEndIcon #fIcon
Ss0 f3 targetDisplay TOP #txt
Ss0 f3 richDialogId ch.ivyteam.ivy.addons.commondialogs.MessageDialog #txt
Ss0 f3 startMethod showMessage(String) #txt
Ss0 f3 type ch.ivyteam.ivy.workflow.ui.security.PasswordChange.PasswordChangeData #txt
Ss0 f3 requestActionDecl '<String message> param;' #txt
Ss0 f3 requestActionCode 'param.message = "Password changed sucessfuly.";' #txt
Ss0 f3 responseActionDecl 'ch.ivyteam.ivy.workflow.ui.security.PasswordChange.PasswordChangeData out;
' #txt
Ss0 f3 responseMappingAction 'out=in;
' #txt
Ss0 f3 windowConfiguration '* ' #txt
Ss0 f3 isAsynch false #txt
Ss0 f3 isInnerRd true #txt
Ss0 f3 isDialog true #txt
Ss0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Password changed
 sucessfuly</name>
        <nameStyle>28,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f3 182 284 36 24 20 -2 #rect
Ss0 f3 @|RichDialogIcon #fIcon
Ss0 f4 expr out #txt
Ss0 f4 200 252 200 284 #arcP
Ss0 f5 expr out #txt
Ss0 f5 200 308 200 366 #arcP
>Proto Ss0 .type ch.ivyteam.ivy.workflow.ui.security.PasswordChange.PasswordChangeData #txt
>Proto Ss0 .processKind RICH_DIALOG #txt
>Proto Ss0 .ui2RdDataAction 'out.confirmPassword=panel.confirmTextField.text;
out.newPassword=panel.newPasswordTextField.text;
out.oldPassword=panel.oldPasswordTextField.text;
' #txt
>Proto Ss0 -8 -8 16 16 16 26 #rect
>Proto Ss0 '' #fIcon
Ss0 f0 mainOut f2 tail #connect
Ss0 f2 head f1 mainIn #connect
Ss0 f14 mainOut f26 tail #connect
Ss0 f26 head f23 mainIn #connect
Ss0 f13 mainOut f22 tail #connect
Ss0 f22 head f21 in #connect
Ss0 f28 head f27 mainIn #connect
Ss0 f27 mainOut f29 tail #connect
Ss0 f29 head f15 mainIn #connect
Ss0 f21 out f31 tail #connect
Ss0 f31 head f30 in #connect
Ss0 f21 out f28 tail #connect
Ss0 f30 out f33 tail #connect
Ss0 f33 head f32 mainIn #connect
Ss0 f30 out f36 tail #connect
Ss0 f36 head f35 mainIn #connect
Ss0 f35 mainOut f34 tail #connect
Ss0 f34 head f15 mainIn #connect
Ss0 f32 mainOut f4 tail #connect
Ss0 f4 head f3 mainIn #connect
Ss0 f3 mainOut f5 tail #connect
Ss0 f5 head f37 mainIn #connect
