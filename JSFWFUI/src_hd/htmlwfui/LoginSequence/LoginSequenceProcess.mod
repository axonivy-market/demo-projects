[Ivy]
[>Created: Tue Jan 22 19:18:38 CET 2013]
13BDBD049B1D589A 3.17 #module
>Proto >Proto Collection #zClass
Ls0 LoginSequenceProcess Big #zClass
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
Ls0 @Alternative f3 '' #zField
Ls0 @RichDialogMethodStart f2 '' #zField
Ls0 @RichDialogProcessStep f5 '' #zField
Ls0 @PushWFArc f6 '' #zField
Ls0 @PushWFArc f7 '' #zField
Ls0 @RichDialogEnd f8 '' #zField
Ls0 @PushWFArc f9 '' #zField
Ls0 @PushWFArc f10 '' #zField
Ls0 @PushWFArc f4 '' #zField
>Proto Ls0 Ls0 LoginSequenceProcess #zField
Ls0 f0 guid 13BDBD049E0C99EC #txt
Ls0 f0 type htmlwfui.LoginSequence.LoginSequenceData #txt
Ls0 f0 method start() #txt
Ls0 f0 disableUIEvents true #txt
Ls0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ls0 f0 outParameterDecl '<java.lang.String username,java.lang.String password> result;
' #txt
Ls0 f0 outParameterMapAction 'result.username=in.username;
result.password=in.password;
' #txt
Ls0 f0 embeddedRdInitializations '* ' #txt
Ls0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f0 86 54 20 20 13 0 #rect
Ls0 f0 @|RichDialogInitStartIcon #fIcon
Ls0 f1 type htmlwfui.LoginSequence.LoginSequenceData #txt
Ls0 f1 86 214 20 20 13 0 #rect
Ls0 f1 @|RichDialogProcessEndIcon #fIcon
Ls0 f3 type htmlwfui.LoginSequence.LoginSequenceData #txt
Ls0 f3 82 114 28 28 14 0 #rect
Ls0 f3 @|AlternativeIcon #fIcon
Ls0 f2 guid 13BDBDD15405D741 #txt
Ls0 f2 type htmlwfui.LoginSequence.LoginSequenceData #txt
Ls0 f2 method login(String,String) #txt
Ls0 f2 disableUIEvents false #txt
Ls0 f2 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String username,java.lang.String password> param = methodEvent.getInputArguments();
' #txt
Ls0 f2 inParameterMapAction 'out.password=param.password;
out.username=param.username;
' #txt
Ls0 f2 outParameterDecl '<java.lang.String login> result;
' #txt
Ls0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>login(String,String)</name>
        <nameStyle>20,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f2 246 54 20 20 13 0 #rect
Ls0 f2 @|RichDialogMethodStartIcon #fIcon
Ls0 f5 actionDecl 'htmlwfui.LoginSequence.LoginSequenceData out;
' #txt
Ls0 f5 actionTable 'out=in.clone();
' #txt
Ls0 f5 actionCode 'ivy.session.loginSessionUser(in.username, in.password);' #txt
Ls0 f5 type htmlwfui.LoginSequence.LoginSequenceData #txt
Ls0 f5 238 116 36 24 20 -2 #rect
Ls0 f5 @|RichDialogProcessStepIcon #fIcon
Ls0 f6 expr out #txt
Ls0 f6 256 74 256 116 #arcP
Ls0 f7 expr out #txt
Ls0 f7 238 128 110 128 #arcP
Ls0 f8 type htmlwfui.LoginSequence.LoginSequenceData #txt
Ls0 f8 guid 13BDBDD702D827D5 #txt
Ls0 f8 182 214 20 20 13 0 #rect
Ls0 f8 @|RichDialogEndIcon #fIcon
Ls0 f9 expr in #txt
Ls0 f9 outCond '! ivy.session.isSessionUserUnknown()' #txt
Ls0 f9 103 135 184 216 #arcP
Ls0 f10 expr in #txt
Ls0 f10 96 142 96 214 #arcP
Ls0 f4 expr out #txt
Ls0 f4 96 74 96 114 #arcP
>Proto Ls0 .type htmlwfui.LoginSequence.LoginSequenceData #txt
>Proto Ls0 .processKind HTML_DIALOG #txt
>Proto Ls0 -8 -8 16 16 16 26 #rect
>Proto Ls0 '' #fIcon
Ls0 f2 mainOut f6 tail #connect
Ls0 f6 head f5 mainIn #connect
Ls0 f5 mainOut f7 tail #connect
Ls0 f7 head f3 in #connect
Ls0 f3 out f9 tail #connect
Ls0 f9 head f8 mainIn #connect
Ls0 f3 out f10 tail #connect
Ls0 f10 head f1 mainIn #connect
Ls0 f0 mainOut f4 tail #connect
Ls0 f4 head f3 in #connect
