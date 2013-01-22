[Ivy]
[>Created: Tue Jan 22 19:18:38 CET 2013]
13BA879E7BA869A7 3.17 #module
>Proto >Proto Collection #zClass
Ds0 Dialog1Process Big #zClass
Ds0 RD #cInfo
Ds0 #process
Ds0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ds0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ds0 @TextInP .resExport .resExport #zField
Ds0 @TextInP .type .type #zField
Ds0 @TextInP .processKind .processKind #zField
Ds0 @AnnotationInP-0n ai ai #zField
Ds0 @TextInP .xml .xml #zField
Ds0 @TextInP .responsibility .responsibility #zField
Ds0 @RichDialogProcessEnd f1 '' #zField
Ds0 @RichDialogInitStart f0 '' #zField
Ds0 @PushWFArc f2 '' #zField
Ds0 @RichDialogProcessStart f3 '' #zField
Ds0 @RichDialogEnd f6 '' #zField
Ds0 @PushWFArc f7 '' #zField
>Proto Ds0 Ds0 Dialog1Process #zField
Ds0 f1 type testwf.Dialog1.Dialog1Data #txt
Ds0 f1 102 166 20 20 13 0 #rect
Ds0 f1 @|RichDialogProcessEndIcon #fIcon
Ds0 f0 guid 13BA8897CBC47BE5 #txt
Ds0 f0 type testwf.Dialog1.Dialog1Data #txt
Ds0 f0 method start(String) #txt
Ds0 f0 disableUIEvents true #txt
Ds0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String txt> param = methodEvent.getInputArguments();
' #txt
Ds0 f0 inParameterMapAction 'out.msg=param.txt;
' #txt
Ds0 f0 outParameterDecl '<java.lang.String txt> result;
' #txt
Ds0 f0 outParameterMapAction 'result.txt=in.msg;
' #txt
Ds0 f0 embeddedRdInitializations '* ' #txt
Ds0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(String)</name>
        <nameStyle>13,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f0 102 62 20 20 13 0 #rect
Ds0 f0 @|RichDialogInitStartIcon #fIcon
Ds0 f2 expr out #txt
Ds0 f2 112 82 112 166 #arcP
Ds0 f3 guid 13BA88995F12C2CD #txt
Ds0 f3 type testwf.Dialog1.Dialog1Data #txt
Ds0 f3 actionDecl 'testwf.Dialog1.Dialog1Data out;
' #txt
Ds0 f3 actionTable 'out=in;
' #txt
Ds0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>submit</name>
        <nameStyle>6,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f3 198 70 20 20 13 0 #rect
Ds0 f3 @|RichDialogProcessStartIcon #fIcon
Ds0 f6 type testwf.Dialog1.Dialog1Data #txt
Ds0 f6 guid 13BA889D694E8EA2 #txt
Ds0 f6 198 166 20 20 13 0 #rect
Ds0 f6 @|RichDialogEndIcon #fIcon
Ds0 f7 expr out #txt
Ds0 f7 208 90 208 166 #arcP
>Proto Ds0 .type testwf.Dialog1.Dialog1Data #txt
>Proto Ds0 .processKind HTML_DIALOG #txt
>Proto Ds0 -8 -8 16 16 16 26 #rect
>Proto Ds0 '' #fIcon
Ds0 f0 mainOut f2 tail #connect
Ds0 f2 head f1 mainIn #connect
Ds0 f3 mainOut f7 tail #connect
Ds0 f7 head f6 mainIn #connect
