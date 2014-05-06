[Ivy]
[>Created: Tue May 06 12:27:02 CEST 2014]
13B610D02E245A6A 3.17 #module
>Proto >Proto Collection #zClass
Ms0 ManagedBeanDemoProcess Big #zClass
Ms0 RD #cInfo
Ms0 #process
Ms0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ms0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ms0 @TextInP .resExport .resExport #zField
Ms0 @TextInP .type .type #zField
Ms0 @TextInP .processKind .processKind #zField
Ms0 @AnnotationInP-0n ai ai #zField
Ms0 @TextInP .xml .xml #zField
Ms0 @TextInP .responsibility .responsibility #zField
Ms0 @RichDialogInitStart f0 '' #zField
Ms0 @RichDialogProcessEnd f1 '' #zField
Ms0 @PushWFArc f2 '' #zField
>Proto Ms0 Ms0 ManagedBeanDemoProcess #zField
Ms0 f0 guid 13B610D0301EF0B7 #txt
Ms0 f0 type ch.ivyteam.htmldialog.demo.other.ManagedBeanDemo.ManagedBeanDemoData #txt
Ms0 f0 method start() #txt
Ms0 f0 disableUIEvents true #txt
Ms0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ms0 f0 outParameterDecl '<> result;
' #txt
Ms0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ms0 f0 83 51 26 26 -16 12 #rect
Ms0 f0 @|RichDialogInitStartIcon #fIcon
Ms0 f0 -1|-1|-9671572 #nodeStyle
Ms0 f1 type ch.ivyteam.htmldialog.demo.other.ManagedBeanDemo.ManagedBeanDemoData #txt
Ms0 f1 211 51 26 26 0 12 #rect
Ms0 f1 @|RichDialogProcessEndIcon #fIcon
Ms0 f1 -1|-1|-9671572 #nodeStyle
Ms0 f2 expr out #txt
Ms0 f2 109 64 211 64 #arcP
>Proto Ms0 .type ch.ivyteam.htmldialog.demo.other.ManagedBeanDemo.ManagedBeanDemoData #txt
>Proto Ms0 .processKind HTML_DIALOG #txt
>Proto Ms0 -8 -8 16 16 16 26 #rect
>Proto Ms0 '' #fIcon
Ms0 f0 mainOut f2 tail #connect
Ms0 f2 head f1 mainIn #connect
