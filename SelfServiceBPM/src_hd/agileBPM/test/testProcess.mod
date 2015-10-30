[Ivy]
[>Created: Wed Oct 15 14:55:59 CEST 2014]
14913E11848C470C 3.17 #module
>Proto >Proto Collection #zClass
ts0 testProcess Big #zClass
ts0 RD #cInfo
ts0 #process
ts0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
ts0 @TextInP .rdData2UIAction .rdData2UIAction #zField
ts0 @TextInP .resExport .resExport #zField
ts0 @TextInP .type .type #zField
ts0 @TextInP .processKind .processKind #zField
ts0 @AnnotationInP-0n ai ai #zField
ts0 @MessageFlowInP-0n messageIn messageIn #zField
ts0 @MessageFlowOutP-0n messageOut messageOut #zField
ts0 @TextInP .xml .xml #zField
ts0 @TextInP .responsibility .responsibility #zField
ts0 @RichDialogInitStart f0 '' #zField
ts0 @RichDialogProcessEnd f1 '' #zField
ts0 @PushWFArc f2 '' #zField
ts0 @RichDialogProcessStart f3 '' #zField
ts0 @RichDialogEnd f4 '' #zField
ts0 @PushWFArc f5 '' #zField
>Proto ts0 ts0 testProcess #zField
ts0 f0 guid 14913E1186819D7E #txt
ts0 f0 type agileBPM.test.testData #txt
ts0 f0 method start(DateTime) #txt
ts0 f0 disableUIEvents true #txt
ts0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.scripting.objects.DateTime until> param = methodEvent.getInputArguments();
' #txt
ts0 f0 inParameterMapAction 'out.until=param.until;
' #txt
ts0 f0 outParameterDecl '<ch.ivyteam.ivy.scripting.objects.DateTime until> result;
' #txt
ts0 f0 outParameterMapAction 'result.until=in.until;
' #txt
ts0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(DateTime)</name>
    </language>
</elementInfo>
' #txt
ts0 f0 83 51 26 26 -43 15 #rect
ts0 f0 @|RichDialogInitStartIcon #fIcon
ts0 f1 type agileBPM.test.testData #txt
ts0 f1 211 51 26 26 0 12 #rect
ts0 f1 @|RichDialogProcessEndIcon #fIcon
ts0 f2 expr out #txt
ts0 f2 109 64 211 64 #arcP
ts0 f3 guid 14913E11877D8924 #txt
ts0 f3 type agileBPM.test.testData #txt
ts0 f3 actionDecl 'agileBPM.test.testData out;
' #txt
ts0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
ts0 f3 83 147 26 26 -15 12 #rect
ts0 f3 @|RichDialogProcessStartIcon #fIcon
ts0 f4 type agileBPM.test.testData #txt
ts0 f4 guid 14913E11877FD527 #txt
ts0 f4 211 147 26 26 0 12 #rect
ts0 f4 @|RichDialogEndIcon #fIcon
ts0 f5 expr out #txt
ts0 f5 109 160 211 160 #arcP
>Proto ts0 .type agileBPM.test.testData #txt
>Proto ts0 .processKind HTML_DIALOG #txt
>Proto ts0 -8 -8 16 16 16 26 #rect
>Proto ts0 '' #fIcon
ts0 f0 mainOut f2 tail #connect
ts0 f2 head f1 mainIn #connect
ts0 f3 mainOut f5 tail #connect
ts0 f5 head f4 mainIn #connect
