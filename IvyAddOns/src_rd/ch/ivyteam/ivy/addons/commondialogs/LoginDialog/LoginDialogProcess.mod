[Ivy]
[>Created: Wed May 27 22:02:56 CEST 2009]
1181284475030FD6 3.11 #module
>Proto >Proto Collection #zClass
Ls0 LoginDialogProcess Big #zClass
Ls0 RD #cInfo
Ls0 #process
Ls0 @TextInP .resExport .resExport #zField
Ls0 @TextInP .type .type #zField
Ls0 @TextInP .processKind .processKind #zField
Ls0 @TextInP .xml .xml #zField
Ls0 @TextInP .responsibility .responsibility #zField
Ls0 @AnnotationInP-0n ai ai #zField
Ls0 @MessageFlowInP-0n messageIn messageIn #zField
Ls0 @MessageFlowOutP-0n messageOut messageOut #zField
Ls0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ls0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ls0 @RichDialogInitStart f0 '' #zField
Ls0 @RichDialogProcessEnd f1 '' #zField
Ls0 @RichDialogProcessStart f3 '' #zField
Ls0 @RichDialogProcessStart f4 '' #zField
Ls0 @RichDialogEnd f5 '' #zField
Ls0 @PushWFArc f6 '' #zField
Ls0 @RichDialogEnd f7 '' #zField
Ls0 @RichDialogProcessStep f9 '' #zField
Ls0 @PushWFArc f10 '' #zField
Ls0 @Alternative f11 '' #zField
Ls0 @PushWFArc f12 '' #zField
Ls0 @RichDialogProcessEnd f13 '' #zField
Ls0 @RichDialog f14 '' #zField
Ls0 @PushWFArc f15 '' #zField
Ls0 @PushWFArc f16 '' #zField
Ls0 @RichDialogProcessStep f17 '' #zField
Ls0 @PushWFArc f18 '' #zField
Ls0 @PushWFArc f8 '' #zField
Ls0 @RichDialogProcessStep f21 '' #zField
Ls0 @PushWFArc f20 '' #zField
Ls0 @PushWFArc f23 '' #zField
Ls0 @RichDialogInitStart f2 '' #zField
Ls0 @PushWFArc f19 '' #zField
>Proto Ls0 Ls0 LoginDialogProcess #zField
Ls0 f0 guid 11812DC187F6133F #txt
Ls0 f0 type ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData #txt
Ls0 f0 method login() #txt
Ls0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ls0 f0 inParameterMapAction 'out.password="";
out.prefferedUserSessionLanguageIndex=-1;
out.sessionLanguageSelectionVisible=false;
out.supportedLanguagesList=[];
out.userName="";
' #txt
Ls0 f0 outParameterDecl '<java.lang.Boolean successful> result;
' #txt
Ls0 f0 outParameterMapAction 'result.successful=in.successful;
' #txt
Ls0 f0 embeddedRdInitializations '* ' #txt
Ls0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>login()</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f0 46 46 20 20 13 0 #rect
Ls0 f0 @|RichDialogInitStartIcon #fIcon
Ls0 f1 type ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData #txt
Ls0 f1 43 235 26 26 14 0 #rect
Ls0 f1 @|RichDialogProcessEndIcon #fIcon
Ls0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>login</name>
        <nameStyle>5,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f3 guid 11812DC43473EE7C #txt
Ls0 f3 type ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData #txt
Ls0 f3 actionDecl 'ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData out;
' #txt
Ls0 f3 actionTable 'out=in;
' #txt
Ls0 f3 390 46 20 20 13 0 #rect
Ls0 f3 @|RichDialogProcessStartIcon #fIcon
Ls0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>cancel</name>
        <nameStyle>6,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f4 guid 11812DC4AC93ACC0 #txt
Ls0 f4 type ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData #txt
Ls0 f4 actionDecl 'ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData out;
' #txt
Ls0 f4 actionTable 'out=in;
' #txt
Ls0 f4 614 46 20 20 13 0 #rect
Ls0 f4 @|RichDialogProcessStartIcon #fIcon
Ls0 f5 type ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData #txt
Ls0 f5 guid 11812DCA4302C4C3 #txt
Ls0 f5 611 251 26 26 14 0 #rect
Ls0 f5 @|RichDialogEndIcon #fIcon
Ls0 f6 expr out #txt
Ls0 f6 624 66 624 251 #arcP
Ls0 f7 type ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData #txt
Ls0 f7 guid 11812DCB6702ACDB #txt
Ls0 f7 387 251 26 26 14 0 #rect
Ls0 f7 @|RichDialogEndIcon #fIcon
Ls0 f9 actionDecl 'ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData out;
' #txt
Ls0 f9 actionTable 'out=in;
' #txt
Ls0 f9 actionCode 'in.error = panel.login(ivy.session, in.userName, in.password);' #txt
Ls0 f9 type ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData #txt
Ls0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>login</name>
        <nameStyle>5,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f9 382 100 36 24 20 -2 #rect
Ls0 f9 @|RichDialogProcessStepIcon #fIcon
Ls0 f10 expr out #txt
Ls0 f10 400 66 400 100 #arcP
Ls0 f11 type ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData #txt
Ls0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ls0 f11 386 146 28 28 14 0 #rect
Ls0 f11 @|AlternativeIcon #fIcon
Ls0 f12 expr out #txt
Ls0 f12 400 124 400 146 #arcP
Ls0 f13 type ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData #txt
Ls0 f13 515 251 26 26 14 0 #rect
Ls0 f13 @|RichDialogProcessEndIcon #fIcon
Ls0 f14 targetWindow NEW #txt
Ls0 f14 targetDisplay TOP #txt
Ls0 f14 richDialogId ch.ivyteam.ivy.addons.commondialogs.ErrorDialog #txt
Ls0 f14 startMethod showError(java.lang.Throwable,Boolean,Boolean) #txt
Ls0 f14 type ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData #txt
Ls0 f14 requestActionDecl '<java.lang.Throwable error, Boolean showCopyButton, Boolean showDetailButton> param;' #txt
Ls0 f14 requestMappingAction 'param.error=in.error;
param.showCopyButton=true;
param.showDetailButton=true;
' #txt
Ls0 f14 responseActionDecl 'ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData out;
' #txt
Ls0 f14 responseMappingAction 'out=in;
' #txt
Ls0 f14 windowConfiguration '#Tue May 19 14:52:54 CEST 2009
height=0
maximized=false
centered=true
close_after_last_rd=true
resizable=true
width=0
title=Login Failed
' #txt
Ls0 f14 isAsynch false #txt
Ls0 f14 isInnerRd true #txt
Ls0 f14 isDialog true #txt
Ls0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>show error</name>
        <nameStyle>10,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f14 510 204 36 24 20 -2 #rect
Ls0 f14 @|RichDialogIcon #fIcon
Ls0 f15 expr in #txt
Ls0 f15 414 160 528 204 #arcP
Ls0 f15 1 528 160 #addKink
Ls0 f15 0 0.7414335424923689 0 0 #arcLabel
Ls0 f16 expr out #txt
Ls0 f16 528 228 528 251 #arcP
Ls0 f17 actionDecl 'ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData out;
' #txt
Ls0 f17 actionTable 'out=in;
out.successful=true;
' #txt
Ls0 f17 actionCode 'import java.util.Locale;


// set the user session language according to his selection
if (panel.sessionLanguagesComboBox.getSelectedListEntry() != null && 
		panel.sessionLanguagesComboBox.getSelectedListEntry() instanceof Locale)
{
	Locale selectedSessionLanguage = panel.sessionLanguagesComboBox.getSelectedListEntry() as Locale;
	ivy.log.debug("Set the user session language to: " + selectedSessionLanguage);
	ivy.session.setContentLocale(selectedSessionLanguage);
}' #txt
Ls0 f17 type ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData #txt
Ls0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set successful
</name>
        <nameStyle>15,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f17 382 204 36 24 20 -2 #rect
Ls0 f17 @|RichDialogProcessStepIcon #fIcon
Ls0 f18 expr in #txt
Ls0 f18 outCond 'in.#error == null' #txt
Ls0 f18 400 174 400 204 #arcP
Ls0 f8 expr out #txt
Ls0 f8 400 228 400 251 #arcP
Ls0 f21 actionDecl 'ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData out;
' #txt
Ls0 f21 actionTable 'out=in;
' #txt
Ls0 f21 actionCode panel.getRootPane().setDefaultButton(panel.loginButton); #txt
Ls0 f21 type ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData #txt
Ls0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set default 
button</name>
        <nameStyle>19,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f21 38 116 36 24 20 -2 #rect
Ls0 f21 @|RichDialogProcessStepIcon #fIcon
Ls0 f20 expr out #txt
Ls0 f20 56 140 56 235 #arcP
Ls0 f23 expr out #txt
Ls0 f23 56 66 56 116 #arcP
Ls0 f2 guid 11E3F6181BC96A9E #txt
Ls0 f2 type ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData #txt
Ls0 f2 method loginAndSelectSessionLanguage() #txt
Ls0 f2 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ls0 f2 inParameterMapAction 'out.password="";
out.userName="";
' #txt
Ls0 f2 inActionCode 'import com.ulcjava.base.application.ClientContext;
import java.util.Locale;


String prefferedUserSessionLanguage;

// session language selection panel will be visible
out.sessionLanguageSelectionVisible = true;

out.supportedLanguagesList = ivy.cms.getSupportedLanguages();
out.prefferedUserSessionLanguageIndex = -1;


// just propose the locale language (fr_CH), and if not supported, then just the language (fr)
ivy.log.debug("Client context Locale: " + ClientContext.getLocale().toString());
prefferedUserSessionLanguage = ClientContext.getLocale().toString();


int prefferedUserSessionLanguageCountryIndex = -1; // ex: fr_CH
int prefferedUserSessionLanguageIndex = 0; // ex: fr


// do the loop in order to select the preffered language
for (int i=0; i<out.supportedLanguagesList.size(); i++)
{
	if (out.supportedLanguagesList.get(i).toString().equalsIgnoreCase(prefferedUserSessionLanguage))
	{
		prefferedUserSessionLanguageCountryIndex = i;
	}
	
	if (prefferedUserSessionLanguage.startsWith(out.supportedLanguagesList.get(i).toString()))
	{
		prefferedUserSessionLanguageIndex = i;
	}
	
	out.prefferedUserSessionLanguageIndex = prefferedUserSessionLanguageCountryIndex != -1? prefferedUserSessionLanguageCountryIndex: prefferedUserSessionLanguageIndex;
}' #txt
Ls0 f2 outParameterDecl '<java.lang.Boolean successful> result;
' #txt
Ls0 f2 outParameterMapAction 'result.successful=in.successful;
' #txt
Ls0 f2 embeddedRdInitializations '* ' #txt
Ls0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>loginAndSelectSessionLanguage()</name>
        <nameStyle>31,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f2 142 54 20 20 13 0 #rect
Ls0 f2 @|RichDialogInitStartIcon #fIcon
Ls0 f19 expr out #txt
Ls0 f19 152 74 74 128 #arcP
Ls0 f19 1 152 128 #addKink
Ls0 f19 1 0.12186867199305558 0 0 #arcLabel
>Proto Ls0 .type ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData #txt
>Proto Ls0 .processKind RICH_DIALOG #txt
>Proto Ls0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Start methods</swimlaneLabel>
        <swimlaneLabel>Events</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>354</swimlaneSize>
    <swimlaneSize>330</swimlaneSize>
    <swimlaneColor>-16724941</swimlaneColor>
    <swimlaneColor>-16763956</swimlaneColor>
</elementInfo>
' #txt
>Proto Ls0 .ui2RdDataAction 'out.password=panel.passwordPasswordField.text;
out.sessionLanguageSelectionVisible=panel.sessionLanguageLabel.visible;
out.prefferedUserSessionLanguageIndex=panel.sessionLanguagesComboBox.selectedIndex;
out.sessionLanguageSelectionVisible=panel.sessionLanguagesComboBox.visible;
out.userName=panel.userNameTextField.text;
' #txt
>Proto Ls0 .rdData2UIAction 'panel.passwordPasswordField.text=in.password;
panel.sessionLanguageLabel.visible=in.sessionLanguageSelectionVisible;
panel.sessionLanguagesComboBox.listData=in.supportedLanguagesList;
panel.sessionLanguagesComboBox.selectedIndex=in.prefferedUserSessionLanguageIndex;
panel.sessionLanguagesComboBox.visible=in.sessionLanguageSelectionVisible;
panel.userNameTextField.text=in.userName;
' #txt
>Proto Ls0 -8 -8 16 16 16 26 #rect
>Proto Ls0 '' #fIcon
Ls0 f4 mainOut f6 tail #connect
Ls0 f6 head f5 mainIn #connect
Ls0 f3 mainOut f10 tail #connect
Ls0 f10 head f9 mainIn #connect
Ls0 f9 mainOut f12 tail #connect
Ls0 f12 head f11 in #connect
Ls0 f15 head f14 mainIn #connect
Ls0 f14 mainOut f16 tail #connect
Ls0 f16 head f13 mainIn #connect
Ls0 f11 out f18 tail #connect
Ls0 f18 head f17 mainIn #connect
Ls0 f11 out f15 tail #connect
Ls0 f17 mainOut f8 tail #connect
Ls0 f8 head f7 mainIn #connect
Ls0 f21 mainOut f20 tail #connect
Ls0 f20 head f1 mainIn #connect
Ls0 f0 mainOut f23 tail #connect
Ls0 f23 head f21 mainIn #connect
Ls0 f2 mainOut f19 tail #connect
Ls0 f19 head f21 mainIn #connect
