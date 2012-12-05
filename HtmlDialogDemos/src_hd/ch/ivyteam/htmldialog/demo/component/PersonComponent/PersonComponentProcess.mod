[Ivy]
[>Created: Wed Dec 05 08:32:35 CET 2012]
13B69F6612D62493 3.17 #module
>Proto >Proto Collection #zClass
Ps0 PersonComponentProcess Big #zClass
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
>Proto Ps0 Ps0 PersonComponentProcess #zField
Ps0 f0 guid 13B69F6613C66357 #txt
Ps0 f0 type ch.ivyteam.htmldialog.demo.component.PersonComponent.PersonComponentData #txt
Ps0 f0 method start(ch.ivyteam.htmldialog.demo.Person) #txt
Ps0 f0 disableUIEvents true #txt
Ps0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.htmldialog.demo.Person person> param = methodEvent.getInputArguments();
' #txt
Ps0 f0 inParameterMapAction 'out.person=param.person;
' #txt
Ps0 f0 outParameterDecl '<ch.ivyteam.htmldialog.demo.Person person> result;
' #txt
Ps0 f0 outParameterMapAction 'result.person=in.person;
' #txt
Ps0 f0 embeddedRdInitializations '* ' #txt
Ps0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Person)</name>
    </language>
</elementInfo>
' #txt
Ps0 f0 86 54 20 20 13 0 #rect
Ps0 f0 @|RichDialogInitStartIcon #fIcon
Ps0 f1 type ch.ivyteam.htmldialog.demo.component.PersonComponent.PersonComponentData #txt
Ps0 f1 86 150 20 20 13 0 #rect
Ps0 f1 @|RichDialogProcessEndIcon #fIcon
Ps0 f2 expr out #txt
Ps0 f2 96 74 96 150 #arcP
>Proto Ps0 .type ch.ivyteam.htmldialog.demo.component.PersonComponent.PersonComponentData #txt
>Proto Ps0 .processKind RICH_DIALOG #txt
>Proto Ps0 -8 -8 16 16 16 26 #rect
>Proto Ps0 '' #fIcon
Ps0 f0 mainOut f2 tail #connect
Ps0 f2 head f1 mainIn #connect
