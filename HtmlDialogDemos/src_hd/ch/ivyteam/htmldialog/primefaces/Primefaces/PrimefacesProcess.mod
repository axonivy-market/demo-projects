[Ivy]
[>Created: Tue May 06 12:41:26 CEST 2014]
13D39CF289ACE89B 3.17 #module
>Proto >Proto Collection #zClass
Ps0 PrimefacesProcess Big #zClass
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
>Proto Ps0 Ps0 PrimefacesProcess #zField
Ps0 f0 guid 13D39CF28B9D0EB7 #txt
Ps0 f0 type ch.ivyteam.htmldialog.primefaces.Primefaces.PrimefacesData #txt
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
Ps0 f0 83 51 26 26 -16 12 #rect
Ps0 f0 @|RichDialogInitStartIcon #fIcon
Ps0 f0 -1|-1|-9671572 #nodeStyle
Ps0 f1 type ch.ivyteam.htmldialog.primefaces.Primefaces.PrimefacesData #txt
Ps0 f1 211 51 26 26 0 12 #rect
Ps0 f1 @|RichDialogProcessEndIcon #fIcon
Ps0 f1 -1|-1|-9671572 #nodeStyle
Ps0 f2 expr out #txt
Ps0 f2 109 64 211 64 #arcP
>Proto Ps0 .type ch.ivyteam.htmldialog.primefaces.Primefaces.PrimefacesData #txt
>Proto Ps0 .processKind HTML_DIALOG #txt
>Proto Ps0 -8 -8 16 16 16 26 #rect
>Proto Ps0 '' #fIcon
Ps0 f0 mainOut f2 tail #connect
Ps0 f2 head f1 mainIn #connect
