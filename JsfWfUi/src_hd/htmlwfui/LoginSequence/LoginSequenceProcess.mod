[Ivy]
[>Created: Fri Mar 08 14:51:20 CET 2013]
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
Ls0 @RichDialogMethodStart f2 '' #zField
Ls0 @GridStep f5 '' #zField
Ls0 @PushWFArc f6 '' #zField
Ls0 @RichDialogEnd f8 '' #zField
Ls0 @PushWFArc f11 '' #zField
Ls0 @PushWFArc f4 '' #zField
>Proto Ls0 Ls0 LoginSequenceProcess #zField
Ls0 f0 guid 13BDBD049E0C99EC #txt
Ls0 f0 type htmlwfui.LoginSequence.LoginSequenceData #txt
Ls0 f0 method start() #txt
Ls0 f0 disableUIEvents true #txt
Ls0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ls0 f0 outParameterDecl '<> result;
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
Ls0 f1 86 182 20 20 13 0 #rect
Ls0 f1 @|RichDialogProcessEndIcon #fIcon
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
Ls0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>login</name>
        <nameStyle>5
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f5 238 116 36 24 20 -2 #rect
Ls0 f5 @|StepIcon #fIcon
Ls0 f6 expr out #txt
Ls0 f6 256 74 256 116 #arcP
Ls0 f8 type htmlwfui.LoginSequence.LoginSequenceData #txt
Ls0 f8 guid 13BDBDD702D827D5 #txt
Ls0 f8 246 182 20 20 13 0 #rect
Ls0 f8 @|RichDialogEndIcon #fIcon
Ls0 f11 expr out #txt
Ls0 f11 96 74 96 182 #arcP
Ls0 f4 expr out #txt
Ls0 f4 256 140 256 182 #arcP
>Proto Ls0 .type htmlwfui.LoginSequence.LoginSequenceData #txt
>Proto Ls0 .processKind HTML_DIALOG #txt
>Proto Ls0 -8 -8 16 16 16 26 #rect
>Proto Ls0 '' #fIcon
Ls0 f2 mainOut f6 tail #connect
Ls0 f6 head f5 mainIn #connect
Ls0 f0 mainOut f11 tail #connect
Ls0 f11 head f1 mainIn #connect
Ls0 f5 mainOut f4 tail #connect
Ls0 f4 head f8 mainIn #connect
