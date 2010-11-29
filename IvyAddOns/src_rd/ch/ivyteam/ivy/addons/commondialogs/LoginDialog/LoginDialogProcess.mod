[Ivy]
[>Created: Tue May 18 13:01:52 CEST 2010]
1181284475030FD6 3.12 #module
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
Ls0 @Alternative f11 '' #zField
Ls0 @PushWFArc f12 '' #zField
Ls0 @RichDialogProcessEnd f13 '' #zField
Ls0 @RichDialog f14 '' #zField
Ls0 @PushWFArc f16 '' #zField
Ls0 @RichDialogProcessStep f17 '' #zField
Ls0 @PushWFArc f18 '' #zField
Ls0 @RichDialogProcessStep f21 '' #zField
Ls0 @PushWFArc f20 '' #zField
Ls0 @PushWFArc f23 '' #zField
Ls0 @RichDialogInitStart f2 '' #zField
Ls0 @RichDialogProcessStart f22 '' #zField
Ls0 @RichDialogProcessEnd f24 '' #zField
Ls0 @PushWFArc f25 '' #zField
Ls0 @RichDialogInitStart f26 '' #zField
Ls0 @RichDialogProcessStep f28 '' #zField
Ls0 @PushWFArc f29 '' #zField
Ls0 @PushWFArc f19 '' #zField
Ls0 @PushWFArc f30 '' #zField
Ls0 @Alternative f27 '' #zField
Ls0 @RichDialog f32 '' #zField
Ls0 @RichDialogProcessStep f37 '' #zField
Ls0 @PushWFArc f38 '' #zField
Ls0 @PushWFArc f15 '' #zField
Ls0 @RichDialogProcessStep f39 '' #zField
Ls0 @PushWFArc f40 '' #zField
Ls0 @PushWFArc f33 '' #zField
Ls0 @RichDialogProcessStep f36 '' #zField
Ls0 @PushWFArc f42 '' #zField
Ls0 @PushWFArc f43 '' #zField
Ls0 @PushWFArc f31 '' #zField
Ls0 @PushWFArc f10 '' #zField
Ls0 @PushWFArc f8 '' #zField
>Proto Ls0 Ls0 LoginDialogProcess #zField
Ls0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>login()</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f0 guid 11812DC187F6133F #txt
Ls0 f0 type ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData #txt
Ls0 f0 method login() #txt
Ls0 f0 disableUIEvents false #txt
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
Ls0 f0 46 46 20 20 13 0 #rect
Ls0 f0 @|RichDialogInitStartIcon #fIcon
Ls0 f1 type ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData #txt
Ls0 f1 43 523 26 26 14 0 #rect
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
Ls0 f3 614 46 20 20 13 0 #rect
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
Ls0 f4 1014 46 20 20 13 0 #rect
Ls0 f4 @|RichDialogProcessStartIcon #fIcon
Ls0 f5 type ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData #txt
Ls0 f5 guid 11812DCA4302C4C3 #txt
Ls0 f5 1011 523 26 26 14 0 #rect
Ls0 f5 @|RichDialogEndIcon #fIcon
Ls0 f6 expr out #txt
Ls0 f6 1024 66 1024 523 #arcP
Ls0 f7 type ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData #txt
Ls0 f7 guid 11812DCB6702ACDB #txt
Ls0 f7 611 523 26 26 14 0 #rect
Ls0 f7 @|RichDialogEndIcon #fIcon
Ls0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>login</name>
        <nameStyle>5,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f9 actionDecl 'ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData out;
' #txt
Ls0 f9 actionTable 'out=in;
' #txt
Ls0 f9 actionCode 'in.error = panel.login(ivy.session, in.userName, in.password);' #txt
Ls0 f9 type ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData #txt
Ls0 f9 606 228 36 24 20 -2 #rect
Ls0 f9 @|RichDialogProcessStepIcon #fIcon
Ls0 f11 type ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData #txt
Ls0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>authentification
successful ?</name>
        <nameStyle>29,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f11 610 298 28 28 8 -34 #rect
Ls0 f11 @|AlternativeIcon #fIcon
Ls0 f12 expr out #txt
Ls0 f12 624 252 624 298 #arcP
Ls0 f13 type ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData #txt
Ls0 f13 795 523 26 26 14 0 #rect
Ls0 f13 @|RichDialogProcessEndIcon #fIcon
Ls0 f14 targetWindow NEW:card: #txt
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
Ls0 f14 windowConfiguration '{/title "<%=in.windowTitle%>"/width 0 /height 0 /centered true /resizable true /maximized false /close_after_last_rd true }' #txt
Ls0 f14 isAsynch true #txt
Ls0 f14 isInnerRd true #txt
Ls0 f14 isDialog false #txt
Ls0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>show error</name>
        <nameStyle>10,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f14 790 452 36 24 20 -2 #rect
Ls0 f14 @|RichDialogIcon #fIcon
Ls0 f16 expr out #txt
Ls0 f16 808 476 808 523 #arcP
Ls0 f16 0 0.48815400549469334 0 0 #arcLabel
Ls0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set successful,
session language</name>
        <nameStyle>32,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f17 actionDecl 'ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData out;
' #txt
Ls0 f17 actionTable 'out=in;
' #txt
Ls0 f17 actionCode 'import java.util.Locale;

// set successful
out.successful = true;


// set the user session language according to his selection
if (panel.sessionLanguagesComboBox.getSelectedListEntry() != null && 
		panel.sessionLanguagesComboBox.getSelectedListEntry() instanceof Locale)
{
	Locale selectedSessionLanguage = panel.sessionLanguagesComboBox.getSelectedListEntry() as Locale;
	ivy.log.debug("Set the user session language to: " + selectedSessionLanguage);
	ivy.session.setContentLocale(selectedSessionLanguage);
}' #txt
Ls0 f17 type ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData #txt
Ls0 f17 606 364 36 24 20 -2 #rect
Ls0 f17 @|RichDialogProcessStepIcon #fIcon
Ls0 f18 expr in #txt
Ls0 f18 outCond '!(in.#error is initialized)' #txt
Ls0 f18 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f18 624 326 624 364 #arcP
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
Ls0 f21 actionDecl 'ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData out;
' #txt
Ls0 f21 actionTable 'out=in;
' #txt
Ls0 f21 actionCode panel.getRootPane().setDefaultButton(panel.loginButton); #txt
Ls0 f21 type ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData #txt
Ls0 f21 38 324 36 24 20 -2 #rect
Ls0 f21 @|RichDialogProcessStepIcon #fIcon
Ls0 f20 expr out #txt
Ls0 f20 56 348 56 523 #arcP
Ls0 f23 expr out #txt
Ls0 f23 56 66 56 324 #arcP
Ls0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>loginAndSelectSessionLanguage()</name>
        <nameStyle>31,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f2 guid 11E3F6181BC96A9E #txt
Ls0 f2 type ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData #txt
Ls0 f2 method loginAndSelectSessionLanguage() #txt
Ls0 f2 disableUIEvents false #txt
Ls0 f2 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ls0 f2 inParameterMapAction 'out.password="";
out.userName="";
' #txt
Ls0 f2 outParameterDecl '<java.lang.Boolean successful> result;
' #txt
Ls0 f2 outParameterMapAction 'result.successful=in.successful;
' #txt
Ls0 f2 embeddedRdInitializations '* ' #txt
Ls0 f2 134 46 20 20 13 0 #rect
Ls0 f2 @|RichDialogInitStartIcon #fIcon
Ls0 f22 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>loadAllowedEnvironments</name>
        <nameStyle>23,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f22 guid 1284EC13DFDD5E11 #txt
Ls0 f22 type ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData #txt
Ls0 f22 actionDecl 'ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData out;
' #txt
Ls0 f22 actionTable 'out=in;
' #txt
Ls0 f22 actionCode 'import ch.ivyteam.ivy.addons.restricted.util.UserPropertyUtil;

out.selectedEnvironmentIndex = -1;

if (in.allowedEnvironmentsSelectionVisible)
{
	out.allowedEnvironments = UserPropertyUtil.getUserAllowedEnvironments(in.userName);

	out.selectedEnvironmentIndex = !out.allowedEnvironments.isEmpty()? 0: -1;
}' #txt
Ls0 f22 1070 46 20 20 13 0 #rect
Ls0 f22 @|RichDialogProcessStartIcon #fIcon
Ls0 f24 type ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData #txt
Ls0 f24 1070 526 20 20 13 0 #rect
Ls0 f24 @|RichDialogProcessEndIcon #fIcon
Ls0 f25 expr out #txt
Ls0 f25 1080 66 1080 526 #arcP
Ls0 f26 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>loginAndSelectSessionLanguageAndEnvironment()</name>
        <nameStyle>45,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f26 guid 1284F2CC4F77B412 #txt
Ls0 f26 type ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData #txt
Ls0 f26 method loginAndSelectSessionLanguageAndEnvironment() #txt
Ls0 f26 disableUIEvents true #txt
Ls0 f26 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ls0 f26 inActionCode 'out.allowedEnvironmentsSelectionVisible = true;' #txt
Ls0 f26 outParameterDecl '<java.lang.Boolean successful> result;
' #txt
Ls0 f26 outActionCode 'result.successful = in.successful;' #txt
Ls0 f26 embeddedRdInitializations '* ' #txt
Ls0 f26 326 46 20 20 13 0 #rect
Ls0 f26 @|RichDialogInitStartIcon #fIcon
Ls0 f28 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>build the
list of available 
session languages</name>
        <nameStyle>46,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f28 actionDecl 'ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData out;
' #txt
Ls0 f28 actionTable 'out=in;
' #txt
Ls0 f28 actionCode 'import com.ulcjava.base.application.ClientContext;
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
Ls0 f28 type ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData #txt
Ls0 f28 126 188 36 24 20 -2 #rect
Ls0 f28 @|RichDialogProcessStepIcon #fIcon
Ls0 f29 expr out #txt
Ls0 f29 144 66 144 188 #arcP
Ls0 f29 0 0.12186867199305558 0 0 #arcLabel
Ls0 f19 expr out #txt
Ls0 f19 144 212 74 333 #arcP
Ls0 f19 1 144 320 #addKink
Ls0 f19 1 0.18207583962633722 0 0 #arcLabel
Ls0 f30 expr out #txt
Ls0 f30 336 66 162 199 #arcP
Ls0 f30 1 336 184 #addKink
Ls0 f30 1 0.28236353408862747 0 0 #arcLabel
Ls0 f27 type ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData #txt
Ls0 f27 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set active environment 
successful?</name>
        <nameStyle>35,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f27 610 162 28 28 11 -31 #rect
Ls0 f27 @|AlternativeIcon #fIcon
Ls0 f32 targetWindow NEW #txt
Ls0 f32 targetDisplay TOP #txt
Ls0 f32 richDialogId ch.ivyteam.ivy.addons.commondialogs.MessageDialog #txt
Ls0 f32 startMethod showMessage(String) #txt
Ls0 f32 type ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData #txt
Ls0 f32 requestActionDecl '<String message> param;' #txt
Ls0 f32 requestActionCode 'param.message = ivy.cms.co("/ch/ivyteam/ivy/addons/strings/labels/setActiveEnvironmentFailedDescription", [in.setActiveEnvironmentException.getMessage()]);' #txt
Ls0 f32 responseActionDecl 'ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData out;
' #txt
Ls0 f32 responseMappingAction 'out=in;
' #txt
Ls0 f32 windowConfiguration '{/title "<%=in.windowTitle%>"/width 400 /height 150 /centered true /resizable true /maximized false /close_after_last_rd true }' #txt
Ls0 f32 isAsynch false #txt
Ls0 f32 isInnerRd true #txt
Ls0 f32 isDialog true #txt
Ls0 f32 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>show error
message</name>
        <nameStyle>18,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f32 886 284 36 24 20 -2 #rect
Ls0 f32 @|RichDialogIcon #fIcon
Ls0 f37 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>define the 
windows title</name>
        <nameStyle>25,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f37 actionDecl 'ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData out;
' #txt
Ls0 f37 actionTable 'out=in;
' #txt
Ls0 f37 actionCode 'out.windowTitle = ivy.cms.co("/ch/ivyteam/ivy/addons/strings/labels/loginFailed");' #txt
Ls0 f37 type ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData #txt
Ls0 f37 790 404 36 24 20 -2 #rect
Ls0 f37 @|RichDialogProcessStepIcon #fIcon
Ls0 f38 expr in #txt
Ls0 f38 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>no</name>
        <nameStyle>2,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f38 638 312 808 404 #arcP
Ls0 f38 1 808 312 #addKink
Ls0 f38 0 0.7414335424923689 0 0 #arcLabel
Ls0 f15 expr out #txt
Ls0 f15 808 428 808 452 #arcP
Ls0 f39 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>define the 
windows title</name>
        <nameStyle>25,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f39 actionDecl 'ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData out;
' #txt
Ls0 f39 actionTable 'out=in;
' #txt
Ls0 f39 actionCode 'out.windowTitle = ivy.cms.co("/ch/ivyteam/ivy/addons/strings/labels/setActiveEnvironmentFailedTitle");' #txt
Ls0 f39 type ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData #txt
Ls0 f39 886 236 36 24 20 -2 #rect
Ls0 f39 @|RichDialogProcessStepIcon #fIcon
Ls0 f40 expr in #txt
Ls0 f40 638 176 904 236 #arcP
Ls0 f40 1 904 176 #addKink
Ls0 f40 0 0.6763527073249864 0 0 #arcLabel
Ls0 f33 expr out #txt
Ls0 f33 904 260 904 284 #arcP
Ls0 f36 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>try to set environment</name>
        <nameStyle>22,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f36 actionDecl 'ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData out;
' #txt
Ls0 f36 actionTable 'out=in;
' #txt
Ls0 f36 actionCode '// set the active environment according to his selection
if (in.allowedEnvironmentsSelectionVisible && !in.allowedEnvironments.isEmpty())
{
	String activeEnvironment = in.allowedEnvironments.get(in.selectedEnvironmentIndex);

	ivy.log.info("Assigning the active environment to {0} to the {1} user session...", activeEnvironment, in.userName);

	try
	{
		ivy.session.setActiveEnvironment(activeEnvironment);
		out.setSetActiveEnvironmentException(null);
	}
	catch (Exception ex)
	{
		out.setActiveEnvironmentException = ex;
	}
	
	ivy.log.info("Assigned active environment is {0} at the {1} user session...", activeEnvironment, in.userName);
}' #txt
Ls0 f36 type ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData #txt
Ls0 f36 606 92 36 24 20 -2 #rect
Ls0 f36 @|RichDialogProcessStepIcon #fIcon
Ls0 f42 expr out #txt
Ls0 f42 624 66 624 92 #arcP
Ls0 f43 expr out #txt
Ls0 f43 624 388 624 523 #arcP
Ls0 f31 expr out #txt
Ls0 f31 624 116 624 162 #arcP
Ls0 f10 expr in #txt
Ls0 f10 outCond '!(in.#setActiveEnvironmentException is initialized)' #txt
Ls0 f10 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f10 624 190 624 228 #arcP
Ls0 f8 expr out #txt
Ls0 f8 904 308 820 532 #arcP
Ls0 f8 1 904 512 #addKink
Ls0 f8 1 0.8059936166652988 0 0 #arcLabel
>Proto Ls0 .type ch.ivyteam.ivy.addons.commondialogs.LoginDialog.LoginDialogData #txt
>Proto Ls0 .processKind RICH_DIALOG #txt
>Proto Ls0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Start methods</swimlaneLabel>
        <swimlaneLabel>Events</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>568</swimlaneSize>
    <swimlaneSize>675</swimlaneSize>
    <swimlaneColor>-16724941</swimlaneColor>
    <swimlaneColor>-16763956</swimlaneColor>
</elementInfo>
' #txt
>Proto Ls0 .ui2RdDataAction 'out.password=panel.passwordPasswordField.text;
out.sessionLanguageSelectionVisible=panel.sessionLanguageLabel.visible;
out.selectedEnvironmentIndex=panel.allowedEnvironmentsComboBox.selectedIndex;
out.prefferedUserSessionLanguageIndex=panel.sessionLanguagesComboBox.selectedIndex;
out.sessionLanguageSelectionVisible=panel.sessionLanguagesComboBox.visible;
out.userName=panel.userNameTextField.text;
' #txt
>Proto Ls0 .rdData2UIAction 'panel.allowedEnvironmentsComboBox.listData=in.allowedEnvironments;
panel.passwordPasswordField.text=in.password;
panel.sessionLanguageLabel.visible=in.sessionLanguageSelectionVisible;
panel.sessionLanguagesComboBox.listData=in.supportedLanguagesList;
panel.allowedEnvironmentsComboBox.selectedIndex=in.selectedEnvironmentIndex;
panel.allowedEnvironmentsComboBox.visible=!in.allowedEnvironments.isEmpty();
panel.environmentLabel.visible=!in.allowedEnvironments.isEmpty();
panel.sessionLanguagesComboBox.selectedIndex=in.prefferedUserSessionLanguageIndex;
panel.sessionLanguagesComboBox.visible=in.sessionLanguageSelectionVisible;
panel.userNameTextField.text=in.userName;
' #txt
>Proto Ls0 -8 -8 16 16 16 26 #rect
>Proto Ls0 '' #fIcon
Ls0 f4 mainOut f6 tail #connect
Ls0 f6 head f5 mainIn #connect
Ls0 f9 mainOut f12 tail #connect
Ls0 f12 head f11 in #connect
Ls0 f14 mainOut f16 tail #connect
Ls0 f16 head f13 mainIn #connect
Ls0 f11 out f18 tail #connect
Ls0 f18 head f17 mainIn #connect
Ls0 f21 mainOut f20 tail #connect
Ls0 f20 head f1 mainIn #connect
Ls0 f0 mainOut f23 tail #connect
Ls0 f23 head f21 mainIn #connect
Ls0 f22 mainOut f25 tail #connect
Ls0 f25 head f24 mainIn #connect
Ls0 f2 mainOut f29 tail #connect
Ls0 f29 head f28 mainIn #connect
Ls0 f28 mainOut f19 tail #connect
Ls0 f19 head f21 mainIn #connect
Ls0 f26 mainOut f30 tail #connect
Ls0 f30 head f28 mainIn #connect
Ls0 f11 out f38 tail #connect
Ls0 f38 head f37 mainIn #connect
Ls0 f37 mainOut f15 tail #connect
Ls0 f15 head f14 mainIn #connect
Ls0 f40 head f39 mainIn #connect
Ls0 f39 mainOut f33 tail #connect
Ls0 f33 head f32 mainIn #connect
Ls0 f3 mainOut f42 tail #connect
Ls0 f42 head f36 mainIn #connect
Ls0 f17 mainOut f43 tail #connect
Ls0 f43 head f7 mainIn #connect
Ls0 f36 mainOut f31 tail #connect
Ls0 f31 head f27 in #connect
Ls0 f27 out f10 tail #connect
Ls0 f10 head f9 mainIn #connect
Ls0 f27 out f40 tail #connect
Ls0 f32 mainOut f8 tail #connect
Ls0 f8 head f13 mainIn #connect
