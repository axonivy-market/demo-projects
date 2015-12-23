[Ivy]
[>Created: Tue Dec 22 16:00:20 CET 2015]
151CA244D672B3A4 3.18 #module
>Proto >Proto Collection #zClass
Qs0 QuitUserProcess Big #zClass
Qs0 RD #cInfo
Qs0 #process
Qs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Qs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Qs0 @TextInP .resExport .resExport #zField
Qs0 @TextInP .type .type #zField
Qs0 @TextInP .processKind .processKind #zField
Qs0 @AnnotationInP-0n ai ai #zField
Qs0 @MessageFlowInP-0n messageIn messageIn #zField
Qs0 @MessageFlowOutP-0n messageOut messageOut #zField
Qs0 @TextInP .xml .xml #zField
Qs0 @TextInP .responsibility .responsibility #zField
Qs0 @RichDialogInitStart f0 '' #zField
Qs0 @RichDialogProcessEnd f1 '' #zField
Qs0 @PushWFArc f2 '' #zField
Qs0 @RichDialogProcessStart f3 '' #zField
Qs0 @RichDialogEnd f4 '' #zField
Qs0 @PushWFArc f5 '' #zField
>Proto Qs0 Qs0 QuitUserProcess #zField
Qs0 f0 guid 151CA244D8521FFA #txt
Qs0 f0 type workflow.signal.QuitUser.QuitUserData #txt
Qs0 f0 method start() #txt
Qs0 f0 disableUIEvents true #txt
Qs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Qs0 f0 inParameterMapAction 'out.quitUserEvent.reason="";
' #txt
Qs0 f0 outParameterDecl '<workflow.signal.QuitUserEvent quitUserEvent> result;
' #txt
Qs0 f0 outParameterMapAction 'result.quitUserEvent=in.quitUserEvent;
' #txt
Qs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Qs0 f0 83 51 26 26 -16 15 #rect
Qs0 f0 @|RichDialogInitStartIcon #fIcon
Qs0 f1 type workflow.signal.QuitUser.QuitUserData #txt
Qs0 f1 211 51 26 26 0 12 #rect
Qs0 f1 @|RichDialogProcessEndIcon #fIcon
Qs0 f2 expr out #txt
Qs0 f2 109 64 211 64 #arcP
Qs0 f3 guid 151CA244D9266BBE #txt
Qs0 f3 type workflow.signal.QuitUser.QuitUserData #txt
Qs0 f3 actionDecl 'workflow.signal.QuitUser.QuitUserData out;
' #txt
Qs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Qs0 f3 83 147 26 26 -15 12 #rect
Qs0 f3 @|RichDialogProcessStartIcon #fIcon
Qs0 f4 type workflow.signal.QuitUser.QuitUserData #txt
Qs0 f4 guid 151CA244D93CF441 #txt
Qs0 f4 211 147 26 26 0 12 #rect
Qs0 f4 @|RichDialogEndIcon #fIcon
Qs0 f5 expr out #txt
Qs0 f5 109 160 211 160 #arcP
>Proto Qs0 .type workflow.signal.QuitUser.QuitUserData #txt
>Proto Qs0 .processKind HTML_DIALOG #txt
>Proto Qs0 -8 -8 16 16 16 26 #rect
>Proto Qs0 '' #fIcon
Qs0 f0 mainOut f2 tail #connect
Qs0 f2 head f1 mainIn #connect
Qs0 f3 mainOut f5 tail #connect
Qs0 f5 head f4 mainIn #connect
