[Ivy]
[>Created: Thu Jun 20 16:11:24 CEST 2013]
13F61ECED9A8E0D7 3.17 #module
>Proto >Proto Collection #zClass
Ps0 SimplePortletProcess Big #zClass
Ps0 RD #cInfo
Ps0 #process
Ps0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ps0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ps0 @TextInP .resExport .resExport #zField
Ps0 @TextInP .type .type #zField
Ps0 @TextInP .processKind .processKind #zField
Ps0 @AnnotationInP-0n ai ai #zField
Ps0 @TextInP .xml .xml #zField
Ps0 @TextInP .responsibility .responsibility #zField
Ps0 @RichDialogInitStart f0 '' #zField
Ps0 @RichDialogProcessEnd f1 '' #zField
Ps0 @PushWFArc f2 '' #zField
>Proto Ps0 Ps0 SimplePortletProcess #zField
Ps0 f0 guid 13F61ECEDB8BC44E #txt
Ps0 f0 type ch.ivyteam.ivy.demo.portaldisplay.SimplePortlet.SimplePortletData #txt
Ps0 f0 method start() #txt
Ps0 f0 disableUIEvents true #txt
Ps0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ps0 f0 outParameterDecl '<> result;
' #txt
Ps0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ps0 f0 86 54 20 20 13 0 #rect
Ps0 f0 @|RichDialogInitStartIcon #fIcon
Ps0 f1 type ch.ivyteam.ivy.demo.portaldisplay.SimplePortlet.SimplePortletData #txt
Ps0 f1 86 150 20 20 13 0 #rect
Ps0 f1 @|RichDialogProcessEndIcon #fIcon
Ps0 f2 expr out #txt
Ps0 f2 96 74 96 150 #arcP
>Proto Ps0 .type ch.ivyteam.ivy.demo.portaldisplay.SimplePortlet.SimplePortletData #txt
>Proto Ps0 .processKind RICH_DIALOG #txt
>Proto Ps0 -8 -8 16 16 16 26 #rect
>Proto Ps0 '' #fIcon
Ps0 f0 mainOut f2 tail #connect
Ps0 f2 head f1 mainIn #connect
