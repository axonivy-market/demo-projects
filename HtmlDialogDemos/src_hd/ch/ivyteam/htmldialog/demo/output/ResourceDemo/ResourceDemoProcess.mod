[Ivy]
[>Created: Tue May 06 12:33:07 CEST 2014]
13A0168D09848672 3.17 #module
>Proto >Proto Collection #zClass
Rs0 ResourceDemoProcess Big #zClass
Rs0 RD #cInfo
Rs0 #process
Rs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Rs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Rs0 @TextInP .resExport .resExport #zField
Rs0 @TextInP .type .type #zField
Rs0 @TextInP .processKind .processKind #zField
Rs0 @AnnotationInP-0n ai ai #zField
Rs0 @TextInP .xml .xml #zField
Rs0 @TextInP .responsibility .responsibility #zField
Rs0 @RichDialogInitStart f0 '' #zField
Rs0 @RichDialogProcessEnd f1 '' #zField
Rs0 @PushWFArc f2 '' #zField
>Proto Rs0 Rs0 ResourceDemoProcess #zField
Rs0 f0 guid 13A0168D0B4F1482 #txt
Rs0 f0 type ch.ivyteam.htmldialog.demo.output.ResourceDemo.ResourceDemoData #txt
Rs0 f0 method start() #txt
Rs0 f0 disableUIEvents true #txt
Rs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Rs0 f0 outParameterDecl '<> result;
' #txt
Rs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Rs0 f0 83 51 26 26 -16 12 #rect
Rs0 f0 @|RichDialogInitStartIcon #fIcon
Rs0 f0 -1|-1|-9671572 #nodeStyle
Rs0 f1 type ch.ivyteam.htmldialog.demo.output.ResourceDemo.ResourceDemoData #txt
Rs0 f1 211 51 26 26 0 12 #rect
Rs0 f1 @|RichDialogProcessEndIcon #fIcon
Rs0 f1 -1|-1|-9671572 #nodeStyle
Rs0 f2 expr out #txt
Rs0 f2 109 64 211 64 #arcP
>Proto Rs0 .type ch.ivyteam.htmldialog.demo.output.ResourceDemo.ResourceDemoData #txt
>Proto Rs0 .processKind HTML_DIALOG #txt
>Proto Rs0 -8 -8 16 16 16 26 #rect
>Proto Rs0 '' #fIcon
Rs0 f0 mainOut f2 tail #connect
Rs0 f2 head f1 mainIn #connect
