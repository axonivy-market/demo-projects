[Ivy]
[>Created: Wed Oct 21 17:10:05 CEST 2015]
1508AEC47C4FFEA2 3.18 #module
>Proto >Proto Collection #zClass
Cs0 CancelStartProcess Big #zClass
Cs0 RD #cInfo
Cs0 #process
Cs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Cs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Cs0 @TextInP .resExport .resExport #zField
Cs0 @TextInP .type .type #zField
Cs0 @TextInP .processKind .processKind #zField
Cs0 @AnnotationInP-0n ai ai #zField
Cs0 @MessageFlowInP-0n messageIn messageIn #zField
Cs0 @MessageFlowOutP-0n messageOut messageOut #zField
Cs0 @TextInP .xml .xml #zField
Cs0 @TextInP .responsibility .responsibility #zField
Cs0 @RichDialogInitStart f0 '' #zField
Cs0 @RichDialogProcessEnd f1 '' #zField
Cs0 @PushWFArc f2 '' #zField
Cs0 @RichDialogProcessStart f3 '' #zField
Cs0 @RichDialogEnd f4 '' #zField
Cs0 @PushWFArc f5 '' #zField
Cs0 @RichDialogProcessStart f6 '' #zField
Cs0 @ErrorEnd f9 '' #zField
Cs0 @PushWFArc f10 '' #zField
>Proto Cs0 Cs0 CancelStartProcess #zField
Cs0 f0 guid 1508AEC47E153D81 #txt
Cs0 f0 type error.handling.demo.misc.CancelStart.CancelStartData #txt
Cs0 f0 method start(String) #txt
Cs0 f0 disableUIEvents true #txt
Cs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String email> param = methodEvent.getInputArguments();
' #txt
Cs0 f0 inParameterMapAction 'out.email=param.email;
' #txt
Cs0 f0 outParameterDecl '<java.lang.String email> result;
' #txt
Cs0 f0 outParameterMapAction 'result.email=in.email;
' #txt
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(String)</name>
    </language>
</elementInfo>
' #txt
Cs0 f0 83 51 26 26 -33 15 #rect
Cs0 f0 @|RichDialogInitStartIcon #fIcon
Cs0 f1 type error.handling.demo.misc.CancelStart.CancelStartData #txt
Cs0 f1 211 51 26 26 0 12 #rect
Cs0 f1 @|RichDialogProcessEndIcon #fIcon
Cs0 f2 expr out #txt
Cs0 f2 109 64 211 64 #arcP
Cs0 f3 guid 1508AEC47EFC485B #txt
Cs0 f3 type error.handling.demo.misc.CancelStart.CancelStartData #txt
Cs0 f3 actionDecl 'error.handling.demo.misc.CancelStart.CancelStartData out;
' #txt
Cs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Cs0 f3 83 147 26 26 -14 12 #rect
Cs0 f3 @|RichDialogProcessStartIcon #fIcon
Cs0 f4 type error.handling.demo.misc.CancelStart.CancelStartData #txt
Cs0 f4 guid 1508AEC47EF93EB2 #txt
Cs0 f4 211 147 26 26 0 12 #rect
Cs0 f4 @|RichDialogEndIcon #fIcon
Cs0 f5 expr out #txt
Cs0 f5 109 160 211 160 #arcP
Cs0 f6 guid 1508AF2A72244D07 #txt
Cs0 f6 type error.handling.demo.misc.CancelStart.CancelStartData #txt
Cs0 f6 actionDecl 'error.handling.demo.misc.CancelStart.CancelStartData out;
' #txt
Cs0 f6 actionTable 'out=in;
' #txt
Cs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>cancel</name>
    </language>
</elementInfo>
' #txt
Cs0 f6 83 243 26 26 -18 12 #rect
Cs0 f6 @|RichDialogProcessStartIcon #fIcon
Cs0 f9 errorCode start:cancelled #txt
Cs0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start:cancelled</name>
    </language>
</elementInfo>
' #txt
Cs0 f9 209 241 30 30 -42 17 #rect
Cs0 f9 @|ErrorEndIcon #fIcon
Cs0 f10 expr out #txt
Cs0 f10 109 256 209 256 #arcP
>Proto Cs0 .type error.handling.demo.misc.CancelStart.CancelStartData #txt
>Proto Cs0 .processKind HTML_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f0 mainOut f2 tail #connect
Cs0 f2 head f1 mainIn #connect
Cs0 f3 mainOut f5 tail #connect
Cs0 f5 head f4 mainIn #connect
Cs0 f6 mainOut f10 tail #connect
Cs0 f10 head f9 mainIn #connect
