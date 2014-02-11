[Ivy]
[>Created: Thu Jun 20 16:06:33 CEST 2013]
13F6148AFE612F94 3.17 #module
>Proto >Proto Collection #zClass
Ls0 LoginProcess Big #zClass
Ls0 RD #cInfo
Ls0 #process
Ls0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ls0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ls0 @TextInP .resExport .resExport #zField
Ls0 @TextInP .type .type #zField
Ls0 @TextInP .processKind .processKind #zField
Ls0 @AnnotationInP-0n ai ai #zField
Ls0 @TextInP .xml .xml #zField
Ls0 @TextInP .responsibility .responsibility #zField
Ls0 @RichDialogInitStart f0 '' #zField
Ls0 @RichDialogProcessEnd f1 '' #zField
Ls0 @PushWFArc f2 '' #zField
Ls0 @RichDialogProcessStart f3 '' #zField
Ls0 @GridStep f6 '' #zField
Ls0 @PushWFArc f7 '' #zField
Ls0 @PushWFArc f8 '' #zField
>Proto Ls0 Ls0 LoginProcess #zField
Ls0 f0 guid 13F6148B0061FE78 #txt
Ls0 f0 type ch.ivyteam.wf.login.Login.LoginData #txt
Ls0 f0 method start() #txt
Ls0 f0 disableUIEvents true #txt
Ls0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ls0 f0 outParameterDecl '<> result;
' #txt
Ls0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ls0 f0 86 54 20 20 13 0 #rect
Ls0 f0 @|RichDialogInitStartIcon #fIcon
Ls0 f1 type ch.ivyteam.wf.login.Login.LoginData #txt
Ls0 f1 86 182 20 20 13 0 #rect
Ls0 f1 @|RichDialogProcessEndIcon #fIcon
Ls0 f2 expr out #txt
Ls0 f2 96 74 96 182 #arcP
Ls0 f3 guid 13F61CA0C651F57C #txt
Ls0 f3 type ch.ivyteam.wf.login.Login.LoginData #txt
Ls0 f3 actionDecl 'ch.ivyteam.wf.login.Login.LoginData out;
' #txt
Ls0 f3 actionTable 'out=in;
' #txt
Ls0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>login</name>
    </language>
</elementInfo>
' #txt
Ls0 f3 182 54 20 20 13 0 #rect
Ls0 f3 @|RichDialogProcessStartIcon #fIcon
Ls0 f6 actionDecl 'ch.ivyteam.wf.login.Login.LoginData out;
' #txt
Ls0 f6 actionTable 'out=in;
' #txt
Ls0 f6 actionCode 'import javax.faces.context.FacesContext;
import javax.faces.application.FacesMessage;

boolean loggedIn = ivy.session.loginSessionUser(in.username, in.password);
out.password = null;
if (!loggedIn) 
{
	FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR, "Login failed", ""));
}
else
{
	FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_INFO, ivy.cms.co("/labels/workflow/home/welcome"), in.username));
}' #txt
Ls0 f6 type ch.ivyteam.wf.login.Login.LoginData #txt
Ls0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>login</name>
        <nameStyle>5
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f6 174 116 36 24 20 -2 #rect
Ls0 f6 @|StepIcon #fIcon
Ls0 f7 expr out #txt
Ls0 f7 192 74 192 116 #arcP
Ls0 f8 expr out #txt
Ls0 f8 192 140 106 192 #arcP
Ls0 f8 1 192 192 #addKink
Ls0 f8 1 0.18806928460277236 0 0 #arcLabel
>Proto Ls0 .type ch.ivyteam.wf.login.Login.LoginData #txt
>Proto Ls0 .processKind HTML_DIALOG #txt
>Proto Ls0 -8 -8 16 16 16 26 #rect
>Proto Ls0 '' #fIcon
Ls0 f0 mainOut f2 tail #connect
Ls0 f2 head f1 mainIn #connect
Ls0 f3 mainOut f7 tail #connect
Ls0 f7 head f6 mainIn #connect
Ls0 f6 mainOut f8 tail #connect
Ls0 f8 head f1 mainIn #connect
